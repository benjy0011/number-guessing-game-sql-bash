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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guess_count integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 1, 4);
INSERT INTO public.games VALUES (4, 1, 6);
INSERT INTO public.games VALUES (5, 1, 3);
INSERT INTO public.games VALUES (6, 1, 2);
INSERT INTO public.games VALUES (7, 2, 6);
INSERT INTO public.games VALUES (8, 5, 319);
INSERT INTO public.games VALUES (9, 6, 627);
INSERT INTO public.games VALUES (10, 5, 427);
INSERT INTO public.games VALUES (11, 5, 568);
INSERT INTO public.games VALUES (12, 5, 353);
INSERT INTO public.games VALUES (13, 7, 326);
INSERT INTO public.games VALUES (14, 8, 906);
INSERT INTO public.games VALUES (15, 7, 216);
INSERT INTO public.games VALUES (16, 7, 184);
INSERT INTO public.games VALUES (17, 7, 239);
INSERT INTO public.games VALUES (18, 9, 807);
INSERT INTO public.games VALUES (19, 10, 434);
INSERT INTO public.games VALUES (20, 9, 668);
INSERT INTO public.games VALUES (21, 9, 27);
INSERT INTO public.games VALUES (22, 9, 837);
INSERT INTO public.games VALUES (23, 1, 6);
INSERT INTO public.games VALUES (24, 2, 9);
INSERT INTO public.games VALUES (25, 1, 8);
INSERT INTO public.games VALUES (26, 1, 10);
INSERT INTO public.games VALUES (27, 1, 27);
INSERT INTO public.games VALUES (28, 1, 5);
INSERT INTO public.games VALUES (29, 1, 1);
INSERT INTO public.games VALUES (30, 1, 5);
INSERT INTO public.games VALUES (31, 11, 5);
INSERT INTO public.games VALUES (32, 11, 5);
INSERT INTO public.games VALUES (33, 11, 5);
INSERT INTO public.games VALUES (34, 11, 5);
INSERT INTO public.games VALUES (35, 11, 5);
INSERT INTO public.games VALUES (36, 11, 5);
INSERT INTO public.games VALUES (37, 11, 2);
INSERT INTO public.games VALUES (38, 11, 2);
INSERT INTO public.games VALUES (39, 11, 2);
INSERT INTO public.games VALUES (40, 11, 2);
INSERT INTO public.games VALUES (41, 11, 2);
INSERT INTO public.games VALUES (42, 11, 2);
INSERT INTO public.games VALUES (43, 11, 2);
INSERT INTO public.games VALUES (44, 11, 2);
INSERT INTO public.games VALUES (45, 11, 2);
INSERT INTO public.games VALUES (46, 11, 2);
INSERT INTO public.games VALUES (47, 11, 2);
INSERT INTO public.games VALUES (48, 11, 2);
INSERT INTO public.games VALUES (49, 11, 2);
INSERT INTO public.games VALUES (50, 11, 2);
INSERT INTO public.games VALUES (51, 12, 2);
INSERT INTO public.games VALUES (52, 12, 2);
INSERT INTO public.games VALUES (53, 13, 2);
INSERT INTO public.games VALUES (54, 13, 2);
INSERT INTO public.games VALUES (55, 12, 2);
INSERT INTO public.games VALUES (56, 12, 2);
INSERT INTO public.games VALUES (57, 12, 2);
INSERT INTO public.games VALUES (58, 14, 2);
INSERT INTO public.games VALUES (59, 16, 2);
INSERT INTO public.games VALUES (60, 20, 2);
INSERT INTO public.games VALUES (61, 20, 2);
INSERT INTO public.games VALUES (62, 21, 2);
INSERT INTO public.games VALUES (63, 21, 2);
INSERT INTO public.games VALUES (64, 20, 2);
INSERT INTO public.games VALUES (65, 20, 2);
INSERT INTO public.games VALUES (66, 20, 2);
INSERT INTO public.games VALUES (67, 22, 2);
INSERT INTO public.games VALUES (68, 22, 2);
INSERT INTO public.games VALUES (69, 23, 2);
INSERT INTO public.games VALUES (70, 23, 2);
INSERT INTO public.games VALUES (71, 22, 2);
INSERT INTO public.games VALUES (72, 22, 2);
INSERT INTO public.games VALUES (73, 22, 2);
INSERT INTO public.games VALUES (74, 24, 2);
INSERT INTO public.games VALUES (75, 24, 2);
INSERT INTO public.games VALUES (76, 25, 2);
INSERT INTO public.games VALUES (77, 25, 2);
INSERT INTO public.games VALUES (78, 24, 2);
INSERT INTO public.games VALUES (79, 24, 2);
INSERT INTO public.games VALUES (80, 24, 2);
INSERT INTO public.games VALUES (81, 26, 2);
INSERT INTO public.games VALUES (82, 26, 2);
INSERT INTO public.games VALUES (83, 27, 2);
INSERT INTO public.games VALUES (84, 27, 2);
INSERT INTO public.games VALUES (85, 26, 2);
INSERT INTO public.games VALUES (86, 26, 2);
INSERT INTO public.games VALUES (87, 26, 2);
INSERT INTO public.games VALUES (88, 1, 2);
INSERT INTO public.games VALUES (89, 28, 2);
INSERT INTO public.games VALUES (90, 28, 2);
INSERT INTO public.games VALUES (91, 29, 2);
INSERT INTO public.games VALUES (92, 29, 2);
INSERT INTO public.games VALUES (93, 28, 2);
INSERT INTO public.games VALUES (94, 28, 2);
INSERT INTO public.games VALUES (95, 28, 2);
INSERT INTO public.games VALUES (96, 32, 897);
INSERT INTO public.games VALUES (97, 32, 274);
INSERT INTO public.games VALUES (98, 33, 510);
INSERT INTO public.games VALUES (99, 33, 481);
INSERT INTO public.games VALUES (100, 32, 454);
INSERT INTO public.games VALUES (101, 32, 409);
INSERT INTO public.games VALUES (102, 32, 173);
INSERT INTO public.games VALUES (103, 34, 379);
INSERT INTO public.games VALUES (104, 34, 656);
INSERT INTO public.games VALUES (105, 35, 579);
INSERT INTO public.games VALUES (106, 35, 540);
INSERT INTO public.games VALUES (107, 34, 401);
INSERT INTO public.games VALUES (108, 34, 370);
INSERT INTO public.games VALUES (109, 34, 618);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'Benjy');
INSERT INTO public.users VALUES (1, 'Test');
INSERT INTO public.users VALUES (3, 'user_1742112850225');
INSERT INTO public.users VALUES (4, 'user_1742112850224');
INSERT INTO public.users VALUES (5, 'user_1742114028799');
INSERT INTO public.users VALUES (6, 'user_1742114028798');
INSERT INTO public.users VALUES (7, 'user_1742114105744');
INSERT INTO public.users VALUES (8, 'user_1742114105743');
INSERT INTO public.users VALUES (9, 'user_1742114180849');
INSERT INTO public.users VALUES (10, 'user_1742114180848');
INSERT INTO public.users VALUES (11, '');
INSERT INTO public.users VALUES (12, 'user_1742115426911');
INSERT INTO public.users VALUES (13, 'user_1742115426910');
INSERT INTO public.users VALUES (14, 'user_1742115497255');
INSERT INTO public.users VALUES (15, 'user_1742115497254');
INSERT INTO public.users VALUES (16, 'user_1742115506047');
INSERT INTO public.users VALUES (17, 'user_1742115506046');
INSERT INTO public.users VALUES (18, 'user_1742115516868');
INSERT INTO public.users VALUES (19, 'user_1742115516867');
INSERT INTO public.users VALUES (20, 'user_1742115530072');
INSERT INTO public.users VALUES (21, 'user_1742115530071');
INSERT INTO public.users VALUES (22, 'user_1742115594143');
INSERT INTO public.users VALUES (23, 'user_1742115594142');
INSERT INTO public.users VALUES (24, 'user_1742115718902');
INSERT INTO public.users VALUES (25, 'user_1742115718901');
INSERT INTO public.users VALUES (26, 'user_1742115747980');
INSERT INTO public.users VALUES (27, 'user_1742115747979');
INSERT INTO public.users VALUES (28, 'user_1742115857647');
INSERT INTO public.users VALUES (29, 'user_1742115857646');
INSERT INTO public.users VALUES (30, 'user_1742115972434');
INSERT INTO public.users VALUES (31, 'user_1742115972433');
INSERT INTO public.users VALUES (32, 'user_1742115991242');
INSERT INTO public.users VALUES (33, 'user_1742115991241');
INSERT INTO public.users VALUES (34, 'user_1742116040047');
INSERT INTO public.users VALUES (35, 'user_1742116040046');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 109, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

