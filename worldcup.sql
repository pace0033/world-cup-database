--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (546, 2018, 'Final', 509, 510, 2, 4);
INSERT INTO public.games VALUES (547, 2018, 'Third Place', 511, 512, 0, 2);
INSERT INTO public.games VALUES (548, 2018, 'Semi-Final', 510, 512, 1, 2);
INSERT INTO public.games VALUES (549, 2018, 'Semi-Final', 509, 511, 0, 1);
INSERT INTO public.games VALUES (550, 2018, 'Quarter-Final', 510, 513, 2, 3);
INSERT INTO public.games VALUES (551, 2018, 'Quarter-Final', 512, 514, 0, 2);
INSERT INTO public.games VALUES (552, 2018, 'Quarter-Final', 511, 515, 1, 2);
INSERT INTO public.games VALUES (553, 2018, 'Quarter-Final', 509, 516, 0, 2);
INSERT INTO public.games VALUES (554, 2018, 'Eighth-Final', 512, 517, 1, 2);
INSERT INTO public.games VALUES (555, 2018, 'Eighth-Final', 514, 518, 0, 1);
INSERT INTO public.games VALUES (556, 2018, 'Eighth-Final', 511, 519, 2, 3);
INSERT INTO public.games VALUES (557, 2018, 'Eighth-Final', 515, 520, 0, 2);
INSERT INTO public.games VALUES (558, 2018, 'Eighth-Final', 510, 521, 1, 2);
INSERT INTO public.games VALUES (559, 2018, 'Eighth-Final', 513, 522, 1, 2);
INSERT INTO public.games VALUES (560, 2018, 'Eighth-Final', 516, 523, 1, 2);
INSERT INTO public.games VALUES (561, 2018, 'Eighth-Final', 509, 524, 3, 4);
INSERT INTO public.games VALUES (562, 2014, 'Final', 525, 524, 0, 1);
INSERT INTO public.games VALUES (563, 2014, 'Third Place', 526, 515, 0, 3);
INSERT INTO public.games VALUES (564, 2014, 'Semi-Final', 524, 526, 0, 1);
INSERT INTO public.games VALUES (565, 2014, 'Semi-Final', 525, 515, 1, 7);
INSERT INTO public.games VALUES (566, 2014, 'Quarter-Final', 526, 527, 0, 1);
INSERT INTO public.games VALUES (567, 2014, 'Quarter-Final', 524, 511, 0, 1);
INSERT INTO public.games VALUES (568, 2014, 'Quarter-Final', 515, 517, 1, 2);
INSERT INTO public.games VALUES (569, 2014, 'Quarter-Final', 525, 509, 0, 1);
INSERT INTO public.games VALUES (570, 2014, 'Eighth-Final', 515, 528, 1, 2);
INSERT INTO public.games VALUES (571, 2014, 'Eighth-Final', 517, 516, 0, 2);
INSERT INTO public.games VALUES (572, 2014, 'Eighth-Final', 509, 529, 0, 2);
INSERT INTO public.games VALUES (573, 2014, 'Eighth-Final', 525, 530, 1, 2);
INSERT INTO public.games VALUES (574, 2014, 'Eighth-Final', 526, 520, 1, 2);
INSERT INTO public.games VALUES (575, 2014, 'Eighth-Final', 527, 531, 1, 2);
INSERT INTO public.games VALUES (576, 2014, 'Eighth-Final', 524, 518, 0, 1);
INSERT INTO public.games VALUES (577, 2014, 'Eighth-Final', 511, 532, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (509, 'France');
INSERT INTO public.teams VALUES (510, 'Croatia');
INSERT INTO public.teams VALUES (511, 'Belgium');
INSERT INTO public.teams VALUES (512, 'England');
INSERT INTO public.teams VALUES (513, 'Russia');
INSERT INTO public.teams VALUES (514, 'Sweden');
INSERT INTO public.teams VALUES (515, 'Brazil');
INSERT INTO public.teams VALUES (516, 'Uruguay');
INSERT INTO public.teams VALUES (517, 'Colombia');
INSERT INTO public.teams VALUES (518, 'Switzerland');
INSERT INTO public.teams VALUES (519, 'Japan');
INSERT INTO public.teams VALUES (520, 'Mexico');
INSERT INTO public.teams VALUES (521, 'Denmark');
INSERT INTO public.teams VALUES (522, 'Spain');
INSERT INTO public.teams VALUES (523, 'Portugal');
INSERT INTO public.teams VALUES (524, 'Argentina');
INSERT INTO public.teams VALUES (525, 'Germany');
INSERT INTO public.teams VALUES (526, 'Netherlands');
INSERT INTO public.teams VALUES (527, 'Costa Rica');
INSERT INTO public.teams VALUES (528, 'Chile');
INSERT INTO public.teams VALUES (529, 'Nigeria');
INSERT INTO public.teams VALUES (530, 'Algeria');
INSERT INTO public.teams VALUES (531, 'Greece');
INSERT INTO public.teams VALUES (532, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 577, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 532, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

