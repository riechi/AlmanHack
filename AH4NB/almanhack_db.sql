--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.3

-- Started on 2023-10-20 11:55:28

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
-- TOC entry 216 (class 1259 OID 16474)
-- Name: prodotti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prodotti (
    id integer NOT NULL,
    id_utente character varying(20),
    titolo character varying(20),
    autore character varying(20),
    copertina character varying(200),
    descrizione character varying(500),
    prezzo double precision,
    tipologia character varying(50)
);


ALTER TABLE public.prodotti OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16473)
-- Name: prodotti_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prodotti_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prodotti_id_seq OWNER TO postgres;

--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 215
-- Name: prodotti_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prodotti_id_seq OWNED BY public.prodotti.id;


--
-- TOC entry 214 (class 1259 OID 16468)
-- Name: utenti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utenti (
    username character varying(20) NOT NULL,
    passw character varying(20),
    nome character varying(20),
    cognome character varying(20)
);


ALTER TABLE public.utenti OWNER TO postgres;

--
-- TOC entry 3177 (class 2604 OID 16477)
-- Name: prodotti id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotti ALTER COLUMN id SET DEFAULT nextval('public.prodotti_id_seq'::regclass);


--
-- TOC entry 3327 (class 0 OID 16474)
-- Dependencies: 216
-- Data for Name: prodotti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prodotti (id, id_utente, titolo, autore, copertina, descrizione, prezzo, tipologia) FROM stdin;
1	juseppe	sono euforico	[redacted]	https://i.ytimg.com/vi/7pmoSdtEF5c/maxresdefault.jpg	un libro per diventare ricchi supervelocemente	5	acking poxo etnico
2	juseppe	Pino Insegna	pinolo puddu	https://cdn-img-p.facciabuco.com/128/8494223368-pino-insegno-satira_b.jpg	un libro per diventare insegnati easy	15	acking  etico
3	juseppe	La vendeta delle mel	Mateo Mocci Floris	https://th.bing.com/th/id/OIP.a6JeA56nGpCpUzqzf17SdwHaHe?pid=ImgDet&rs=1	un incredibile storia di fantapolitica su un futuro buio	15	acking  etico
\.


--
-- TOC entry 3325 (class 0 OID 16468)
-- Dependencies: 214
-- Data for Name: utenti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utenti (username, passw, nome, cognome) FROM stdin;
juseppe	12345	giuseppe	mocci
darkangeloxx	12345	Angelo	Puddu
tonino2000	12345	Tonio	Luzzo
bananone54	12345	Elonio	Muschio
\.


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 215
-- Name: prodotti_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prodotti_id_seq', 3, true);


--
-- TOC entry 3181 (class 2606 OID 16481)
-- Name: prodotti prodotti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotti
    ADD CONSTRAINT prodotti_pkey PRIMARY KEY (id);


--
-- TOC entry 3179 (class 2606 OID 16472)
-- Name: utenti utenti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utenti
    ADD CONSTRAINT utenti_pkey PRIMARY KEY (username);


--
-- TOC entry 3182 (class 2606 OID 16482)
-- Name: prodotti prodotti_id_utente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotti
    ADD CONSTRAINT prodotti_id_utente_fkey FOREIGN KEY (id_utente) REFERENCES public.utenti(username) ON UPDATE CASCADE;


-- Completed on 2023-10-20 11:55:29

--
-- PostgreSQL database dump complete
--

