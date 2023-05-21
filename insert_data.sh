#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# echo $($PSQL "TRUNCATE TABLE games, teams")

# insert teams
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # get winner team id
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    # if no team id, insert into the db
    if [[ -z $WINNER_TEAM_ID ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    fi

    # get opponent team id
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    # if no team id, insert into the db
    if [[ -z $OPPONENT_TEAM_ID ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    fi

    # insert games
    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
                  VALUES($YEAR, '$ROUND', $WINNER_TEAM_ID, $OPPONENT_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi
done