--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (1053, 2018, 'Final', 975, 976, 4, 2);
INSERT INTO public.games VALUES (1054, 2018, 'Third Place', 977, 978, 2, 0);
INSERT INTO public.games VALUES (1055, 2018, 'Semi-Final', 976, 978, 2, 1);
INSERT INTO public.games VALUES (1056, 2018, 'Semi-Final', 975, 977, 1, 0);
INSERT INTO public.games VALUES (1057, 2018, 'Quarter-Final', 976, 979, 3, 2);
INSERT INTO public.games VALUES (1058, 2018, 'Quarter-Final', 978, 980, 2, 0);
INSERT INTO public.games VALUES (1059, 2018, 'Quarter-Final', 977, 981, 2, 1);
INSERT INTO public.games VALUES (1060, 2018, 'Quarter-Final', 975, 982, 2, 0);
INSERT INTO public.games VALUES (1061, 2018, 'Eighth-Final', 978, 983, 2, 1);
INSERT INTO public.games VALUES (1062, 2018, 'Eighth-Final', 980, 984, 1, 0);
INSERT INTO public.games VALUES (1063, 2018, 'Eighth-Final', 977, 985, 3, 2);
INSERT INTO public.games VALUES (1064, 2018, 'Eighth-Final', 981, 986, 2, 0);
INSERT INTO public.games VALUES (1065, 2018, 'Eighth-Final', 976, 987, 2, 1);
INSERT INTO public.games VALUES (1066, 2018, 'Eighth-Final', 979, 988, 2, 1);
INSERT INTO public.games VALUES (1067, 2018, 'Eighth-Final', 982, 989, 2, 1);
INSERT INTO public.games VALUES (1068, 2018, 'Eighth-Final', 975, 990, 4, 3);
INSERT INTO public.games VALUES (1069, 2014, 'Final', 991, 990, 1, 0);
INSERT INTO public.games VALUES (1070, 2014, 'Third Place', 992, 981, 3, 0);
INSERT INTO public.games VALUES (1071, 2014, 'Semi-Final', 990, 992, 1, 0);
INSERT INTO public.games VALUES (1072, 2014, 'Semi-Final', 991, 981, 7, 1);
INSERT INTO public.games VALUES (1073, 2014, 'Quarter-Final', 992, 993, 1, 0);
INSERT INTO public.games VALUES (1074, 2014, 'Quarter-Final', 990, 977, 1, 0);
INSERT INTO public.games VALUES (1075, 2014, 'Quarter-Final', 981, 983, 2, 1);
INSERT INTO public.games VALUES (1076, 2014, 'Quarter-Final', 991, 975, 1, 0);
INSERT INTO public.games VALUES (1077, 2014, 'Eighth-Final', 981, 994, 2, 1);
INSERT INTO public.games VALUES (1078, 2014, 'Eighth-Final', 983, 982, 2, 0);
INSERT INTO public.games VALUES (1079, 2014, 'Eighth-Final', 975, 995, 2, 0);
INSERT INTO public.games VALUES (1080, 2014, 'Eighth-Final', 991, 996, 2, 1);
INSERT INTO public.games VALUES (1081, 2014, 'Eighth-Final', 992, 986, 2, 1);
INSERT INTO public.games VALUES (1082, 2014, 'Eighth-Final', 993, 997, 2, 1);
INSERT INTO public.games VALUES (1083, 2014, 'Eighth-Final', 990, 984, 1, 0);
INSERT INTO public.games VALUES (1084, 2014, 'Eighth-Final', 977, 998, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (975, 'France');
INSERT INTO public.teams VALUES (976, 'Croatia');
INSERT INTO public.teams VALUES (977, 'Belgium');
INSERT INTO public.teams VALUES (978, 'England');
INSERT INTO public.teams VALUES (979, 'Russia');
INSERT INTO public.teams VALUES (980, 'Sweden');
INSERT INTO public.teams VALUES (981, 'Brazil');
INSERT INTO public.teams VALUES (982, 'Uruguay');
INSERT INTO public.teams VALUES (983, 'Colombia');
INSERT INTO public.teams VALUES (984, 'Switzerland');
INSERT INTO public.teams VALUES (985, 'Japan');
INSERT INTO public.teams VALUES (986, 'Mexico');
INSERT INTO public.teams VALUES (987, 'Denmark');
INSERT INTO public.teams VALUES (988, 'Spain');
INSERT INTO public.teams VALUES (989, 'Portugal');
INSERT INTO public.teams VALUES (990, 'Argentina');
INSERT INTO public.teams VALUES (991, 'Germany');
INSERT INTO public.teams VALUES (992, 'Netherlands');
INSERT INTO public.teams VALUES (993, 'Costa Rica');
INSERT INTO public.teams VALUES (994, 'Chile');
INSERT INTO public.teams VALUES (995, 'Nigeria');
INSERT INTO public.teams VALUES (996, 'Algeria');
INSERT INTO public.teams VALUES (997, 'Greece');
INSERT INTO public.teams VALUES (998, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1084, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 998, true);


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

