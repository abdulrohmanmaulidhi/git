--
-- PostgreSQL database dump
--

\restrict bYirbcZeeVaFsgIKqUgtKK3SaPzgEMKlzbaKQxVws7D38sPYJFWQ8xCgEAQ98Ch

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: nilai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nilai (
    id integer NOT NULL,
    siswa_id integer,
    mata_pelajaran character varying(100),
    nilai integer
);


ALTER TABLE public.nilai OWNER TO postgres;

--
-- Name: nilai_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nilai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nilai_id_seq OWNER TO postgres;

--
-- Name: nilai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nilai_id_seq OWNED BY public.nilai.id;


--
-- Name: siswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siswa (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    umur integer,
    jurusan character varying(50)
);


ALTER TABLE public.siswa OWNER TO postgres;

--
-- Name: siswa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.siswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.siswa_id_seq OWNER TO postgres;

--
-- Name: siswa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.siswa_id_seq OWNED BY public.siswa.id;


--
-- Name: nilai id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai ALTER COLUMN id SET DEFAULT nextval('public.nilai_id_seq'::regclass);


--
-- Name: siswa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa ALTER COLUMN id SET DEFAULT nextval('public.siswa_id_seq'::regclass);


--
-- Data for Name: nilai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nilai (id, siswa_id, mata_pelajaran, nilai) FROM stdin;
1	1	Matematika	85
2	1	Bahasa Inggris	88
4	2	Ekonomi	90
5	3	Fisika	92
6	3	Kimia	80
7	4	Sejarah	78
8	4	Bahasa Indonesia	85
9	5	Sosiologi	70
10	5	Geografi	82
\.


--
-- Data for Name: siswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.siswa (id, nama, umur, jurusan) FROM stdin;
1	Andi	16	IPA
3	Citra	16	IPA
4	Dewi	17	Bahasa
5	Eko	18	IPS
2	Budi	17	Teknik
\.


--
-- Name: nilai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nilai_id_seq', 10, true);


--
-- Name: siswa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.siswa_id_seq', 5, true);


--
-- Name: nilai nilai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT nilai_pkey PRIMARY KEY (id);


--
-- Name: siswa siswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa
    ADD CONSTRAINT siswa_pkey PRIMARY KEY (id);


--
-- Name: nilai nilai_siswa_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES public.siswa(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict bYirbcZeeVaFsgIKqUgtKK3SaPzgEMKlzbaKQxVws7D38sPYJFWQ8xCgEAQ98Ch

