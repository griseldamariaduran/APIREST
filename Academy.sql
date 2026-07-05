--
-- PostgreSQL database dump
--

\restrict hUivNVuaf08UEQ9gw5RPSWs2FJKltUIaHmV3o6jEbndisNM3cnv6fgUX70iArA3

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-07-05 16:47:44

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 25365)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25380)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    "studentCode" text NOT NULL,
    "firstName" text NOT NULL,
    "lastName" text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    phone text,
    "birthDate" timestamp(3) without time zone,
    active boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updateAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25379)
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- TOC entry 223 (class 1259 OID 25508)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    code text NOT NULL,
    name text NOT NULL,
    credits integer DEFAULT 3 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updateAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25507)
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subjects_id_seq OWNER TO postgres;

--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 222
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- TOC entry 4766 (class 2604 OID 25383)
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- TOC entry 4769 (class 2604 OID 25511)
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- TOC entry 4929 (class 0 OID 25365)
-- Dependencies: 219
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
9ea91a4d-e11e-4572-a4b0-89b148136806	5433d4810a3ad9465c05fe0680983760b12a0e494c520c6bc1ce387c37447e2f	2026-06-20 01:07:54.152193+00	20260620010753_create_student_subject_tables	\N	\N	2026-06-20 01:07:53.898182+00	1
f37de9bf-50c1-485a-8862-a26d8d65cbe7	fb7b5d928d73b876917c658deba31f37958e736e51f638e4c3c2cc8cf05b6e83	2026-06-20 01:23:53.918587+00	20260620012353_update_table_subjects	\N	\N	2026-06-20 01:23:53.65606+00	1
\.


--
-- TOC entry 4931 (class 0 OID 25380)
-- Dependencies: 221
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, "studentCode", "firstName", "lastName", email, password, phone, "birthDate", active, "createdAt", "updateAt") FROM stdin;
1	stu1	Griselda	Duran	gris.duran@gmail.com	12345678	70258639	1983-03-04 00:00:00	t	2026-06-29 14:01:54.985	2026-06-29 14:01:54.985
3	stu2	Alberto	Martinez	alberto.martinez@gmail.com	$2b$12$RRsD7fUxJpanX34Udmgs7uDz3f19P7lqpLu9pnPB2VzLR697o1s0y	7784-5673	1982-05-15 00:00:00	t	2026-06-30 16:43:13.858	2026-06-30 16:43:13.858
6	student3	Fernando	Aguilar	fernando.aguilar@gmail.com	$2b$12$JdgvMwXmldpAJ4XEis6FN.dZYBZeJkesvRv0DVbWec7uRvr88hq3e	7754-5643	1986-09-15 00:00:00	t	2026-06-30 16:47:00.615	2026-06-30 16:47:00.615
\.


--
-- TOC entry 4933 (class 0 OID 25508)
-- Dependencies: 223
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, code, name, credits, active, "createdAt", "updateAt") FROM stdin;
\.


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 6, true);


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 222
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 1, false);


--
-- TOC entry 4774 (class 2606 OID 25378)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4777 (class 2606 OID 25398)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 4781 (class 2606 OID 25525)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- TOC entry 4775 (class 1259 OID 25419)
-- Name: students_email_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX students_email_key ON public.students USING btree (email);


--
-- TOC entry 4778 (class 1259 OID 25418)
-- Name: students_studentCode_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "students_studentCode_key" ON public.students USING btree ("studentCode");


--
-- TOC entry 4779 (class 1259 OID 25526)
-- Name: subjects_code_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX subjects_code_key ON public.subjects USING btree (code);


-- Completed on 2026-07-05 16:47:45

--
-- PostgreSQL database dump complete
--

\unrestrict hUivNVuaf08UEQ9gw5RPSWs2FJKltUIaHmV3o6jEbndisNM3cnv6fgUX70iArA3

