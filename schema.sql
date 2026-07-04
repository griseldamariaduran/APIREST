--
-- PostgreSQL database dump
--

\restrict 1HVLRKma1NLvnceZEuPQdOeDiG93hg3aVnKu1I7IMcPugOcCVA4aoCxwdb2SxNh

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-07-04 17:55:17

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
-- TOC entry 4934 (class 0 OID 0)
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
-- TOC entry 4935 (class 0 OID 0)
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


-- Completed on 2026-07-04 17:55:18

--
-- PostgreSQL database dump complete
--

\unrestrict 1HVLRKma1NLvnceZEuPQdOeDiG93hg3aVnKu1I7IMcPugOcCVA4aoCxwdb2SxNh

