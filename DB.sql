--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3 (Debian 11.3-1.pgdg90+1)
-- Dumped by pg_dump version 11.3 (Debian 11.3-1.pgdg90+1)

-- Started on 2019-06-04 12:49:16 -04

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

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16389)
-- Name: Arriendo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Arriendo" (
    id integer NOT NULL,
    semestre integer NOT NULL,
    "año" integer NOT NULL,
    persona_rut text
);


ALTER TABLE public."Arriendo" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16405)
-- Name: Asociado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Asociado" (
    horario_dia date,
    horario_bloque integer,
    arriendo_id integer,
    fecha date
);


ALTER TABLE public."Asociado" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16474)
-- Name: Baño; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Baño" (
    edificio_nombre text NOT NULL,
    "nroPiso" integer NOT NULL,
    "número" integer NOT NULL,
    estado text
);


ALTER TABLE public."Baño" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16541)
-- Name: Calefaccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Calefaccion" (
    id integer NOT NULL,
    tipo text
);


ALTER TABLE public."Calefaccion" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16554)
-- Name: Computador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Computador" (
    id integer NOT NULL,
    "RAM" double precision,
    "Marca" text,
    "Procesador" text,
    rom text
);


ALTER TABLE public."Computador" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16528)
-- Name: Data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Data" (
    id integer NOT NULL,
    modelo text
);


ALTER TABLE public."Data" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16442)
-- Name: Edificio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Edificio" (
    "Nombre" text NOT NULL,
    "Color" text,
    "Especificación Técnica" text
);


ALTER TABLE public."Edificio" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16488)
-- Name: Instrumento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Instrumento" (
    id integer NOT NULL,
    estado text,
    "descripción" text,
    sala_nombre text
);


ALTER TABLE public."Instrumento" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16397)
-- Name: Persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Persona" (
    rut text NOT NULL,
    "Nombres" text NOT NULL,
    "ApellidoP" text NOT NULL,
    "ApellidoM" text
);


ALTER TABLE public."Persona" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16568)
-- Name: Pizarra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pizarra" (
    id integer NOT NULL,
    tipo text,
    largo double precision,
    ancho double precision
);


ALTER TABLE public."Pizarra" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16502)
-- Name: Profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Profesor" (
    rut text NOT NULL,
    "NumRamos" integer
);


ALTER TABLE public."Profesor" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16434)
-- Name: Sala; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sala" (
    "Nombre" text NOT NULL,
    "Capacidad" integer NOT NULL,
    "nroPiso" integer NOT NULL,
    "Edificio_nombre" text NOT NULL
);


ALTER TABLE public."Sala" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16515)
-- Name: Secretaria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Secretaria" (
    rut text NOT NULL
);


ALTER TABLE public."Secretaria" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16456)
-- Name: Tiene; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tiene" (
    sala_nombre text,
    arriendo_id integer
);


ALTER TABLE public."Tiene" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16384)
-- Name: horario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horario (
    dia date NOT NULL,
    bloque integer NOT NULL
);


ALTER TABLE public.horario OWNER TO postgres;

--
-- TOC entry 2985 (class 0 OID 16389)
-- Dependencies: 197
-- Data for Name: Arriendo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Arriendo" (id, semestre, "año", persona_rut) FROM stdin;
0	1	2022	6.649.330-K
1	1	2023	13.684.265-K
2	2	2020	13.042.007-9
3	2	2023	7.955.460-K
4	2	2021	18.161.429-3
5	2	2023	9.883.215-7
6	2	2019	17.640.598-8
7	1	2023	14.031.763-2
8	1	2023	17.364.646-1
9	2	2019	6.649.330-K
10	2	2019	13.684.265-K
11	2	2020	8.304.855-7
12	2	2020	8.773.771-3
13	2	2022	15.633.229-1
14	2	2023	12.981.678-3
15	1	2020	16.413.100-9
16	2	2019	14.959.974-6
17	1	2023	12.884.825-8
18	1	2023	12.294.442-5
19	1	2023	12.884.825-8
20	1	2019	8.773.771-3
21	2	2020	14.886.536-1
22	1	2023	18.161.429-3
23	2	2023	14.031.763-2
24	2	2021	11.013.211-5
25	2	2023	7.068.888-3
26	1	2019	12.294.442-5
27	2	2019	19.754.071-K
28	2	2020	17.640.598-8
29	2	2020	12.134.054-2
30	2	2019	17.719.908-7
31	2	2022	18.622.213-K
32	2	2021	7.955.460-K
33	2	2022	19.754.071-K
34	2	2021	7.955.460-K
35	2	2021	15.333.083-2
36	1	2022	18.622.213-K
37	1	2023	12.443.332-K
38	1	2019	18.622.213-K
39	2	2020	13.433.689-7
40	1	2023	11.781.402-5
41	2	2019	18.141.782-K
42	2	2019	16.123.958-5
43	1	2020	12.134.054-2
44	1	2023	14.031.763-2
45	1	2023	14.886.536-1
46	2	2023	6.237.323-7
47	1	2021	6.237.323-7
48	1	2019	14.638.650-4
49	1	2020	14.959.974-6
\.


--
-- TOC entry 2987 (class 0 OID 16405)
-- Dependencies: 199
-- Data for Name: Asociado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Asociado" (horario_dia, horario_bloque, arriendo_id, fecha) FROM stdin;
2021-09-25	6	19	2020-11-03
2020-08-28	5	46	2020-04-14
2021-08-21	7	44	2020-11-10
2019-08-19	5	20	2019-03-14
2019-01-07	10	42	2020-04-28
2020-10-09	5	10	2020-07-18
2020-04-20	1	11	2019-03-30
2019-03-28	3	26	2019-04-17
2019-12-31	7	21	2020-07-01
2021-05-17	6	32	2020-08-04
2019-06-27	9	21	2020-02-04
2020-12-19	9	28	2019-08-17
2021-04-23	7	22	2020-03-04
2021-09-13	10	32	2021-06-07
2020-04-24	1	39	2021-03-10
2019-05-12	5	32	2019-11-05
2019-07-23	9	49	2019-01-09
2020-12-31	9	27	2020-09-05
2020-09-06	3	37	2019-09-18
2019-03-01	7	33	2021-03-23
\.


--
-- TOC entry 2991 (class 0 OID 16474)
-- Dependencies: 203
-- Data for Name: Baño; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Baño" (edificio_nombre, "nroPiso", "número", estado) FROM stdin;
Edificio Cepeda	2	0	funcionando
Edificio Sio	5	1	funcionando
Edificio Cazanga	3	2	funcionando
Edificio Bazo	2	3	funcionando
Edificio Ubach	1	4	funcionando
Edificio Urra	5	5	funcionando
Edificio Urra	3	6	funcionando
Edificio Dapuerto	5	7	funcionando
Edificio Sio	4	8	funcionando
Edificio Cevilla	3	9	funcionando
Edificio Urbano	1	10	funcionando
Edificio Urra	3	11	funcionando
Edificio Pessoa	4	12	funcionando
Edificio Yglesias	1	13	funcionando
Edificio Yglesias	4	14	funcionando
Edificio Cazanga	1	15	funcionando
Edificio Cevilla	6	16	funcionando
Edificio Veas	1	17	funcionando
Edificio Servellón	2	18	funcionando
Edificio Cazanga	4	19	funcionando
Edificio Cazanga	4	20	funcionando
Edificio Yglesias	1	21	funcionando
Edificio Dapuerto	2	22	funcionando
Edificio Pujol	1	23	funcionando
Edificio Veas	4	24	funcionando
Edificio Cevilla	4	25	funcionando
Edificio Beatriz	1	26	funcionando
Edificio León	5	27	funcionando
Edificio León	4	28	funcionando
Edificio Argüelles	2	29	funcionando
Edificio Cevilla	1	30	funcionando
Edificio Urbano	5	31	funcionando
Edificio Pujol	3	32	funcionando
Edificio Argüelles	1	33	funcionando
Edificio Servellón	3	34	funcionando
Edificio Dapuerto	6	35	funcionando
Edificio León	2	36	funcionando
Edificio Corao	6	37	funcionando
Edificio Bazo	2	38	funcionando
Edificio Pujol	1	39	funcionando
\.


--
-- TOC entry 2996 (class 0 OID 16541)
-- Dependencies: 208
-- Data for Name: Calefaccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Calefaccion" (id, tipo) FROM stdin;
100000	electrico
100001	electrico
100007	electrico
100008	electrico
100014	electrico
100015	electrico
100021	electrico
100022	electrico
100028	electrico
100029	electrico
100035	electrico
100036	electrico
100042	electrico
100043	electrico
100049	electrico
100050	electrico
100056	electrico
100057	electrico
100063	electrico
100064	electrico
100070	electrico
100071	electrico
100077	electrico
100078	electrico
100084	electrico
100085	electrico
100091	electrico
100092	electrico
100098	electrico
100099	electrico
100105	electrico
100106	electrico
100112	electrico
100113	electrico
100119	electrico
100120	electrico
100126	electrico
100127	electrico
100133	electrico
100134	electrico
100140	electrico
100141	electrico
100147	electrico
100148	electrico
100154	electrico
100155	electrico
100161	electrico
100162	electrico
100168	electrico
100169	electrico
100175	electrico
100176	electrico
100182	electrico
100183	electrico
100189	electrico
100190	electrico
100196	electrico
100197	electrico
100203	electrico
100204	electrico
100210	electrico
100211	electrico
100217	electrico
100218	electrico
100224	electrico
100225	electrico
100231	electrico
100232	electrico
100238	electrico
100239	electrico
100245	electrico
100246	electrico
100252	electrico
100253	electrico
100259	electrico
100260	electrico
100266	electrico
100267	electrico
100273	electrico
100274	electrico
\.


--
-- TOC entry 2997 (class 0 OID 16554)
-- Dependencies: 209
-- Data for Name: Computador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Computador" (id, "RAM", "Marca", "Procesador", rom) FROM stdin;
100002	7.37559200026201545	IntelliComputer	Antel Feleron HP4651	SSD 256GB
100005	13.8068214624731596	IntelliComputer	Antel Feleron HP4127	SSD 256GB
100006	15.9946893264812076	IntelliComputer	Antel Feleron HP4323	SSD 256GB
100009	11.1691489972387306	IntelliComputer	Antel Feleron HP3091	SSD 256GB
100012	8.76998463546028972	IntelliComputer	Antel Feleron HP2010	SSD 256GB
100013	5.40030491233443488	IntelliComputer	Antel Feleron HP2402	SSD 256GB
100016	5.68774320881426299	IntelliComputer	Antel Feleron HP1354	SSD 256GB
100019	6.8340318704280314	IntelliComputer	Antel Feleron HP4388	SSD 256GB
100020	5.32756738003803854	IntelliComputer	Antel Feleron HP3793	SSD 256GB
100023	11.5540127148899359	IntelliComputer	Antel Feleron HP4019	SSD 256GB
100026	14.5678143317635076	IntelliComputer	Antel Feleron HP3247	SSD 256GB
100027	13.8097676612367355	IntelliComputer	Antel Feleron HP3109	SSD 256GB
100030	13.8331046643172293	IntelliComputer	Antel Feleron HP2941	SSD 256GB
100033	9.86040004451233187	IntelliComputer	Antel Feleron HP2100	SSD 256GB
100034	9.97918122487011949	IntelliComputer	Antel Feleron HP2874	SSD 256GB
100037	12.1014007566275339	IntelliComputer	Antel Feleron HP2740	SSD 256GB
100040	10.5678801444511201	IntelliComputer	Antel Feleron HP4175	SSD 256GB
100041	4.4152723361426478	IntelliComputer	Antel Feleron HP3919	SSD 256GB
100044	6.36481973015053004	IntelliComputer	Antel Feleron HP2207	SSD 256GB
100047	15.8104033755637676	IntelliComputer	Antel Feleron HP1689	SSD 256GB
100048	9.10376594366564618	IntelliComputer	Antel Feleron HP1418	SSD 256GB
100051	10.3690367829945025	IntelliComputer	Antel Feleron HP4161	SSD 256GB
100054	14.5350943513445365	IntelliComputer	Antel Feleron HP3820	SSD 256GB
100055	4.38150299318394687	IntelliComputer	Antel Feleron HP4220	SSD 256GB
100058	4.60514761720019905	IntelliComputer	Antel Feleron HP2038	SSD 256GB
100061	4.13858531829061072	IntelliComputer	Antel Feleron HP1127	SSD 256GB
100062	9.43308643003573799	IntelliComputer	Antel Feleron HP3446	SSD 256GB
100065	15.4632040418683427	IntelliComputer	Antel Feleron HP1915	SSD 256GB
100068	6.0857858898334225	IntelliComputer	Antel Feleron HP4581	SSD 256GB
100069	13.2821736735685931	IntelliComputer	Antel Feleron HP3974	SSD 256GB
100072	12.2161364385281104	IntelliComputer	Antel Feleron HP4056	SSD 256GB
100075	12.3629759315132564	IntelliComputer	Antel Feleron HP4998	SSD 256GB
100076	10.8058907005951497	IntelliComputer	Antel Feleron HP3278	SSD 256GB
100079	8.32632046826918781	IntelliComputer	Antel Feleron HP3641	SSD 256GB
100082	4.9065448489020973	IntelliComputer	Antel Feleron HP3776	SSD 256GB
100083	8.21359597350539339	IntelliComputer	Antel Feleron HP3368	SSD 256GB
100086	4.94624225839104525	IntelliComputer	Antel Feleron HP4600	SSD 256GB
100089	7.32560457813146471	IntelliComputer	Antel Feleron HP3741	SSD 256GB
100090	4.87885765645701319	IntelliComputer	Antel Feleron HP3310	SSD 256GB
100093	6.55972714863065942	IntelliComputer	Antel Feleron HP2300	SSD 256GB
100096	10.3698771938847614	IntelliComputer	Antel Feleron HP3232	SSD 256GB
100097	13.9819147417503764	IntelliComputer	Antel Feleron HP1212	SSD 256GB
100100	9.77003817081346249	IntelliComputer	Antel Feleron HP4367	SSD 256GB
100103	9.13356871003862558	IntelliComputer	Antel Feleron HP1338	SSD 256GB
100104	15.7661529034508554	IntelliComputer	Antel Feleron HP1649	SSD 256GB
100107	10.9414570723978173	IntelliComputer	Antel Feleron HP3759	SSD 256GB
100110	11.0266155998231739	IntelliComputer	Antel Feleron HP2303	SSD 256GB
100111	13.1464855819194497	IntelliComputer	Antel Feleron HP4097	SSD 256GB
100114	4.3172851328489692	IntelliComputer	Antel Feleron HP4517	SSD 256GB
100117	7.54873826564547734	IntelliComputer	Antel Feleron HP1471	SSD 256GB
100118	13.2229726355633552	IntelliComputer	Antel Feleron HP4003	SSD 256GB
100121	13.315153936044215	IntelliComputer	Antel Feleron HP4764	SSD 256GB
100124	6.15965904931251362	IntelliComputer	Antel Feleron HP1488	SSD 256GB
100125	13.0377907591605151	IntelliComputer	Antel Feleron HP3515	SSD 256GB
100128	15.5239355858997268	IntelliComputer	Antel Feleron HP1727	SSD 256GB
100131	10.0433158974114374	IntelliComputer	Antel Feleron HP2568	SSD 256GB
100132	11.4551196884760742	IntelliComputer	Antel Feleron HP3185	SSD 256GB
100135	13.1010620685911867	IntelliComputer	Antel Feleron HP3210	SSD 256GB
100138	8.34269979367395109	IntelliComputer	Antel Feleron HP2413	SSD 256GB
100139	7.80846015605162513	IntelliComputer	Antel Feleron HP3928	SSD 256GB
100142	6.59283400267502451	IntelliComputer	Antel Feleron HP2244	SSD 256GB
100145	7.77136593167388412	IntelliComputer	Antel Feleron HP3192	SSD 256GB
100146	7.51029329695795234	IntelliComputer	Antel Feleron HP2814	SSD 256GB
100149	9.66858290093910533	IntelliComputer	Antel Feleron HP4628	SSD 256GB
100152	13.8040830818630269	IntelliComputer	Antel Feleron HP4858	SSD 256GB
100153	14.897723763789914	IntelliComputer	Antel Feleron HP1485	SSD 256GB
100156	11.3251984409750364	IntelliComputer	Antel Feleron HP3337	SSD 256GB
100159	10.2097498833334548	IntelliComputer	Antel Feleron HP4866	SSD 256GB
100160	5.98349458131451684	IntelliComputer	Antel Feleron HP2292	SSD 256GB
100163	5.00524749030276883	IntelliComputer	Antel Feleron HP3459	SSD 256GB
100166	8.83032023090239271	IntelliComputer	Antel Feleron HP3102	SSD 256GB
100167	5.95782370549476603	IntelliComputer	Antel Feleron HP2587	SSD 256GB
100170	9.31210713918498989	IntelliComputer	Antel Feleron HP2427	SSD 256GB
100173	9.01994571525555955	IntelliComputer	Antel Feleron HP3379	SSD 256GB
100174	5.63234038875263465	IntelliComputer	Antel Feleron HP3829	SSD 256GB
100177	10.7495714330958307	IntelliComputer	Antel Feleron HP3724	SSD 256GB
100180	15.3739938140911523	IntelliComputer	Antel Feleron HP4951	SSD 256GB
100181	15.4578859011349099	IntelliComputer	Antel Feleron HP4050	SSD 256GB
100184	8.93241618656174907	IntelliComputer	Antel Feleron HP4779	SSD 256GB
100187	11.5366257484597945	IntelliComputer	Antel Feleron HP2205	SSD 256GB
100188	6.31922342531957781	IntelliComputer	Antel Feleron HP1038	SSD 256GB
100191	8.39309841252648781	IntelliComputer	Antel Feleron HP3205	SSD 256GB
100194	5.81233747877941553	IntelliComputer	Antel Feleron HP3099	SSD 256GB
100195	10.1863574544628932	IntelliComputer	Antel Feleron HP3119	SSD 256GB
100198	5.10150381383657781	IntelliComputer	Antel Feleron HP4852	SSD 256GB
100201	10.8989102113327014	IntelliComputer	Antel Feleron HP2783	SSD 256GB
100202	14.0347710194383772	IntelliComputer	Antel Feleron HP1607	SSD 256GB
100205	4.40546603720160412	IntelliComputer	Antel Feleron HP1186	SSD 256GB
100208	5.22859604430675518	IntelliComputer	Antel Feleron HP4014	SSD 256GB
100209	12.2446746181280837	IntelliComputer	Antel Feleron HP4388	SSD 256GB
100212	12.7031987949017413	IntelliComputer	Antel Feleron HP4328	SSD 256GB
100215	12.8425768075524793	IntelliComputer	Antel Feleron HP3378	SSD 256GB
100216	7.85701534256222445	IntelliComputer	Antel Feleron HP4025	SSD 256GB
100219	11.7385280209290528	IntelliComputer	Antel Feleron HP3020	SSD 256GB
100222	5.88885800887474531	IntelliComputer	Antel Feleron HP2717	SSD 256GB
100223	4.57721402205102557	IntelliComputer	Antel Feleron HP1972	SSD 256GB
100226	7.00191973616481533	IntelliComputer	Antel Feleron HP4346	SSD 256GB
100229	8.14042094528809912	IntelliComputer	Antel Feleron HP1997	SSD 256GB
100230	10.4966886397909569	IntelliComputer	Antel Feleron HP3131	SSD 256GB
100233	12.6018850527805117	IntelliComputer	Antel Feleron HP1954	SSD 256GB
100236	8.43035530396884702	IntelliComputer	Antel Feleron HP4090	SSD 256GB
100237	5.51809961358948708	IntelliComputer	Antel Feleron HP1561	SSD 256GB
100240	13.3976479033456748	IntelliComputer	Antel Feleron HP3845	SSD 256GB
100243	11.1251544495363461	IntelliComputer	Antel Feleron HP1528	SSD 256GB
100244	12.1922052692046332	IntelliComputer	Antel Feleron HP4506	SSD 256GB
100247	4.99060832683047018	IntelliComputer	Antel Feleron HP2280	SSD 256GB
100250	15.7687339189992777	IntelliComputer	Antel Feleron HP3505	SSD 256GB
100251	6.34397887498377422	IntelliComputer	Antel Feleron HP1220	SSD 256GB
100254	9.91460465117603817	IntelliComputer	Antel Feleron HP1434	SSD 256GB
100257	9.10390671721899736	IntelliComputer	Antel Feleron HP3311	SSD 256GB
100258	11.456766703278884	IntelliComputer	Antel Feleron HP3397	SSD 256GB
100261	6.04192867546237089	IntelliComputer	Antel Feleron HP1292	SSD 256GB
100264	4.41445291691423236	IntelliComputer	Antel Feleron HP2952	SSD 256GB
100265	14.6807415413416162	IntelliComputer	Antel Feleron HP2432	SSD 256GB
100268	14.0046074317821603	IntelliComputer	Antel Feleron HP3655	SSD 256GB
100271	10.162285456443179	IntelliComputer	Antel Feleron HP4140	SSD 256GB
100272	14.5407297023767779	IntelliComputer	Antel Feleron HP1410	SSD 256GB
100275	9.19419142748303742	IntelliComputer	Antel Feleron HP1465	SSD 256GB
100278	11.7427678777280349	IntelliComputer	Antel Feleron HP3860	SSD 256GB
100279	9.28622553242419002	IntelliComputer	Antel Feleron HP3860	SSD 256GB
\.


--
-- TOC entry 2995 (class 0 OID 16528)
-- Dependencies: 207
-- Data for Name: Data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Data" (id, modelo) FROM stdin;
100003	DV1194
100010	DV1970
100017	DV1626
100024	DV1735
100031	DV1019
100038	DV1251
100045	DV1601
100052	DV1133
100059	DV1405
100066	DV1585
100073	DV1625
100080	DV1318
100087	DV1663
100094	DV1211
100101	DV1982
100108	DV1343
100115	DV1322
100122	DV1931
100129	DV1287
100136	DV1358
100143	DV1018
100150	DV1836
100157	DV1419
100164	DV1220
100171	DV1867
100178	DV1461
100185	DV1733
100192	DV1060
100199	DV1067
100206	DV1052
100213	DV1441
100220	DV1442
100227	DV1062
100234	DV1572
100241	DV1667
100248	DV1140
100255	DV1716
100262	DV1511
100269	DV1854
100276	DV1524
\.


--
-- TOC entry 2989 (class 0 OID 16442)
-- Dependencies: 201
-- Data for Name: Edificio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Edificio" ("Nombre", "Color", "Especificación Técnica") FROM stdin;
Edificio Beatriz	rojo	Edificio Tecnico de universidad
Edificio Urbano	rojo	Edificio Tecnico de universidad
Edificio León	rojo	Edificio Tecnico de universidad
Edificio Argüelles	rojo	Edificio Tecnico de universidad
Edificio De Camino	rojo	Edificio Tecnico de universidad
Edificio Cazanga	rojo	Edificio Tecnico de universidad
Edificio Pujol	rojo	Edificio Tecnico de universidad
Edificio Sio	rojo	Edificio Tecnico de universidad
Edificio Urra	rojo	Edificio Tecnico de universidad
Edificio Cepeda	rojo	Edificio Tecnico de universidad
Edificio Dapuerto	rojo	Edificio Tecnico de universidad
Edificio Servellón	rojo	Edificio Tecnico de universidad
Edificio Veas	rojo	Edificio Tecnico de universidad
Edificio Pessoa	rojo	Edificio Tecnico de universidad
Edificio Corao	rojo	Edificio Tecnico de universidad
Edificio Bazo	rojo	Edificio Tecnico de universidad
Edificio Yglesias	rojo	Edificio Tecnico de universidad
Edificio Cubria	rojo	Edificio Tecnico de universidad
Edificio Ubach	rojo	Edificio Tecnico de universidad
Edificio Cevilla	rojo	Edificio Tecnico de universidad
\.


--
-- TOC entry 2992 (class 0 OID 16488)
-- Dependencies: 204
-- Data for Name: Instrumento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Instrumento" (id, estado, "descripción", sala_nombre) FROM stdin;
100000	operativo	Instrumento generado Aleatoriamente	Sala Ronald Quiroz
100001	operativo	Instrumento generado Aleatoriamente	Sala Ronald Quiroz
100002	operativo	Instrumento generado Aleatoriamente	Sala Ronald Quiroz
100003	operativo	Instrumento generado Aleatoriamente	Sala Ronald Quiroz
100004	operativo	Instrumento generado Aleatoriamente	Sala Ronald Quiroz
100005	operativo	Instrumento generado Aleatoriamente	Sala Ronald Quiroz
100006	operativo	Instrumento generado Aleatoriamente	Sala Ronald Quiroz
100007	operativo	Instrumento generado Aleatoriamente	Sala Antonio Bedoya
100008	operativo	Instrumento generado Aleatoriamente	Sala Antonio Bedoya
100009	operativo	Instrumento generado Aleatoriamente	Sala Antonio Bedoya
100010	operativo	Instrumento generado Aleatoriamente	Sala Antonio Bedoya
100011	operativo	Instrumento generado Aleatoriamente	Sala Antonio Bedoya
100012	operativo	Instrumento generado Aleatoriamente	Sala Antonio Bedoya
100013	operativo	Instrumento generado Aleatoriamente	Sala Antonio Bedoya
100014	operativo	Instrumento generado Aleatoriamente	Sala Donna Asencio
100015	operativo	Instrumento generado Aleatoriamente	Sala Donna Asencio
100016	operativo	Instrumento generado Aleatoriamente	Sala Donna Asencio
100017	operativo	Instrumento generado Aleatoriamente	Sala Donna Asencio
100018	operativo	Instrumento generado Aleatoriamente	Sala Donna Asencio
100019	operativo	Instrumento generado Aleatoriamente	Sala Donna Asencio
100020	operativo	Instrumento generado Aleatoriamente	Sala Donna Asencio
100021	operativo	Instrumento generado Aleatoriamente	Sala Christopher Guajardo
100022	operativo	Instrumento generado Aleatoriamente	Sala Christopher Guajardo
100023	operativo	Instrumento generado Aleatoriamente	Sala Christopher Guajardo
100024	operativo	Instrumento generado Aleatoriamente	Sala Christopher Guajardo
100025	operativo	Instrumento generado Aleatoriamente	Sala Christopher Guajardo
100026	operativo	Instrumento generado Aleatoriamente	Sala Christopher Guajardo
100027	operativo	Instrumento generado Aleatoriamente	Sala Christopher Guajardo
100028	operativo	Instrumento generado Aleatoriamente	Sala Emily Cid
100029	operativo	Instrumento generado Aleatoriamente	Sala Emily Cid
100030	operativo	Instrumento generado Aleatoriamente	Sala Emily Cid
100031	operativo	Instrumento generado Aleatoriamente	Sala Emily Cid
100032	operativo	Instrumento generado Aleatoriamente	Sala Emily Cid
100033	operativo	Instrumento generado Aleatoriamente	Sala Emily Cid
100034	operativo	Instrumento generado Aleatoriamente	Sala Emily Cid
100035	operativo	Instrumento generado Aleatoriamente	Sala Julie Rozados
100036	operativo	Instrumento generado Aleatoriamente	Sala Julie Rozados
100037	operativo	Instrumento generado Aleatoriamente	Sala Julie Rozados
100038	operativo	Instrumento generado Aleatoriamente	Sala Julie Rozados
100039	operativo	Instrumento generado Aleatoriamente	Sala Julie Rozados
100040	operativo	Instrumento generado Aleatoriamente	Sala Julie Rozados
100041	operativo	Instrumento generado Aleatoriamente	Sala Julie Rozados
100042	operativo	Instrumento generado Aleatoriamente	Sala Eugene Verardo
100043	operativo	Instrumento generado Aleatoriamente	Sala Eugene Verardo
100044	operativo	Instrumento generado Aleatoriamente	Sala Eugene Verardo
100045	operativo	Instrumento generado Aleatoriamente	Sala Eugene Verardo
100046	operativo	Instrumento generado Aleatoriamente	Sala Eugene Verardo
100047	operativo	Instrumento generado Aleatoriamente	Sala Eugene Verardo
100048	operativo	Instrumento generado Aleatoriamente	Sala Eugene Verardo
100049	operativo	Instrumento generado Aleatoriamente	Sala Ann Saguero
100050	operativo	Instrumento generado Aleatoriamente	Sala Ann Saguero
100051	operativo	Instrumento generado Aleatoriamente	Sala Ann Saguero
100052	operativo	Instrumento generado Aleatoriamente	Sala Ann Saguero
100053	operativo	Instrumento generado Aleatoriamente	Sala Ann Saguero
100054	operativo	Instrumento generado Aleatoriamente	Sala Ann Saguero
100055	operativo	Instrumento generado Aleatoriamente	Sala Ann Saguero
100056	operativo	Instrumento generado Aleatoriamente	Sala Linda Quinde
100057	operativo	Instrumento generado Aleatoriamente	Sala Linda Quinde
100058	operativo	Instrumento generado Aleatoriamente	Sala Linda Quinde
100059	operativo	Instrumento generado Aleatoriamente	Sala Linda Quinde
100060	operativo	Instrumento generado Aleatoriamente	Sala Linda Quinde
100061	operativo	Instrumento generado Aleatoriamente	Sala Linda Quinde
100062	operativo	Instrumento generado Aleatoriamente	Sala Linda Quinde
100063	operativo	Instrumento generado Aleatoriamente	Sala Kenneth Fernández
100064	operativo	Instrumento generado Aleatoriamente	Sala Kenneth Fernández
100065	operativo	Instrumento generado Aleatoriamente	Sala Kenneth Fernández
100066	operativo	Instrumento generado Aleatoriamente	Sala Kenneth Fernández
100067	operativo	Instrumento generado Aleatoriamente	Sala Kenneth Fernández
100068	operativo	Instrumento generado Aleatoriamente	Sala Kenneth Fernández
100069	operativo	Instrumento generado Aleatoriamente	Sala Kenneth Fernández
100070	operativo	Instrumento generado Aleatoriamente	Sala Denise Better
100071	operativo	Instrumento generado Aleatoriamente	Sala Denise Better
100072	operativo	Instrumento generado Aleatoriamente	Sala Denise Better
100073	operativo	Instrumento generado Aleatoriamente	Sala Denise Better
100074	operativo	Instrumento generado Aleatoriamente	Sala Denise Better
100075	operativo	Instrumento generado Aleatoriamente	Sala Denise Better
100076	operativo	Instrumento generado Aleatoriamente	Sala Denise Better
100077	operativo	Instrumento generado Aleatoriamente	Sala Nancy Vila
100078	operativo	Instrumento generado Aleatoriamente	Sala Nancy Vila
100079	operativo	Instrumento generado Aleatoriamente	Sala Nancy Vila
100080	operativo	Instrumento generado Aleatoriamente	Sala Nancy Vila
100081	operativo	Instrumento generado Aleatoriamente	Sala Nancy Vila
100082	operativo	Instrumento generado Aleatoriamente	Sala Nancy Vila
100083	operativo	Instrumento generado Aleatoriamente	Sala Nancy Vila
100084	operativo	Instrumento generado Aleatoriamente	Sala Jesse Peytrequín
100085	operativo	Instrumento generado Aleatoriamente	Sala Jesse Peytrequín
100086	operativo	Instrumento generado Aleatoriamente	Sala Jesse Peytrequín
100087	operativo	Instrumento generado Aleatoriamente	Sala Jesse Peytrequín
100088	operativo	Instrumento generado Aleatoriamente	Sala Jesse Peytrequín
100089	operativo	Instrumento generado Aleatoriamente	Sala Jesse Peytrequín
100090	operativo	Instrumento generado Aleatoriamente	Sala Jesse Peytrequín
100091	operativo	Instrumento generado Aleatoriamente	Sala Robert Gonzales
100092	operativo	Instrumento generado Aleatoriamente	Sala Robert Gonzales
100093	operativo	Instrumento generado Aleatoriamente	Sala Robert Gonzales
100094	operativo	Instrumento generado Aleatoriamente	Sala Robert Gonzales
100095	operativo	Instrumento generado Aleatoriamente	Sala Robert Gonzales
100096	operativo	Instrumento generado Aleatoriamente	Sala Robert Gonzales
100097	operativo	Instrumento generado Aleatoriamente	Sala Robert Gonzales
100098	operativo	Instrumento generado Aleatoriamente	Sala Thomas Zamuria
100099	operativo	Instrumento generado Aleatoriamente	Sala Thomas Zamuria
100100	operativo	Instrumento generado Aleatoriamente	Sala Thomas Zamuria
100101	operativo	Instrumento generado Aleatoriamente	Sala Thomas Zamuria
100102	operativo	Instrumento generado Aleatoriamente	Sala Thomas Zamuria
100103	operativo	Instrumento generado Aleatoriamente	Sala Thomas Zamuria
100104	operativo	Instrumento generado Aleatoriamente	Sala Thomas Zamuria
100105	operativo	Instrumento generado Aleatoriamente	Sala Melissa Cabal
100106	operativo	Instrumento generado Aleatoriamente	Sala Melissa Cabal
100107	operativo	Instrumento generado Aleatoriamente	Sala Melissa Cabal
100108	operativo	Instrumento generado Aleatoriamente	Sala Melissa Cabal
100109	operativo	Instrumento generado Aleatoriamente	Sala Melissa Cabal
100110	operativo	Instrumento generado Aleatoriamente	Sala Melissa Cabal
100111	operativo	Instrumento generado Aleatoriamente	Sala Melissa Cabal
100112	operativo	Instrumento generado Aleatoriamente	Sala Paul Salguera
100113	operativo	Instrumento generado Aleatoriamente	Sala Paul Salguera
100114	operativo	Instrumento generado Aleatoriamente	Sala Paul Salguera
100115	operativo	Instrumento generado Aleatoriamente	Sala Paul Salguera
100116	operativo	Instrumento generado Aleatoriamente	Sala Paul Salguera
100117	operativo	Instrumento generado Aleatoriamente	Sala Paul Salguera
100118	operativo	Instrumento generado Aleatoriamente	Sala Paul Salguera
100119	operativo	Instrumento generado Aleatoriamente	Sala Virginia Caranza
100120	operativo	Instrumento generado Aleatoriamente	Sala Virginia Caranza
100121	operativo	Instrumento generado Aleatoriamente	Sala Virginia Caranza
100122	operativo	Instrumento generado Aleatoriamente	Sala Virginia Caranza
100123	operativo	Instrumento generado Aleatoriamente	Sala Virginia Caranza
100124	operativo	Instrumento generado Aleatoriamente	Sala Virginia Caranza
100125	operativo	Instrumento generado Aleatoriamente	Sala Virginia Caranza
100126	operativo	Instrumento generado Aleatoriamente	Sala Dorothy Vera
100127	operativo	Instrumento generado Aleatoriamente	Sala Dorothy Vera
100128	operativo	Instrumento generado Aleatoriamente	Sala Dorothy Vera
100129	operativo	Instrumento generado Aleatoriamente	Sala Dorothy Vera
100130	operativo	Instrumento generado Aleatoriamente	Sala Dorothy Vera
100131	operativo	Instrumento generado Aleatoriamente	Sala Dorothy Vera
100132	operativo	Instrumento generado Aleatoriamente	Sala Dorothy Vera
100133	operativo	Instrumento generado Aleatoriamente	Sala Wanda Magalhaes
100134	operativo	Instrumento generado Aleatoriamente	Sala Wanda Magalhaes
100135	operativo	Instrumento generado Aleatoriamente	Sala Wanda Magalhaes
100136	operativo	Instrumento generado Aleatoriamente	Sala Wanda Magalhaes
100137	operativo	Instrumento generado Aleatoriamente	Sala Wanda Magalhaes
100138	operativo	Instrumento generado Aleatoriamente	Sala Wanda Magalhaes
100139	operativo	Instrumento generado Aleatoriamente	Sala Wanda Magalhaes
100140	operativo	Instrumento generado Aleatoriamente	Sala Clarence Carmiol
100141	operativo	Instrumento generado Aleatoriamente	Sala Clarence Carmiol
100142	operativo	Instrumento generado Aleatoriamente	Sala Clarence Carmiol
100143	operativo	Instrumento generado Aleatoriamente	Sala Clarence Carmiol
100144	operativo	Instrumento generado Aleatoriamente	Sala Clarence Carmiol
100145	operativo	Instrumento generado Aleatoriamente	Sala Clarence Carmiol
100146	operativo	Instrumento generado Aleatoriamente	Sala Clarence Carmiol
100147	operativo	Instrumento generado Aleatoriamente	Sala Terry Sambrana
100148	operativo	Instrumento generado Aleatoriamente	Sala Terry Sambrana
100149	operativo	Instrumento generado Aleatoriamente	Sala Terry Sambrana
100150	operativo	Instrumento generado Aleatoriamente	Sala Terry Sambrana
100151	operativo	Instrumento generado Aleatoriamente	Sala Terry Sambrana
100152	operativo	Instrumento generado Aleatoriamente	Sala Terry Sambrana
100153	operativo	Instrumento generado Aleatoriamente	Sala Terry Sambrana
100154	operativo	Instrumento generado Aleatoriamente	Sala Anthony Lindo
100155	operativo	Instrumento generado Aleatoriamente	Sala Anthony Lindo
100156	operativo	Instrumento generado Aleatoriamente	Sala Anthony Lindo
100157	operativo	Instrumento generado Aleatoriamente	Sala Anthony Lindo
100158	operativo	Instrumento generado Aleatoriamente	Sala Anthony Lindo
100159	operativo	Instrumento generado Aleatoriamente	Sala Anthony Lindo
100160	operativo	Instrumento generado Aleatoriamente	Sala Anthony Lindo
100161	operativo	Instrumento generado Aleatoriamente	Sala Harold Loza
100162	operativo	Instrumento generado Aleatoriamente	Sala Harold Loza
100163	operativo	Instrumento generado Aleatoriamente	Sala Harold Loza
100164	operativo	Instrumento generado Aleatoriamente	Sala Harold Loza
100165	operativo	Instrumento generado Aleatoriamente	Sala Harold Loza
100166	operativo	Instrumento generado Aleatoriamente	Sala Harold Loza
100167	operativo	Instrumento generado Aleatoriamente	Sala Harold Loza
100168	operativo	Instrumento generado Aleatoriamente	Sala Lori Usaga
100169	operativo	Instrumento generado Aleatoriamente	Sala Lori Usaga
100170	operativo	Instrumento generado Aleatoriamente	Sala Lori Usaga
100171	operativo	Instrumento generado Aleatoriamente	Sala Lori Usaga
100172	operativo	Instrumento generado Aleatoriamente	Sala Lori Usaga
100173	operativo	Instrumento generado Aleatoriamente	Sala Lori Usaga
100174	operativo	Instrumento generado Aleatoriamente	Sala Lori Usaga
100175	operativo	Instrumento generado Aleatoriamente	Sala Louise Pantigoso
100176	operativo	Instrumento generado Aleatoriamente	Sala Louise Pantigoso
100177	operativo	Instrumento generado Aleatoriamente	Sala Louise Pantigoso
100178	operativo	Instrumento generado Aleatoriamente	Sala Louise Pantigoso
100179	operativo	Instrumento generado Aleatoriamente	Sala Louise Pantigoso
100180	operativo	Instrumento generado Aleatoriamente	Sala Louise Pantigoso
100181	operativo	Instrumento generado Aleatoriamente	Sala Louise Pantigoso
100182	operativo	Instrumento generado Aleatoriamente	Sala Christine Orocu
100183	operativo	Instrumento generado Aleatoriamente	Sala Christine Orocu
100184	operativo	Instrumento generado Aleatoriamente	Sala Christine Orocu
100185	operativo	Instrumento generado Aleatoriamente	Sala Christine Orocu
100186	operativo	Instrumento generado Aleatoriamente	Sala Christine Orocu
100187	operativo	Instrumento generado Aleatoriamente	Sala Christine Orocu
100188	operativo	Instrumento generado Aleatoriamente	Sala Christine Orocu
100189	operativo	Instrumento generado Aleatoriamente	Sala Melissa Parada
100190	operativo	Instrumento generado Aleatoriamente	Sala Melissa Parada
100191	operativo	Instrumento generado Aleatoriamente	Sala Melissa Parada
100192	operativo	Instrumento generado Aleatoriamente	Sala Melissa Parada
100193	operativo	Instrumento generado Aleatoriamente	Sala Melissa Parada
100194	operativo	Instrumento generado Aleatoriamente	Sala Melissa Parada
100195	operativo	Instrumento generado Aleatoriamente	Sala Melissa Parada
100196	operativo	Instrumento generado Aleatoriamente	Sala Theresa Rodo
100197	operativo	Instrumento generado Aleatoriamente	Sala Theresa Rodo
100198	operativo	Instrumento generado Aleatoriamente	Sala Theresa Rodo
100199	operativo	Instrumento generado Aleatoriamente	Sala Theresa Rodo
100200	operativo	Instrumento generado Aleatoriamente	Sala Theresa Rodo
100201	operativo	Instrumento generado Aleatoriamente	Sala Theresa Rodo
100202	operativo	Instrumento generado Aleatoriamente	Sala Theresa Rodo
100203	operativo	Instrumento generado Aleatoriamente	Sala Diana Cantarero
100204	operativo	Instrumento generado Aleatoriamente	Sala Diana Cantarero
100205	operativo	Instrumento generado Aleatoriamente	Sala Diana Cantarero
100206	operativo	Instrumento generado Aleatoriamente	Sala Diana Cantarero
100207	operativo	Instrumento generado Aleatoriamente	Sala Diana Cantarero
100208	operativo	Instrumento generado Aleatoriamente	Sala Diana Cantarero
100209	operativo	Instrumento generado Aleatoriamente	Sala Diana Cantarero
100210	operativo	Instrumento generado Aleatoriamente	Sala Patricia Allon
100211	operativo	Instrumento generado Aleatoriamente	Sala Patricia Allon
100212	operativo	Instrumento generado Aleatoriamente	Sala Patricia Allon
100213	operativo	Instrumento generado Aleatoriamente	Sala Patricia Allon
100214	operativo	Instrumento generado Aleatoriamente	Sala Patricia Allon
100215	operativo	Instrumento generado Aleatoriamente	Sala Patricia Allon
100216	operativo	Instrumento generado Aleatoriamente	Sala Patricia Allon
100217	operativo	Instrumento generado Aleatoriamente	Sala Phyllis Beingolea
100218	operativo	Instrumento generado Aleatoriamente	Sala Phyllis Beingolea
100219	operativo	Instrumento generado Aleatoriamente	Sala Phyllis Beingolea
100220	operativo	Instrumento generado Aleatoriamente	Sala Phyllis Beingolea
100221	operativo	Instrumento generado Aleatoriamente	Sala Phyllis Beingolea
100222	operativo	Instrumento generado Aleatoriamente	Sala Phyllis Beingolea
100223	operativo	Instrumento generado Aleatoriamente	Sala Phyllis Beingolea
100224	operativo	Instrumento generado Aleatoriamente	Sala Matthew Del Bello
100225	operativo	Instrumento generado Aleatoriamente	Sala Matthew Del Bello
100226	operativo	Instrumento generado Aleatoriamente	Sala Matthew Del Bello
100227	operativo	Instrumento generado Aleatoriamente	Sala Matthew Del Bello
100228	operativo	Instrumento generado Aleatoriamente	Sala Matthew Del Bello
100229	operativo	Instrumento generado Aleatoriamente	Sala Matthew Del Bello
100230	operativo	Instrumento generado Aleatoriamente	Sala Matthew Del Bello
100231	operativo	Instrumento generado Aleatoriamente	Sala Marilyn Seballos
100232	operativo	Instrumento generado Aleatoriamente	Sala Marilyn Seballos
100233	operativo	Instrumento generado Aleatoriamente	Sala Marilyn Seballos
100234	operativo	Instrumento generado Aleatoriamente	Sala Marilyn Seballos
100235	operativo	Instrumento generado Aleatoriamente	Sala Marilyn Seballos
100236	operativo	Instrumento generado Aleatoriamente	Sala Marilyn Seballos
100237	operativo	Instrumento generado Aleatoriamente	Sala Marilyn Seballos
100238	operativo	Instrumento generado Aleatoriamente	Sala Jerry Dalsaso
100239	operativo	Instrumento generado Aleatoriamente	Sala Jerry Dalsaso
100240	operativo	Instrumento generado Aleatoriamente	Sala Jerry Dalsaso
100241	operativo	Instrumento generado Aleatoriamente	Sala Jerry Dalsaso
100242	operativo	Instrumento generado Aleatoriamente	Sala Jerry Dalsaso
100243	operativo	Instrumento generado Aleatoriamente	Sala Jerry Dalsaso
100244	operativo	Instrumento generado Aleatoriamente	Sala Jerry Dalsaso
100245	operativo	Instrumento generado Aleatoriamente	Sala Michael Reina
100246	operativo	Instrumento generado Aleatoriamente	Sala Michael Reina
100247	operativo	Instrumento generado Aleatoriamente	Sala Michael Reina
100248	operativo	Instrumento generado Aleatoriamente	Sala Michael Reina
100249	operativo	Instrumento generado Aleatoriamente	Sala Michael Reina
100250	operativo	Instrumento generado Aleatoriamente	Sala Michael Reina
100251	operativo	Instrumento generado Aleatoriamente	Sala Michael Reina
100252	operativo	Instrumento generado Aleatoriamente	Sala Pamela Miqueo
100253	operativo	Instrumento generado Aleatoriamente	Sala Pamela Miqueo
100254	operativo	Instrumento generado Aleatoriamente	Sala Pamela Miqueo
100255	operativo	Instrumento generado Aleatoriamente	Sala Pamela Miqueo
100256	operativo	Instrumento generado Aleatoriamente	Sala Pamela Miqueo
100257	operativo	Instrumento generado Aleatoriamente	Sala Pamela Miqueo
100258	operativo	Instrumento generado Aleatoriamente	Sala Pamela Miqueo
100259	operativo	Instrumento generado Aleatoriamente	Sala Ruby Navas
100260	operativo	Instrumento generado Aleatoriamente	Sala Ruby Navas
100261	operativo	Instrumento generado Aleatoriamente	Sala Ruby Navas
100262	operativo	Instrumento generado Aleatoriamente	Sala Ruby Navas
100263	operativo	Instrumento generado Aleatoriamente	Sala Ruby Navas
100264	operativo	Instrumento generado Aleatoriamente	Sala Ruby Navas
100265	operativo	Instrumento generado Aleatoriamente	Sala Ruby Navas
100266	operativo	Instrumento generado Aleatoriamente	Sala Lillian Ocampos
100267	operativo	Instrumento generado Aleatoriamente	Sala Lillian Ocampos
100268	operativo	Instrumento generado Aleatoriamente	Sala Lillian Ocampos
100269	operativo	Instrumento generado Aleatoriamente	Sala Lillian Ocampos
100270	operativo	Instrumento generado Aleatoriamente	Sala Lillian Ocampos
100271	operativo	Instrumento generado Aleatoriamente	Sala Lillian Ocampos
100272	operativo	Instrumento generado Aleatoriamente	Sala Lillian Ocampos
100273	operativo	Instrumento generado Aleatoriamente	Sala Alan Barillas
100274	operativo	Instrumento generado Aleatoriamente	Sala Alan Barillas
100275	operativo	Instrumento generado Aleatoriamente	Sala Alan Barillas
100276	operativo	Instrumento generado Aleatoriamente	Sala Alan Barillas
100277	operativo	Instrumento generado Aleatoriamente	Sala Alan Barillas
100278	operativo	Instrumento generado Aleatoriamente	Sala Alan Barillas
100279	operativo	Instrumento generado Aleatoriamente	Sala Alan Barillas
\.


--
-- TOC entry 2986 (class 0 OID 16397)
-- Dependencies: 198
-- Data for Name: Persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Persona" (rut, "Nombres", "ApellidoP", "ApellidoM") FROM stdin;
16.939.436-9	Michelle Judy	Okarlo	Benzón
13.620.821-7	Dorothy Maria	Palomar	Montalto
8.969.498-1	Mark Chris	Peñaloza	Herra
16.413.100-9	Jacqueline Karen	Balderrama	Soto
13.433.689-7	Kelly Deborah	Prendas	Inces
7.078.755-5	Sean Brandon	Blandón	Sierra
16.766.162-9	Virginia Linda	Maita	Cavero
15.633.229-1	Bruce Harold	Martí	Santiesteban
6.649.330-K	Gregory Todd	Zablah	Montano
11.495.563-9	Ruby Brenda	Dias	Gamboa
16.123.958-5	Lois Tammy	Ríos	Amador
6.237.323-7	Christina Lisa	Urtecho	Ávila
11.454.685-2	Jose Eugene	Prat	Seas
11.013.211-5	Tammy Pamela	Farach	Serracín
12.336.953-K	Steven Ryan	Ugarte	Calero
7.854.282-9	Fred Peter	Pérez	Arboleda
15.333.083-2	Marilyn Jacqueline	Del Castillo	Subiros
14.616.914-7	Robin Ann	Pochet	Terán
13.684.265-K	Amy Jessica	Francia	Tobón
6.855.057-2	Louise Kelly	Pazos	Peinano
7.068.888-3	Willie Ernest	Ceballos	Tato
9.883.215-7	Ralph Lawrence	Matamoros	Munera
9.109.381-2	Stephen Victor	Irastorza	Valdiva
7.955.460-K	Janet Michelle	Parrilla	Paco
8.304.855-7	Paula Annie	Dennis	Pico
17.314.436-9	Gloria Diana	Mendiola	Viana
9.444.735-6	Robert Todd	Osequeda	Isaac
12.134.054-2	Russell Henry	Zaldivar	Sansilvestre
8.898.310-6	William Robert	Gateno	Berciano
17.884.692-2	Phillip Ronald	Trujillo	Carcachi
12.981.678-3	Rebecca Ann	Parrales	Atencio
14.638.650-4	Joshua Willie	Darcia	Serracín
7.460.209-6	Julia Amy	Maltez	Funes
13.321.232-9	Willie Walter	Mayorquín	Nino
12.382.414-8	Robert Bobby	Calle	Meira
18.154.956-4	Brenda Jane	Jácome	Lancho
19.754.071-K	Nicholas Nicholas	Portuguez	Sada
12.443.332-K	Kathleen Sharon	Anuelo	Mendoza
18.141.782-K	Russell Harry	Poma	Cuendis
17.719.908-7	Willie Billy	Urdangarin	Nemar
13.042.007-9	Sean Steven	Ayarza	Armento
17.364.646-1	Robin Shirley	Angulo	Zabala
14.031.763-2	Justin Adam	De Rayo	De Ureña
7.928.212-K	Judy Diana	Prieto	Salume
14.886.536-1	Lori Kathryn	Zambrana	Carbonero
11.781.402-5	Bobby Gary	Peinano	Balderramos
14.236.212-K	Sandra Nancy	Fabres	Montoya
8.773.771-3	Debra Shirley	Galo	Salumé
16.712.268-K	Jacqueline Nancy	Barcia	Daniels
11.502.725-5	Jimmy Bruce	Valladares	Antich
18.161.429-3	Mary Phyllis	Lorente	Saxón
14.959.974-6	Rebecca Diana	Cosio	Estrella
15.496.429-K	Andrea Jacqueline	Guardado	Santamaría
12.884.825-8	Ruth Ruth	Grajal	Barrientos
7.007.083-9	Patricia Norma	Riba	Alcanzar
7.390.677-6	Angela Catherine	Baviera	Aranda
17.640.598-8	Victor Willie	Vesco	Bonice
13.894.448-4	John Arthur	Nazario	Borges
12.294.442-5	David Adam	Pérez	Triguero
18.622.213-K	Lillian Susan	Nino	Llinas
\.


--
-- TOC entry 2998 (class 0 OID 16568)
-- Dependencies: 210
-- Data for Name: Pizarra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pizarra" (id, tipo, largo, ancho) FROM stdin;
100004	Blanca	4.5	1.5
100011	Blanca	4.5	1.5
100018	Blanca	4.5	1.5
100025	Blanca	4.5	1.5
100032	Blanca	4.5	1.5
100039	Blanca	4.5	1.5
100046	Blanca	4.5	1.5
100053	Blanca	4.5	1.5
100060	Blanca	4.5	1.5
100067	Blanca	4.5	1.5
100074	Blanca	4.5	1.5
100081	Blanca	4.5	1.5
100088	Blanca	4.5	1.5
100095	Blanca	4.5	1.5
100102	Blanca	4.5	1.5
100109	Blanca	4.5	1.5
100116	Blanca	4.5	1.5
100123	Blanca	4.5	1.5
100130	Blanca	4.5	1.5
100137	Blanca	4.5	1.5
100144	Blanca	4.5	1.5
100151	Blanca	4.5	1.5
100158	Blanca	4.5	1.5
100165	Blanca	4.5	1.5
100172	Blanca	4.5	1.5
100179	Blanca	4.5	1.5
100186	Blanca	4.5	1.5
100193	Blanca	4.5	1.5
100200	Blanca	4.5	1.5
100207	Blanca	4.5	1.5
100214	Blanca	4.5	1.5
100221	Blanca	4.5	1.5
100228	Blanca	4.5	1.5
100235	Blanca	4.5	1.5
100242	Blanca	4.5	1.5
100249	Blanca	4.5	1.5
100256	Blanca	4.5	1.5
100263	Blanca	4.5	1.5
100270	Blanca	4.5	1.5
100277	Blanca	4.5	1.5
\.


--
-- TOC entry 2993 (class 0 OID 16502)
-- Dependencies: 205
-- Data for Name: Profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Profesor" (rut, "NumRamos") FROM stdin;
8.969.498-1	3
16.766.162-9	2
15.633.229-1	1
6.649.330-K	2
11.454.685-2	3
11.013.211-5	3
14.616.914-7	1
7.068.888-3	3
9.883.215-7	3
7.955.460-K	1
17.884.692-2	3
12.981.678-3	3
13.321.232-9	1
18.154.956-4	3
19.754.071-K	3
12.443.332-K	2
17.719.908-7	3
13.042.007-9	1
14.031.763-2	3
7.928.212-K	1
14.886.536-1	3
11.781.402-5	3
14.236.212-K	2
18.161.429-3	1
14.959.974-6	2
12.884.825-8	3
13.894.448-4	1
\.


--
-- TOC entry 2988 (class 0 OID 16434)
-- Dependencies: 200
-- Data for Name: Sala; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sala" ("Nombre", "Capacidad", "nroPiso", "Edificio_nombre") FROM stdin;
Sala Ronald Quiroz	29	2	Edificio Beatriz
Sala Antonio Bedoya	49	6	Edificio Beatriz
Sala Donna Asencio	30	2	Edificio Urbano
Sala Christopher Guajardo	45	2	Edificio Urbano
Sala Emily Cid	28	5	Edificio León
Sala Julie Rozados	36	2	Edificio León
Sala Eugene Verardo	26	3	Edificio Argüelles
Sala Ann Saguero	30	2	Edificio Argüelles
Sala Linda Quinde	50	2	Edificio De Camino
Sala Kenneth Fernández	31	5	Edificio De Camino
Sala Denise Better	27	2	Edificio Cazanga
Sala Nancy Vila	34	4	Edificio Cazanga
Sala Jesse Peytrequín	36	4	Edificio Pujol
Sala Robert Gonzales	35	3	Edificio Pujol
Sala Thomas Zamuria	29	2	Edificio Sio
Sala Melissa Cabal	39	1	Edificio Sio
Sala Paul Salguera	48	4	Edificio Urra
Sala Virginia Caranza	44	4	Edificio Urra
Sala Dorothy Vera	42	1	Edificio Cepeda
Sala Wanda Magalhaes	42	3	Edificio Cepeda
Sala Clarence Carmiol	45	3	Edificio Dapuerto
Sala Terry Sambrana	28	2	Edificio Dapuerto
Sala Anthony Lindo	39	5	Edificio Servellón
Sala Harold Loza	44	2	Edificio Servellón
Sala Lori Usaga	41	6	Edificio Veas
Sala Louise Pantigoso	37	6	Edificio Veas
Sala Christine Orocu	48	4	Edificio Pessoa
Sala Melissa Parada	44	5	Edificio Pessoa
Sala Theresa Rodo	26	6	Edificio Corao
Sala Diana Cantarero	46	4	Edificio Corao
Sala Patricia Allon	26	5	Edificio Bazo
Sala Phyllis Beingolea	41	4	Edificio Bazo
Sala Matthew Del Bello	33	5	Edificio Yglesias
Sala Marilyn Seballos	28	4	Edificio Yglesias
Sala Jerry Dalsaso	35	2	Edificio Cubria
Sala Michael Reina	37	6	Edificio Cubria
Sala Pamela Miqueo	43	2	Edificio Ubach
Sala Ruby Navas	30	5	Edificio Ubach
Sala Lillian Ocampos	43	1	Edificio Cevilla
Sala Alan Barillas	43	6	Edificio Cevilla
\.


--
-- TOC entry 2994 (class 0 OID 16515)
-- Dependencies: 206
-- Data for Name: Secretaria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Secretaria" (rut) FROM stdin;
16.939.436-9
13.620.821-7
16.413.100-9
13.433.689-7
7.078.755-5
11.495.563-9
16.123.958-5
6.237.323-7
12.336.953-K
7.854.282-9
15.333.083-2
13.684.265-K
6.855.057-2
9.109.381-2
8.304.855-7
17.314.436-9
9.444.735-6
12.134.054-2
8.898.310-6
14.638.650-4
7.460.209-6
12.382.414-8
18.141.782-K
17.364.646-1
8.773.771-3
16.712.268-K
11.502.725-5
15.496.429-K
7.007.083-9
7.390.677-6
17.640.598-8
12.294.442-5
18.622.213-K
\.


--
-- TOC entry 2990 (class 0 OID 16456)
-- Dependencies: 202
-- Data for Name: Tiene; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tiene" (sala_nombre, arriendo_id) FROM stdin;
Sala Robert Gonzales	17
Sala Clarence Carmiol	30
Sala Emily Cid	47
Sala Matthew Del Bello	25
Sala Paul Salguera	6
Sala Clarence Carmiol	27
Sala Michael Reina	9
Sala Christopher Guajardo	42
Sala Melissa Cabal	13
Sala Phyllis Beingolea	23
Sala Antonio Bedoya	32
Sala Lori Usaga	28
Sala Pamela Miqueo	49
Sala Michael Reina	4
Sala Marilyn Seballos	25
Sala Melissa Cabal	38
Sala Christine Orocu	34
Sala Christopher Guajardo	47
Sala Thomas Zamuria	37
Sala Christopher Guajardo	11
\.


--
-- TOC entry 2984 (class 0 OID 16384)
-- Dependencies: 196
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horario (dia, bloque) FROM stdin;
2019-01-01	1
2019-01-01	2
2019-01-01	3
2019-01-01	4
2019-01-01	5
2019-01-01	6
2019-01-01	7
2019-01-01	8
2019-01-01	9
2019-01-01	10
2019-01-02	1
2019-01-02	2
2019-01-02	3
2019-01-02	4
2019-01-02	5
2019-01-02	6
2019-01-02	7
2019-01-02	8
2019-01-02	9
2019-01-02	10
2019-01-03	1
2019-01-03	2
2019-01-03	3
2019-01-03	4
2019-01-03	5
2019-01-03	6
2019-01-03	7
2019-01-03	8
2019-01-03	9
2019-01-03	10
2019-01-04	1
2019-01-04	2
2019-01-04	3
2019-01-04	4
2019-01-04	5
2019-01-04	6
2019-01-04	7
2019-01-04	8
2019-01-04	9
2019-01-04	10
2019-01-05	1
2019-01-05	2
2019-01-05	3
2019-01-05	4
2019-01-05	5
2019-01-05	6
2019-01-05	7
2019-01-05	8
2019-01-05	9
2019-01-05	10
2019-01-06	1
2019-01-06	2
2019-01-06	3
2019-01-06	4
2019-01-06	5
2019-01-06	6
2019-01-06	7
2019-01-06	8
2019-01-06	9
2019-01-06	10
2019-01-07	1
2019-01-07	2
2019-01-07	3
2019-01-07	4
2019-01-07	5
2019-01-07	6
2019-01-07	7
2019-01-07	8
2019-01-07	9
2019-01-07	10
2019-01-08	1
2019-01-08	2
2019-01-08	3
2019-01-08	4
2019-01-08	5
2019-01-08	6
2019-01-08	7
2019-01-08	8
2019-01-08	9
2019-01-08	10
2019-01-09	1
2019-01-09	2
2019-01-09	3
2019-01-09	4
2019-01-09	5
2019-01-09	6
2019-01-09	7
2019-01-09	8
2019-01-09	9
2019-01-09	10
2019-01-10	1
2019-01-10	2
2019-01-10	3
2019-01-10	4
2019-01-10	5
2019-01-10	6
2019-01-10	7
2019-01-10	8
2019-01-10	9
2019-01-10	10
2019-01-11	1
2019-01-11	2
2019-01-11	3
2019-01-11	4
2019-01-11	5
2019-01-11	6
2019-01-11	7
2019-01-11	8
2019-01-11	9
2019-01-11	10
2019-01-12	1
2019-01-12	2
2019-01-12	3
2019-01-12	4
2019-01-12	5
2019-01-12	6
2019-01-12	7
2019-01-12	8
2019-01-12	9
2019-01-12	10
2019-01-13	1
2019-01-13	2
2019-01-13	3
2019-01-13	4
2019-01-13	5
2019-01-13	6
2019-01-13	7
2019-01-13	8
2019-01-13	9
2019-01-13	10
2019-01-14	1
2019-01-14	2
2019-01-14	3
2019-01-14	4
2019-01-14	5
2019-01-14	6
2019-01-14	7
2019-01-14	8
2019-01-14	9
2019-01-14	10
2019-01-15	1
2019-01-15	2
2019-01-15	3
2019-01-15	4
2019-01-15	5
2019-01-15	6
2019-01-15	7
2019-01-15	8
2019-01-15	9
2019-01-15	10
2019-01-16	1
2019-01-16	2
2019-01-16	3
2019-01-16	4
2019-01-16	5
2019-01-16	6
2019-01-16	7
2019-01-16	8
2019-01-16	9
2019-01-16	10
2019-01-17	1
2019-01-17	2
2019-01-17	3
2019-01-17	4
2019-01-17	5
2019-01-17	6
2019-01-17	7
2019-01-17	8
2019-01-17	9
2019-01-17	10
2019-01-18	1
2019-01-18	2
2019-01-18	3
2019-01-18	4
2019-01-18	5
2019-01-18	6
2019-01-18	7
2019-01-18	8
2019-01-18	9
2019-01-18	10
2019-01-19	1
2019-01-19	2
2019-01-19	3
2019-01-19	4
2019-01-19	5
2019-01-19	6
2019-01-19	7
2019-01-19	8
2019-01-19	9
2019-01-19	10
2019-01-20	1
2019-01-20	2
2019-01-20	3
2019-01-20	4
2019-01-20	5
2019-01-20	6
2019-01-20	7
2019-01-20	8
2019-01-20	9
2019-01-20	10
2019-01-21	1
2019-01-21	2
2019-01-21	3
2019-01-21	4
2019-01-21	5
2019-01-21	6
2019-01-21	7
2019-01-21	8
2019-01-21	9
2019-01-21	10
2019-01-22	1
2019-01-22	2
2019-01-22	3
2019-01-22	4
2019-01-22	5
2019-01-22	6
2019-01-22	7
2019-01-22	8
2019-01-22	9
2019-01-22	10
2019-01-23	1
2019-01-23	2
2019-01-23	3
2019-01-23	4
2019-01-23	5
2019-01-23	6
2019-01-23	7
2019-01-23	8
2019-01-23	9
2019-01-23	10
2019-01-24	1
2019-01-24	2
2019-01-24	3
2019-01-24	4
2019-01-24	5
2019-01-24	6
2019-01-24	7
2019-01-24	8
2019-01-24	9
2019-01-24	10
2019-01-25	1
2019-01-25	2
2019-01-25	3
2019-01-25	4
2019-01-25	5
2019-01-25	6
2019-01-25	7
2019-01-25	8
2019-01-25	9
2019-01-25	10
2019-01-26	1
2019-01-26	2
2019-01-26	3
2019-01-26	4
2019-01-26	5
2019-01-26	6
2019-01-26	7
2019-01-26	8
2019-01-26	9
2019-01-26	10
2019-01-27	1
2019-01-27	2
2019-01-27	3
2019-01-27	4
2019-01-27	5
2019-01-27	6
2019-01-27	7
2019-01-27	8
2019-01-27	9
2019-01-27	10
2019-01-28	1
2019-01-28	2
2019-01-28	3
2019-01-28	4
2019-01-28	5
2019-01-28	6
2019-01-28	7
2019-01-28	8
2019-01-28	9
2019-01-28	10
2019-01-29	1
2019-01-29	2
2019-01-29	3
2019-01-29	4
2019-01-29	5
2019-01-29	6
2019-01-29	7
2019-01-29	8
2019-01-29	9
2019-01-29	10
2019-01-30	1
2019-01-30	2
2019-01-30	3
2019-01-30	4
2019-01-30	5
2019-01-30	6
2019-01-30	7
2019-01-30	8
2019-01-30	9
2019-01-30	10
2019-01-31	1
2019-01-31	2
2019-01-31	3
2019-01-31	4
2019-01-31	5
2019-01-31	6
2019-01-31	7
2019-01-31	8
2019-01-31	9
2019-01-31	10
2019-02-01	1
2019-02-01	2
2019-02-01	3
2019-02-01	4
2019-02-01	5
2019-02-01	6
2019-02-01	7
2019-02-01	8
2019-02-01	9
2019-02-01	10
2019-02-02	1
2019-02-02	2
2019-02-02	3
2019-02-02	4
2019-02-02	5
2019-02-02	6
2019-02-02	7
2019-02-02	8
2019-02-02	9
2019-02-02	10
2019-02-03	1
2019-02-03	2
2019-02-03	3
2019-02-03	4
2019-02-03	5
2019-02-03	6
2019-02-03	7
2019-02-03	8
2019-02-03	9
2019-02-03	10
2019-02-04	1
2019-02-04	2
2019-02-04	3
2019-02-04	4
2019-02-04	5
2019-02-04	6
2019-02-04	7
2019-02-04	8
2019-02-04	9
2019-02-04	10
2019-02-05	1
2019-02-05	2
2019-02-05	3
2019-02-05	4
2019-02-05	5
2019-02-05	6
2019-02-05	7
2019-02-05	8
2019-02-05	9
2019-02-05	10
2019-02-06	1
2019-02-06	2
2019-02-06	3
2019-02-06	4
2019-02-06	5
2019-02-06	6
2019-02-06	7
2019-02-06	8
2019-02-06	9
2019-02-06	10
2019-02-07	1
2019-02-07	2
2019-02-07	3
2019-02-07	4
2019-02-07	5
2019-02-07	6
2019-02-07	7
2019-02-07	8
2019-02-07	9
2019-02-07	10
2019-02-08	1
2019-02-08	2
2019-02-08	3
2019-02-08	4
2019-02-08	5
2019-02-08	6
2019-02-08	7
2019-02-08	8
2019-02-08	9
2019-02-08	10
2019-02-09	1
2019-02-09	2
2019-02-09	3
2019-02-09	4
2019-02-09	5
2019-02-09	6
2019-02-09	7
2019-02-09	8
2019-02-09	9
2019-02-09	10
2019-02-10	1
2019-02-10	2
2019-02-10	3
2019-02-10	4
2019-02-10	5
2019-02-10	6
2019-02-10	7
2019-02-10	8
2019-02-10	9
2019-02-10	10
2019-02-11	1
2019-02-11	2
2019-02-11	3
2019-02-11	4
2019-02-11	5
2019-02-11	6
2019-02-11	7
2019-02-11	8
2019-02-11	9
2019-02-11	10
2019-02-12	1
2019-02-12	2
2019-02-12	3
2019-02-12	4
2019-02-12	5
2019-02-12	6
2019-02-12	7
2019-02-12	8
2019-02-12	9
2019-02-12	10
2019-02-13	1
2019-02-13	2
2019-02-13	3
2019-02-13	4
2019-02-13	5
2019-02-13	6
2019-02-13	7
2019-02-13	8
2019-02-13	9
2019-02-13	10
2019-02-14	1
2019-02-14	2
2019-02-14	3
2019-02-14	4
2019-02-14	5
2019-02-14	6
2019-02-14	7
2019-02-14	8
2019-02-14	9
2019-02-14	10
2019-02-15	1
2019-02-15	2
2019-02-15	3
2019-02-15	4
2019-02-15	5
2019-02-15	6
2019-02-15	7
2019-02-15	8
2019-02-15	9
2019-02-15	10
2019-02-16	1
2019-02-16	2
2019-02-16	3
2019-02-16	4
2019-02-16	5
2019-02-16	6
2019-02-16	7
2019-02-16	8
2019-02-16	9
2019-02-16	10
2019-02-17	1
2019-02-17	2
2019-02-17	3
2019-02-17	4
2019-02-17	5
2019-02-17	6
2019-02-17	7
2019-02-17	8
2019-02-17	9
2019-02-17	10
2019-02-18	1
2019-02-18	2
2019-02-18	3
2019-02-18	4
2019-02-18	5
2019-02-18	6
2019-02-18	7
2019-02-18	8
2019-02-18	9
2019-02-18	10
2019-02-19	1
2019-02-19	2
2019-02-19	3
2019-02-19	4
2019-02-19	5
2019-02-19	6
2019-02-19	7
2019-02-19	8
2019-02-19	9
2019-02-19	10
2019-02-20	1
2019-02-20	2
2019-02-20	3
2019-02-20	4
2019-02-20	5
2019-02-20	6
2019-02-20	7
2019-02-20	8
2019-02-20	9
2019-02-20	10
2019-02-21	1
2019-02-21	2
2019-02-21	3
2019-02-21	4
2019-02-21	5
2019-02-21	6
2019-02-21	7
2019-02-21	8
2019-02-21	9
2019-02-21	10
2019-02-22	1
2019-02-22	2
2019-02-22	3
2019-02-22	4
2019-02-22	5
2019-02-22	6
2019-02-22	7
2019-02-22	8
2019-02-22	9
2019-02-22	10
2019-02-23	1
2019-02-23	2
2019-02-23	3
2019-02-23	4
2019-02-23	5
2019-02-23	6
2019-02-23	7
2019-02-23	8
2019-02-23	9
2019-02-23	10
2019-02-24	1
2019-02-24	2
2019-02-24	3
2019-02-24	4
2019-02-24	5
2019-02-24	6
2019-02-24	7
2019-02-24	8
2019-02-24	9
2019-02-24	10
2019-02-25	1
2019-02-25	2
2019-02-25	3
2019-02-25	4
2019-02-25	5
2019-02-25	6
2019-02-25	7
2019-02-25	8
2019-02-25	9
2019-02-25	10
2019-02-26	1
2019-02-26	2
2019-02-26	3
2019-02-26	4
2019-02-26	5
2019-02-26	6
2019-02-26	7
2019-02-26	8
2019-02-26	9
2019-02-26	10
2019-02-27	1
2019-02-27	2
2019-02-27	3
2019-02-27	4
2019-02-27	5
2019-02-27	6
2019-02-27	7
2019-02-27	8
2019-02-27	9
2019-02-27	10
2019-02-28	1
2019-02-28	2
2019-02-28	3
2019-02-28	4
2019-02-28	5
2019-02-28	6
2019-02-28	7
2019-02-28	8
2019-02-28	9
2019-02-28	10
2019-03-01	1
2019-03-01	2
2019-03-01	3
2019-03-01	4
2019-03-01	5
2019-03-01	6
2019-03-01	7
2019-03-01	8
2019-03-01	9
2019-03-01	10
2019-03-02	1
2019-03-02	2
2019-03-02	3
2019-03-02	4
2019-03-02	5
2019-03-02	6
2019-03-02	7
2019-03-02	8
2019-03-02	9
2019-03-02	10
2019-03-03	1
2019-03-03	2
2019-03-03	3
2019-03-03	4
2019-03-03	5
2019-03-03	6
2019-03-03	7
2019-03-03	8
2019-03-03	9
2019-03-03	10
2019-03-04	1
2019-03-04	2
2019-03-04	3
2019-03-04	4
2019-03-04	5
2019-03-04	6
2019-03-04	7
2019-03-04	8
2019-03-04	9
2019-03-04	10
2019-03-05	1
2019-03-05	2
2019-03-05	3
2019-03-05	4
2019-03-05	5
2019-03-05	6
2019-03-05	7
2019-03-05	8
2019-03-05	9
2019-03-05	10
2019-03-06	1
2019-03-06	2
2019-03-06	3
2019-03-06	4
2019-03-06	5
2019-03-06	6
2019-03-06	7
2019-03-06	8
2019-03-06	9
2019-03-06	10
2019-03-07	1
2019-03-07	2
2019-03-07	3
2019-03-07	4
2019-03-07	5
2019-03-07	6
2019-03-07	7
2019-03-07	8
2019-03-07	9
2019-03-07	10
2019-03-08	1
2019-03-08	2
2019-03-08	3
2019-03-08	4
2019-03-08	5
2019-03-08	6
2019-03-08	7
2019-03-08	8
2019-03-08	9
2019-03-08	10
2019-03-09	1
2019-03-09	2
2019-03-09	3
2019-03-09	4
2019-03-09	5
2019-03-09	6
2019-03-09	7
2019-03-09	8
2019-03-09	9
2019-03-09	10
2019-03-10	1
2019-03-10	2
2019-03-10	3
2019-03-10	4
2019-03-10	5
2019-03-10	6
2019-03-10	7
2019-03-10	8
2019-03-10	9
2019-03-10	10
2019-03-11	1
2019-03-11	2
2019-03-11	3
2019-03-11	4
2019-03-11	5
2019-03-11	6
2019-03-11	7
2019-03-11	8
2019-03-11	9
2019-03-11	10
2019-03-12	1
2019-03-12	2
2019-03-12	3
2019-03-12	4
2019-03-12	5
2019-03-12	6
2019-03-12	7
2019-03-12	8
2019-03-12	9
2019-03-12	10
2019-03-13	1
2019-03-13	2
2019-03-13	3
2019-03-13	4
2019-03-13	5
2019-03-13	6
2019-03-13	7
2019-03-13	8
2019-03-13	9
2019-03-13	10
2019-03-14	1
2019-03-14	2
2019-03-14	3
2019-03-14	4
2019-03-14	5
2019-03-14	6
2019-03-14	7
2019-03-14	8
2019-03-14	9
2019-03-14	10
2019-03-15	1
2019-03-15	2
2019-03-15	3
2019-03-15	4
2019-03-15	5
2019-03-15	6
2019-03-15	7
2019-03-15	8
2019-03-15	9
2019-03-15	10
2019-03-16	1
2019-03-16	2
2019-03-16	3
2019-03-16	4
2019-03-16	5
2019-03-16	6
2019-03-16	7
2019-03-16	8
2019-03-16	9
2019-03-16	10
2019-03-17	1
2019-03-17	2
2019-03-17	3
2019-03-17	4
2019-03-17	5
2019-03-17	6
2019-03-17	7
2019-03-17	8
2019-03-17	9
2019-03-17	10
2019-03-18	1
2019-03-18	2
2019-03-18	3
2019-03-18	4
2019-03-18	5
2019-03-18	6
2019-03-18	7
2019-03-18	8
2019-03-18	9
2019-03-18	10
2019-03-19	1
2019-03-19	2
2019-03-19	3
2019-03-19	4
2019-03-19	5
2019-03-19	6
2019-03-19	7
2019-03-19	8
2019-03-19	9
2019-03-19	10
2019-03-20	1
2019-03-20	2
2019-03-20	3
2019-03-20	4
2019-03-20	5
2019-03-20	6
2019-03-20	7
2019-03-20	8
2019-03-20	9
2019-03-20	10
2019-03-21	1
2019-03-21	2
2019-03-21	3
2019-03-21	4
2019-03-21	5
2019-03-21	6
2019-03-21	7
2019-03-21	8
2019-03-21	9
2019-03-21	10
2019-03-22	1
2019-03-22	2
2019-03-22	3
2019-03-22	4
2019-03-22	5
2019-03-22	6
2019-03-22	7
2019-03-22	8
2019-03-22	9
2019-03-22	10
2019-03-23	1
2019-03-23	2
2019-03-23	3
2019-03-23	4
2019-03-23	5
2019-03-23	6
2019-03-23	7
2019-03-23	8
2019-03-23	9
2019-03-23	10
2019-03-24	1
2019-03-24	2
2019-03-24	3
2019-03-24	4
2019-03-24	5
2019-03-24	6
2019-03-24	7
2019-03-24	8
2019-03-24	9
2019-03-24	10
2019-03-25	1
2019-03-25	2
2019-03-25	3
2019-03-25	4
2019-03-25	5
2019-03-25	6
2019-03-25	7
2019-03-25	8
2019-03-25	9
2019-03-25	10
2019-03-26	1
2019-03-26	2
2019-03-26	3
2019-03-26	4
2019-03-26	5
2019-03-26	6
2019-03-26	7
2019-03-26	8
2019-03-26	9
2019-03-26	10
2019-03-27	1
2019-03-27	2
2019-03-27	3
2019-03-27	4
2019-03-27	5
2019-03-27	6
2019-03-27	7
2019-03-27	8
2019-03-27	9
2019-03-27	10
2019-03-28	1
2019-03-28	2
2019-03-28	3
2019-03-28	4
2019-03-28	5
2019-03-28	6
2019-03-28	7
2019-03-28	8
2019-03-28	9
2019-03-28	10
2019-03-29	1
2019-03-29	2
2019-03-29	3
2019-03-29	4
2019-03-29	5
2019-03-29	6
2019-03-29	7
2019-03-29	8
2019-03-29	9
2019-03-29	10
2019-03-30	1
2019-03-30	2
2019-03-30	3
2019-03-30	4
2019-03-30	5
2019-03-30	6
2019-03-30	7
2019-03-30	8
2019-03-30	9
2019-03-30	10
2019-03-31	1
2019-03-31	2
2019-03-31	3
2019-03-31	4
2019-03-31	5
2019-03-31	6
2019-03-31	7
2019-03-31	8
2019-03-31	9
2019-03-31	10
2019-04-01	1
2019-04-01	2
2019-04-01	3
2019-04-01	4
2019-04-01	5
2019-04-01	6
2019-04-01	7
2019-04-01	8
2019-04-01	9
2019-04-01	10
2019-04-02	1
2019-04-02	2
2019-04-02	3
2019-04-02	4
2019-04-02	5
2019-04-02	6
2019-04-02	7
2019-04-02	8
2019-04-02	9
2019-04-02	10
2019-04-03	1
2019-04-03	2
2019-04-03	3
2019-04-03	4
2019-04-03	5
2019-04-03	6
2019-04-03	7
2019-04-03	8
2019-04-03	9
2019-04-03	10
2019-04-04	1
2019-04-04	2
2019-04-04	3
2019-04-04	4
2019-04-04	5
2019-04-04	6
2019-04-04	7
2019-04-04	8
2019-04-04	9
2019-04-04	10
2019-04-05	1
2019-04-05	2
2019-04-05	3
2019-04-05	4
2019-04-05	5
2019-04-05	6
2019-04-05	7
2019-04-05	8
2019-04-05	9
2019-04-05	10
2019-04-06	1
2019-04-06	2
2019-04-06	3
2019-04-06	4
2019-04-06	5
2019-04-06	6
2019-04-06	7
2019-04-06	8
2019-04-06	9
2019-04-06	10
2019-04-07	1
2019-04-07	2
2019-04-07	3
2019-04-07	4
2019-04-07	5
2019-04-07	6
2019-04-07	7
2019-04-07	8
2019-04-07	9
2019-04-07	10
2019-04-08	1
2019-04-08	2
2019-04-08	3
2019-04-08	4
2019-04-08	5
2019-04-08	6
2019-04-08	7
2019-04-08	8
2019-04-08	9
2019-04-08	10
2019-04-09	1
2019-04-09	2
2019-04-09	3
2019-04-09	4
2019-04-09	5
2019-04-09	6
2019-04-09	7
2019-04-09	8
2019-04-09	9
2019-04-09	10
2019-04-10	1
2019-04-10	2
2019-04-10	3
2019-04-10	4
2019-04-10	5
2019-04-10	6
2019-04-10	7
2019-04-10	8
2019-04-10	9
2019-04-10	10
2019-04-11	1
2019-04-11	2
2019-04-11	3
2019-04-11	4
2019-04-11	5
2019-04-11	6
2019-04-11	7
2019-04-11	8
2019-04-11	9
2019-04-11	10
2019-04-12	1
2019-04-12	2
2019-04-12	3
2019-04-12	4
2019-04-12	5
2019-04-12	6
2019-04-12	7
2019-04-12	8
2019-04-12	9
2019-04-12	10
2019-04-13	1
2019-04-13	2
2019-04-13	3
2019-04-13	4
2019-04-13	5
2019-04-13	6
2019-04-13	7
2019-04-13	8
2019-04-13	9
2019-04-13	10
2019-04-14	1
2019-04-14	2
2019-04-14	3
2019-04-14	4
2019-04-14	5
2019-04-14	6
2019-04-14	7
2019-04-14	8
2019-04-14	9
2019-04-14	10
2019-04-15	1
2019-04-15	2
2019-04-15	3
2019-04-15	4
2019-04-15	5
2019-04-15	6
2019-04-15	7
2019-04-15	8
2019-04-15	9
2019-04-15	10
2019-04-16	1
2019-04-16	2
2019-04-16	3
2019-04-16	4
2019-04-16	5
2019-04-16	6
2019-04-16	7
2019-04-16	8
2019-04-16	9
2019-04-16	10
2019-04-17	1
2019-04-17	2
2019-04-17	3
2019-04-17	4
2019-04-17	5
2019-04-17	6
2019-04-17	7
2019-04-17	8
2019-04-17	9
2019-04-17	10
2019-04-18	1
2019-04-18	2
2019-04-18	3
2019-04-18	4
2019-04-18	5
2019-04-18	6
2019-04-18	7
2019-04-18	8
2019-04-18	9
2019-04-18	10
2019-04-19	1
2019-04-19	2
2019-04-19	3
2019-04-19	4
2019-04-19	5
2019-04-19	6
2019-04-19	7
2019-04-19	8
2019-04-19	9
2019-04-19	10
2019-04-20	1
2019-04-20	2
2019-04-20	3
2019-04-20	4
2019-04-20	5
2019-04-20	6
2019-04-20	7
2019-04-20	8
2019-04-20	9
2019-04-20	10
2019-04-21	1
2019-04-21	2
2019-04-21	3
2019-04-21	4
2019-04-21	5
2019-04-21	6
2019-04-21	7
2019-04-21	8
2019-04-21	9
2019-04-21	10
2019-04-22	1
2019-04-22	2
2019-04-22	3
2019-04-22	4
2019-04-22	5
2019-04-22	6
2019-04-22	7
2019-04-22	8
2019-04-22	9
2019-04-22	10
2019-04-23	1
2019-04-23	2
2019-04-23	3
2019-04-23	4
2019-04-23	5
2019-04-23	6
2019-04-23	7
2019-04-23	8
2019-04-23	9
2019-04-23	10
2019-04-24	1
2019-04-24	2
2019-04-24	3
2019-04-24	4
2019-04-24	5
2019-04-24	6
2019-04-24	7
2019-04-24	8
2019-04-24	9
2019-04-24	10
2019-04-25	1
2019-04-25	2
2019-04-25	3
2019-04-25	4
2019-04-25	5
2019-04-25	6
2019-04-25	7
2019-04-25	8
2019-04-25	9
2019-04-25	10
2019-04-26	1
2019-04-26	2
2019-04-26	3
2019-04-26	4
2019-04-26	5
2019-04-26	6
2019-04-26	7
2019-04-26	8
2019-04-26	9
2019-04-26	10
2019-04-27	1
2019-04-27	2
2019-04-27	3
2019-04-27	4
2019-04-27	5
2019-04-27	6
2019-04-27	7
2019-04-27	8
2019-04-27	9
2019-04-27	10
2019-04-28	1
2019-04-28	2
2019-04-28	3
2019-04-28	4
2019-04-28	5
2019-04-28	6
2019-04-28	7
2019-04-28	8
2019-04-28	9
2019-04-28	10
2019-04-29	1
2019-04-29	2
2019-04-29	3
2019-04-29	4
2019-04-29	5
2019-04-29	6
2019-04-29	7
2019-04-29	8
2019-04-29	9
2019-04-29	10
2019-04-30	1
2019-04-30	2
2019-04-30	3
2019-04-30	4
2019-04-30	5
2019-04-30	6
2019-04-30	7
2019-04-30	8
2019-04-30	9
2019-04-30	10
2019-05-01	1
2019-05-01	2
2019-05-01	3
2019-05-01	4
2019-05-01	5
2019-05-01	6
2019-05-01	7
2019-05-01	8
2019-05-01	9
2019-05-01	10
2019-05-02	1
2019-05-02	2
2019-05-02	3
2019-05-02	4
2019-05-02	5
2019-05-02	6
2019-05-02	7
2019-05-02	8
2019-05-02	9
2019-05-02	10
2019-05-03	1
2019-05-03	2
2019-05-03	3
2019-05-03	4
2019-05-03	5
2019-05-03	6
2019-05-03	7
2019-05-03	8
2019-05-03	9
2019-05-03	10
2019-05-04	1
2019-05-04	2
2019-05-04	3
2019-05-04	4
2019-05-04	5
2019-05-04	6
2019-05-04	7
2019-05-04	8
2019-05-04	9
2019-05-04	10
2019-05-05	1
2019-05-05	2
2019-05-05	3
2019-05-05	4
2019-05-05	5
2019-05-05	6
2019-05-05	7
2019-05-05	8
2019-05-05	9
2019-05-05	10
2019-05-06	1
2019-05-06	2
2019-05-06	3
2019-05-06	4
2019-05-06	5
2019-05-06	6
2019-05-06	7
2019-05-06	8
2019-05-06	9
2019-05-06	10
2019-05-07	1
2019-05-07	2
2019-05-07	3
2019-05-07	4
2019-05-07	5
2019-05-07	6
2019-05-07	7
2019-05-07	8
2019-05-07	9
2019-05-07	10
2019-05-08	1
2019-05-08	2
2019-05-08	3
2019-05-08	4
2019-05-08	5
2019-05-08	6
2019-05-08	7
2019-05-08	8
2019-05-08	9
2019-05-08	10
2019-05-09	1
2019-05-09	2
2019-05-09	3
2019-05-09	4
2019-05-09	5
2019-05-09	6
2019-05-09	7
2019-05-09	8
2019-05-09	9
2019-05-09	10
2019-05-10	1
2019-05-10	2
2019-05-10	3
2019-05-10	4
2019-05-10	5
2019-05-10	6
2019-05-10	7
2019-05-10	8
2019-05-10	9
2019-05-10	10
2019-05-11	1
2019-05-11	2
2019-05-11	3
2019-05-11	4
2019-05-11	5
2019-05-11	6
2019-05-11	7
2019-05-11	8
2019-05-11	9
2019-05-11	10
2019-05-12	1
2019-05-12	2
2019-05-12	3
2019-05-12	4
2019-05-12	5
2019-05-12	6
2019-05-12	7
2019-05-12	8
2019-05-12	9
2019-05-12	10
2019-05-13	1
2019-05-13	2
2019-05-13	3
2019-05-13	4
2019-05-13	5
2019-05-13	6
2019-05-13	7
2019-05-13	8
2019-05-13	9
2019-05-13	10
2019-05-14	1
2019-05-14	2
2019-05-14	3
2019-05-14	4
2019-05-14	5
2019-05-14	6
2019-05-14	7
2019-05-14	8
2019-05-14	9
2019-05-14	10
2019-05-15	1
2019-05-15	2
2019-05-15	3
2019-05-15	4
2019-05-15	5
2019-05-15	6
2019-05-15	7
2019-05-15	8
2019-05-15	9
2019-05-15	10
2019-05-16	1
2019-05-16	2
2019-05-16	3
2019-05-16	4
2019-05-16	5
2019-05-16	6
2019-05-16	7
2019-05-16	8
2019-05-16	9
2019-05-16	10
2019-05-17	1
2019-05-17	2
2019-05-17	3
2019-05-17	4
2019-05-17	5
2019-05-17	6
2019-05-17	7
2019-05-17	8
2019-05-17	9
2019-05-17	10
2019-05-18	1
2019-05-18	2
2019-05-18	3
2019-05-18	4
2019-05-18	5
2019-05-18	6
2019-05-18	7
2019-05-18	8
2019-05-18	9
2019-05-18	10
2019-05-19	1
2019-05-19	2
2019-05-19	3
2019-05-19	4
2019-05-19	5
2019-05-19	6
2019-05-19	7
2019-05-19	8
2019-05-19	9
2019-05-19	10
2019-05-20	1
2019-05-20	2
2019-05-20	3
2019-05-20	4
2019-05-20	5
2019-05-20	6
2019-05-20	7
2019-05-20	8
2019-05-20	9
2019-05-20	10
2019-05-21	1
2019-05-21	2
2019-05-21	3
2019-05-21	4
2019-05-21	5
2019-05-21	6
2019-05-21	7
2019-05-21	8
2019-05-21	9
2019-05-21	10
2019-05-22	1
2019-05-22	2
2019-05-22	3
2019-05-22	4
2019-05-22	5
2019-05-22	6
2019-05-22	7
2019-05-22	8
2019-05-22	9
2019-05-22	10
2019-05-23	1
2019-05-23	2
2019-05-23	3
2019-05-23	4
2019-05-23	5
2019-05-23	6
2019-05-23	7
2019-05-23	8
2019-05-23	9
2019-05-23	10
2019-05-24	1
2019-05-24	2
2019-05-24	3
2019-05-24	4
2019-05-24	5
2019-05-24	6
2019-05-24	7
2019-05-24	8
2019-05-24	9
2019-05-24	10
2019-05-25	1
2019-05-25	2
2019-05-25	3
2019-05-25	4
2019-05-25	5
2019-05-25	6
2019-05-25	7
2019-05-25	8
2019-05-25	9
2019-05-25	10
2019-05-26	1
2019-05-26	2
2019-05-26	3
2019-05-26	4
2019-05-26	5
2019-05-26	6
2019-05-26	7
2019-05-26	8
2019-05-26	9
2019-05-26	10
2019-05-27	1
2019-05-27	2
2019-05-27	3
2019-05-27	4
2019-05-27	5
2019-05-27	6
2019-05-27	7
2019-05-27	8
2019-05-27	9
2019-05-27	10
2019-05-28	1
2019-05-28	2
2019-05-28	3
2019-05-28	4
2019-05-28	5
2019-05-28	6
2019-05-28	7
2019-05-28	8
2019-05-28	9
2019-05-28	10
2019-05-29	1
2019-05-29	2
2019-05-29	3
2019-05-29	4
2019-05-29	5
2019-05-29	6
2019-05-29	7
2019-05-29	8
2019-05-29	9
2019-05-29	10
2019-05-30	1
2019-05-30	2
2019-05-30	3
2019-05-30	4
2019-05-30	5
2019-05-30	6
2019-05-30	7
2019-05-30	8
2019-05-30	9
2019-05-30	10
2019-05-31	1
2019-05-31	2
2019-05-31	3
2019-05-31	4
2019-05-31	5
2019-05-31	6
2019-05-31	7
2019-05-31	8
2019-05-31	9
2019-05-31	10
2019-06-01	1
2019-06-01	2
2019-06-01	3
2019-06-01	4
2019-06-01	5
2019-06-01	6
2019-06-01	7
2019-06-01	8
2019-06-01	9
2019-06-01	10
2019-06-02	1
2019-06-02	2
2019-06-02	3
2019-06-02	4
2019-06-02	5
2019-06-02	6
2019-06-02	7
2019-06-02	8
2019-06-02	9
2019-06-02	10
2019-06-03	1
2019-06-03	2
2019-06-03	3
2019-06-03	4
2019-06-03	5
2019-06-03	6
2019-06-03	7
2019-06-03	8
2019-06-03	9
2019-06-03	10
2019-06-04	1
2019-06-04	2
2019-06-04	3
2019-06-04	4
2019-06-04	5
2019-06-04	6
2019-06-04	7
2019-06-04	8
2019-06-04	9
2019-06-04	10
2019-06-05	1
2019-06-05	2
2019-06-05	3
2019-06-05	4
2019-06-05	5
2019-06-05	6
2019-06-05	7
2019-06-05	8
2019-06-05	9
2019-06-05	10
2019-06-06	1
2019-06-06	2
2019-06-06	3
2019-06-06	4
2019-06-06	5
2019-06-06	6
2019-06-06	7
2019-06-06	8
2019-06-06	9
2019-06-06	10
2019-06-07	1
2019-06-07	2
2019-06-07	3
2019-06-07	4
2019-06-07	5
2019-06-07	6
2019-06-07	7
2019-06-07	8
2019-06-07	9
2019-06-07	10
2019-06-08	1
2019-06-08	2
2019-06-08	3
2019-06-08	4
2019-06-08	5
2019-06-08	6
2019-06-08	7
2019-06-08	8
2019-06-08	9
2019-06-08	10
2019-06-09	1
2019-06-09	2
2019-06-09	3
2019-06-09	4
2019-06-09	5
2019-06-09	6
2019-06-09	7
2019-06-09	8
2019-06-09	9
2019-06-09	10
2019-06-10	1
2019-06-10	2
2019-06-10	3
2019-06-10	4
2019-06-10	5
2019-06-10	6
2019-06-10	7
2019-06-10	8
2019-06-10	9
2019-06-10	10
2019-06-11	1
2019-06-11	2
2019-06-11	3
2019-06-11	4
2019-06-11	5
2019-06-11	6
2019-06-11	7
2019-06-11	8
2019-06-11	9
2019-06-11	10
2019-06-12	1
2019-06-12	2
2019-06-12	3
2019-06-12	4
2019-06-12	5
2019-06-12	6
2019-06-12	7
2019-06-12	8
2019-06-12	9
2019-06-12	10
2019-06-13	1
2019-06-13	2
2019-06-13	3
2019-06-13	4
2019-06-13	5
2019-06-13	6
2019-06-13	7
2019-06-13	8
2019-06-13	9
2019-06-13	10
2019-06-14	1
2019-06-14	2
2019-06-14	3
2019-06-14	4
2019-06-14	5
2019-06-14	6
2019-06-14	7
2019-06-14	8
2019-06-14	9
2019-06-14	10
2019-06-15	1
2019-06-15	2
2019-06-15	3
2019-06-15	4
2019-06-15	5
2019-06-15	6
2019-06-15	7
2019-06-15	8
2019-06-15	9
2019-06-15	10
2019-06-16	1
2019-06-16	2
2019-06-16	3
2019-06-16	4
2019-06-16	5
2019-06-16	6
2019-06-16	7
2019-06-16	8
2019-06-16	9
2019-06-16	10
2019-06-17	1
2019-06-17	2
2019-06-17	3
2019-06-17	4
2019-06-17	5
2019-06-17	6
2019-06-17	7
2019-06-17	8
2019-06-17	9
2019-06-17	10
2019-06-18	1
2019-06-18	2
2019-06-18	3
2019-06-18	4
2019-06-18	5
2019-06-18	6
2019-06-18	7
2019-06-18	8
2019-06-18	9
2019-06-18	10
2019-06-19	1
2019-06-19	2
2019-06-19	3
2019-06-19	4
2019-06-19	5
2019-06-19	6
2019-06-19	7
2019-06-19	8
2019-06-19	9
2019-06-19	10
2019-06-20	1
2019-06-20	2
2019-06-20	3
2019-06-20	4
2019-06-20	5
2019-06-20	6
2019-06-20	7
2019-06-20	8
2019-06-20	9
2019-06-20	10
2019-06-21	1
2019-06-21	2
2019-06-21	3
2019-06-21	4
2019-06-21	5
2019-06-21	6
2019-06-21	7
2019-06-21	8
2019-06-21	9
2019-06-21	10
2019-06-22	1
2019-06-22	2
2019-06-22	3
2019-06-22	4
2019-06-22	5
2019-06-22	6
2019-06-22	7
2019-06-22	8
2019-06-22	9
2019-06-22	10
2019-06-23	1
2019-06-23	2
2019-06-23	3
2019-06-23	4
2019-06-23	5
2019-06-23	6
2019-06-23	7
2019-06-23	8
2019-06-23	9
2019-06-23	10
2019-06-24	1
2019-06-24	2
2019-06-24	3
2019-06-24	4
2019-06-24	5
2019-06-24	6
2019-06-24	7
2019-06-24	8
2019-06-24	9
2019-06-24	10
2019-06-25	1
2019-06-25	2
2019-06-25	3
2019-06-25	4
2019-06-25	5
2019-06-25	6
2019-06-25	7
2019-06-25	8
2019-06-25	9
2019-06-25	10
2019-06-26	1
2019-06-26	2
2019-06-26	3
2019-06-26	4
2019-06-26	5
2019-06-26	6
2019-06-26	7
2019-06-26	8
2019-06-26	9
2019-06-26	10
2019-06-27	1
2019-06-27	2
2019-06-27	3
2019-06-27	4
2019-06-27	5
2019-06-27	6
2019-06-27	7
2019-06-27	8
2019-06-27	9
2019-06-27	10
2019-06-28	1
2019-06-28	2
2019-06-28	3
2019-06-28	4
2019-06-28	5
2019-06-28	6
2019-06-28	7
2019-06-28	8
2019-06-28	9
2019-06-28	10
2019-06-29	1
2019-06-29	2
2019-06-29	3
2019-06-29	4
2019-06-29	5
2019-06-29	6
2019-06-29	7
2019-06-29	8
2019-06-29	9
2019-06-29	10
2019-06-30	1
2019-06-30	2
2019-06-30	3
2019-06-30	4
2019-06-30	5
2019-06-30	6
2019-06-30	7
2019-06-30	8
2019-06-30	9
2019-06-30	10
2019-07-01	1
2019-07-01	2
2019-07-01	3
2019-07-01	4
2019-07-01	5
2019-07-01	6
2019-07-01	7
2019-07-01	8
2019-07-01	9
2019-07-01	10
2019-07-02	1
2019-07-02	2
2019-07-02	3
2019-07-02	4
2019-07-02	5
2019-07-02	6
2019-07-02	7
2019-07-02	8
2019-07-02	9
2019-07-02	10
2019-07-03	1
2019-07-03	2
2019-07-03	3
2019-07-03	4
2019-07-03	5
2019-07-03	6
2019-07-03	7
2019-07-03	8
2019-07-03	9
2019-07-03	10
2019-07-04	1
2019-07-04	2
2019-07-04	3
2019-07-04	4
2019-07-04	5
2019-07-04	6
2019-07-04	7
2019-07-04	8
2019-07-04	9
2019-07-04	10
2019-07-05	1
2019-07-05	2
2019-07-05	3
2019-07-05	4
2019-07-05	5
2019-07-05	6
2019-07-05	7
2019-07-05	8
2019-07-05	9
2019-07-05	10
2019-07-06	1
2019-07-06	2
2019-07-06	3
2019-07-06	4
2019-07-06	5
2019-07-06	6
2019-07-06	7
2019-07-06	8
2019-07-06	9
2019-07-06	10
2019-07-07	1
2019-07-07	2
2019-07-07	3
2019-07-07	4
2019-07-07	5
2019-07-07	6
2019-07-07	7
2019-07-07	8
2019-07-07	9
2019-07-07	10
2019-07-08	1
2019-07-08	2
2019-07-08	3
2019-07-08	4
2019-07-08	5
2019-07-08	6
2019-07-08	7
2019-07-08	8
2019-07-08	9
2019-07-08	10
2019-07-09	1
2019-07-09	2
2019-07-09	3
2019-07-09	4
2019-07-09	5
2019-07-09	6
2019-07-09	7
2019-07-09	8
2019-07-09	9
2019-07-09	10
2019-07-10	1
2019-07-10	2
2019-07-10	3
2019-07-10	4
2019-07-10	5
2019-07-10	6
2019-07-10	7
2019-07-10	8
2019-07-10	9
2019-07-10	10
2019-07-11	1
2019-07-11	2
2019-07-11	3
2019-07-11	4
2019-07-11	5
2019-07-11	6
2019-07-11	7
2019-07-11	8
2019-07-11	9
2019-07-11	10
2019-07-12	1
2019-07-12	2
2019-07-12	3
2019-07-12	4
2019-07-12	5
2019-07-12	6
2019-07-12	7
2019-07-12	8
2019-07-12	9
2019-07-12	10
2019-07-13	1
2019-07-13	2
2019-07-13	3
2019-07-13	4
2019-07-13	5
2019-07-13	6
2019-07-13	7
2019-07-13	8
2019-07-13	9
2019-07-13	10
2019-07-14	1
2019-07-14	2
2019-07-14	3
2019-07-14	4
2019-07-14	5
2019-07-14	6
2019-07-14	7
2019-07-14	8
2019-07-14	9
2019-07-14	10
2019-07-15	1
2019-07-15	2
2019-07-15	3
2019-07-15	4
2019-07-15	5
2019-07-15	6
2019-07-15	7
2019-07-15	8
2019-07-15	9
2019-07-15	10
2019-07-16	1
2019-07-16	2
2019-07-16	3
2019-07-16	4
2019-07-16	5
2019-07-16	6
2019-07-16	7
2019-07-16	8
2019-07-16	9
2019-07-16	10
2019-07-17	1
2019-07-17	2
2019-07-17	3
2019-07-17	4
2019-07-17	5
2019-07-17	6
2019-07-17	7
2019-07-17	8
2019-07-17	9
2019-07-17	10
2019-07-18	1
2019-07-18	2
2019-07-18	3
2019-07-18	4
2019-07-18	5
2019-07-18	6
2019-07-18	7
2019-07-18	8
2019-07-18	9
2019-07-18	10
2019-07-19	1
2019-07-19	2
2019-07-19	3
2019-07-19	4
2019-07-19	5
2019-07-19	6
2019-07-19	7
2019-07-19	8
2019-07-19	9
2019-07-19	10
2019-07-20	1
2019-07-20	2
2019-07-20	3
2019-07-20	4
2019-07-20	5
2019-07-20	6
2019-07-20	7
2019-07-20	8
2019-07-20	9
2019-07-20	10
2019-07-21	1
2019-07-21	2
2019-07-21	3
2019-07-21	4
2019-07-21	5
2019-07-21	6
2019-07-21	7
2019-07-21	8
2019-07-21	9
2019-07-21	10
2019-07-22	1
2019-07-22	2
2019-07-22	3
2019-07-22	4
2019-07-22	5
2019-07-22	6
2019-07-22	7
2019-07-22	8
2019-07-22	9
2019-07-22	10
2019-07-23	1
2019-07-23	2
2019-07-23	3
2019-07-23	4
2019-07-23	5
2019-07-23	6
2019-07-23	7
2019-07-23	8
2019-07-23	9
2019-07-23	10
2019-07-24	1
2019-07-24	2
2019-07-24	3
2019-07-24	4
2019-07-24	5
2019-07-24	6
2019-07-24	7
2019-07-24	8
2019-07-24	9
2019-07-24	10
2019-07-25	1
2019-07-25	2
2019-07-25	3
2019-07-25	4
2019-07-25	5
2019-07-25	6
2019-07-25	7
2019-07-25	8
2019-07-25	9
2019-07-25	10
2019-07-26	1
2019-07-26	2
2019-07-26	3
2019-07-26	4
2019-07-26	5
2019-07-26	6
2019-07-26	7
2019-07-26	8
2019-07-26	9
2019-07-26	10
2019-07-27	1
2019-07-27	2
2019-07-27	3
2019-07-27	4
2019-07-27	5
2019-07-27	6
2019-07-27	7
2019-07-27	8
2019-07-27	9
2019-07-27	10
2019-07-28	1
2019-07-28	2
2019-07-28	3
2019-07-28	4
2019-07-28	5
2019-07-28	6
2019-07-28	7
2019-07-28	8
2019-07-28	9
2019-07-28	10
2019-07-29	1
2019-07-29	2
2019-07-29	3
2019-07-29	4
2019-07-29	5
2019-07-29	6
2019-07-29	7
2019-07-29	8
2019-07-29	9
2019-07-29	10
2019-07-30	1
2019-07-30	2
2019-07-30	3
2019-07-30	4
2019-07-30	5
2019-07-30	6
2019-07-30	7
2019-07-30	8
2019-07-30	9
2019-07-30	10
2019-07-31	1
2019-07-31	2
2019-07-31	3
2019-07-31	4
2019-07-31	5
2019-07-31	6
2019-07-31	7
2019-07-31	8
2019-07-31	9
2019-07-31	10
2019-08-01	1
2019-08-01	2
2019-08-01	3
2019-08-01	4
2019-08-01	5
2019-08-01	6
2019-08-01	7
2019-08-01	8
2019-08-01	9
2019-08-01	10
2019-08-02	1
2019-08-02	2
2019-08-02	3
2019-08-02	4
2019-08-02	5
2019-08-02	6
2019-08-02	7
2019-08-02	8
2019-08-02	9
2019-08-02	10
2019-08-03	1
2019-08-03	2
2019-08-03	3
2019-08-03	4
2019-08-03	5
2019-08-03	6
2019-08-03	7
2019-08-03	8
2019-08-03	9
2019-08-03	10
2019-08-04	1
2019-08-04	2
2019-08-04	3
2019-08-04	4
2019-08-04	5
2019-08-04	6
2019-08-04	7
2019-08-04	8
2019-08-04	9
2019-08-04	10
2019-08-05	1
2019-08-05	2
2019-08-05	3
2019-08-05	4
2019-08-05	5
2019-08-05	6
2019-08-05	7
2019-08-05	8
2019-08-05	9
2019-08-05	10
2019-08-06	1
2019-08-06	2
2019-08-06	3
2019-08-06	4
2019-08-06	5
2019-08-06	6
2019-08-06	7
2019-08-06	8
2019-08-06	9
2019-08-06	10
2019-08-07	1
2019-08-07	2
2019-08-07	3
2019-08-07	4
2019-08-07	5
2019-08-07	6
2019-08-07	7
2019-08-07	8
2019-08-07	9
2019-08-07	10
2019-08-08	1
2019-08-08	2
2019-08-08	3
2019-08-08	4
2019-08-08	5
2019-08-08	6
2019-08-08	7
2019-08-08	8
2019-08-08	9
2019-08-08	10
2019-08-09	1
2019-08-09	2
2019-08-09	3
2019-08-09	4
2019-08-09	5
2019-08-09	6
2019-08-09	7
2019-08-09	8
2019-08-09	9
2019-08-09	10
2019-08-10	1
2019-08-10	2
2019-08-10	3
2019-08-10	4
2019-08-10	5
2019-08-10	6
2019-08-10	7
2019-08-10	8
2019-08-10	9
2019-08-10	10
2019-08-11	1
2019-08-11	2
2019-08-11	3
2019-08-11	4
2019-08-11	5
2019-08-11	6
2019-08-11	7
2019-08-11	8
2019-08-11	9
2019-08-11	10
2019-08-12	1
2019-08-12	2
2019-08-12	3
2019-08-12	4
2019-08-12	5
2019-08-12	6
2019-08-12	7
2019-08-12	8
2019-08-12	9
2019-08-12	10
2019-08-13	1
2019-08-13	2
2019-08-13	3
2019-08-13	4
2019-08-13	5
2019-08-13	6
2019-08-13	7
2019-08-13	8
2019-08-13	9
2019-08-13	10
2019-08-14	1
2019-08-14	2
2019-08-14	3
2019-08-14	4
2019-08-14	5
2019-08-14	6
2019-08-14	7
2019-08-14	8
2019-08-14	9
2019-08-14	10
2019-08-15	1
2019-08-15	2
2019-08-15	3
2019-08-15	4
2019-08-15	5
2019-08-15	6
2019-08-15	7
2019-08-15	8
2019-08-15	9
2019-08-15	10
2019-08-16	1
2019-08-16	2
2019-08-16	3
2019-08-16	4
2019-08-16	5
2019-08-16	6
2019-08-16	7
2019-08-16	8
2019-08-16	9
2019-08-16	10
2019-08-17	1
2019-08-17	2
2019-08-17	3
2019-08-17	4
2019-08-17	5
2019-08-17	6
2019-08-17	7
2019-08-17	8
2019-08-17	9
2019-08-17	10
2019-08-18	1
2019-08-18	2
2019-08-18	3
2019-08-18	4
2019-08-18	5
2019-08-18	6
2019-08-18	7
2019-08-18	8
2019-08-18	9
2019-08-18	10
2019-08-19	1
2019-08-19	2
2019-08-19	3
2019-08-19	4
2019-08-19	5
2019-08-19	6
2019-08-19	7
2019-08-19	8
2019-08-19	9
2019-08-19	10
2019-08-20	1
2019-08-20	2
2019-08-20	3
2019-08-20	4
2019-08-20	5
2019-08-20	6
2019-08-20	7
2019-08-20	8
2019-08-20	9
2019-08-20	10
2019-08-21	1
2019-08-21	2
2019-08-21	3
2019-08-21	4
2019-08-21	5
2019-08-21	6
2019-08-21	7
2019-08-21	8
2019-08-21	9
2019-08-21	10
2019-08-22	1
2019-08-22	2
2019-08-22	3
2019-08-22	4
2019-08-22	5
2019-08-22	6
2019-08-22	7
2019-08-22	8
2019-08-22	9
2019-08-22	10
2019-08-23	1
2019-08-23	2
2019-08-23	3
2019-08-23	4
2019-08-23	5
2019-08-23	6
2019-08-23	7
2019-08-23	8
2019-08-23	9
2019-08-23	10
2019-08-24	1
2019-08-24	2
2019-08-24	3
2019-08-24	4
2019-08-24	5
2019-08-24	6
2019-08-24	7
2019-08-24	8
2019-08-24	9
2019-08-24	10
2019-08-25	1
2019-08-25	2
2019-08-25	3
2019-08-25	4
2019-08-25	5
2019-08-25	6
2019-08-25	7
2019-08-25	8
2019-08-25	9
2019-08-25	10
2019-08-26	1
2019-08-26	2
2019-08-26	3
2019-08-26	4
2019-08-26	5
2019-08-26	6
2019-08-26	7
2019-08-26	8
2019-08-26	9
2019-08-26	10
2019-08-27	1
2019-08-27	2
2019-08-27	3
2019-08-27	4
2019-08-27	5
2019-08-27	6
2019-08-27	7
2019-08-27	8
2019-08-27	9
2019-08-27	10
2019-08-28	1
2019-08-28	2
2019-08-28	3
2019-08-28	4
2019-08-28	5
2019-08-28	6
2019-08-28	7
2019-08-28	8
2019-08-28	9
2019-08-28	10
2019-08-29	1
2019-08-29	2
2019-08-29	3
2019-08-29	4
2019-08-29	5
2019-08-29	6
2019-08-29	7
2019-08-29	8
2019-08-29	9
2019-08-29	10
2019-08-30	1
2019-08-30	2
2019-08-30	3
2019-08-30	4
2019-08-30	5
2019-08-30	6
2019-08-30	7
2019-08-30	8
2019-08-30	9
2019-08-30	10
2019-08-31	1
2019-08-31	2
2019-08-31	3
2019-08-31	4
2019-08-31	5
2019-08-31	6
2019-08-31	7
2019-08-31	8
2019-08-31	9
2019-08-31	10
2019-09-01	1
2019-09-01	2
2019-09-01	3
2019-09-01	4
2019-09-01	5
2019-09-01	6
2019-09-01	7
2019-09-01	8
2019-09-01	9
2019-09-01	10
2019-09-02	1
2019-09-02	2
2019-09-02	3
2019-09-02	4
2019-09-02	5
2019-09-02	6
2019-09-02	7
2019-09-02	8
2019-09-02	9
2019-09-02	10
2019-09-03	1
2019-09-03	2
2019-09-03	3
2019-09-03	4
2019-09-03	5
2019-09-03	6
2019-09-03	7
2019-09-03	8
2019-09-03	9
2019-09-03	10
2019-09-04	1
2019-09-04	2
2019-09-04	3
2019-09-04	4
2019-09-04	5
2019-09-04	6
2019-09-04	7
2019-09-04	8
2019-09-04	9
2019-09-04	10
2019-09-05	1
2019-09-05	2
2019-09-05	3
2019-09-05	4
2019-09-05	5
2019-09-05	6
2019-09-05	7
2019-09-05	8
2019-09-05	9
2019-09-05	10
2019-09-06	1
2019-09-06	2
2019-09-06	3
2019-09-06	4
2019-09-06	5
2019-09-06	6
2019-09-06	7
2019-09-06	8
2019-09-06	9
2019-09-06	10
2019-09-07	1
2019-09-07	2
2019-09-07	3
2019-09-07	4
2019-09-07	5
2019-09-07	6
2019-09-07	7
2019-09-07	8
2019-09-07	9
2019-09-07	10
2019-09-08	1
2019-09-08	2
2019-09-08	3
2019-09-08	4
2019-09-08	5
2019-09-08	6
2019-09-08	7
2019-09-08	8
2019-09-08	9
2019-09-08	10
2019-09-09	1
2019-09-09	2
2019-09-09	3
2019-09-09	4
2019-09-09	5
2019-09-09	6
2019-09-09	7
2019-09-09	8
2019-09-09	9
2019-09-09	10
2019-09-10	1
2019-09-10	2
2019-09-10	3
2019-09-10	4
2019-09-10	5
2019-09-10	6
2019-09-10	7
2019-09-10	8
2019-09-10	9
2019-09-10	10
2019-09-11	1
2019-09-11	2
2019-09-11	3
2019-09-11	4
2019-09-11	5
2019-09-11	6
2019-09-11	7
2019-09-11	8
2019-09-11	9
2019-09-11	10
2019-09-12	1
2019-09-12	2
2019-09-12	3
2019-09-12	4
2019-09-12	5
2019-09-12	6
2019-09-12	7
2019-09-12	8
2019-09-12	9
2019-09-12	10
2019-09-13	1
2019-09-13	2
2019-09-13	3
2019-09-13	4
2019-09-13	5
2019-09-13	6
2019-09-13	7
2019-09-13	8
2019-09-13	9
2019-09-13	10
2019-09-14	1
2019-09-14	2
2019-09-14	3
2019-09-14	4
2019-09-14	5
2019-09-14	6
2019-09-14	7
2019-09-14	8
2019-09-14	9
2019-09-14	10
2019-09-15	1
2019-09-15	2
2019-09-15	3
2019-09-15	4
2019-09-15	5
2019-09-15	6
2019-09-15	7
2019-09-15	8
2019-09-15	9
2019-09-15	10
2019-09-16	1
2019-09-16	2
2019-09-16	3
2019-09-16	4
2019-09-16	5
2019-09-16	6
2019-09-16	7
2019-09-16	8
2019-09-16	9
2019-09-16	10
2019-09-17	1
2019-09-17	2
2019-09-17	3
2019-09-17	4
2019-09-17	5
2019-09-17	6
2019-09-17	7
2019-09-17	8
2019-09-17	9
2019-09-17	10
2019-09-18	1
2019-09-18	2
2019-09-18	3
2019-09-18	4
2019-09-18	5
2019-09-18	6
2019-09-18	7
2019-09-18	8
2019-09-18	9
2019-09-18	10
2019-09-19	1
2019-09-19	2
2019-09-19	3
2019-09-19	4
2019-09-19	5
2019-09-19	6
2019-09-19	7
2019-09-19	8
2019-09-19	9
2019-09-19	10
2019-09-20	1
2019-09-20	2
2019-09-20	3
2019-09-20	4
2019-09-20	5
2019-09-20	6
2019-09-20	7
2019-09-20	8
2019-09-20	9
2019-09-20	10
2019-09-21	1
2019-09-21	2
2019-09-21	3
2019-09-21	4
2019-09-21	5
2019-09-21	6
2019-09-21	7
2019-09-21	8
2019-09-21	9
2019-09-21	10
2019-09-22	1
2019-09-22	2
2019-09-22	3
2019-09-22	4
2019-09-22	5
2019-09-22	6
2019-09-22	7
2019-09-22	8
2019-09-22	9
2019-09-22	10
2019-09-23	1
2019-09-23	2
2019-09-23	3
2019-09-23	4
2019-09-23	5
2019-09-23	6
2019-09-23	7
2019-09-23	8
2019-09-23	9
2019-09-23	10
2019-09-24	1
2019-09-24	2
2019-09-24	3
2019-09-24	4
2019-09-24	5
2019-09-24	6
2019-09-24	7
2019-09-24	8
2019-09-24	9
2019-09-24	10
2019-09-25	1
2019-09-25	2
2019-09-25	3
2019-09-25	4
2019-09-25	5
2019-09-25	6
2019-09-25	7
2019-09-25	8
2019-09-25	9
2019-09-25	10
2019-09-26	1
2019-09-26	2
2019-09-26	3
2019-09-26	4
2019-09-26	5
2019-09-26	6
2019-09-26	7
2019-09-26	8
2019-09-26	9
2019-09-26	10
2019-09-27	1
2019-09-27	2
2019-09-27	3
2019-09-27	4
2019-09-27	5
2019-09-27	6
2019-09-27	7
2019-09-27	8
2019-09-27	9
2019-09-27	10
2019-09-28	1
2019-09-28	2
2019-09-28	3
2019-09-28	4
2019-09-28	5
2019-09-28	6
2019-09-28	7
2019-09-28	8
2019-09-28	9
2019-09-28	10
2019-09-29	1
2019-09-29	2
2019-09-29	3
2019-09-29	4
2019-09-29	5
2019-09-29	6
2019-09-29	7
2019-09-29	8
2019-09-29	9
2019-09-29	10
2019-09-30	1
2019-09-30	2
2019-09-30	3
2019-09-30	4
2019-09-30	5
2019-09-30	6
2019-09-30	7
2019-09-30	8
2019-09-30	9
2019-09-30	10
2019-10-01	1
2019-10-01	2
2019-10-01	3
2019-10-01	4
2019-10-01	5
2019-10-01	6
2019-10-01	7
2019-10-01	8
2019-10-01	9
2019-10-01	10
2019-10-02	1
2019-10-02	2
2019-10-02	3
2019-10-02	4
2019-10-02	5
2019-10-02	6
2019-10-02	7
2019-10-02	8
2019-10-02	9
2019-10-02	10
2019-10-03	1
2019-10-03	2
2019-10-03	3
2019-10-03	4
2019-10-03	5
2019-10-03	6
2019-10-03	7
2019-10-03	8
2019-10-03	9
2019-10-03	10
2019-10-04	1
2019-10-04	2
2019-10-04	3
2019-10-04	4
2019-10-04	5
2019-10-04	6
2019-10-04	7
2019-10-04	8
2019-10-04	9
2019-10-04	10
2019-10-05	1
2019-10-05	2
2019-10-05	3
2019-10-05	4
2019-10-05	5
2019-10-05	6
2019-10-05	7
2019-10-05	8
2019-10-05	9
2019-10-05	10
2019-10-06	1
2019-10-06	2
2019-10-06	3
2019-10-06	4
2019-10-06	5
2019-10-06	6
2019-10-06	7
2019-10-06	8
2019-10-06	9
2019-10-06	10
2019-10-07	1
2019-10-07	2
2019-10-07	3
2019-10-07	4
2019-10-07	5
2019-10-07	6
2019-10-07	7
2019-10-07	8
2019-10-07	9
2019-10-07	10
2019-10-08	1
2019-10-08	2
2019-10-08	3
2019-10-08	4
2019-10-08	5
2019-10-08	6
2019-10-08	7
2019-10-08	8
2019-10-08	9
2019-10-08	10
2019-10-09	1
2019-10-09	2
2019-10-09	3
2019-10-09	4
2019-10-09	5
2019-10-09	6
2019-10-09	7
2019-10-09	8
2019-10-09	9
2019-10-09	10
2019-10-10	1
2019-10-10	2
2019-10-10	3
2019-10-10	4
2019-10-10	5
2019-10-10	6
2019-10-10	7
2019-10-10	8
2019-10-10	9
2019-10-10	10
2019-10-11	1
2019-10-11	2
2019-10-11	3
2019-10-11	4
2019-10-11	5
2019-10-11	6
2019-10-11	7
2019-10-11	8
2019-10-11	9
2019-10-11	10
2019-10-12	1
2019-10-12	2
2019-10-12	3
2019-10-12	4
2019-10-12	5
2019-10-12	6
2019-10-12	7
2019-10-12	8
2019-10-12	9
2019-10-12	10
2019-10-13	1
2019-10-13	2
2019-10-13	3
2019-10-13	4
2019-10-13	5
2019-10-13	6
2019-10-13	7
2019-10-13	8
2019-10-13	9
2019-10-13	10
2019-10-14	1
2019-10-14	2
2019-10-14	3
2019-10-14	4
2019-10-14	5
2019-10-14	6
2019-10-14	7
2019-10-14	8
2019-10-14	9
2019-10-14	10
2019-10-15	1
2019-10-15	2
2019-10-15	3
2019-10-15	4
2019-10-15	5
2019-10-15	6
2019-10-15	7
2019-10-15	8
2019-10-15	9
2019-10-15	10
2019-10-16	1
2019-10-16	2
2019-10-16	3
2019-10-16	4
2019-10-16	5
2019-10-16	6
2019-10-16	7
2019-10-16	8
2019-10-16	9
2019-10-16	10
2019-10-17	1
2019-10-17	2
2019-10-17	3
2019-10-17	4
2019-10-17	5
2019-10-17	6
2019-10-17	7
2019-10-17	8
2019-10-17	9
2019-10-17	10
2019-10-18	1
2019-10-18	2
2019-10-18	3
2019-10-18	4
2019-10-18	5
2019-10-18	6
2019-10-18	7
2019-10-18	8
2019-10-18	9
2019-10-18	10
2019-10-19	1
2019-10-19	2
2019-10-19	3
2019-10-19	4
2019-10-19	5
2019-10-19	6
2019-10-19	7
2019-10-19	8
2019-10-19	9
2019-10-19	10
2019-10-20	1
2019-10-20	2
2019-10-20	3
2019-10-20	4
2019-10-20	5
2019-10-20	6
2019-10-20	7
2019-10-20	8
2019-10-20	9
2019-10-20	10
2019-10-21	1
2019-10-21	2
2019-10-21	3
2019-10-21	4
2019-10-21	5
2019-10-21	6
2019-10-21	7
2019-10-21	8
2019-10-21	9
2019-10-21	10
2019-10-22	1
2019-10-22	2
2019-10-22	3
2019-10-22	4
2019-10-22	5
2019-10-22	6
2019-10-22	7
2019-10-22	8
2019-10-22	9
2019-10-22	10
2019-10-23	1
2019-10-23	2
2019-10-23	3
2019-10-23	4
2019-10-23	5
2019-10-23	6
2019-10-23	7
2019-10-23	8
2019-10-23	9
2019-10-23	10
2019-10-24	1
2019-10-24	2
2019-10-24	3
2019-10-24	4
2019-10-24	5
2019-10-24	6
2019-10-24	7
2019-10-24	8
2019-10-24	9
2019-10-24	10
2019-10-25	1
2019-10-25	2
2019-10-25	3
2019-10-25	4
2019-10-25	5
2019-10-25	6
2019-10-25	7
2019-10-25	8
2019-10-25	9
2019-10-25	10
2019-10-26	1
2019-10-26	2
2019-10-26	3
2019-10-26	4
2019-10-26	5
2019-10-26	6
2019-10-26	7
2019-10-26	8
2019-10-26	9
2019-10-26	10
2019-10-27	1
2019-10-27	2
2019-10-27	3
2019-10-27	4
2019-10-27	5
2019-10-27	6
2019-10-27	7
2019-10-27	8
2019-10-27	9
2019-10-27	10
2019-10-28	1
2019-10-28	2
2019-10-28	3
2019-10-28	4
2019-10-28	5
2019-10-28	6
2019-10-28	7
2019-10-28	8
2019-10-28	9
2019-10-28	10
2019-10-29	1
2019-10-29	2
2019-10-29	3
2019-10-29	4
2019-10-29	5
2019-10-29	6
2019-10-29	7
2019-10-29	8
2019-10-29	9
2019-10-29	10
2019-10-30	1
2019-10-30	2
2019-10-30	3
2019-10-30	4
2019-10-30	5
2019-10-30	6
2019-10-30	7
2019-10-30	8
2019-10-30	9
2019-10-30	10
2019-10-31	1
2019-10-31	2
2019-10-31	3
2019-10-31	4
2019-10-31	5
2019-10-31	6
2019-10-31	7
2019-10-31	8
2019-10-31	9
2019-10-31	10
2019-11-01	1
2019-11-01	2
2019-11-01	3
2019-11-01	4
2019-11-01	5
2019-11-01	6
2019-11-01	7
2019-11-01	8
2019-11-01	9
2019-11-01	10
2019-11-02	1
2019-11-02	2
2019-11-02	3
2019-11-02	4
2019-11-02	5
2019-11-02	6
2019-11-02	7
2019-11-02	8
2019-11-02	9
2019-11-02	10
2019-11-03	1
2019-11-03	2
2019-11-03	3
2019-11-03	4
2019-11-03	5
2019-11-03	6
2019-11-03	7
2019-11-03	8
2019-11-03	9
2019-11-03	10
2019-11-04	1
2019-11-04	2
2019-11-04	3
2019-11-04	4
2019-11-04	5
2019-11-04	6
2019-11-04	7
2019-11-04	8
2019-11-04	9
2019-11-04	10
2019-11-05	1
2019-11-05	2
2019-11-05	3
2019-11-05	4
2019-11-05	5
2019-11-05	6
2019-11-05	7
2019-11-05	8
2019-11-05	9
2019-11-05	10
2019-11-06	1
2019-11-06	2
2019-11-06	3
2019-11-06	4
2019-11-06	5
2019-11-06	6
2019-11-06	7
2019-11-06	8
2019-11-06	9
2019-11-06	10
2019-11-07	1
2019-11-07	2
2019-11-07	3
2019-11-07	4
2019-11-07	5
2019-11-07	6
2019-11-07	7
2019-11-07	8
2019-11-07	9
2019-11-07	10
2019-11-08	1
2019-11-08	2
2019-11-08	3
2019-11-08	4
2019-11-08	5
2019-11-08	6
2019-11-08	7
2019-11-08	8
2019-11-08	9
2019-11-08	10
2019-11-09	1
2019-11-09	2
2019-11-09	3
2019-11-09	4
2019-11-09	5
2019-11-09	6
2019-11-09	7
2019-11-09	8
2019-11-09	9
2019-11-09	10
2019-11-10	1
2019-11-10	2
2019-11-10	3
2019-11-10	4
2019-11-10	5
2019-11-10	6
2019-11-10	7
2019-11-10	8
2019-11-10	9
2019-11-10	10
2019-11-11	1
2019-11-11	2
2019-11-11	3
2019-11-11	4
2019-11-11	5
2019-11-11	6
2019-11-11	7
2019-11-11	8
2019-11-11	9
2019-11-11	10
2019-11-12	1
2019-11-12	2
2019-11-12	3
2019-11-12	4
2019-11-12	5
2019-11-12	6
2019-11-12	7
2019-11-12	8
2019-11-12	9
2019-11-12	10
2019-11-13	1
2019-11-13	2
2019-11-13	3
2019-11-13	4
2019-11-13	5
2019-11-13	6
2019-11-13	7
2019-11-13	8
2019-11-13	9
2019-11-13	10
2019-11-14	1
2019-11-14	2
2019-11-14	3
2019-11-14	4
2019-11-14	5
2019-11-14	6
2019-11-14	7
2019-11-14	8
2019-11-14	9
2019-11-14	10
2019-11-15	1
2019-11-15	2
2019-11-15	3
2019-11-15	4
2019-11-15	5
2019-11-15	6
2019-11-15	7
2019-11-15	8
2019-11-15	9
2019-11-15	10
2019-11-16	1
2019-11-16	2
2019-11-16	3
2019-11-16	4
2019-11-16	5
2019-11-16	6
2019-11-16	7
2019-11-16	8
2019-11-16	9
2019-11-16	10
2019-11-17	1
2019-11-17	2
2019-11-17	3
2019-11-17	4
2019-11-17	5
2019-11-17	6
2019-11-17	7
2019-11-17	8
2019-11-17	9
2019-11-17	10
2019-11-18	1
2019-11-18	2
2019-11-18	3
2019-11-18	4
2019-11-18	5
2019-11-18	6
2019-11-18	7
2019-11-18	8
2019-11-18	9
2019-11-18	10
2019-11-19	1
2019-11-19	2
2019-11-19	3
2019-11-19	4
2019-11-19	5
2019-11-19	6
2019-11-19	7
2019-11-19	8
2019-11-19	9
2019-11-19	10
2019-11-20	1
2019-11-20	2
2019-11-20	3
2019-11-20	4
2019-11-20	5
2019-11-20	6
2019-11-20	7
2019-11-20	8
2019-11-20	9
2019-11-20	10
2019-11-21	1
2019-11-21	2
2019-11-21	3
2019-11-21	4
2019-11-21	5
2019-11-21	6
2019-11-21	7
2019-11-21	8
2019-11-21	9
2019-11-21	10
2019-11-22	1
2019-11-22	2
2019-11-22	3
2019-11-22	4
2019-11-22	5
2019-11-22	6
2019-11-22	7
2019-11-22	8
2019-11-22	9
2019-11-22	10
2019-11-23	1
2019-11-23	2
2019-11-23	3
2019-11-23	4
2019-11-23	5
2019-11-23	6
2019-11-23	7
2019-11-23	8
2019-11-23	9
2019-11-23	10
2019-11-24	1
2019-11-24	2
2019-11-24	3
2019-11-24	4
2019-11-24	5
2019-11-24	6
2019-11-24	7
2019-11-24	8
2019-11-24	9
2019-11-24	10
2019-11-25	1
2019-11-25	2
2019-11-25	3
2019-11-25	4
2019-11-25	5
2019-11-25	6
2019-11-25	7
2019-11-25	8
2019-11-25	9
2019-11-25	10
2019-11-26	1
2019-11-26	2
2019-11-26	3
2019-11-26	4
2019-11-26	5
2019-11-26	6
2019-11-26	7
2019-11-26	8
2019-11-26	9
2019-11-26	10
2019-11-27	1
2019-11-27	2
2019-11-27	3
2019-11-27	4
2019-11-27	5
2019-11-27	6
2019-11-27	7
2019-11-27	8
2019-11-27	9
2019-11-27	10
2019-11-28	1
2019-11-28	2
2019-11-28	3
2019-11-28	4
2019-11-28	5
2019-11-28	6
2019-11-28	7
2019-11-28	8
2019-11-28	9
2019-11-28	10
2019-11-29	1
2019-11-29	2
2019-11-29	3
2019-11-29	4
2019-11-29	5
2019-11-29	6
2019-11-29	7
2019-11-29	8
2019-11-29	9
2019-11-29	10
2019-11-30	1
2019-11-30	2
2019-11-30	3
2019-11-30	4
2019-11-30	5
2019-11-30	6
2019-11-30	7
2019-11-30	8
2019-11-30	9
2019-11-30	10
2019-12-01	1
2019-12-01	2
2019-12-01	3
2019-12-01	4
2019-12-01	5
2019-12-01	6
2019-12-01	7
2019-12-01	8
2019-12-01	9
2019-12-01	10
2019-12-02	1
2019-12-02	2
2019-12-02	3
2019-12-02	4
2019-12-02	5
2019-12-02	6
2019-12-02	7
2019-12-02	8
2019-12-02	9
2019-12-02	10
2019-12-03	1
2019-12-03	2
2019-12-03	3
2019-12-03	4
2019-12-03	5
2019-12-03	6
2019-12-03	7
2019-12-03	8
2019-12-03	9
2019-12-03	10
2019-12-04	1
2019-12-04	2
2019-12-04	3
2019-12-04	4
2019-12-04	5
2019-12-04	6
2019-12-04	7
2019-12-04	8
2019-12-04	9
2019-12-04	10
2019-12-05	1
2019-12-05	2
2019-12-05	3
2019-12-05	4
2019-12-05	5
2019-12-05	6
2019-12-05	7
2019-12-05	8
2019-12-05	9
2019-12-05	10
2019-12-06	1
2019-12-06	2
2019-12-06	3
2019-12-06	4
2019-12-06	5
2019-12-06	6
2019-12-06	7
2019-12-06	8
2019-12-06	9
2019-12-06	10
2019-12-07	1
2019-12-07	2
2019-12-07	3
2019-12-07	4
2019-12-07	5
2019-12-07	6
2019-12-07	7
2019-12-07	8
2019-12-07	9
2019-12-07	10
2019-12-08	1
2019-12-08	2
2019-12-08	3
2019-12-08	4
2019-12-08	5
2019-12-08	6
2019-12-08	7
2019-12-08	8
2019-12-08	9
2019-12-08	10
2019-12-09	1
2019-12-09	2
2019-12-09	3
2019-12-09	4
2019-12-09	5
2019-12-09	6
2019-12-09	7
2019-12-09	8
2019-12-09	9
2019-12-09	10
2019-12-10	1
2019-12-10	2
2019-12-10	3
2019-12-10	4
2019-12-10	5
2019-12-10	6
2019-12-10	7
2019-12-10	8
2019-12-10	9
2019-12-10	10
2019-12-11	1
2019-12-11	2
2019-12-11	3
2019-12-11	4
2019-12-11	5
2019-12-11	6
2019-12-11	7
2019-12-11	8
2019-12-11	9
2019-12-11	10
2019-12-12	1
2019-12-12	2
2019-12-12	3
2019-12-12	4
2019-12-12	5
2019-12-12	6
2019-12-12	7
2019-12-12	8
2019-12-12	9
2019-12-12	10
2019-12-13	1
2019-12-13	2
2019-12-13	3
2019-12-13	4
2019-12-13	5
2019-12-13	6
2019-12-13	7
2019-12-13	8
2019-12-13	9
2019-12-13	10
2019-12-14	1
2019-12-14	2
2019-12-14	3
2019-12-14	4
2019-12-14	5
2019-12-14	6
2019-12-14	7
2019-12-14	8
2019-12-14	9
2019-12-14	10
2019-12-15	1
2019-12-15	2
2019-12-15	3
2019-12-15	4
2019-12-15	5
2019-12-15	6
2019-12-15	7
2019-12-15	8
2019-12-15	9
2019-12-15	10
2019-12-16	1
2019-12-16	2
2019-12-16	3
2019-12-16	4
2019-12-16	5
2019-12-16	6
2019-12-16	7
2019-12-16	8
2019-12-16	9
2019-12-16	10
2019-12-17	1
2019-12-17	2
2019-12-17	3
2019-12-17	4
2019-12-17	5
2019-12-17	6
2019-12-17	7
2019-12-17	8
2019-12-17	9
2019-12-17	10
2019-12-18	1
2019-12-18	2
2019-12-18	3
2019-12-18	4
2019-12-18	5
2019-12-18	6
2019-12-18	7
2019-12-18	8
2019-12-18	9
2019-12-18	10
2019-12-19	1
2019-12-19	2
2019-12-19	3
2019-12-19	4
2019-12-19	5
2019-12-19	6
2019-12-19	7
2019-12-19	8
2019-12-19	9
2019-12-19	10
2019-12-20	1
2019-12-20	2
2019-12-20	3
2019-12-20	4
2019-12-20	5
2019-12-20	6
2019-12-20	7
2019-12-20	8
2019-12-20	9
2019-12-20	10
2019-12-21	1
2019-12-21	2
2019-12-21	3
2019-12-21	4
2019-12-21	5
2019-12-21	6
2019-12-21	7
2019-12-21	8
2019-12-21	9
2019-12-21	10
2019-12-22	1
2019-12-22	2
2019-12-22	3
2019-12-22	4
2019-12-22	5
2019-12-22	6
2019-12-22	7
2019-12-22	8
2019-12-22	9
2019-12-22	10
2019-12-23	1
2019-12-23	2
2019-12-23	3
2019-12-23	4
2019-12-23	5
2019-12-23	6
2019-12-23	7
2019-12-23	8
2019-12-23	9
2019-12-23	10
2019-12-24	1
2019-12-24	2
2019-12-24	3
2019-12-24	4
2019-12-24	5
2019-12-24	6
2019-12-24	7
2019-12-24	8
2019-12-24	9
2019-12-24	10
2019-12-25	1
2019-12-25	2
2019-12-25	3
2019-12-25	4
2019-12-25	5
2019-12-25	6
2019-12-25	7
2019-12-25	8
2019-12-25	9
2019-12-25	10
2019-12-26	1
2019-12-26	2
2019-12-26	3
2019-12-26	4
2019-12-26	5
2019-12-26	6
2019-12-26	7
2019-12-26	8
2019-12-26	9
2019-12-26	10
2019-12-27	1
2019-12-27	2
2019-12-27	3
2019-12-27	4
2019-12-27	5
2019-12-27	6
2019-12-27	7
2019-12-27	8
2019-12-27	9
2019-12-27	10
2019-12-28	1
2019-12-28	2
2019-12-28	3
2019-12-28	4
2019-12-28	5
2019-12-28	6
2019-12-28	7
2019-12-28	8
2019-12-28	9
2019-12-28	10
2019-12-29	1
2019-12-29	2
2019-12-29	3
2019-12-29	4
2019-12-29	5
2019-12-29	6
2019-12-29	7
2019-12-29	8
2019-12-29	9
2019-12-29	10
2019-12-30	1
2019-12-30	2
2019-12-30	3
2019-12-30	4
2019-12-30	5
2019-12-30	6
2019-12-30	7
2019-12-30	8
2019-12-30	9
2019-12-30	10
2019-12-31	1
2019-12-31	2
2019-12-31	3
2019-12-31	4
2019-12-31	5
2019-12-31	6
2019-12-31	7
2019-12-31	8
2019-12-31	9
2019-12-31	10
2020-01-01	1
2020-01-01	2
2020-01-01	3
2020-01-01	4
2020-01-01	5
2020-01-01	6
2020-01-01	7
2020-01-01	8
2020-01-01	9
2020-01-01	10
2020-01-02	1
2020-01-02	2
2020-01-02	3
2020-01-02	4
2020-01-02	5
2020-01-02	6
2020-01-02	7
2020-01-02	8
2020-01-02	9
2020-01-02	10
2020-01-03	1
2020-01-03	2
2020-01-03	3
2020-01-03	4
2020-01-03	5
2020-01-03	6
2020-01-03	7
2020-01-03	8
2020-01-03	9
2020-01-03	10
2020-01-04	1
2020-01-04	2
2020-01-04	3
2020-01-04	4
2020-01-04	5
2020-01-04	6
2020-01-04	7
2020-01-04	8
2020-01-04	9
2020-01-04	10
2020-01-05	1
2020-01-05	2
2020-01-05	3
2020-01-05	4
2020-01-05	5
2020-01-05	6
2020-01-05	7
2020-01-05	8
2020-01-05	9
2020-01-05	10
2020-01-06	1
2020-01-06	2
2020-01-06	3
2020-01-06	4
2020-01-06	5
2020-01-06	6
2020-01-06	7
2020-01-06	8
2020-01-06	9
2020-01-06	10
2020-01-07	1
2020-01-07	2
2020-01-07	3
2020-01-07	4
2020-01-07	5
2020-01-07	6
2020-01-07	7
2020-01-07	8
2020-01-07	9
2020-01-07	10
2020-01-08	1
2020-01-08	2
2020-01-08	3
2020-01-08	4
2020-01-08	5
2020-01-08	6
2020-01-08	7
2020-01-08	8
2020-01-08	9
2020-01-08	10
2020-01-09	1
2020-01-09	2
2020-01-09	3
2020-01-09	4
2020-01-09	5
2020-01-09	6
2020-01-09	7
2020-01-09	8
2020-01-09	9
2020-01-09	10
2020-01-10	1
2020-01-10	2
2020-01-10	3
2020-01-10	4
2020-01-10	5
2020-01-10	6
2020-01-10	7
2020-01-10	8
2020-01-10	9
2020-01-10	10
2020-01-11	1
2020-01-11	2
2020-01-11	3
2020-01-11	4
2020-01-11	5
2020-01-11	6
2020-01-11	7
2020-01-11	8
2020-01-11	9
2020-01-11	10
2020-01-12	1
2020-01-12	2
2020-01-12	3
2020-01-12	4
2020-01-12	5
2020-01-12	6
2020-01-12	7
2020-01-12	8
2020-01-12	9
2020-01-12	10
2020-01-13	1
2020-01-13	2
2020-01-13	3
2020-01-13	4
2020-01-13	5
2020-01-13	6
2020-01-13	7
2020-01-13	8
2020-01-13	9
2020-01-13	10
2020-01-14	1
2020-01-14	2
2020-01-14	3
2020-01-14	4
2020-01-14	5
2020-01-14	6
2020-01-14	7
2020-01-14	8
2020-01-14	9
2020-01-14	10
2020-01-15	1
2020-01-15	2
2020-01-15	3
2020-01-15	4
2020-01-15	5
2020-01-15	6
2020-01-15	7
2020-01-15	8
2020-01-15	9
2020-01-15	10
2020-01-16	1
2020-01-16	2
2020-01-16	3
2020-01-16	4
2020-01-16	5
2020-01-16	6
2020-01-16	7
2020-01-16	8
2020-01-16	9
2020-01-16	10
2020-01-17	1
2020-01-17	2
2020-01-17	3
2020-01-17	4
2020-01-17	5
2020-01-17	6
2020-01-17	7
2020-01-17	8
2020-01-17	9
2020-01-17	10
2020-01-18	1
2020-01-18	2
2020-01-18	3
2020-01-18	4
2020-01-18	5
2020-01-18	6
2020-01-18	7
2020-01-18	8
2020-01-18	9
2020-01-18	10
2020-01-19	1
2020-01-19	2
2020-01-19	3
2020-01-19	4
2020-01-19	5
2020-01-19	6
2020-01-19	7
2020-01-19	8
2020-01-19	9
2020-01-19	10
2020-01-20	1
2020-01-20	2
2020-01-20	3
2020-01-20	4
2020-01-20	5
2020-01-20	6
2020-01-20	7
2020-01-20	8
2020-01-20	9
2020-01-20	10
2020-01-21	1
2020-01-21	2
2020-01-21	3
2020-01-21	4
2020-01-21	5
2020-01-21	6
2020-01-21	7
2020-01-21	8
2020-01-21	9
2020-01-21	10
2020-01-22	1
2020-01-22	2
2020-01-22	3
2020-01-22	4
2020-01-22	5
2020-01-22	6
2020-01-22	7
2020-01-22	8
2020-01-22	9
2020-01-22	10
2020-01-23	1
2020-01-23	2
2020-01-23	3
2020-01-23	4
2020-01-23	5
2020-01-23	6
2020-01-23	7
2020-01-23	8
2020-01-23	9
2020-01-23	10
2020-01-24	1
2020-01-24	2
2020-01-24	3
2020-01-24	4
2020-01-24	5
2020-01-24	6
2020-01-24	7
2020-01-24	8
2020-01-24	9
2020-01-24	10
2020-01-25	1
2020-01-25	2
2020-01-25	3
2020-01-25	4
2020-01-25	5
2020-01-25	6
2020-01-25	7
2020-01-25	8
2020-01-25	9
2020-01-25	10
2020-01-26	1
2020-01-26	2
2020-01-26	3
2020-01-26	4
2020-01-26	5
2020-01-26	6
2020-01-26	7
2020-01-26	8
2020-01-26	9
2020-01-26	10
2020-01-27	1
2020-01-27	2
2020-01-27	3
2020-01-27	4
2020-01-27	5
2020-01-27	6
2020-01-27	7
2020-01-27	8
2020-01-27	9
2020-01-27	10
2020-01-28	1
2020-01-28	2
2020-01-28	3
2020-01-28	4
2020-01-28	5
2020-01-28	6
2020-01-28	7
2020-01-28	8
2020-01-28	9
2020-01-28	10
2020-01-29	1
2020-01-29	2
2020-01-29	3
2020-01-29	4
2020-01-29	5
2020-01-29	6
2020-01-29	7
2020-01-29	8
2020-01-29	9
2020-01-29	10
2020-01-30	1
2020-01-30	2
2020-01-30	3
2020-01-30	4
2020-01-30	5
2020-01-30	6
2020-01-30	7
2020-01-30	8
2020-01-30	9
2020-01-30	10
2020-01-31	1
2020-01-31	2
2020-01-31	3
2020-01-31	4
2020-01-31	5
2020-01-31	6
2020-01-31	7
2020-01-31	8
2020-01-31	9
2020-01-31	10
2020-02-01	1
2020-02-01	2
2020-02-01	3
2020-02-01	4
2020-02-01	5
2020-02-01	6
2020-02-01	7
2020-02-01	8
2020-02-01	9
2020-02-01	10
2020-02-02	1
2020-02-02	2
2020-02-02	3
2020-02-02	4
2020-02-02	5
2020-02-02	6
2020-02-02	7
2020-02-02	8
2020-02-02	9
2020-02-02	10
2020-02-03	1
2020-02-03	2
2020-02-03	3
2020-02-03	4
2020-02-03	5
2020-02-03	6
2020-02-03	7
2020-02-03	8
2020-02-03	9
2020-02-03	10
2020-02-04	1
2020-02-04	2
2020-02-04	3
2020-02-04	4
2020-02-04	5
2020-02-04	6
2020-02-04	7
2020-02-04	8
2020-02-04	9
2020-02-04	10
2020-02-05	1
2020-02-05	2
2020-02-05	3
2020-02-05	4
2020-02-05	5
2020-02-05	6
2020-02-05	7
2020-02-05	8
2020-02-05	9
2020-02-05	10
2020-02-06	1
2020-02-06	2
2020-02-06	3
2020-02-06	4
2020-02-06	5
2020-02-06	6
2020-02-06	7
2020-02-06	8
2020-02-06	9
2020-02-06	10
2020-02-07	1
2020-02-07	2
2020-02-07	3
2020-02-07	4
2020-02-07	5
2020-02-07	6
2020-02-07	7
2020-02-07	8
2020-02-07	9
2020-02-07	10
2020-02-08	1
2020-02-08	2
2020-02-08	3
2020-02-08	4
2020-02-08	5
2020-02-08	6
2020-02-08	7
2020-02-08	8
2020-02-08	9
2020-02-08	10
2020-02-09	1
2020-02-09	2
2020-02-09	3
2020-02-09	4
2020-02-09	5
2020-02-09	6
2020-02-09	7
2020-02-09	8
2020-02-09	9
2020-02-09	10
2020-02-10	1
2020-02-10	2
2020-02-10	3
2020-02-10	4
2020-02-10	5
2020-02-10	6
2020-02-10	7
2020-02-10	8
2020-02-10	9
2020-02-10	10
2020-02-11	1
2020-02-11	2
2020-02-11	3
2020-02-11	4
2020-02-11	5
2020-02-11	6
2020-02-11	7
2020-02-11	8
2020-02-11	9
2020-02-11	10
2020-02-12	1
2020-02-12	2
2020-02-12	3
2020-02-12	4
2020-02-12	5
2020-02-12	6
2020-02-12	7
2020-02-12	8
2020-02-12	9
2020-02-12	10
2020-02-13	1
2020-02-13	2
2020-02-13	3
2020-02-13	4
2020-02-13	5
2020-02-13	6
2020-02-13	7
2020-02-13	8
2020-02-13	9
2020-02-13	10
2020-02-14	1
2020-02-14	2
2020-02-14	3
2020-02-14	4
2020-02-14	5
2020-02-14	6
2020-02-14	7
2020-02-14	8
2020-02-14	9
2020-02-14	10
2020-02-15	1
2020-02-15	2
2020-02-15	3
2020-02-15	4
2020-02-15	5
2020-02-15	6
2020-02-15	7
2020-02-15	8
2020-02-15	9
2020-02-15	10
2020-02-16	1
2020-02-16	2
2020-02-16	3
2020-02-16	4
2020-02-16	5
2020-02-16	6
2020-02-16	7
2020-02-16	8
2020-02-16	9
2020-02-16	10
2020-02-17	1
2020-02-17	2
2020-02-17	3
2020-02-17	4
2020-02-17	5
2020-02-17	6
2020-02-17	7
2020-02-17	8
2020-02-17	9
2020-02-17	10
2020-02-18	1
2020-02-18	2
2020-02-18	3
2020-02-18	4
2020-02-18	5
2020-02-18	6
2020-02-18	7
2020-02-18	8
2020-02-18	9
2020-02-18	10
2020-02-19	1
2020-02-19	2
2020-02-19	3
2020-02-19	4
2020-02-19	5
2020-02-19	6
2020-02-19	7
2020-02-19	8
2020-02-19	9
2020-02-19	10
2020-02-20	1
2020-02-20	2
2020-02-20	3
2020-02-20	4
2020-02-20	5
2020-02-20	6
2020-02-20	7
2020-02-20	8
2020-02-20	9
2020-02-20	10
2020-02-21	1
2020-02-21	2
2020-02-21	3
2020-02-21	4
2020-02-21	5
2020-02-21	6
2020-02-21	7
2020-02-21	8
2020-02-21	9
2020-02-21	10
2020-02-22	1
2020-02-22	2
2020-02-22	3
2020-02-22	4
2020-02-22	5
2020-02-22	6
2020-02-22	7
2020-02-22	8
2020-02-22	9
2020-02-22	10
2020-02-23	1
2020-02-23	2
2020-02-23	3
2020-02-23	4
2020-02-23	5
2020-02-23	6
2020-02-23	7
2020-02-23	8
2020-02-23	9
2020-02-23	10
2020-02-24	1
2020-02-24	2
2020-02-24	3
2020-02-24	4
2020-02-24	5
2020-02-24	6
2020-02-24	7
2020-02-24	8
2020-02-24	9
2020-02-24	10
2020-02-25	1
2020-02-25	2
2020-02-25	3
2020-02-25	4
2020-02-25	5
2020-02-25	6
2020-02-25	7
2020-02-25	8
2020-02-25	9
2020-02-25	10
2020-02-26	1
2020-02-26	2
2020-02-26	3
2020-02-26	4
2020-02-26	5
2020-02-26	6
2020-02-26	7
2020-02-26	8
2020-02-26	9
2020-02-26	10
2020-02-27	1
2020-02-27	2
2020-02-27	3
2020-02-27	4
2020-02-27	5
2020-02-27	6
2020-02-27	7
2020-02-27	8
2020-02-27	9
2020-02-27	10
2020-02-28	1
2020-02-28	2
2020-02-28	3
2020-02-28	4
2020-02-28	5
2020-02-28	6
2020-02-28	7
2020-02-28	8
2020-02-28	9
2020-02-28	10
2020-02-29	1
2020-02-29	2
2020-02-29	3
2020-02-29	4
2020-02-29	5
2020-02-29	6
2020-02-29	7
2020-02-29	8
2020-02-29	9
2020-02-29	10
2020-03-01	1
2020-03-01	2
2020-03-01	3
2020-03-01	4
2020-03-01	5
2020-03-01	6
2020-03-01	7
2020-03-01	8
2020-03-01	9
2020-03-01	10
2020-03-02	1
2020-03-02	2
2020-03-02	3
2020-03-02	4
2020-03-02	5
2020-03-02	6
2020-03-02	7
2020-03-02	8
2020-03-02	9
2020-03-02	10
2020-03-03	1
2020-03-03	2
2020-03-03	3
2020-03-03	4
2020-03-03	5
2020-03-03	6
2020-03-03	7
2020-03-03	8
2020-03-03	9
2020-03-03	10
2020-03-04	1
2020-03-04	2
2020-03-04	3
2020-03-04	4
2020-03-04	5
2020-03-04	6
2020-03-04	7
2020-03-04	8
2020-03-04	9
2020-03-04	10
2020-03-05	1
2020-03-05	2
2020-03-05	3
2020-03-05	4
2020-03-05	5
2020-03-05	6
2020-03-05	7
2020-03-05	8
2020-03-05	9
2020-03-05	10
2020-03-06	1
2020-03-06	2
2020-03-06	3
2020-03-06	4
2020-03-06	5
2020-03-06	6
2020-03-06	7
2020-03-06	8
2020-03-06	9
2020-03-06	10
2020-03-07	1
2020-03-07	2
2020-03-07	3
2020-03-07	4
2020-03-07	5
2020-03-07	6
2020-03-07	7
2020-03-07	8
2020-03-07	9
2020-03-07	10
2020-03-08	1
2020-03-08	2
2020-03-08	3
2020-03-08	4
2020-03-08	5
2020-03-08	6
2020-03-08	7
2020-03-08	8
2020-03-08	9
2020-03-08	10
2020-03-09	1
2020-03-09	2
2020-03-09	3
2020-03-09	4
2020-03-09	5
2020-03-09	6
2020-03-09	7
2020-03-09	8
2020-03-09	9
2020-03-09	10
2020-03-10	1
2020-03-10	2
2020-03-10	3
2020-03-10	4
2020-03-10	5
2020-03-10	6
2020-03-10	7
2020-03-10	8
2020-03-10	9
2020-03-10	10
2020-03-11	1
2020-03-11	2
2020-03-11	3
2020-03-11	4
2020-03-11	5
2020-03-11	6
2020-03-11	7
2020-03-11	8
2020-03-11	9
2020-03-11	10
2020-03-12	1
2020-03-12	2
2020-03-12	3
2020-03-12	4
2020-03-12	5
2020-03-12	6
2020-03-12	7
2020-03-12	8
2020-03-12	9
2020-03-12	10
2020-03-13	1
2020-03-13	2
2020-03-13	3
2020-03-13	4
2020-03-13	5
2020-03-13	6
2020-03-13	7
2020-03-13	8
2020-03-13	9
2020-03-13	10
2020-03-14	1
2020-03-14	2
2020-03-14	3
2020-03-14	4
2020-03-14	5
2020-03-14	6
2020-03-14	7
2020-03-14	8
2020-03-14	9
2020-03-14	10
2020-03-15	1
2020-03-15	2
2020-03-15	3
2020-03-15	4
2020-03-15	5
2020-03-15	6
2020-03-15	7
2020-03-15	8
2020-03-15	9
2020-03-15	10
2020-03-16	1
2020-03-16	2
2020-03-16	3
2020-03-16	4
2020-03-16	5
2020-03-16	6
2020-03-16	7
2020-03-16	8
2020-03-16	9
2020-03-16	10
2020-03-17	1
2020-03-17	2
2020-03-17	3
2020-03-17	4
2020-03-17	5
2020-03-17	6
2020-03-17	7
2020-03-17	8
2020-03-17	9
2020-03-17	10
2020-03-18	1
2020-03-18	2
2020-03-18	3
2020-03-18	4
2020-03-18	5
2020-03-18	6
2020-03-18	7
2020-03-18	8
2020-03-18	9
2020-03-18	10
2020-03-19	1
2020-03-19	2
2020-03-19	3
2020-03-19	4
2020-03-19	5
2020-03-19	6
2020-03-19	7
2020-03-19	8
2020-03-19	9
2020-03-19	10
2020-03-20	1
2020-03-20	2
2020-03-20	3
2020-03-20	4
2020-03-20	5
2020-03-20	6
2020-03-20	7
2020-03-20	8
2020-03-20	9
2020-03-20	10
2020-03-21	1
2020-03-21	2
2020-03-21	3
2020-03-21	4
2020-03-21	5
2020-03-21	6
2020-03-21	7
2020-03-21	8
2020-03-21	9
2020-03-21	10
2020-03-22	1
2020-03-22	2
2020-03-22	3
2020-03-22	4
2020-03-22	5
2020-03-22	6
2020-03-22	7
2020-03-22	8
2020-03-22	9
2020-03-22	10
2020-03-23	1
2020-03-23	2
2020-03-23	3
2020-03-23	4
2020-03-23	5
2020-03-23	6
2020-03-23	7
2020-03-23	8
2020-03-23	9
2020-03-23	10
2020-03-24	1
2020-03-24	2
2020-03-24	3
2020-03-24	4
2020-03-24	5
2020-03-24	6
2020-03-24	7
2020-03-24	8
2020-03-24	9
2020-03-24	10
2020-03-25	1
2020-03-25	2
2020-03-25	3
2020-03-25	4
2020-03-25	5
2020-03-25	6
2020-03-25	7
2020-03-25	8
2020-03-25	9
2020-03-25	10
2020-03-26	1
2020-03-26	2
2020-03-26	3
2020-03-26	4
2020-03-26	5
2020-03-26	6
2020-03-26	7
2020-03-26	8
2020-03-26	9
2020-03-26	10
2020-03-27	1
2020-03-27	2
2020-03-27	3
2020-03-27	4
2020-03-27	5
2020-03-27	6
2020-03-27	7
2020-03-27	8
2020-03-27	9
2020-03-27	10
2020-03-28	1
2020-03-28	2
2020-03-28	3
2020-03-28	4
2020-03-28	5
2020-03-28	6
2020-03-28	7
2020-03-28	8
2020-03-28	9
2020-03-28	10
2020-03-29	1
2020-03-29	2
2020-03-29	3
2020-03-29	4
2020-03-29	5
2020-03-29	6
2020-03-29	7
2020-03-29	8
2020-03-29	9
2020-03-29	10
2020-03-30	1
2020-03-30	2
2020-03-30	3
2020-03-30	4
2020-03-30	5
2020-03-30	6
2020-03-30	7
2020-03-30	8
2020-03-30	9
2020-03-30	10
2020-03-31	1
2020-03-31	2
2020-03-31	3
2020-03-31	4
2020-03-31	5
2020-03-31	6
2020-03-31	7
2020-03-31	8
2020-03-31	9
2020-03-31	10
2020-04-01	1
2020-04-01	2
2020-04-01	3
2020-04-01	4
2020-04-01	5
2020-04-01	6
2020-04-01	7
2020-04-01	8
2020-04-01	9
2020-04-01	10
2020-04-02	1
2020-04-02	2
2020-04-02	3
2020-04-02	4
2020-04-02	5
2020-04-02	6
2020-04-02	7
2020-04-02	8
2020-04-02	9
2020-04-02	10
2020-04-03	1
2020-04-03	2
2020-04-03	3
2020-04-03	4
2020-04-03	5
2020-04-03	6
2020-04-03	7
2020-04-03	8
2020-04-03	9
2020-04-03	10
2020-04-04	1
2020-04-04	2
2020-04-04	3
2020-04-04	4
2020-04-04	5
2020-04-04	6
2020-04-04	7
2020-04-04	8
2020-04-04	9
2020-04-04	10
2020-04-05	1
2020-04-05	2
2020-04-05	3
2020-04-05	4
2020-04-05	5
2020-04-05	6
2020-04-05	7
2020-04-05	8
2020-04-05	9
2020-04-05	10
2020-04-06	1
2020-04-06	2
2020-04-06	3
2020-04-06	4
2020-04-06	5
2020-04-06	6
2020-04-06	7
2020-04-06	8
2020-04-06	9
2020-04-06	10
2020-04-07	1
2020-04-07	2
2020-04-07	3
2020-04-07	4
2020-04-07	5
2020-04-07	6
2020-04-07	7
2020-04-07	8
2020-04-07	9
2020-04-07	10
2020-04-08	1
2020-04-08	2
2020-04-08	3
2020-04-08	4
2020-04-08	5
2020-04-08	6
2020-04-08	7
2020-04-08	8
2020-04-08	9
2020-04-08	10
2020-04-09	1
2020-04-09	2
2020-04-09	3
2020-04-09	4
2020-04-09	5
2020-04-09	6
2020-04-09	7
2020-04-09	8
2020-04-09	9
2020-04-09	10
2020-04-10	1
2020-04-10	2
2020-04-10	3
2020-04-10	4
2020-04-10	5
2020-04-10	6
2020-04-10	7
2020-04-10	8
2020-04-10	9
2020-04-10	10
2020-04-11	1
2020-04-11	2
2020-04-11	3
2020-04-11	4
2020-04-11	5
2020-04-11	6
2020-04-11	7
2020-04-11	8
2020-04-11	9
2020-04-11	10
2020-04-12	1
2020-04-12	2
2020-04-12	3
2020-04-12	4
2020-04-12	5
2020-04-12	6
2020-04-12	7
2020-04-12	8
2020-04-12	9
2020-04-12	10
2020-04-13	1
2020-04-13	2
2020-04-13	3
2020-04-13	4
2020-04-13	5
2020-04-13	6
2020-04-13	7
2020-04-13	8
2020-04-13	9
2020-04-13	10
2020-04-14	1
2020-04-14	2
2020-04-14	3
2020-04-14	4
2020-04-14	5
2020-04-14	6
2020-04-14	7
2020-04-14	8
2020-04-14	9
2020-04-14	10
2020-04-15	1
2020-04-15	2
2020-04-15	3
2020-04-15	4
2020-04-15	5
2020-04-15	6
2020-04-15	7
2020-04-15	8
2020-04-15	9
2020-04-15	10
2020-04-16	1
2020-04-16	2
2020-04-16	3
2020-04-16	4
2020-04-16	5
2020-04-16	6
2020-04-16	7
2020-04-16	8
2020-04-16	9
2020-04-16	10
2020-04-17	1
2020-04-17	2
2020-04-17	3
2020-04-17	4
2020-04-17	5
2020-04-17	6
2020-04-17	7
2020-04-17	8
2020-04-17	9
2020-04-17	10
2020-04-18	1
2020-04-18	2
2020-04-18	3
2020-04-18	4
2020-04-18	5
2020-04-18	6
2020-04-18	7
2020-04-18	8
2020-04-18	9
2020-04-18	10
2020-04-19	1
2020-04-19	2
2020-04-19	3
2020-04-19	4
2020-04-19	5
2020-04-19	6
2020-04-19	7
2020-04-19	8
2020-04-19	9
2020-04-19	10
2020-04-20	1
2020-04-20	2
2020-04-20	3
2020-04-20	4
2020-04-20	5
2020-04-20	6
2020-04-20	7
2020-04-20	8
2020-04-20	9
2020-04-20	10
2020-04-21	1
2020-04-21	2
2020-04-21	3
2020-04-21	4
2020-04-21	5
2020-04-21	6
2020-04-21	7
2020-04-21	8
2020-04-21	9
2020-04-21	10
2020-04-22	1
2020-04-22	2
2020-04-22	3
2020-04-22	4
2020-04-22	5
2020-04-22	6
2020-04-22	7
2020-04-22	8
2020-04-22	9
2020-04-22	10
2020-04-23	1
2020-04-23	2
2020-04-23	3
2020-04-23	4
2020-04-23	5
2020-04-23	6
2020-04-23	7
2020-04-23	8
2020-04-23	9
2020-04-23	10
2020-04-24	1
2020-04-24	2
2020-04-24	3
2020-04-24	4
2020-04-24	5
2020-04-24	6
2020-04-24	7
2020-04-24	8
2020-04-24	9
2020-04-24	10
2020-04-25	1
2020-04-25	2
2020-04-25	3
2020-04-25	4
2020-04-25	5
2020-04-25	6
2020-04-25	7
2020-04-25	8
2020-04-25	9
2020-04-25	10
2020-04-26	1
2020-04-26	2
2020-04-26	3
2020-04-26	4
2020-04-26	5
2020-04-26	6
2020-04-26	7
2020-04-26	8
2020-04-26	9
2020-04-26	10
2020-04-27	1
2020-04-27	2
2020-04-27	3
2020-04-27	4
2020-04-27	5
2020-04-27	6
2020-04-27	7
2020-04-27	8
2020-04-27	9
2020-04-27	10
2020-04-28	1
2020-04-28	2
2020-04-28	3
2020-04-28	4
2020-04-28	5
2020-04-28	6
2020-04-28	7
2020-04-28	8
2020-04-28	9
2020-04-28	10
2020-04-29	1
2020-04-29	2
2020-04-29	3
2020-04-29	4
2020-04-29	5
2020-04-29	6
2020-04-29	7
2020-04-29	8
2020-04-29	9
2020-04-29	10
2020-04-30	1
2020-04-30	2
2020-04-30	3
2020-04-30	4
2020-04-30	5
2020-04-30	6
2020-04-30	7
2020-04-30	8
2020-04-30	9
2020-04-30	10
2020-05-01	1
2020-05-01	2
2020-05-01	3
2020-05-01	4
2020-05-01	5
2020-05-01	6
2020-05-01	7
2020-05-01	8
2020-05-01	9
2020-05-01	10
2020-05-02	1
2020-05-02	2
2020-05-02	3
2020-05-02	4
2020-05-02	5
2020-05-02	6
2020-05-02	7
2020-05-02	8
2020-05-02	9
2020-05-02	10
2020-05-03	1
2020-05-03	2
2020-05-03	3
2020-05-03	4
2020-05-03	5
2020-05-03	6
2020-05-03	7
2020-05-03	8
2020-05-03	9
2020-05-03	10
2020-05-04	1
2020-05-04	2
2020-05-04	3
2020-05-04	4
2020-05-04	5
2020-05-04	6
2020-05-04	7
2020-05-04	8
2020-05-04	9
2020-05-04	10
2020-05-05	1
2020-05-05	2
2020-05-05	3
2020-05-05	4
2020-05-05	5
2020-05-05	6
2020-05-05	7
2020-05-05	8
2020-05-05	9
2020-05-05	10
2020-05-06	1
2020-05-06	2
2020-05-06	3
2020-05-06	4
2020-05-06	5
2020-05-06	6
2020-05-06	7
2020-05-06	8
2020-05-06	9
2020-05-06	10
2020-05-07	1
2020-05-07	2
2020-05-07	3
2020-05-07	4
2020-05-07	5
2020-05-07	6
2020-05-07	7
2020-05-07	8
2020-05-07	9
2020-05-07	10
2020-05-08	1
2020-05-08	2
2020-05-08	3
2020-05-08	4
2020-05-08	5
2020-05-08	6
2020-05-08	7
2020-05-08	8
2020-05-08	9
2020-05-08	10
2020-05-09	1
2020-05-09	2
2020-05-09	3
2020-05-09	4
2020-05-09	5
2020-05-09	6
2020-05-09	7
2020-05-09	8
2020-05-09	9
2020-05-09	10
2020-05-10	1
2020-05-10	2
2020-05-10	3
2020-05-10	4
2020-05-10	5
2020-05-10	6
2020-05-10	7
2020-05-10	8
2020-05-10	9
2020-05-10	10
2020-05-11	1
2020-05-11	2
2020-05-11	3
2020-05-11	4
2020-05-11	5
2020-05-11	6
2020-05-11	7
2020-05-11	8
2020-05-11	9
2020-05-11	10
2020-05-12	1
2020-05-12	2
2020-05-12	3
2020-05-12	4
2020-05-12	5
2020-05-12	6
2020-05-12	7
2020-05-12	8
2020-05-12	9
2020-05-12	10
2020-05-13	1
2020-05-13	2
2020-05-13	3
2020-05-13	4
2020-05-13	5
2020-05-13	6
2020-05-13	7
2020-05-13	8
2020-05-13	9
2020-05-13	10
2020-05-14	1
2020-05-14	2
2020-05-14	3
2020-05-14	4
2020-05-14	5
2020-05-14	6
2020-05-14	7
2020-05-14	8
2020-05-14	9
2020-05-14	10
2020-05-15	1
2020-05-15	2
2020-05-15	3
2020-05-15	4
2020-05-15	5
2020-05-15	6
2020-05-15	7
2020-05-15	8
2020-05-15	9
2020-05-15	10
2020-05-16	1
2020-05-16	2
2020-05-16	3
2020-05-16	4
2020-05-16	5
2020-05-16	6
2020-05-16	7
2020-05-16	8
2020-05-16	9
2020-05-16	10
2020-05-17	1
2020-05-17	2
2020-05-17	3
2020-05-17	4
2020-05-17	5
2020-05-17	6
2020-05-17	7
2020-05-17	8
2020-05-17	9
2020-05-17	10
2020-05-18	1
2020-05-18	2
2020-05-18	3
2020-05-18	4
2020-05-18	5
2020-05-18	6
2020-05-18	7
2020-05-18	8
2020-05-18	9
2020-05-18	10
2020-05-19	1
2020-05-19	2
2020-05-19	3
2020-05-19	4
2020-05-19	5
2020-05-19	6
2020-05-19	7
2020-05-19	8
2020-05-19	9
2020-05-19	10
2020-05-20	1
2020-05-20	2
2020-05-20	3
2020-05-20	4
2020-05-20	5
2020-05-20	6
2020-05-20	7
2020-05-20	8
2020-05-20	9
2020-05-20	10
2020-05-21	1
2020-05-21	2
2020-05-21	3
2020-05-21	4
2020-05-21	5
2020-05-21	6
2020-05-21	7
2020-05-21	8
2020-05-21	9
2020-05-21	10
2020-05-22	1
2020-05-22	2
2020-05-22	3
2020-05-22	4
2020-05-22	5
2020-05-22	6
2020-05-22	7
2020-05-22	8
2020-05-22	9
2020-05-22	10
2020-05-23	1
2020-05-23	2
2020-05-23	3
2020-05-23	4
2020-05-23	5
2020-05-23	6
2020-05-23	7
2020-05-23	8
2020-05-23	9
2020-05-23	10
2020-05-24	1
2020-05-24	2
2020-05-24	3
2020-05-24	4
2020-05-24	5
2020-05-24	6
2020-05-24	7
2020-05-24	8
2020-05-24	9
2020-05-24	10
2020-05-25	1
2020-05-25	2
2020-05-25	3
2020-05-25	4
2020-05-25	5
2020-05-25	6
2020-05-25	7
2020-05-25	8
2020-05-25	9
2020-05-25	10
2020-05-26	1
2020-05-26	2
2020-05-26	3
2020-05-26	4
2020-05-26	5
2020-05-26	6
2020-05-26	7
2020-05-26	8
2020-05-26	9
2020-05-26	10
2020-05-27	1
2020-05-27	2
2020-05-27	3
2020-05-27	4
2020-05-27	5
2020-05-27	6
2020-05-27	7
2020-05-27	8
2020-05-27	9
2020-05-27	10
2020-05-28	1
2020-05-28	2
2020-05-28	3
2020-05-28	4
2020-05-28	5
2020-05-28	6
2020-05-28	7
2020-05-28	8
2020-05-28	9
2020-05-28	10
2020-05-29	1
2020-05-29	2
2020-05-29	3
2020-05-29	4
2020-05-29	5
2020-05-29	6
2020-05-29	7
2020-05-29	8
2020-05-29	9
2020-05-29	10
2020-05-30	1
2020-05-30	2
2020-05-30	3
2020-05-30	4
2020-05-30	5
2020-05-30	6
2020-05-30	7
2020-05-30	8
2020-05-30	9
2020-05-30	10
2020-05-31	1
2020-05-31	2
2020-05-31	3
2020-05-31	4
2020-05-31	5
2020-05-31	6
2020-05-31	7
2020-05-31	8
2020-05-31	9
2020-05-31	10
2020-06-01	1
2020-06-01	2
2020-06-01	3
2020-06-01	4
2020-06-01	5
2020-06-01	6
2020-06-01	7
2020-06-01	8
2020-06-01	9
2020-06-01	10
2020-06-02	1
2020-06-02	2
2020-06-02	3
2020-06-02	4
2020-06-02	5
2020-06-02	6
2020-06-02	7
2020-06-02	8
2020-06-02	9
2020-06-02	10
2020-06-03	1
2020-06-03	2
2020-06-03	3
2020-06-03	4
2020-06-03	5
2020-06-03	6
2020-06-03	7
2020-06-03	8
2020-06-03	9
2020-06-03	10
2020-06-04	1
2020-06-04	2
2020-06-04	3
2020-06-04	4
2020-06-04	5
2020-06-04	6
2020-06-04	7
2020-06-04	8
2020-06-04	9
2020-06-04	10
2020-06-05	1
2020-06-05	2
2020-06-05	3
2020-06-05	4
2020-06-05	5
2020-06-05	6
2020-06-05	7
2020-06-05	8
2020-06-05	9
2020-06-05	10
2020-06-06	1
2020-06-06	2
2020-06-06	3
2020-06-06	4
2020-06-06	5
2020-06-06	6
2020-06-06	7
2020-06-06	8
2020-06-06	9
2020-06-06	10
2020-06-07	1
2020-06-07	2
2020-06-07	3
2020-06-07	4
2020-06-07	5
2020-06-07	6
2020-06-07	7
2020-06-07	8
2020-06-07	9
2020-06-07	10
2020-06-08	1
2020-06-08	2
2020-06-08	3
2020-06-08	4
2020-06-08	5
2020-06-08	6
2020-06-08	7
2020-06-08	8
2020-06-08	9
2020-06-08	10
2020-06-09	1
2020-06-09	2
2020-06-09	3
2020-06-09	4
2020-06-09	5
2020-06-09	6
2020-06-09	7
2020-06-09	8
2020-06-09	9
2020-06-09	10
2020-06-10	1
2020-06-10	2
2020-06-10	3
2020-06-10	4
2020-06-10	5
2020-06-10	6
2020-06-10	7
2020-06-10	8
2020-06-10	9
2020-06-10	10
2020-06-11	1
2020-06-11	2
2020-06-11	3
2020-06-11	4
2020-06-11	5
2020-06-11	6
2020-06-11	7
2020-06-11	8
2020-06-11	9
2020-06-11	10
2020-06-12	1
2020-06-12	2
2020-06-12	3
2020-06-12	4
2020-06-12	5
2020-06-12	6
2020-06-12	7
2020-06-12	8
2020-06-12	9
2020-06-12	10
2020-06-13	1
2020-06-13	2
2020-06-13	3
2020-06-13	4
2020-06-13	5
2020-06-13	6
2020-06-13	7
2020-06-13	8
2020-06-13	9
2020-06-13	10
2020-06-14	1
2020-06-14	2
2020-06-14	3
2020-06-14	4
2020-06-14	5
2020-06-14	6
2020-06-14	7
2020-06-14	8
2020-06-14	9
2020-06-14	10
2020-06-15	1
2020-06-15	2
2020-06-15	3
2020-06-15	4
2020-06-15	5
2020-06-15	6
2020-06-15	7
2020-06-15	8
2020-06-15	9
2020-06-15	10
2020-06-16	1
2020-06-16	2
2020-06-16	3
2020-06-16	4
2020-06-16	5
2020-06-16	6
2020-06-16	7
2020-06-16	8
2020-06-16	9
2020-06-16	10
2020-06-17	1
2020-06-17	2
2020-06-17	3
2020-06-17	4
2020-06-17	5
2020-06-17	6
2020-06-17	7
2020-06-17	8
2020-06-17	9
2020-06-17	10
2020-06-18	1
2020-06-18	2
2020-06-18	3
2020-06-18	4
2020-06-18	5
2020-06-18	6
2020-06-18	7
2020-06-18	8
2020-06-18	9
2020-06-18	10
2020-06-19	1
2020-06-19	2
2020-06-19	3
2020-06-19	4
2020-06-19	5
2020-06-19	6
2020-06-19	7
2020-06-19	8
2020-06-19	9
2020-06-19	10
2020-06-20	1
2020-06-20	2
2020-06-20	3
2020-06-20	4
2020-06-20	5
2020-06-20	6
2020-06-20	7
2020-06-20	8
2020-06-20	9
2020-06-20	10
2020-06-21	1
2020-06-21	2
2020-06-21	3
2020-06-21	4
2020-06-21	5
2020-06-21	6
2020-06-21	7
2020-06-21	8
2020-06-21	9
2020-06-21	10
2020-06-22	1
2020-06-22	2
2020-06-22	3
2020-06-22	4
2020-06-22	5
2020-06-22	6
2020-06-22	7
2020-06-22	8
2020-06-22	9
2020-06-22	10
2020-06-23	1
2020-06-23	2
2020-06-23	3
2020-06-23	4
2020-06-23	5
2020-06-23	6
2020-06-23	7
2020-06-23	8
2020-06-23	9
2020-06-23	10
2020-06-24	1
2020-06-24	2
2020-06-24	3
2020-06-24	4
2020-06-24	5
2020-06-24	6
2020-06-24	7
2020-06-24	8
2020-06-24	9
2020-06-24	10
2020-06-25	1
2020-06-25	2
2020-06-25	3
2020-06-25	4
2020-06-25	5
2020-06-25	6
2020-06-25	7
2020-06-25	8
2020-06-25	9
2020-06-25	10
2020-06-26	1
2020-06-26	2
2020-06-26	3
2020-06-26	4
2020-06-26	5
2020-06-26	6
2020-06-26	7
2020-06-26	8
2020-06-26	9
2020-06-26	10
2020-06-27	1
2020-06-27	2
2020-06-27	3
2020-06-27	4
2020-06-27	5
2020-06-27	6
2020-06-27	7
2020-06-27	8
2020-06-27	9
2020-06-27	10
2020-06-28	1
2020-06-28	2
2020-06-28	3
2020-06-28	4
2020-06-28	5
2020-06-28	6
2020-06-28	7
2020-06-28	8
2020-06-28	9
2020-06-28	10
2020-06-29	1
2020-06-29	2
2020-06-29	3
2020-06-29	4
2020-06-29	5
2020-06-29	6
2020-06-29	7
2020-06-29	8
2020-06-29	9
2020-06-29	10
2020-06-30	1
2020-06-30	2
2020-06-30	3
2020-06-30	4
2020-06-30	5
2020-06-30	6
2020-06-30	7
2020-06-30	8
2020-06-30	9
2020-06-30	10
2020-07-01	1
2020-07-01	2
2020-07-01	3
2020-07-01	4
2020-07-01	5
2020-07-01	6
2020-07-01	7
2020-07-01	8
2020-07-01	9
2020-07-01	10
2020-07-02	1
2020-07-02	2
2020-07-02	3
2020-07-02	4
2020-07-02	5
2020-07-02	6
2020-07-02	7
2020-07-02	8
2020-07-02	9
2020-07-02	10
2020-07-03	1
2020-07-03	2
2020-07-03	3
2020-07-03	4
2020-07-03	5
2020-07-03	6
2020-07-03	7
2020-07-03	8
2020-07-03	9
2020-07-03	10
2020-07-04	1
2020-07-04	2
2020-07-04	3
2020-07-04	4
2020-07-04	5
2020-07-04	6
2020-07-04	7
2020-07-04	8
2020-07-04	9
2020-07-04	10
2020-07-05	1
2020-07-05	2
2020-07-05	3
2020-07-05	4
2020-07-05	5
2020-07-05	6
2020-07-05	7
2020-07-05	8
2020-07-05	9
2020-07-05	10
2020-07-06	1
2020-07-06	2
2020-07-06	3
2020-07-06	4
2020-07-06	5
2020-07-06	6
2020-07-06	7
2020-07-06	8
2020-07-06	9
2020-07-06	10
2020-07-07	1
2020-07-07	2
2020-07-07	3
2020-07-07	4
2020-07-07	5
2020-07-07	6
2020-07-07	7
2020-07-07	8
2020-07-07	9
2020-07-07	10
2020-07-08	1
2020-07-08	2
2020-07-08	3
2020-07-08	4
2020-07-08	5
2020-07-08	6
2020-07-08	7
2020-07-08	8
2020-07-08	9
2020-07-08	10
2020-07-09	1
2020-07-09	2
2020-07-09	3
2020-07-09	4
2020-07-09	5
2020-07-09	6
2020-07-09	7
2020-07-09	8
2020-07-09	9
2020-07-09	10
2020-07-10	1
2020-07-10	2
2020-07-10	3
2020-07-10	4
2020-07-10	5
2020-07-10	6
2020-07-10	7
2020-07-10	8
2020-07-10	9
2020-07-10	10
2020-07-11	1
2020-07-11	2
2020-07-11	3
2020-07-11	4
2020-07-11	5
2020-07-11	6
2020-07-11	7
2020-07-11	8
2020-07-11	9
2020-07-11	10
2020-07-12	1
2020-07-12	2
2020-07-12	3
2020-07-12	4
2020-07-12	5
2020-07-12	6
2020-07-12	7
2020-07-12	8
2020-07-12	9
2020-07-12	10
2020-07-13	1
2020-07-13	2
2020-07-13	3
2020-07-13	4
2020-07-13	5
2020-07-13	6
2020-07-13	7
2020-07-13	8
2020-07-13	9
2020-07-13	10
2020-07-14	1
2020-07-14	2
2020-07-14	3
2020-07-14	4
2020-07-14	5
2020-07-14	6
2020-07-14	7
2020-07-14	8
2020-07-14	9
2020-07-14	10
2020-07-15	1
2020-07-15	2
2020-07-15	3
2020-07-15	4
2020-07-15	5
2020-07-15	6
2020-07-15	7
2020-07-15	8
2020-07-15	9
2020-07-15	10
2020-07-16	1
2020-07-16	2
2020-07-16	3
2020-07-16	4
2020-07-16	5
2020-07-16	6
2020-07-16	7
2020-07-16	8
2020-07-16	9
2020-07-16	10
2020-07-17	1
2020-07-17	2
2020-07-17	3
2020-07-17	4
2020-07-17	5
2020-07-17	6
2020-07-17	7
2020-07-17	8
2020-07-17	9
2020-07-17	10
2020-07-18	1
2020-07-18	2
2020-07-18	3
2020-07-18	4
2020-07-18	5
2020-07-18	6
2020-07-18	7
2020-07-18	8
2020-07-18	9
2020-07-18	10
2020-07-19	1
2020-07-19	2
2020-07-19	3
2020-07-19	4
2020-07-19	5
2020-07-19	6
2020-07-19	7
2020-07-19	8
2020-07-19	9
2020-07-19	10
2020-07-20	1
2020-07-20	2
2020-07-20	3
2020-07-20	4
2020-07-20	5
2020-07-20	6
2020-07-20	7
2020-07-20	8
2020-07-20	9
2020-07-20	10
2020-07-21	1
2020-07-21	2
2020-07-21	3
2020-07-21	4
2020-07-21	5
2020-07-21	6
2020-07-21	7
2020-07-21	8
2020-07-21	9
2020-07-21	10
2020-07-22	1
2020-07-22	2
2020-07-22	3
2020-07-22	4
2020-07-22	5
2020-07-22	6
2020-07-22	7
2020-07-22	8
2020-07-22	9
2020-07-22	10
2020-07-23	1
2020-07-23	2
2020-07-23	3
2020-07-23	4
2020-07-23	5
2020-07-23	6
2020-07-23	7
2020-07-23	8
2020-07-23	9
2020-07-23	10
2020-07-24	1
2020-07-24	2
2020-07-24	3
2020-07-24	4
2020-07-24	5
2020-07-24	6
2020-07-24	7
2020-07-24	8
2020-07-24	9
2020-07-24	10
2020-07-25	1
2020-07-25	2
2020-07-25	3
2020-07-25	4
2020-07-25	5
2020-07-25	6
2020-07-25	7
2020-07-25	8
2020-07-25	9
2020-07-25	10
2020-07-26	1
2020-07-26	2
2020-07-26	3
2020-07-26	4
2020-07-26	5
2020-07-26	6
2020-07-26	7
2020-07-26	8
2020-07-26	9
2020-07-26	10
2020-07-27	1
2020-07-27	2
2020-07-27	3
2020-07-27	4
2020-07-27	5
2020-07-27	6
2020-07-27	7
2020-07-27	8
2020-07-27	9
2020-07-27	10
2020-07-28	1
2020-07-28	2
2020-07-28	3
2020-07-28	4
2020-07-28	5
2020-07-28	6
2020-07-28	7
2020-07-28	8
2020-07-28	9
2020-07-28	10
2020-07-29	1
2020-07-29	2
2020-07-29	3
2020-07-29	4
2020-07-29	5
2020-07-29	6
2020-07-29	7
2020-07-29	8
2020-07-29	9
2020-07-29	10
2020-07-30	1
2020-07-30	2
2020-07-30	3
2020-07-30	4
2020-07-30	5
2020-07-30	6
2020-07-30	7
2020-07-30	8
2020-07-30	9
2020-07-30	10
2020-07-31	1
2020-07-31	2
2020-07-31	3
2020-07-31	4
2020-07-31	5
2020-07-31	6
2020-07-31	7
2020-07-31	8
2020-07-31	9
2020-07-31	10
2020-08-01	1
2020-08-01	2
2020-08-01	3
2020-08-01	4
2020-08-01	5
2020-08-01	6
2020-08-01	7
2020-08-01	8
2020-08-01	9
2020-08-01	10
2020-08-02	1
2020-08-02	2
2020-08-02	3
2020-08-02	4
2020-08-02	5
2020-08-02	6
2020-08-02	7
2020-08-02	8
2020-08-02	9
2020-08-02	10
2020-08-03	1
2020-08-03	2
2020-08-03	3
2020-08-03	4
2020-08-03	5
2020-08-03	6
2020-08-03	7
2020-08-03	8
2020-08-03	9
2020-08-03	10
2020-08-04	1
2020-08-04	2
2020-08-04	3
2020-08-04	4
2020-08-04	5
2020-08-04	6
2020-08-04	7
2020-08-04	8
2020-08-04	9
2020-08-04	10
2020-08-05	1
2020-08-05	2
2020-08-05	3
2020-08-05	4
2020-08-05	5
2020-08-05	6
2020-08-05	7
2020-08-05	8
2020-08-05	9
2020-08-05	10
2020-08-06	1
2020-08-06	2
2020-08-06	3
2020-08-06	4
2020-08-06	5
2020-08-06	6
2020-08-06	7
2020-08-06	8
2020-08-06	9
2020-08-06	10
2020-08-07	1
2020-08-07	2
2020-08-07	3
2020-08-07	4
2020-08-07	5
2020-08-07	6
2020-08-07	7
2020-08-07	8
2020-08-07	9
2020-08-07	10
2020-08-08	1
2020-08-08	2
2020-08-08	3
2020-08-08	4
2020-08-08	5
2020-08-08	6
2020-08-08	7
2020-08-08	8
2020-08-08	9
2020-08-08	10
2020-08-09	1
2020-08-09	2
2020-08-09	3
2020-08-09	4
2020-08-09	5
2020-08-09	6
2020-08-09	7
2020-08-09	8
2020-08-09	9
2020-08-09	10
2020-08-10	1
2020-08-10	2
2020-08-10	3
2020-08-10	4
2020-08-10	5
2020-08-10	6
2020-08-10	7
2020-08-10	8
2020-08-10	9
2020-08-10	10
2020-08-11	1
2020-08-11	2
2020-08-11	3
2020-08-11	4
2020-08-11	5
2020-08-11	6
2020-08-11	7
2020-08-11	8
2020-08-11	9
2020-08-11	10
2020-08-12	1
2020-08-12	2
2020-08-12	3
2020-08-12	4
2020-08-12	5
2020-08-12	6
2020-08-12	7
2020-08-12	8
2020-08-12	9
2020-08-12	10
2020-08-13	1
2020-08-13	2
2020-08-13	3
2020-08-13	4
2020-08-13	5
2020-08-13	6
2020-08-13	7
2020-08-13	8
2020-08-13	9
2020-08-13	10
2020-08-14	1
2020-08-14	2
2020-08-14	3
2020-08-14	4
2020-08-14	5
2020-08-14	6
2020-08-14	7
2020-08-14	8
2020-08-14	9
2020-08-14	10
2020-08-15	1
2020-08-15	2
2020-08-15	3
2020-08-15	4
2020-08-15	5
2020-08-15	6
2020-08-15	7
2020-08-15	8
2020-08-15	9
2020-08-15	10
2020-08-16	1
2020-08-16	2
2020-08-16	3
2020-08-16	4
2020-08-16	5
2020-08-16	6
2020-08-16	7
2020-08-16	8
2020-08-16	9
2020-08-16	10
2020-08-17	1
2020-08-17	2
2020-08-17	3
2020-08-17	4
2020-08-17	5
2020-08-17	6
2020-08-17	7
2020-08-17	8
2020-08-17	9
2020-08-17	10
2020-08-18	1
2020-08-18	2
2020-08-18	3
2020-08-18	4
2020-08-18	5
2020-08-18	6
2020-08-18	7
2020-08-18	8
2020-08-18	9
2020-08-18	10
2020-08-19	1
2020-08-19	2
2020-08-19	3
2020-08-19	4
2020-08-19	5
2020-08-19	6
2020-08-19	7
2020-08-19	8
2020-08-19	9
2020-08-19	10
2020-08-20	1
2020-08-20	2
2020-08-20	3
2020-08-20	4
2020-08-20	5
2020-08-20	6
2020-08-20	7
2020-08-20	8
2020-08-20	9
2020-08-20	10
2020-08-21	1
2020-08-21	2
2020-08-21	3
2020-08-21	4
2020-08-21	5
2020-08-21	6
2020-08-21	7
2020-08-21	8
2020-08-21	9
2020-08-21	10
2020-08-22	1
2020-08-22	2
2020-08-22	3
2020-08-22	4
2020-08-22	5
2020-08-22	6
2020-08-22	7
2020-08-22	8
2020-08-22	9
2020-08-22	10
2020-08-23	1
2020-08-23	2
2020-08-23	3
2020-08-23	4
2020-08-23	5
2020-08-23	6
2020-08-23	7
2020-08-23	8
2020-08-23	9
2020-08-23	10
2020-08-24	1
2020-08-24	2
2020-08-24	3
2020-08-24	4
2020-08-24	5
2020-08-24	6
2020-08-24	7
2020-08-24	8
2020-08-24	9
2020-08-24	10
2020-08-25	1
2020-08-25	2
2020-08-25	3
2020-08-25	4
2020-08-25	5
2020-08-25	6
2020-08-25	7
2020-08-25	8
2020-08-25	9
2020-08-25	10
2020-08-26	1
2020-08-26	2
2020-08-26	3
2020-08-26	4
2020-08-26	5
2020-08-26	6
2020-08-26	7
2020-08-26	8
2020-08-26	9
2020-08-26	10
2020-08-27	1
2020-08-27	2
2020-08-27	3
2020-08-27	4
2020-08-27	5
2020-08-27	6
2020-08-27	7
2020-08-27	8
2020-08-27	9
2020-08-27	10
2020-08-28	1
2020-08-28	2
2020-08-28	3
2020-08-28	4
2020-08-28	5
2020-08-28	6
2020-08-28	7
2020-08-28	8
2020-08-28	9
2020-08-28	10
2020-08-29	1
2020-08-29	2
2020-08-29	3
2020-08-29	4
2020-08-29	5
2020-08-29	6
2020-08-29	7
2020-08-29	8
2020-08-29	9
2020-08-29	10
2020-08-30	1
2020-08-30	2
2020-08-30	3
2020-08-30	4
2020-08-30	5
2020-08-30	6
2020-08-30	7
2020-08-30	8
2020-08-30	9
2020-08-30	10
2020-08-31	1
2020-08-31	2
2020-08-31	3
2020-08-31	4
2020-08-31	5
2020-08-31	6
2020-08-31	7
2020-08-31	8
2020-08-31	9
2020-08-31	10
2020-09-01	1
2020-09-01	2
2020-09-01	3
2020-09-01	4
2020-09-01	5
2020-09-01	6
2020-09-01	7
2020-09-01	8
2020-09-01	9
2020-09-01	10
2020-09-02	1
2020-09-02	2
2020-09-02	3
2020-09-02	4
2020-09-02	5
2020-09-02	6
2020-09-02	7
2020-09-02	8
2020-09-02	9
2020-09-02	10
2020-09-03	1
2020-09-03	2
2020-09-03	3
2020-09-03	4
2020-09-03	5
2020-09-03	6
2020-09-03	7
2020-09-03	8
2020-09-03	9
2020-09-03	10
2020-09-04	1
2020-09-04	2
2020-09-04	3
2020-09-04	4
2020-09-04	5
2020-09-04	6
2020-09-04	7
2020-09-04	8
2020-09-04	9
2020-09-04	10
2020-09-05	1
2020-09-05	2
2020-09-05	3
2020-09-05	4
2020-09-05	5
2020-09-05	6
2020-09-05	7
2020-09-05	8
2020-09-05	9
2020-09-05	10
2020-09-06	1
2020-09-06	2
2020-09-06	3
2020-09-06	4
2020-09-06	5
2020-09-06	6
2020-09-06	7
2020-09-06	8
2020-09-06	9
2020-09-06	10
2020-09-07	1
2020-09-07	2
2020-09-07	3
2020-09-07	4
2020-09-07	5
2020-09-07	6
2020-09-07	7
2020-09-07	8
2020-09-07	9
2020-09-07	10
2020-09-08	1
2020-09-08	2
2020-09-08	3
2020-09-08	4
2020-09-08	5
2020-09-08	6
2020-09-08	7
2020-09-08	8
2020-09-08	9
2020-09-08	10
2020-09-09	1
2020-09-09	2
2020-09-09	3
2020-09-09	4
2020-09-09	5
2020-09-09	6
2020-09-09	7
2020-09-09	8
2020-09-09	9
2020-09-09	10
2020-09-10	1
2020-09-10	2
2020-09-10	3
2020-09-10	4
2020-09-10	5
2020-09-10	6
2020-09-10	7
2020-09-10	8
2020-09-10	9
2020-09-10	10
2020-09-11	1
2020-09-11	2
2020-09-11	3
2020-09-11	4
2020-09-11	5
2020-09-11	6
2020-09-11	7
2020-09-11	8
2020-09-11	9
2020-09-11	10
2020-09-12	1
2020-09-12	2
2020-09-12	3
2020-09-12	4
2020-09-12	5
2020-09-12	6
2020-09-12	7
2020-09-12	8
2020-09-12	9
2020-09-12	10
2020-09-13	1
2020-09-13	2
2020-09-13	3
2020-09-13	4
2020-09-13	5
2020-09-13	6
2020-09-13	7
2020-09-13	8
2020-09-13	9
2020-09-13	10
2020-09-14	1
2020-09-14	2
2020-09-14	3
2020-09-14	4
2020-09-14	5
2020-09-14	6
2020-09-14	7
2020-09-14	8
2020-09-14	9
2020-09-14	10
2020-09-15	1
2020-09-15	2
2020-09-15	3
2020-09-15	4
2020-09-15	5
2020-09-15	6
2020-09-15	7
2020-09-15	8
2020-09-15	9
2020-09-15	10
2020-09-16	1
2020-09-16	2
2020-09-16	3
2020-09-16	4
2020-09-16	5
2020-09-16	6
2020-09-16	7
2020-09-16	8
2020-09-16	9
2020-09-16	10
2020-09-17	1
2020-09-17	2
2020-09-17	3
2020-09-17	4
2020-09-17	5
2020-09-17	6
2020-09-17	7
2020-09-17	8
2020-09-17	9
2020-09-17	10
2020-09-18	1
2020-09-18	2
2020-09-18	3
2020-09-18	4
2020-09-18	5
2020-09-18	6
2020-09-18	7
2020-09-18	8
2020-09-18	9
2020-09-18	10
2020-09-19	1
2020-09-19	2
2020-09-19	3
2020-09-19	4
2020-09-19	5
2020-09-19	6
2020-09-19	7
2020-09-19	8
2020-09-19	9
2020-09-19	10
2020-09-20	1
2020-09-20	2
2020-09-20	3
2020-09-20	4
2020-09-20	5
2020-09-20	6
2020-09-20	7
2020-09-20	8
2020-09-20	9
2020-09-20	10
2020-09-21	1
2020-09-21	2
2020-09-21	3
2020-09-21	4
2020-09-21	5
2020-09-21	6
2020-09-21	7
2020-09-21	8
2020-09-21	9
2020-09-21	10
2020-09-22	1
2020-09-22	2
2020-09-22	3
2020-09-22	4
2020-09-22	5
2020-09-22	6
2020-09-22	7
2020-09-22	8
2020-09-22	9
2020-09-22	10
2020-09-23	1
2020-09-23	2
2020-09-23	3
2020-09-23	4
2020-09-23	5
2020-09-23	6
2020-09-23	7
2020-09-23	8
2020-09-23	9
2020-09-23	10
2020-09-24	1
2020-09-24	2
2020-09-24	3
2020-09-24	4
2020-09-24	5
2020-09-24	6
2020-09-24	7
2020-09-24	8
2020-09-24	9
2020-09-24	10
2020-09-25	1
2020-09-25	2
2020-09-25	3
2020-09-25	4
2020-09-25	5
2020-09-25	6
2020-09-25	7
2020-09-25	8
2020-09-25	9
2020-09-25	10
2020-09-26	1
2020-09-26	2
2020-09-26	3
2020-09-26	4
2020-09-26	5
2020-09-26	6
2020-09-26	7
2020-09-26	8
2020-09-26	9
2020-09-26	10
2020-09-27	1
2020-09-27	2
2020-09-27	3
2020-09-27	4
2020-09-27	5
2020-09-27	6
2020-09-27	7
2020-09-27	8
2020-09-27	9
2020-09-27	10
2020-09-28	1
2020-09-28	2
2020-09-28	3
2020-09-28	4
2020-09-28	5
2020-09-28	6
2020-09-28	7
2020-09-28	8
2020-09-28	9
2020-09-28	10
2020-09-29	1
2020-09-29	2
2020-09-29	3
2020-09-29	4
2020-09-29	5
2020-09-29	6
2020-09-29	7
2020-09-29	8
2020-09-29	9
2020-09-29	10
2020-09-30	1
2020-09-30	2
2020-09-30	3
2020-09-30	4
2020-09-30	5
2020-09-30	6
2020-09-30	7
2020-09-30	8
2020-09-30	9
2020-09-30	10
2020-10-01	1
2020-10-01	2
2020-10-01	3
2020-10-01	4
2020-10-01	5
2020-10-01	6
2020-10-01	7
2020-10-01	8
2020-10-01	9
2020-10-01	10
2020-10-02	1
2020-10-02	2
2020-10-02	3
2020-10-02	4
2020-10-02	5
2020-10-02	6
2020-10-02	7
2020-10-02	8
2020-10-02	9
2020-10-02	10
2020-10-03	1
2020-10-03	2
2020-10-03	3
2020-10-03	4
2020-10-03	5
2020-10-03	6
2020-10-03	7
2020-10-03	8
2020-10-03	9
2020-10-03	10
2020-10-04	1
2020-10-04	2
2020-10-04	3
2020-10-04	4
2020-10-04	5
2020-10-04	6
2020-10-04	7
2020-10-04	8
2020-10-04	9
2020-10-04	10
2020-10-05	1
2020-10-05	2
2020-10-05	3
2020-10-05	4
2020-10-05	5
2020-10-05	6
2020-10-05	7
2020-10-05	8
2020-10-05	9
2020-10-05	10
2020-10-06	1
2020-10-06	2
2020-10-06	3
2020-10-06	4
2020-10-06	5
2020-10-06	6
2020-10-06	7
2020-10-06	8
2020-10-06	9
2020-10-06	10
2020-10-07	1
2020-10-07	2
2020-10-07	3
2020-10-07	4
2020-10-07	5
2020-10-07	6
2020-10-07	7
2020-10-07	8
2020-10-07	9
2020-10-07	10
2020-10-08	1
2020-10-08	2
2020-10-08	3
2020-10-08	4
2020-10-08	5
2020-10-08	6
2020-10-08	7
2020-10-08	8
2020-10-08	9
2020-10-08	10
2020-10-09	1
2020-10-09	2
2020-10-09	3
2020-10-09	4
2020-10-09	5
2020-10-09	6
2020-10-09	7
2020-10-09	8
2020-10-09	9
2020-10-09	10
2020-10-10	1
2020-10-10	2
2020-10-10	3
2020-10-10	4
2020-10-10	5
2020-10-10	6
2020-10-10	7
2020-10-10	8
2020-10-10	9
2020-10-10	10
2020-10-11	1
2020-10-11	2
2020-10-11	3
2020-10-11	4
2020-10-11	5
2020-10-11	6
2020-10-11	7
2020-10-11	8
2020-10-11	9
2020-10-11	10
2020-10-12	1
2020-10-12	2
2020-10-12	3
2020-10-12	4
2020-10-12	5
2020-10-12	6
2020-10-12	7
2020-10-12	8
2020-10-12	9
2020-10-12	10
2020-10-13	1
2020-10-13	2
2020-10-13	3
2020-10-13	4
2020-10-13	5
2020-10-13	6
2020-10-13	7
2020-10-13	8
2020-10-13	9
2020-10-13	10
2020-10-14	1
2020-10-14	2
2020-10-14	3
2020-10-14	4
2020-10-14	5
2020-10-14	6
2020-10-14	7
2020-10-14	8
2020-10-14	9
2020-10-14	10
2020-10-15	1
2020-10-15	2
2020-10-15	3
2020-10-15	4
2020-10-15	5
2020-10-15	6
2020-10-15	7
2020-10-15	8
2020-10-15	9
2020-10-15	10
2020-10-16	1
2020-10-16	2
2020-10-16	3
2020-10-16	4
2020-10-16	5
2020-10-16	6
2020-10-16	7
2020-10-16	8
2020-10-16	9
2020-10-16	10
2020-10-17	1
2020-10-17	2
2020-10-17	3
2020-10-17	4
2020-10-17	5
2020-10-17	6
2020-10-17	7
2020-10-17	8
2020-10-17	9
2020-10-17	10
2020-10-18	1
2020-10-18	2
2020-10-18	3
2020-10-18	4
2020-10-18	5
2020-10-18	6
2020-10-18	7
2020-10-18	8
2020-10-18	9
2020-10-18	10
2020-10-19	1
2020-10-19	2
2020-10-19	3
2020-10-19	4
2020-10-19	5
2020-10-19	6
2020-10-19	7
2020-10-19	8
2020-10-19	9
2020-10-19	10
2020-10-20	1
2020-10-20	2
2020-10-20	3
2020-10-20	4
2020-10-20	5
2020-10-20	6
2020-10-20	7
2020-10-20	8
2020-10-20	9
2020-10-20	10
2020-10-21	1
2020-10-21	2
2020-10-21	3
2020-10-21	4
2020-10-21	5
2020-10-21	6
2020-10-21	7
2020-10-21	8
2020-10-21	9
2020-10-21	10
2020-10-22	1
2020-10-22	2
2020-10-22	3
2020-10-22	4
2020-10-22	5
2020-10-22	6
2020-10-22	7
2020-10-22	8
2020-10-22	9
2020-10-22	10
2020-10-23	1
2020-10-23	2
2020-10-23	3
2020-10-23	4
2020-10-23	5
2020-10-23	6
2020-10-23	7
2020-10-23	8
2020-10-23	9
2020-10-23	10
2020-10-24	1
2020-10-24	2
2020-10-24	3
2020-10-24	4
2020-10-24	5
2020-10-24	6
2020-10-24	7
2020-10-24	8
2020-10-24	9
2020-10-24	10
2020-10-25	1
2020-10-25	2
2020-10-25	3
2020-10-25	4
2020-10-25	5
2020-10-25	6
2020-10-25	7
2020-10-25	8
2020-10-25	9
2020-10-25	10
2020-10-26	1
2020-10-26	2
2020-10-26	3
2020-10-26	4
2020-10-26	5
2020-10-26	6
2020-10-26	7
2020-10-26	8
2020-10-26	9
2020-10-26	10
2020-10-27	1
2020-10-27	2
2020-10-27	3
2020-10-27	4
2020-10-27	5
2020-10-27	6
2020-10-27	7
2020-10-27	8
2020-10-27	9
2020-10-27	10
2020-10-28	1
2020-10-28	2
2020-10-28	3
2020-10-28	4
2020-10-28	5
2020-10-28	6
2020-10-28	7
2020-10-28	8
2020-10-28	9
2020-10-28	10
2020-10-29	1
2020-10-29	2
2020-10-29	3
2020-10-29	4
2020-10-29	5
2020-10-29	6
2020-10-29	7
2020-10-29	8
2020-10-29	9
2020-10-29	10
2020-10-30	1
2020-10-30	2
2020-10-30	3
2020-10-30	4
2020-10-30	5
2020-10-30	6
2020-10-30	7
2020-10-30	8
2020-10-30	9
2020-10-30	10
2020-10-31	1
2020-10-31	2
2020-10-31	3
2020-10-31	4
2020-10-31	5
2020-10-31	6
2020-10-31	7
2020-10-31	8
2020-10-31	9
2020-10-31	10
2020-11-01	1
2020-11-01	2
2020-11-01	3
2020-11-01	4
2020-11-01	5
2020-11-01	6
2020-11-01	7
2020-11-01	8
2020-11-01	9
2020-11-01	10
2020-11-02	1
2020-11-02	2
2020-11-02	3
2020-11-02	4
2020-11-02	5
2020-11-02	6
2020-11-02	7
2020-11-02	8
2020-11-02	9
2020-11-02	10
2020-11-03	1
2020-11-03	2
2020-11-03	3
2020-11-03	4
2020-11-03	5
2020-11-03	6
2020-11-03	7
2020-11-03	8
2020-11-03	9
2020-11-03	10
2020-11-04	1
2020-11-04	2
2020-11-04	3
2020-11-04	4
2020-11-04	5
2020-11-04	6
2020-11-04	7
2020-11-04	8
2020-11-04	9
2020-11-04	10
2020-11-05	1
2020-11-05	2
2020-11-05	3
2020-11-05	4
2020-11-05	5
2020-11-05	6
2020-11-05	7
2020-11-05	8
2020-11-05	9
2020-11-05	10
2020-11-06	1
2020-11-06	2
2020-11-06	3
2020-11-06	4
2020-11-06	5
2020-11-06	6
2020-11-06	7
2020-11-06	8
2020-11-06	9
2020-11-06	10
2020-11-07	1
2020-11-07	2
2020-11-07	3
2020-11-07	4
2020-11-07	5
2020-11-07	6
2020-11-07	7
2020-11-07	8
2020-11-07	9
2020-11-07	10
2020-11-08	1
2020-11-08	2
2020-11-08	3
2020-11-08	4
2020-11-08	5
2020-11-08	6
2020-11-08	7
2020-11-08	8
2020-11-08	9
2020-11-08	10
2020-11-09	1
2020-11-09	2
2020-11-09	3
2020-11-09	4
2020-11-09	5
2020-11-09	6
2020-11-09	7
2020-11-09	8
2020-11-09	9
2020-11-09	10
2020-11-10	1
2020-11-10	2
2020-11-10	3
2020-11-10	4
2020-11-10	5
2020-11-10	6
2020-11-10	7
2020-11-10	8
2020-11-10	9
2020-11-10	10
2020-11-11	1
2020-11-11	2
2020-11-11	3
2020-11-11	4
2020-11-11	5
2020-11-11	6
2020-11-11	7
2020-11-11	8
2020-11-11	9
2020-11-11	10
2020-11-12	1
2020-11-12	2
2020-11-12	3
2020-11-12	4
2020-11-12	5
2020-11-12	6
2020-11-12	7
2020-11-12	8
2020-11-12	9
2020-11-12	10
2020-11-13	1
2020-11-13	2
2020-11-13	3
2020-11-13	4
2020-11-13	5
2020-11-13	6
2020-11-13	7
2020-11-13	8
2020-11-13	9
2020-11-13	10
2020-11-14	1
2020-11-14	2
2020-11-14	3
2020-11-14	4
2020-11-14	5
2020-11-14	6
2020-11-14	7
2020-11-14	8
2020-11-14	9
2020-11-14	10
2020-11-15	1
2020-11-15	2
2020-11-15	3
2020-11-15	4
2020-11-15	5
2020-11-15	6
2020-11-15	7
2020-11-15	8
2020-11-15	9
2020-11-15	10
2020-11-16	1
2020-11-16	2
2020-11-16	3
2020-11-16	4
2020-11-16	5
2020-11-16	6
2020-11-16	7
2020-11-16	8
2020-11-16	9
2020-11-16	10
2020-11-17	1
2020-11-17	2
2020-11-17	3
2020-11-17	4
2020-11-17	5
2020-11-17	6
2020-11-17	7
2020-11-17	8
2020-11-17	9
2020-11-17	10
2020-11-18	1
2020-11-18	2
2020-11-18	3
2020-11-18	4
2020-11-18	5
2020-11-18	6
2020-11-18	7
2020-11-18	8
2020-11-18	9
2020-11-18	10
2020-11-19	1
2020-11-19	2
2020-11-19	3
2020-11-19	4
2020-11-19	5
2020-11-19	6
2020-11-19	7
2020-11-19	8
2020-11-19	9
2020-11-19	10
2020-11-20	1
2020-11-20	2
2020-11-20	3
2020-11-20	4
2020-11-20	5
2020-11-20	6
2020-11-20	7
2020-11-20	8
2020-11-20	9
2020-11-20	10
2020-11-21	1
2020-11-21	2
2020-11-21	3
2020-11-21	4
2020-11-21	5
2020-11-21	6
2020-11-21	7
2020-11-21	8
2020-11-21	9
2020-11-21	10
2020-11-22	1
2020-11-22	2
2020-11-22	3
2020-11-22	4
2020-11-22	5
2020-11-22	6
2020-11-22	7
2020-11-22	8
2020-11-22	9
2020-11-22	10
2020-11-23	1
2020-11-23	2
2020-11-23	3
2020-11-23	4
2020-11-23	5
2020-11-23	6
2020-11-23	7
2020-11-23	8
2020-11-23	9
2020-11-23	10
2020-11-24	1
2020-11-24	2
2020-11-24	3
2020-11-24	4
2020-11-24	5
2020-11-24	6
2020-11-24	7
2020-11-24	8
2020-11-24	9
2020-11-24	10
2020-11-25	1
2020-11-25	2
2020-11-25	3
2020-11-25	4
2020-11-25	5
2020-11-25	6
2020-11-25	7
2020-11-25	8
2020-11-25	9
2020-11-25	10
2020-11-26	1
2020-11-26	2
2020-11-26	3
2020-11-26	4
2020-11-26	5
2020-11-26	6
2020-11-26	7
2020-11-26	8
2020-11-26	9
2020-11-26	10
2020-11-27	1
2020-11-27	2
2020-11-27	3
2020-11-27	4
2020-11-27	5
2020-11-27	6
2020-11-27	7
2020-11-27	8
2020-11-27	9
2020-11-27	10
2020-11-28	1
2020-11-28	2
2020-11-28	3
2020-11-28	4
2020-11-28	5
2020-11-28	6
2020-11-28	7
2020-11-28	8
2020-11-28	9
2020-11-28	10
2020-11-29	1
2020-11-29	2
2020-11-29	3
2020-11-29	4
2020-11-29	5
2020-11-29	6
2020-11-29	7
2020-11-29	8
2020-11-29	9
2020-11-29	10
2020-11-30	1
2020-11-30	2
2020-11-30	3
2020-11-30	4
2020-11-30	5
2020-11-30	6
2020-11-30	7
2020-11-30	8
2020-11-30	9
2020-11-30	10
2020-12-01	1
2020-12-01	2
2020-12-01	3
2020-12-01	4
2020-12-01	5
2020-12-01	6
2020-12-01	7
2020-12-01	8
2020-12-01	9
2020-12-01	10
2020-12-02	1
2020-12-02	2
2020-12-02	3
2020-12-02	4
2020-12-02	5
2020-12-02	6
2020-12-02	7
2020-12-02	8
2020-12-02	9
2020-12-02	10
2020-12-03	1
2020-12-03	2
2020-12-03	3
2020-12-03	4
2020-12-03	5
2020-12-03	6
2020-12-03	7
2020-12-03	8
2020-12-03	9
2020-12-03	10
2020-12-04	1
2020-12-04	2
2020-12-04	3
2020-12-04	4
2020-12-04	5
2020-12-04	6
2020-12-04	7
2020-12-04	8
2020-12-04	9
2020-12-04	10
2020-12-05	1
2020-12-05	2
2020-12-05	3
2020-12-05	4
2020-12-05	5
2020-12-05	6
2020-12-05	7
2020-12-05	8
2020-12-05	9
2020-12-05	10
2020-12-06	1
2020-12-06	2
2020-12-06	3
2020-12-06	4
2020-12-06	5
2020-12-06	6
2020-12-06	7
2020-12-06	8
2020-12-06	9
2020-12-06	10
2020-12-07	1
2020-12-07	2
2020-12-07	3
2020-12-07	4
2020-12-07	5
2020-12-07	6
2020-12-07	7
2020-12-07	8
2020-12-07	9
2020-12-07	10
2020-12-08	1
2020-12-08	2
2020-12-08	3
2020-12-08	4
2020-12-08	5
2020-12-08	6
2020-12-08	7
2020-12-08	8
2020-12-08	9
2020-12-08	10
2020-12-09	1
2020-12-09	2
2020-12-09	3
2020-12-09	4
2020-12-09	5
2020-12-09	6
2020-12-09	7
2020-12-09	8
2020-12-09	9
2020-12-09	10
2020-12-10	1
2020-12-10	2
2020-12-10	3
2020-12-10	4
2020-12-10	5
2020-12-10	6
2020-12-10	7
2020-12-10	8
2020-12-10	9
2020-12-10	10
2020-12-11	1
2020-12-11	2
2020-12-11	3
2020-12-11	4
2020-12-11	5
2020-12-11	6
2020-12-11	7
2020-12-11	8
2020-12-11	9
2020-12-11	10
2020-12-12	1
2020-12-12	2
2020-12-12	3
2020-12-12	4
2020-12-12	5
2020-12-12	6
2020-12-12	7
2020-12-12	8
2020-12-12	9
2020-12-12	10
2020-12-13	1
2020-12-13	2
2020-12-13	3
2020-12-13	4
2020-12-13	5
2020-12-13	6
2020-12-13	7
2020-12-13	8
2020-12-13	9
2020-12-13	10
2020-12-14	1
2020-12-14	2
2020-12-14	3
2020-12-14	4
2020-12-14	5
2020-12-14	6
2020-12-14	7
2020-12-14	8
2020-12-14	9
2020-12-14	10
2020-12-15	1
2020-12-15	2
2020-12-15	3
2020-12-15	4
2020-12-15	5
2020-12-15	6
2020-12-15	7
2020-12-15	8
2020-12-15	9
2020-12-15	10
2020-12-16	1
2020-12-16	2
2020-12-16	3
2020-12-16	4
2020-12-16	5
2020-12-16	6
2020-12-16	7
2020-12-16	8
2020-12-16	9
2020-12-16	10
2020-12-17	1
2020-12-17	2
2020-12-17	3
2020-12-17	4
2020-12-17	5
2020-12-17	6
2020-12-17	7
2020-12-17	8
2020-12-17	9
2020-12-17	10
2020-12-18	1
2020-12-18	2
2020-12-18	3
2020-12-18	4
2020-12-18	5
2020-12-18	6
2020-12-18	7
2020-12-18	8
2020-12-18	9
2020-12-18	10
2020-12-19	1
2020-12-19	2
2020-12-19	3
2020-12-19	4
2020-12-19	5
2020-12-19	6
2020-12-19	7
2020-12-19	8
2020-12-19	9
2020-12-19	10
2020-12-20	1
2020-12-20	2
2020-12-20	3
2020-12-20	4
2020-12-20	5
2020-12-20	6
2020-12-20	7
2020-12-20	8
2020-12-20	9
2020-12-20	10
2020-12-21	1
2020-12-21	2
2020-12-21	3
2020-12-21	4
2020-12-21	5
2020-12-21	6
2020-12-21	7
2020-12-21	8
2020-12-21	9
2020-12-21	10
2020-12-22	1
2020-12-22	2
2020-12-22	3
2020-12-22	4
2020-12-22	5
2020-12-22	6
2020-12-22	7
2020-12-22	8
2020-12-22	9
2020-12-22	10
2020-12-23	1
2020-12-23	2
2020-12-23	3
2020-12-23	4
2020-12-23	5
2020-12-23	6
2020-12-23	7
2020-12-23	8
2020-12-23	9
2020-12-23	10
2020-12-24	1
2020-12-24	2
2020-12-24	3
2020-12-24	4
2020-12-24	5
2020-12-24	6
2020-12-24	7
2020-12-24	8
2020-12-24	9
2020-12-24	10
2020-12-25	1
2020-12-25	2
2020-12-25	3
2020-12-25	4
2020-12-25	5
2020-12-25	6
2020-12-25	7
2020-12-25	8
2020-12-25	9
2020-12-25	10
2020-12-26	1
2020-12-26	2
2020-12-26	3
2020-12-26	4
2020-12-26	5
2020-12-26	6
2020-12-26	7
2020-12-26	8
2020-12-26	9
2020-12-26	10
2020-12-27	1
2020-12-27	2
2020-12-27	3
2020-12-27	4
2020-12-27	5
2020-12-27	6
2020-12-27	7
2020-12-27	8
2020-12-27	9
2020-12-27	10
2020-12-28	1
2020-12-28	2
2020-12-28	3
2020-12-28	4
2020-12-28	5
2020-12-28	6
2020-12-28	7
2020-12-28	8
2020-12-28	9
2020-12-28	10
2020-12-29	1
2020-12-29	2
2020-12-29	3
2020-12-29	4
2020-12-29	5
2020-12-29	6
2020-12-29	7
2020-12-29	8
2020-12-29	9
2020-12-29	10
2020-12-30	1
2020-12-30	2
2020-12-30	3
2020-12-30	4
2020-12-30	5
2020-12-30	6
2020-12-30	7
2020-12-30	8
2020-12-30	9
2020-12-30	10
2020-12-31	1
2020-12-31	2
2020-12-31	3
2020-12-31	4
2020-12-31	5
2020-12-31	6
2020-12-31	7
2020-12-31	8
2020-12-31	9
2020-12-31	10
2021-01-01	1
2021-01-01	2
2021-01-01	3
2021-01-01	4
2021-01-01	5
2021-01-01	6
2021-01-01	7
2021-01-01	8
2021-01-01	9
2021-01-01	10
2021-01-02	1
2021-01-02	2
2021-01-02	3
2021-01-02	4
2021-01-02	5
2021-01-02	6
2021-01-02	7
2021-01-02	8
2021-01-02	9
2021-01-02	10
2021-01-03	1
2021-01-03	2
2021-01-03	3
2021-01-03	4
2021-01-03	5
2021-01-03	6
2021-01-03	7
2021-01-03	8
2021-01-03	9
2021-01-03	10
2021-01-04	1
2021-01-04	2
2021-01-04	3
2021-01-04	4
2021-01-04	5
2021-01-04	6
2021-01-04	7
2021-01-04	8
2021-01-04	9
2021-01-04	10
2021-01-05	1
2021-01-05	2
2021-01-05	3
2021-01-05	4
2021-01-05	5
2021-01-05	6
2021-01-05	7
2021-01-05	8
2021-01-05	9
2021-01-05	10
2021-01-06	1
2021-01-06	2
2021-01-06	3
2021-01-06	4
2021-01-06	5
2021-01-06	6
2021-01-06	7
2021-01-06	8
2021-01-06	9
2021-01-06	10
2021-01-07	1
2021-01-07	2
2021-01-07	3
2021-01-07	4
2021-01-07	5
2021-01-07	6
2021-01-07	7
2021-01-07	8
2021-01-07	9
2021-01-07	10
2021-01-08	1
2021-01-08	2
2021-01-08	3
2021-01-08	4
2021-01-08	5
2021-01-08	6
2021-01-08	7
2021-01-08	8
2021-01-08	9
2021-01-08	10
2021-01-09	1
2021-01-09	2
2021-01-09	3
2021-01-09	4
2021-01-09	5
2021-01-09	6
2021-01-09	7
2021-01-09	8
2021-01-09	9
2021-01-09	10
2021-01-10	1
2021-01-10	2
2021-01-10	3
2021-01-10	4
2021-01-10	5
2021-01-10	6
2021-01-10	7
2021-01-10	8
2021-01-10	9
2021-01-10	10
2021-01-11	1
2021-01-11	2
2021-01-11	3
2021-01-11	4
2021-01-11	5
2021-01-11	6
2021-01-11	7
2021-01-11	8
2021-01-11	9
2021-01-11	10
2021-01-12	1
2021-01-12	2
2021-01-12	3
2021-01-12	4
2021-01-12	5
2021-01-12	6
2021-01-12	7
2021-01-12	8
2021-01-12	9
2021-01-12	10
2021-01-13	1
2021-01-13	2
2021-01-13	3
2021-01-13	4
2021-01-13	5
2021-01-13	6
2021-01-13	7
2021-01-13	8
2021-01-13	9
2021-01-13	10
2021-01-14	1
2021-01-14	2
2021-01-14	3
2021-01-14	4
2021-01-14	5
2021-01-14	6
2021-01-14	7
2021-01-14	8
2021-01-14	9
2021-01-14	10
2021-01-15	1
2021-01-15	2
2021-01-15	3
2021-01-15	4
2021-01-15	5
2021-01-15	6
2021-01-15	7
2021-01-15	8
2021-01-15	9
2021-01-15	10
2021-01-16	1
2021-01-16	2
2021-01-16	3
2021-01-16	4
2021-01-16	5
2021-01-16	6
2021-01-16	7
2021-01-16	8
2021-01-16	9
2021-01-16	10
2021-01-17	1
2021-01-17	2
2021-01-17	3
2021-01-17	4
2021-01-17	5
2021-01-17	6
2021-01-17	7
2021-01-17	8
2021-01-17	9
2021-01-17	10
2021-01-18	1
2021-01-18	2
2021-01-18	3
2021-01-18	4
2021-01-18	5
2021-01-18	6
2021-01-18	7
2021-01-18	8
2021-01-18	9
2021-01-18	10
2021-01-19	1
2021-01-19	2
2021-01-19	3
2021-01-19	4
2021-01-19	5
2021-01-19	6
2021-01-19	7
2021-01-19	8
2021-01-19	9
2021-01-19	10
2021-01-20	1
2021-01-20	2
2021-01-20	3
2021-01-20	4
2021-01-20	5
2021-01-20	6
2021-01-20	7
2021-01-20	8
2021-01-20	9
2021-01-20	10
2021-01-21	1
2021-01-21	2
2021-01-21	3
2021-01-21	4
2021-01-21	5
2021-01-21	6
2021-01-21	7
2021-01-21	8
2021-01-21	9
2021-01-21	10
2021-01-22	1
2021-01-22	2
2021-01-22	3
2021-01-22	4
2021-01-22	5
2021-01-22	6
2021-01-22	7
2021-01-22	8
2021-01-22	9
2021-01-22	10
2021-01-23	1
2021-01-23	2
2021-01-23	3
2021-01-23	4
2021-01-23	5
2021-01-23	6
2021-01-23	7
2021-01-23	8
2021-01-23	9
2021-01-23	10
2021-01-24	1
2021-01-24	2
2021-01-24	3
2021-01-24	4
2021-01-24	5
2021-01-24	6
2021-01-24	7
2021-01-24	8
2021-01-24	9
2021-01-24	10
2021-01-25	1
2021-01-25	2
2021-01-25	3
2021-01-25	4
2021-01-25	5
2021-01-25	6
2021-01-25	7
2021-01-25	8
2021-01-25	9
2021-01-25	10
2021-01-26	1
2021-01-26	2
2021-01-26	3
2021-01-26	4
2021-01-26	5
2021-01-26	6
2021-01-26	7
2021-01-26	8
2021-01-26	9
2021-01-26	10
2021-01-27	1
2021-01-27	2
2021-01-27	3
2021-01-27	4
2021-01-27	5
2021-01-27	6
2021-01-27	7
2021-01-27	8
2021-01-27	9
2021-01-27	10
2021-01-28	1
2021-01-28	2
2021-01-28	3
2021-01-28	4
2021-01-28	5
2021-01-28	6
2021-01-28	7
2021-01-28	8
2021-01-28	9
2021-01-28	10
2021-01-29	1
2021-01-29	2
2021-01-29	3
2021-01-29	4
2021-01-29	5
2021-01-29	6
2021-01-29	7
2021-01-29	8
2021-01-29	9
2021-01-29	10
2021-01-30	1
2021-01-30	2
2021-01-30	3
2021-01-30	4
2021-01-30	5
2021-01-30	6
2021-01-30	7
2021-01-30	8
2021-01-30	9
2021-01-30	10
2021-01-31	1
2021-01-31	2
2021-01-31	3
2021-01-31	4
2021-01-31	5
2021-01-31	6
2021-01-31	7
2021-01-31	8
2021-01-31	9
2021-01-31	10
2021-02-01	1
2021-02-01	2
2021-02-01	3
2021-02-01	4
2021-02-01	5
2021-02-01	6
2021-02-01	7
2021-02-01	8
2021-02-01	9
2021-02-01	10
2021-02-02	1
2021-02-02	2
2021-02-02	3
2021-02-02	4
2021-02-02	5
2021-02-02	6
2021-02-02	7
2021-02-02	8
2021-02-02	9
2021-02-02	10
2021-02-03	1
2021-02-03	2
2021-02-03	3
2021-02-03	4
2021-02-03	5
2021-02-03	6
2021-02-03	7
2021-02-03	8
2021-02-03	9
2021-02-03	10
2021-02-04	1
2021-02-04	2
2021-02-04	3
2021-02-04	4
2021-02-04	5
2021-02-04	6
2021-02-04	7
2021-02-04	8
2021-02-04	9
2021-02-04	10
2021-02-05	1
2021-02-05	2
2021-02-05	3
2021-02-05	4
2021-02-05	5
2021-02-05	6
2021-02-05	7
2021-02-05	8
2021-02-05	9
2021-02-05	10
2021-02-06	1
2021-02-06	2
2021-02-06	3
2021-02-06	4
2021-02-06	5
2021-02-06	6
2021-02-06	7
2021-02-06	8
2021-02-06	9
2021-02-06	10
2021-02-07	1
2021-02-07	2
2021-02-07	3
2021-02-07	4
2021-02-07	5
2021-02-07	6
2021-02-07	7
2021-02-07	8
2021-02-07	9
2021-02-07	10
2021-02-08	1
2021-02-08	2
2021-02-08	3
2021-02-08	4
2021-02-08	5
2021-02-08	6
2021-02-08	7
2021-02-08	8
2021-02-08	9
2021-02-08	10
2021-02-09	1
2021-02-09	2
2021-02-09	3
2021-02-09	4
2021-02-09	5
2021-02-09	6
2021-02-09	7
2021-02-09	8
2021-02-09	9
2021-02-09	10
2021-02-10	1
2021-02-10	2
2021-02-10	3
2021-02-10	4
2021-02-10	5
2021-02-10	6
2021-02-10	7
2021-02-10	8
2021-02-10	9
2021-02-10	10
2021-02-11	1
2021-02-11	2
2021-02-11	3
2021-02-11	4
2021-02-11	5
2021-02-11	6
2021-02-11	7
2021-02-11	8
2021-02-11	9
2021-02-11	10
2021-02-12	1
2021-02-12	2
2021-02-12	3
2021-02-12	4
2021-02-12	5
2021-02-12	6
2021-02-12	7
2021-02-12	8
2021-02-12	9
2021-02-12	10
2021-02-13	1
2021-02-13	2
2021-02-13	3
2021-02-13	4
2021-02-13	5
2021-02-13	6
2021-02-13	7
2021-02-13	8
2021-02-13	9
2021-02-13	10
2021-02-14	1
2021-02-14	2
2021-02-14	3
2021-02-14	4
2021-02-14	5
2021-02-14	6
2021-02-14	7
2021-02-14	8
2021-02-14	9
2021-02-14	10
2021-02-15	1
2021-02-15	2
2021-02-15	3
2021-02-15	4
2021-02-15	5
2021-02-15	6
2021-02-15	7
2021-02-15	8
2021-02-15	9
2021-02-15	10
2021-02-16	1
2021-02-16	2
2021-02-16	3
2021-02-16	4
2021-02-16	5
2021-02-16	6
2021-02-16	7
2021-02-16	8
2021-02-16	9
2021-02-16	10
2021-02-17	1
2021-02-17	2
2021-02-17	3
2021-02-17	4
2021-02-17	5
2021-02-17	6
2021-02-17	7
2021-02-17	8
2021-02-17	9
2021-02-17	10
2021-02-18	1
2021-02-18	2
2021-02-18	3
2021-02-18	4
2021-02-18	5
2021-02-18	6
2021-02-18	7
2021-02-18	8
2021-02-18	9
2021-02-18	10
2021-02-19	1
2021-02-19	2
2021-02-19	3
2021-02-19	4
2021-02-19	5
2021-02-19	6
2021-02-19	7
2021-02-19	8
2021-02-19	9
2021-02-19	10
2021-02-20	1
2021-02-20	2
2021-02-20	3
2021-02-20	4
2021-02-20	5
2021-02-20	6
2021-02-20	7
2021-02-20	8
2021-02-20	9
2021-02-20	10
2021-02-21	1
2021-02-21	2
2021-02-21	3
2021-02-21	4
2021-02-21	5
2021-02-21	6
2021-02-21	7
2021-02-21	8
2021-02-21	9
2021-02-21	10
2021-02-22	1
2021-02-22	2
2021-02-22	3
2021-02-22	4
2021-02-22	5
2021-02-22	6
2021-02-22	7
2021-02-22	8
2021-02-22	9
2021-02-22	10
2021-02-23	1
2021-02-23	2
2021-02-23	3
2021-02-23	4
2021-02-23	5
2021-02-23	6
2021-02-23	7
2021-02-23	8
2021-02-23	9
2021-02-23	10
2021-02-24	1
2021-02-24	2
2021-02-24	3
2021-02-24	4
2021-02-24	5
2021-02-24	6
2021-02-24	7
2021-02-24	8
2021-02-24	9
2021-02-24	10
2021-02-25	1
2021-02-25	2
2021-02-25	3
2021-02-25	4
2021-02-25	5
2021-02-25	6
2021-02-25	7
2021-02-25	8
2021-02-25	9
2021-02-25	10
2021-02-26	1
2021-02-26	2
2021-02-26	3
2021-02-26	4
2021-02-26	5
2021-02-26	6
2021-02-26	7
2021-02-26	8
2021-02-26	9
2021-02-26	10
2021-02-27	1
2021-02-27	2
2021-02-27	3
2021-02-27	4
2021-02-27	5
2021-02-27	6
2021-02-27	7
2021-02-27	8
2021-02-27	9
2021-02-27	10
2021-02-28	1
2021-02-28	2
2021-02-28	3
2021-02-28	4
2021-02-28	5
2021-02-28	6
2021-02-28	7
2021-02-28	8
2021-02-28	9
2021-02-28	10
2021-03-01	1
2021-03-01	2
2021-03-01	3
2021-03-01	4
2021-03-01	5
2021-03-01	6
2021-03-01	7
2021-03-01	8
2021-03-01	9
2021-03-01	10
2021-03-02	1
2021-03-02	2
2021-03-02	3
2021-03-02	4
2021-03-02	5
2021-03-02	6
2021-03-02	7
2021-03-02	8
2021-03-02	9
2021-03-02	10
2021-03-03	1
2021-03-03	2
2021-03-03	3
2021-03-03	4
2021-03-03	5
2021-03-03	6
2021-03-03	7
2021-03-03	8
2021-03-03	9
2021-03-03	10
2021-03-04	1
2021-03-04	2
2021-03-04	3
2021-03-04	4
2021-03-04	5
2021-03-04	6
2021-03-04	7
2021-03-04	8
2021-03-04	9
2021-03-04	10
2021-03-05	1
2021-03-05	2
2021-03-05	3
2021-03-05	4
2021-03-05	5
2021-03-05	6
2021-03-05	7
2021-03-05	8
2021-03-05	9
2021-03-05	10
2021-03-06	1
2021-03-06	2
2021-03-06	3
2021-03-06	4
2021-03-06	5
2021-03-06	6
2021-03-06	7
2021-03-06	8
2021-03-06	9
2021-03-06	10
2021-03-07	1
2021-03-07	2
2021-03-07	3
2021-03-07	4
2021-03-07	5
2021-03-07	6
2021-03-07	7
2021-03-07	8
2021-03-07	9
2021-03-07	10
2021-03-08	1
2021-03-08	2
2021-03-08	3
2021-03-08	4
2021-03-08	5
2021-03-08	6
2021-03-08	7
2021-03-08	8
2021-03-08	9
2021-03-08	10
2021-03-09	1
2021-03-09	2
2021-03-09	3
2021-03-09	4
2021-03-09	5
2021-03-09	6
2021-03-09	7
2021-03-09	8
2021-03-09	9
2021-03-09	10
2021-03-10	1
2021-03-10	2
2021-03-10	3
2021-03-10	4
2021-03-10	5
2021-03-10	6
2021-03-10	7
2021-03-10	8
2021-03-10	9
2021-03-10	10
2021-03-11	1
2021-03-11	2
2021-03-11	3
2021-03-11	4
2021-03-11	5
2021-03-11	6
2021-03-11	7
2021-03-11	8
2021-03-11	9
2021-03-11	10
2021-03-12	1
2021-03-12	2
2021-03-12	3
2021-03-12	4
2021-03-12	5
2021-03-12	6
2021-03-12	7
2021-03-12	8
2021-03-12	9
2021-03-12	10
2021-03-13	1
2021-03-13	2
2021-03-13	3
2021-03-13	4
2021-03-13	5
2021-03-13	6
2021-03-13	7
2021-03-13	8
2021-03-13	9
2021-03-13	10
2021-03-14	1
2021-03-14	2
2021-03-14	3
2021-03-14	4
2021-03-14	5
2021-03-14	6
2021-03-14	7
2021-03-14	8
2021-03-14	9
2021-03-14	10
2021-03-15	1
2021-03-15	2
2021-03-15	3
2021-03-15	4
2021-03-15	5
2021-03-15	6
2021-03-15	7
2021-03-15	8
2021-03-15	9
2021-03-15	10
2021-03-16	1
2021-03-16	2
2021-03-16	3
2021-03-16	4
2021-03-16	5
2021-03-16	6
2021-03-16	7
2021-03-16	8
2021-03-16	9
2021-03-16	10
2021-03-17	1
2021-03-17	2
2021-03-17	3
2021-03-17	4
2021-03-17	5
2021-03-17	6
2021-03-17	7
2021-03-17	8
2021-03-17	9
2021-03-17	10
2021-03-18	1
2021-03-18	2
2021-03-18	3
2021-03-18	4
2021-03-18	5
2021-03-18	6
2021-03-18	7
2021-03-18	8
2021-03-18	9
2021-03-18	10
2021-03-19	1
2021-03-19	2
2021-03-19	3
2021-03-19	4
2021-03-19	5
2021-03-19	6
2021-03-19	7
2021-03-19	8
2021-03-19	9
2021-03-19	10
2021-03-20	1
2021-03-20	2
2021-03-20	3
2021-03-20	4
2021-03-20	5
2021-03-20	6
2021-03-20	7
2021-03-20	8
2021-03-20	9
2021-03-20	10
2021-03-21	1
2021-03-21	2
2021-03-21	3
2021-03-21	4
2021-03-21	5
2021-03-21	6
2021-03-21	7
2021-03-21	8
2021-03-21	9
2021-03-21	10
2021-03-22	1
2021-03-22	2
2021-03-22	3
2021-03-22	4
2021-03-22	5
2021-03-22	6
2021-03-22	7
2021-03-22	8
2021-03-22	9
2021-03-22	10
2021-03-23	1
2021-03-23	2
2021-03-23	3
2021-03-23	4
2021-03-23	5
2021-03-23	6
2021-03-23	7
2021-03-23	8
2021-03-23	9
2021-03-23	10
2021-03-24	1
2021-03-24	2
2021-03-24	3
2021-03-24	4
2021-03-24	5
2021-03-24	6
2021-03-24	7
2021-03-24	8
2021-03-24	9
2021-03-24	10
2021-03-25	1
2021-03-25	2
2021-03-25	3
2021-03-25	4
2021-03-25	5
2021-03-25	6
2021-03-25	7
2021-03-25	8
2021-03-25	9
2021-03-25	10
2021-03-26	1
2021-03-26	2
2021-03-26	3
2021-03-26	4
2021-03-26	5
2021-03-26	6
2021-03-26	7
2021-03-26	8
2021-03-26	9
2021-03-26	10
2021-03-27	1
2021-03-27	2
2021-03-27	3
2021-03-27	4
2021-03-27	5
2021-03-27	6
2021-03-27	7
2021-03-27	8
2021-03-27	9
2021-03-27	10
2021-03-28	1
2021-03-28	2
2021-03-28	3
2021-03-28	4
2021-03-28	5
2021-03-28	6
2021-03-28	7
2021-03-28	8
2021-03-28	9
2021-03-28	10
2021-03-29	1
2021-03-29	2
2021-03-29	3
2021-03-29	4
2021-03-29	5
2021-03-29	6
2021-03-29	7
2021-03-29	8
2021-03-29	9
2021-03-29	10
2021-03-30	1
2021-03-30	2
2021-03-30	3
2021-03-30	4
2021-03-30	5
2021-03-30	6
2021-03-30	7
2021-03-30	8
2021-03-30	9
2021-03-30	10
2021-03-31	1
2021-03-31	2
2021-03-31	3
2021-03-31	4
2021-03-31	5
2021-03-31	6
2021-03-31	7
2021-03-31	8
2021-03-31	9
2021-03-31	10
2021-04-01	1
2021-04-01	2
2021-04-01	3
2021-04-01	4
2021-04-01	5
2021-04-01	6
2021-04-01	7
2021-04-01	8
2021-04-01	9
2021-04-01	10
2021-04-02	1
2021-04-02	2
2021-04-02	3
2021-04-02	4
2021-04-02	5
2021-04-02	6
2021-04-02	7
2021-04-02	8
2021-04-02	9
2021-04-02	10
2021-04-03	1
2021-04-03	2
2021-04-03	3
2021-04-03	4
2021-04-03	5
2021-04-03	6
2021-04-03	7
2021-04-03	8
2021-04-03	9
2021-04-03	10
2021-04-04	1
2021-04-04	2
2021-04-04	3
2021-04-04	4
2021-04-04	5
2021-04-04	6
2021-04-04	7
2021-04-04	8
2021-04-04	9
2021-04-04	10
2021-04-05	1
2021-04-05	2
2021-04-05	3
2021-04-05	4
2021-04-05	5
2021-04-05	6
2021-04-05	7
2021-04-05	8
2021-04-05	9
2021-04-05	10
2021-04-06	1
2021-04-06	2
2021-04-06	3
2021-04-06	4
2021-04-06	5
2021-04-06	6
2021-04-06	7
2021-04-06	8
2021-04-06	9
2021-04-06	10
2021-04-07	1
2021-04-07	2
2021-04-07	3
2021-04-07	4
2021-04-07	5
2021-04-07	6
2021-04-07	7
2021-04-07	8
2021-04-07	9
2021-04-07	10
2021-04-08	1
2021-04-08	2
2021-04-08	3
2021-04-08	4
2021-04-08	5
2021-04-08	6
2021-04-08	7
2021-04-08	8
2021-04-08	9
2021-04-08	10
2021-04-09	1
2021-04-09	2
2021-04-09	3
2021-04-09	4
2021-04-09	5
2021-04-09	6
2021-04-09	7
2021-04-09	8
2021-04-09	9
2021-04-09	10
2021-04-10	1
2021-04-10	2
2021-04-10	3
2021-04-10	4
2021-04-10	5
2021-04-10	6
2021-04-10	7
2021-04-10	8
2021-04-10	9
2021-04-10	10
2021-04-11	1
2021-04-11	2
2021-04-11	3
2021-04-11	4
2021-04-11	5
2021-04-11	6
2021-04-11	7
2021-04-11	8
2021-04-11	9
2021-04-11	10
2021-04-12	1
2021-04-12	2
2021-04-12	3
2021-04-12	4
2021-04-12	5
2021-04-12	6
2021-04-12	7
2021-04-12	8
2021-04-12	9
2021-04-12	10
2021-04-13	1
2021-04-13	2
2021-04-13	3
2021-04-13	4
2021-04-13	5
2021-04-13	6
2021-04-13	7
2021-04-13	8
2021-04-13	9
2021-04-13	10
2021-04-14	1
2021-04-14	2
2021-04-14	3
2021-04-14	4
2021-04-14	5
2021-04-14	6
2021-04-14	7
2021-04-14	8
2021-04-14	9
2021-04-14	10
2021-04-15	1
2021-04-15	2
2021-04-15	3
2021-04-15	4
2021-04-15	5
2021-04-15	6
2021-04-15	7
2021-04-15	8
2021-04-15	9
2021-04-15	10
2021-04-16	1
2021-04-16	2
2021-04-16	3
2021-04-16	4
2021-04-16	5
2021-04-16	6
2021-04-16	7
2021-04-16	8
2021-04-16	9
2021-04-16	10
2021-04-17	1
2021-04-17	2
2021-04-17	3
2021-04-17	4
2021-04-17	5
2021-04-17	6
2021-04-17	7
2021-04-17	8
2021-04-17	9
2021-04-17	10
2021-04-18	1
2021-04-18	2
2021-04-18	3
2021-04-18	4
2021-04-18	5
2021-04-18	6
2021-04-18	7
2021-04-18	8
2021-04-18	9
2021-04-18	10
2021-04-19	1
2021-04-19	2
2021-04-19	3
2021-04-19	4
2021-04-19	5
2021-04-19	6
2021-04-19	7
2021-04-19	8
2021-04-19	9
2021-04-19	10
2021-04-20	1
2021-04-20	2
2021-04-20	3
2021-04-20	4
2021-04-20	5
2021-04-20	6
2021-04-20	7
2021-04-20	8
2021-04-20	9
2021-04-20	10
2021-04-21	1
2021-04-21	2
2021-04-21	3
2021-04-21	4
2021-04-21	5
2021-04-21	6
2021-04-21	7
2021-04-21	8
2021-04-21	9
2021-04-21	10
2021-04-22	1
2021-04-22	2
2021-04-22	3
2021-04-22	4
2021-04-22	5
2021-04-22	6
2021-04-22	7
2021-04-22	8
2021-04-22	9
2021-04-22	10
2021-04-23	1
2021-04-23	2
2021-04-23	3
2021-04-23	4
2021-04-23	5
2021-04-23	6
2021-04-23	7
2021-04-23	8
2021-04-23	9
2021-04-23	10
2021-04-24	1
2021-04-24	2
2021-04-24	3
2021-04-24	4
2021-04-24	5
2021-04-24	6
2021-04-24	7
2021-04-24	8
2021-04-24	9
2021-04-24	10
2021-04-25	1
2021-04-25	2
2021-04-25	3
2021-04-25	4
2021-04-25	5
2021-04-25	6
2021-04-25	7
2021-04-25	8
2021-04-25	9
2021-04-25	10
2021-04-26	1
2021-04-26	2
2021-04-26	3
2021-04-26	4
2021-04-26	5
2021-04-26	6
2021-04-26	7
2021-04-26	8
2021-04-26	9
2021-04-26	10
2021-04-27	1
2021-04-27	2
2021-04-27	3
2021-04-27	4
2021-04-27	5
2021-04-27	6
2021-04-27	7
2021-04-27	8
2021-04-27	9
2021-04-27	10
2021-04-28	1
2021-04-28	2
2021-04-28	3
2021-04-28	4
2021-04-28	5
2021-04-28	6
2021-04-28	7
2021-04-28	8
2021-04-28	9
2021-04-28	10
2021-04-29	1
2021-04-29	2
2021-04-29	3
2021-04-29	4
2021-04-29	5
2021-04-29	6
2021-04-29	7
2021-04-29	8
2021-04-29	9
2021-04-29	10
2021-04-30	1
2021-04-30	2
2021-04-30	3
2021-04-30	4
2021-04-30	5
2021-04-30	6
2021-04-30	7
2021-04-30	8
2021-04-30	9
2021-04-30	10
2021-05-01	1
2021-05-01	2
2021-05-01	3
2021-05-01	4
2021-05-01	5
2021-05-01	6
2021-05-01	7
2021-05-01	8
2021-05-01	9
2021-05-01	10
2021-05-02	1
2021-05-02	2
2021-05-02	3
2021-05-02	4
2021-05-02	5
2021-05-02	6
2021-05-02	7
2021-05-02	8
2021-05-02	9
2021-05-02	10
2021-05-03	1
2021-05-03	2
2021-05-03	3
2021-05-03	4
2021-05-03	5
2021-05-03	6
2021-05-03	7
2021-05-03	8
2021-05-03	9
2021-05-03	10
2021-05-04	1
2021-05-04	2
2021-05-04	3
2021-05-04	4
2021-05-04	5
2021-05-04	6
2021-05-04	7
2021-05-04	8
2021-05-04	9
2021-05-04	10
2021-05-05	1
2021-05-05	2
2021-05-05	3
2021-05-05	4
2021-05-05	5
2021-05-05	6
2021-05-05	7
2021-05-05	8
2021-05-05	9
2021-05-05	10
2021-05-06	1
2021-05-06	2
2021-05-06	3
2021-05-06	4
2021-05-06	5
2021-05-06	6
2021-05-06	7
2021-05-06	8
2021-05-06	9
2021-05-06	10
2021-05-07	1
2021-05-07	2
2021-05-07	3
2021-05-07	4
2021-05-07	5
2021-05-07	6
2021-05-07	7
2021-05-07	8
2021-05-07	9
2021-05-07	10
2021-05-08	1
2021-05-08	2
2021-05-08	3
2021-05-08	4
2021-05-08	5
2021-05-08	6
2021-05-08	7
2021-05-08	8
2021-05-08	9
2021-05-08	10
2021-05-09	1
2021-05-09	2
2021-05-09	3
2021-05-09	4
2021-05-09	5
2021-05-09	6
2021-05-09	7
2021-05-09	8
2021-05-09	9
2021-05-09	10
2021-05-10	1
2021-05-10	2
2021-05-10	3
2021-05-10	4
2021-05-10	5
2021-05-10	6
2021-05-10	7
2021-05-10	8
2021-05-10	9
2021-05-10	10
2021-05-11	1
2021-05-11	2
2021-05-11	3
2021-05-11	4
2021-05-11	5
2021-05-11	6
2021-05-11	7
2021-05-11	8
2021-05-11	9
2021-05-11	10
2021-05-12	1
2021-05-12	2
2021-05-12	3
2021-05-12	4
2021-05-12	5
2021-05-12	6
2021-05-12	7
2021-05-12	8
2021-05-12	9
2021-05-12	10
2021-05-13	1
2021-05-13	2
2021-05-13	3
2021-05-13	4
2021-05-13	5
2021-05-13	6
2021-05-13	7
2021-05-13	8
2021-05-13	9
2021-05-13	10
2021-05-14	1
2021-05-14	2
2021-05-14	3
2021-05-14	4
2021-05-14	5
2021-05-14	6
2021-05-14	7
2021-05-14	8
2021-05-14	9
2021-05-14	10
2021-05-15	1
2021-05-15	2
2021-05-15	3
2021-05-15	4
2021-05-15	5
2021-05-15	6
2021-05-15	7
2021-05-15	8
2021-05-15	9
2021-05-15	10
2021-05-16	1
2021-05-16	2
2021-05-16	3
2021-05-16	4
2021-05-16	5
2021-05-16	6
2021-05-16	7
2021-05-16	8
2021-05-16	9
2021-05-16	10
2021-05-17	1
2021-05-17	2
2021-05-17	3
2021-05-17	4
2021-05-17	5
2021-05-17	6
2021-05-17	7
2021-05-17	8
2021-05-17	9
2021-05-17	10
2021-05-18	1
2021-05-18	2
2021-05-18	3
2021-05-18	4
2021-05-18	5
2021-05-18	6
2021-05-18	7
2021-05-18	8
2021-05-18	9
2021-05-18	10
2021-05-19	1
2021-05-19	2
2021-05-19	3
2021-05-19	4
2021-05-19	5
2021-05-19	6
2021-05-19	7
2021-05-19	8
2021-05-19	9
2021-05-19	10
2021-05-20	1
2021-05-20	2
2021-05-20	3
2021-05-20	4
2021-05-20	5
2021-05-20	6
2021-05-20	7
2021-05-20	8
2021-05-20	9
2021-05-20	10
2021-05-21	1
2021-05-21	2
2021-05-21	3
2021-05-21	4
2021-05-21	5
2021-05-21	6
2021-05-21	7
2021-05-21	8
2021-05-21	9
2021-05-21	10
2021-05-22	1
2021-05-22	2
2021-05-22	3
2021-05-22	4
2021-05-22	5
2021-05-22	6
2021-05-22	7
2021-05-22	8
2021-05-22	9
2021-05-22	10
2021-05-23	1
2021-05-23	2
2021-05-23	3
2021-05-23	4
2021-05-23	5
2021-05-23	6
2021-05-23	7
2021-05-23	8
2021-05-23	9
2021-05-23	10
2021-05-24	1
2021-05-24	2
2021-05-24	3
2021-05-24	4
2021-05-24	5
2021-05-24	6
2021-05-24	7
2021-05-24	8
2021-05-24	9
2021-05-24	10
2021-05-25	1
2021-05-25	2
2021-05-25	3
2021-05-25	4
2021-05-25	5
2021-05-25	6
2021-05-25	7
2021-05-25	8
2021-05-25	9
2021-05-25	10
2021-05-26	1
2021-05-26	2
2021-05-26	3
2021-05-26	4
2021-05-26	5
2021-05-26	6
2021-05-26	7
2021-05-26	8
2021-05-26	9
2021-05-26	10
2021-05-27	1
2021-05-27	2
2021-05-27	3
2021-05-27	4
2021-05-27	5
2021-05-27	6
2021-05-27	7
2021-05-27	8
2021-05-27	9
2021-05-27	10
2021-05-28	1
2021-05-28	2
2021-05-28	3
2021-05-28	4
2021-05-28	5
2021-05-28	6
2021-05-28	7
2021-05-28	8
2021-05-28	9
2021-05-28	10
2021-05-29	1
2021-05-29	2
2021-05-29	3
2021-05-29	4
2021-05-29	5
2021-05-29	6
2021-05-29	7
2021-05-29	8
2021-05-29	9
2021-05-29	10
2021-05-30	1
2021-05-30	2
2021-05-30	3
2021-05-30	4
2021-05-30	5
2021-05-30	6
2021-05-30	7
2021-05-30	8
2021-05-30	9
2021-05-30	10
2021-05-31	1
2021-05-31	2
2021-05-31	3
2021-05-31	4
2021-05-31	5
2021-05-31	6
2021-05-31	7
2021-05-31	8
2021-05-31	9
2021-05-31	10
2021-06-01	1
2021-06-01	2
2021-06-01	3
2021-06-01	4
2021-06-01	5
2021-06-01	6
2021-06-01	7
2021-06-01	8
2021-06-01	9
2021-06-01	10
2021-06-02	1
2021-06-02	2
2021-06-02	3
2021-06-02	4
2021-06-02	5
2021-06-02	6
2021-06-02	7
2021-06-02	8
2021-06-02	9
2021-06-02	10
2021-06-03	1
2021-06-03	2
2021-06-03	3
2021-06-03	4
2021-06-03	5
2021-06-03	6
2021-06-03	7
2021-06-03	8
2021-06-03	9
2021-06-03	10
2021-06-04	1
2021-06-04	2
2021-06-04	3
2021-06-04	4
2021-06-04	5
2021-06-04	6
2021-06-04	7
2021-06-04	8
2021-06-04	9
2021-06-04	10
2021-06-05	1
2021-06-05	2
2021-06-05	3
2021-06-05	4
2021-06-05	5
2021-06-05	6
2021-06-05	7
2021-06-05	8
2021-06-05	9
2021-06-05	10
2021-06-06	1
2021-06-06	2
2021-06-06	3
2021-06-06	4
2021-06-06	5
2021-06-06	6
2021-06-06	7
2021-06-06	8
2021-06-06	9
2021-06-06	10
2021-06-07	1
2021-06-07	2
2021-06-07	3
2021-06-07	4
2021-06-07	5
2021-06-07	6
2021-06-07	7
2021-06-07	8
2021-06-07	9
2021-06-07	10
2021-06-08	1
2021-06-08	2
2021-06-08	3
2021-06-08	4
2021-06-08	5
2021-06-08	6
2021-06-08	7
2021-06-08	8
2021-06-08	9
2021-06-08	10
2021-06-09	1
2021-06-09	2
2021-06-09	3
2021-06-09	4
2021-06-09	5
2021-06-09	6
2021-06-09	7
2021-06-09	8
2021-06-09	9
2021-06-09	10
2021-06-10	1
2021-06-10	2
2021-06-10	3
2021-06-10	4
2021-06-10	5
2021-06-10	6
2021-06-10	7
2021-06-10	8
2021-06-10	9
2021-06-10	10
2021-06-11	1
2021-06-11	2
2021-06-11	3
2021-06-11	4
2021-06-11	5
2021-06-11	6
2021-06-11	7
2021-06-11	8
2021-06-11	9
2021-06-11	10
2021-06-12	1
2021-06-12	2
2021-06-12	3
2021-06-12	4
2021-06-12	5
2021-06-12	6
2021-06-12	7
2021-06-12	8
2021-06-12	9
2021-06-12	10
2021-06-13	1
2021-06-13	2
2021-06-13	3
2021-06-13	4
2021-06-13	5
2021-06-13	6
2021-06-13	7
2021-06-13	8
2021-06-13	9
2021-06-13	10
2021-06-14	1
2021-06-14	2
2021-06-14	3
2021-06-14	4
2021-06-14	5
2021-06-14	6
2021-06-14	7
2021-06-14	8
2021-06-14	9
2021-06-14	10
2021-06-15	1
2021-06-15	2
2021-06-15	3
2021-06-15	4
2021-06-15	5
2021-06-15	6
2021-06-15	7
2021-06-15	8
2021-06-15	9
2021-06-15	10
2021-06-16	1
2021-06-16	2
2021-06-16	3
2021-06-16	4
2021-06-16	5
2021-06-16	6
2021-06-16	7
2021-06-16	8
2021-06-16	9
2021-06-16	10
2021-06-17	1
2021-06-17	2
2021-06-17	3
2021-06-17	4
2021-06-17	5
2021-06-17	6
2021-06-17	7
2021-06-17	8
2021-06-17	9
2021-06-17	10
2021-06-18	1
2021-06-18	2
2021-06-18	3
2021-06-18	4
2021-06-18	5
2021-06-18	6
2021-06-18	7
2021-06-18	8
2021-06-18	9
2021-06-18	10
2021-06-19	1
2021-06-19	2
2021-06-19	3
2021-06-19	4
2021-06-19	5
2021-06-19	6
2021-06-19	7
2021-06-19	8
2021-06-19	9
2021-06-19	10
2021-06-20	1
2021-06-20	2
2021-06-20	3
2021-06-20	4
2021-06-20	5
2021-06-20	6
2021-06-20	7
2021-06-20	8
2021-06-20	9
2021-06-20	10
2021-06-21	1
2021-06-21	2
2021-06-21	3
2021-06-21	4
2021-06-21	5
2021-06-21	6
2021-06-21	7
2021-06-21	8
2021-06-21	9
2021-06-21	10
2021-06-22	1
2021-06-22	2
2021-06-22	3
2021-06-22	4
2021-06-22	5
2021-06-22	6
2021-06-22	7
2021-06-22	8
2021-06-22	9
2021-06-22	10
2021-06-23	1
2021-06-23	2
2021-06-23	3
2021-06-23	4
2021-06-23	5
2021-06-23	6
2021-06-23	7
2021-06-23	8
2021-06-23	9
2021-06-23	10
2021-06-24	1
2021-06-24	2
2021-06-24	3
2021-06-24	4
2021-06-24	5
2021-06-24	6
2021-06-24	7
2021-06-24	8
2021-06-24	9
2021-06-24	10
2021-06-25	1
2021-06-25	2
2021-06-25	3
2021-06-25	4
2021-06-25	5
2021-06-25	6
2021-06-25	7
2021-06-25	8
2021-06-25	9
2021-06-25	10
2021-06-26	1
2021-06-26	2
2021-06-26	3
2021-06-26	4
2021-06-26	5
2021-06-26	6
2021-06-26	7
2021-06-26	8
2021-06-26	9
2021-06-26	10
2021-06-27	1
2021-06-27	2
2021-06-27	3
2021-06-27	4
2021-06-27	5
2021-06-27	6
2021-06-27	7
2021-06-27	8
2021-06-27	9
2021-06-27	10
2021-06-28	1
2021-06-28	2
2021-06-28	3
2021-06-28	4
2021-06-28	5
2021-06-28	6
2021-06-28	7
2021-06-28	8
2021-06-28	9
2021-06-28	10
2021-06-29	1
2021-06-29	2
2021-06-29	3
2021-06-29	4
2021-06-29	5
2021-06-29	6
2021-06-29	7
2021-06-29	8
2021-06-29	9
2021-06-29	10
2021-06-30	1
2021-06-30	2
2021-06-30	3
2021-06-30	4
2021-06-30	5
2021-06-30	6
2021-06-30	7
2021-06-30	8
2021-06-30	9
2021-06-30	10
2021-07-01	1
2021-07-01	2
2021-07-01	3
2021-07-01	4
2021-07-01	5
2021-07-01	6
2021-07-01	7
2021-07-01	8
2021-07-01	9
2021-07-01	10
2021-07-02	1
2021-07-02	2
2021-07-02	3
2021-07-02	4
2021-07-02	5
2021-07-02	6
2021-07-02	7
2021-07-02	8
2021-07-02	9
2021-07-02	10
2021-07-03	1
2021-07-03	2
2021-07-03	3
2021-07-03	4
2021-07-03	5
2021-07-03	6
2021-07-03	7
2021-07-03	8
2021-07-03	9
2021-07-03	10
2021-07-04	1
2021-07-04	2
2021-07-04	3
2021-07-04	4
2021-07-04	5
2021-07-04	6
2021-07-04	7
2021-07-04	8
2021-07-04	9
2021-07-04	10
2021-07-05	1
2021-07-05	2
2021-07-05	3
2021-07-05	4
2021-07-05	5
2021-07-05	6
2021-07-05	7
2021-07-05	8
2021-07-05	9
2021-07-05	10
2021-07-06	1
2021-07-06	2
2021-07-06	3
2021-07-06	4
2021-07-06	5
2021-07-06	6
2021-07-06	7
2021-07-06	8
2021-07-06	9
2021-07-06	10
2021-07-07	1
2021-07-07	2
2021-07-07	3
2021-07-07	4
2021-07-07	5
2021-07-07	6
2021-07-07	7
2021-07-07	8
2021-07-07	9
2021-07-07	10
2021-07-08	1
2021-07-08	2
2021-07-08	3
2021-07-08	4
2021-07-08	5
2021-07-08	6
2021-07-08	7
2021-07-08	8
2021-07-08	9
2021-07-08	10
2021-07-09	1
2021-07-09	2
2021-07-09	3
2021-07-09	4
2021-07-09	5
2021-07-09	6
2021-07-09	7
2021-07-09	8
2021-07-09	9
2021-07-09	10
2021-07-10	1
2021-07-10	2
2021-07-10	3
2021-07-10	4
2021-07-10	5
2021-07-10	6
2021-07-10	7
2021-07-10	8
2021-07-10	9
2021-07-10	10
2021-07-11	1
2021-07-11	2
2021-07-11	3
2021-07-11	4
2021-07-11	5
2021-07-11	6
2021-07-11	7
2021-07-11	8
2021-07-11	9
2021-07-11	10
2021-07-12	1
2021-07-12	2
2021-07-12	3
2021-07-12	4
2021-07-12	5
2021-07-12	6
2021-07-12	7
2021-07-12	8
2021-07-12	9
2021-07-12	10
2021-07-13	1
2021-07-13	2
2021-07-13	3
2021-07-13	4
2021-07-13	5
2021-07-13	6
2021-07-13	7
2021-07-13	8
2021-07-13	9
2021-07-13	10
2021-07-14	1
2021-07-14	2
2021-07-14	3
2021-07-14	4
2021-07-14	5
2021-07-14	6
2021-07-14	7
2021-07-14	8
2021-07-14	9
2021-07-14	10
2021-07-15	1
2021-07-15	2
2021-07-15	3
2021-07-15	4
2021-07-15	5
2021-07-15	6
2021-07-15	7
2021-07-15	8
2021-07-15	9
2021-07-15	10
2021-07-16	1
2021-07-16	2
2021-07-16	3
2021-07-16	4
2021-07-16	5
2021-07-16	6
2021-07-16	7
2021-07-16	8
2021-07-16	9
2021-07-16	10
2021-07-17	1
2021-07-17	2
2021-07-17	3
2021-07-17	4
2021-07-17	5
2021-07-17	6
2021-07-17	7
2021-07-17	8
2021-07-17	9
2021-07-17	10
2021-07-18	1
2021-07-18	2
2021-07-18	3
2021-07-18	4
2021-07-18	5
2021-07-18	6
2021-07-18	7
2021-07-18	8
2021-07-18	9
2021-07-18	10
2021-07-19	1
2021-07-19	2
2021-07-19	3
2021-07-19	4
2021-07-19	5
2021-07-19	6
2021-07-19	7
2021-07-19	8
2021-07-19	9
2021-07-19	10
2021-07-20	1
2021-07-20	2
2021-07-20	3
2021-07-20	4
2021-07-20	5
2021-07-20	6
2021-07-20	7
2021-07-20	8
2021-07-20	9
2021-07-20	10
2021-07-21	1
2021-07-21	2
2021-07-21	3
2021-07-21	4
2021-07-21	5
2021-07-21	6
2021-07-21	7
2021-07-21	8
2021-07-21	9
2021-07-21	10
2021-07-22	1
2021-07-22	2
2021-07-22	3
2021-07-22	4
2021-07-22	5
2021-07-22	6
2021-07-22	7
2021-07-22	8
2021-07-22	9
2021-07-22	10
2021-07-23	1
2021-07-23	2
2021-07-23	3
2021-07-23	4
2021-07-23	5
2021-07-23	6
2021-07-23	7
2021-07-23	8
2021-07-23	9
2021-07-23	10
2021-07-24	1
2021-07-24	2
2021-07-24	3
2021-07-24	4
2021-07-24	5
2021-07-24	6
2021-07-24	7
2021-07-24	8
2021-07-24	9
2021-07-24	10
2021-07-25	1
2021-07-25	2
2021-07-25	3
2021-07-25	4
2021-07-25	5
2021-07-25	6
2021-07-25	7
2021-07-25	8
2021-07-25	9
2021-07-25	10
2021-07-26	1
2021-07-26	2
2021-07-26	3
2021-07-26	4
2021-07-26	5
2021-07-26	6
2021-07-26	7
2021-07-26	8
2021-07-26	9
2021-07-26	10
2021-07-27	1
2021-07-27	2
2021-07-27	3
2021-07-27	4
2021-07-27	5
2021-07-27	6
2021-07-27	7
2021-07-27	8
2021-07-27	9
2021-07-27	10
2021-07-28	1
2021-07-28	2
2021-07-28	3
2021-07-28	4
2021-07-28	5
2021-07-28	6
2021-07-28	7
2021-07-28	8
2021-07-28	9
2021-07-28	10
2021-07-29	1
2021-07-29	2
2021-07-29	3
2021-07-29	4
2021-07-29	5
2021-07-29	6
2021-07-29	7
2021-07-29	8
2021-07-29	9
2021-07-29	10
2021-07-30	1
2021-07-30	2
2021-07-30	3
2021-07-30	4
2021-07-30	5
2021-07-30	6
2021-07-30	7
2021-07-30	8
2021-07-30	9
2021-07-30	10
2021-07-31	1
2021-07-31	2
2021-07-31	3
2021-07-31	4
2021-07-31	5
2021-07-31	6
2021-07-31	7
2021-07-31	8
2021-07-31	9
2021-07-31	10
2021-08-01	1
2021-08-01	2
2021-08-01	3
2021-08-01	4
2021-08-01	5
2021-08-01	6
2021-08-01	7
2021-08-01	8
2021-08-01	9
2021-08-01	10
2021-08-02	1
2021-08-02	2
2021-08-02	3
2021-08-02	4
2021-08-02	5
2021-08-02	6
2021-08-02	7
2021-08-02	8
2021-08-02	9
2021-08-02	10
2021-08-03	1
2021-08-03	2
2021-08-03	3
2021-08-03	4
2021-08-03	5
2021-08-03	6
2021-08-03	7
2021-08-03	8
2021-08-03	9
2021-08-03	10
2021-08-04	1
2021-08-04	2
2021-08-04	3
2021-08-04	4
2021-08-04	5
2021-08-04	6
2021-08-04	7
2021-08-04	8
2021-08-04	9
2021-08-04	10
2021-08-05	1
2021-08-05	2
2021-08-05	3
2021-08-05	4
2021-08-05	5
2021-08-05	6
2021-08-05	7
2021-08-05	8
2021-08-05	9
2021-08-05	10
2021-08-06	1
2021-08-06	2
2021-08-06	3
2021-08-06	4
2021-08-06	5
2021-08-06	6
2021-08-06	7
2021-08-06	8
2021-08-06	9
2021-08-06	10
2021-08-07	1
2021-08-07	2
2021-08-07	3
2021-08-07	4
2021-08-07	5
2021-08-07	6
2021-08-07	7
2021-08-07	8
2021-08-07	9
2021-08-07	10
2021-08-08	1
2021-08-08	2
2021-08-08	3
2021-08-08	4
2021-08-08	5
2021-08-08	6
2021-08-08	7
2021-08-08	8
2021-08-08	9
2021-08-08	10
2021-08-09	1
2021-08-09	2
2021-08-09	3
2021-08-09	4
2021-08-09	5
2021-08-09	6
2021-08-09	7
2021-08-09	8
2021-08-09	9
2021-08-09	10
2021-08-10	1
2021-08-10	2
2021-08-10	3
2021-08-10	4
2021-08-10	5
2021-08-10	6
2021-08-10	7
2021-08-10	8
2021-08-10	9
2021-08-10	10
2021-08-11	1
2021-08-11	2
2021-08-11	3
2021-08-11	4
2021-08-11	5
2021-08-11	6
2021-08-11	7
2021-08-11	8
2021-08-11	9
2021-08-11	10
2021-08-12	1
2021-08-12	2
2021-08-12	3
2021-08-12	4
2021-08-12	5
2021-08-12	6
2021-08-12	7
2021-08-12	8
2021-08-12	9
2021-08-12	10
2021-08-13	1
2021-08-13	2
2021-08-13	3
2021-08-13	4
2021-08-13	5
2021-08-13	6
2021-08-13	7
2021-08-13	8
2021-08-13	9
2021-08-13	10
2021-08-14	1
2021-08-14	2
2021-08-14	3
2021-08-14	4
2021-08-14	5
2021-08-14	6
2021-08-14	7
2021-08-14	8
2021-08-14	9
2021-08-14	10
2021-08-15	1
2021-08-15	2
2021-08-15	3
2021-08-15	4
2021-08-15	5
2021-08-15	6
2021-08-15	7
2021-08-15	8
2021-08-15	9
2021-08-15	10
2021-08-16	1
2021-08-16	2
2021-08-16	3
2021-08-16	4
2021-08-16	5
2021-08-16	6
2021-08-16	7
2021-08-16	8
2021-08-16	9
2021-08-16	10
2021-08-17	1
2021-08-17	2
2021-08-17	3
2021-08-17	4
2021-08-17	5
2021-08-17	6
2021-08-17	7
2021-08-17	8
2021-08-17	9
2021-08-17	10
2021-08-18	1
2021-08-18	2
2021-08-18	3
2021-08-18	4
2021-08-18	5
2021-08-18	6
2021-08-18	7
2021-08-18	8
2021-08-18	9
2021-08-18	10
2021-08-19	1
2021-08-19	2
2021-08-19	3
2021-08-19	4
2021-08-19	5
2021-08-19	6
2021-08-19	7
2021-08-19	8
2021-08-19	9
2021-08-19	10
2021-08-20	1
2021-08-20	2
2021-08-20	3
2021-08-20	4
2021-08-20	5
2021-08-20	6
2021-08-20	7
2021-08-20	8
2021-08-20	9
2021-08-20	10
2021-08-21	1
2021-08-21	2
2021-08-21	3
2021-08-21	4
2021-08-21	5
2021-08-21	6
2021-08-21	7
2021-08-21	8
2021-08-21	9
2021-08-21	10
2021-08-22	1
2021-08-22	2
2021-08-22	3
2021-08-22	4
2021-08-22	5
2021-08-22	6
2021-08-22	7
2021-08-22	8
2021-08-22	9
2021-08-22	10
2021-08-23	1
2021-08-23	2
2021-08-23	3
2021-08-23	4
2021-08-23	5
2021-08-23	6
2021-08-23	7
2021-08-23	8
2021-08-23	9
2021-08-23	10
2021-08-24	1
2021-08-24	2
2021-08-24	3
2021-08-24	4
2021-08-24	5
2021-08-24	6
2021-08-24	7
2021-08-24	8
2021-08-24	9
2021-08-24	10
2021-08-25	1
2021-08-25	2
2021-08-25	3
2021-08-25	4
2021-08-25	5
2021-08-25	6
2021-08-25	7
2021-08-25	8
2021-08-25	9
2021-08-25	10
2021-08-26	1
2021-08-26	2
2021-08-26	3
2021-08-26	4
2021-08-26	5
2021-08-26	6
2021-08-26	7
2021-08-26	8
2021-08-26	9
2021-08-26	10
2021-08-27	1
2021-08-27	2
2021-08-27	3
2021-08-27	4
2021-08-27	5
2021-08-27	6
2021-08-27	7
2021-08-27	8
2021-08-27	9
2021-08-27	10
2021-08-28	1
2021-08-28	2
2021-08-28	3
2021-08-28	4
2021-08-28	5
2021-08-28	6
2021-08-28	7
2021-08-28	8
2021-08-28	9
2021-08-28	10
2021-08-29	1
2021-08-29	2
2021-08-29	3
2021-08-29	4
2021-08-29	5
2021-08-29	6
2021-08-29	7
2021-08-29	8
2021-08-29	9
2021-08-29	10
2021-08-30	1
2021-08-30	2
2021-08-30	3
2021-08-30	4
2021-08-30	5
2021-08-30	6
2021-08-30	7
2021-08-30	8
2021-08-30	9
2021-08-30	10
2021-08-31	1
2021-08-31	2
2021-08-31	3
2021-08-31	4
2021-08-31	5
2021-08-31	6
2021-08-31	7
2021-08-31	8
2021-08-31	9
2021-08-31	10
2021-09-01	1
2021-09-01	2
2021-09-01	3
2021-09-01	4
2021-09-01	5
2021-09-01	6
2021-09-01	7
2021-09-01	8
2021-09-01	9
2021-09-01	10
2021-09-02	1
2021-09-02	2
2021-09-02	3
2021-09-02	4
2021-09-02	5
2021-09-02	6
2021-09-02	7
2021-09-02	8
2021-09-02	9
2021-09-02	10
2021-09-03	1
2021-09-03	2
2021-09-03	3
2021-09-03	4
2021-09-03	5
2021-09-03	6
2021-09-03	7
2021-09-03	8
2021-09-03	9
2021-09-03	10
2021-09-04	1
2021-09-04	2
2021-09-04	3
2021-09-04	4
2021-09-04	5
2021-09-04	6
2021-09-04	7
2021-09-04	8
2021-09-04	9
2021-09-04	10
2021-09-05	1
2021-09-05	2
2021-09-05	3
2021-09-05	4
2021-09-05	5
2021-09-05	6
2021-09-05	7
2021-09-05	8
2021-09-05	9
2021-09-05	10
2021-09-06	1
2021-09-06	2
2021-09-06	3
2021-09-06	4
2021-09-06	5
2021-09-06	6
2021-09-06	7
2021-09-06	8
2021-09-06	9
2021-09-06	10
2021-09-07	1
2021-09-07	2
2021-09-07	3
2021-09-07	4
2021-09-07	5
2021-09-07	6
2021-09-07	7
2021-09-07	8
2021-09-07	9
2021-09-07	10
2021-09-08	1
2021-09-08	2
2021-09-08	3
2021-09-08	4
2021-09-08	5
2021-09-08	6
2021-09-08	7
2021-09-08	8
2021-09-08	9
2021-09-08	10
2021-09-09	1
2021-09-09	2
2021-09-09	3
2021-09-09	4
2021-09-09	5
2021-09-09	6
2021-09-09	7
2021-09-09	8
2021-09-09	9
2021-09-09	10
2021-09-10	1
2021-09-10	2
2021-09-10	3
2021-09-10	4
2021-09-10	5
2021-09-10	6
2021-09-10	7
2021-09-10	8
2021-09-10	9
2021-09-10	10
2021-09-11	1
2021-09-11	2
2021-09-11	3
2021-09-11	4
2021-09-11	5
2021-09-11	6
2021-09-11	7
2021-09-11	8
2021-09-11	9
2021-09-11	10
2021-09-12	1
2021-09-12	2
2021-09-12	3
2021-09-12	4
2021-09-12	5
2021-09-12	6
2021-09-12	7
2021-09-12	8
2021-09-12	9
2021-09-12	10
2021-09-13	1
2021-09-13	2
2021-09-13	3
2021-09-13	4
2021-09-13	5
2021-09-13	6
2021-09-13	7
2021-09-13	8
2021-09-13	9
2021-09-13	10
2021-09-14	1
2021-09-14	2
2021-09-14	3
2021-09-14	4
2021-09-14	5
2021-09-14	6
2021-09-14	7
2021-09-14	8
2021-09-14	9
2021-09-14	10
2021-09-15	1
2021-09-15	2
2021-09-15	3
2021-09-15	4
2021-09-15	5
2021-09-15	6
2021-09-15	7
2021-09-15	8
2021-09-15	9
2021-09-15	10
2021-09-16	1
2021-09-16	2
2021-09-16	3
2021-09-16	4
2021-09-16	5
2021-09-16	6
2021-09-16	7
2021-09-16	8
2021-09-16	9
2021-09-16	10
2021-09-17	1
2021-09-17	2
2021-09-17	3
2021-09-17	4
2021-09-17	5
2021-09-17	6
2021-09-17	7
2021-09-17	8
2021-09-17	9
2021-09-17	10
2021-09-18	1
2021-09-18	2
2021-09-18	3
2021-09-18	4
2021-09-18	5
2021-09-18	6
2021-09-18	7
2021-09-18	8
2021-09-18	9
2021-09-18	10
2021-09-19	1
2021-09-19	2
2021-09-19	3
2021-09-19	4
2021-09-19	5
2021-09-19	6
2021-09-19	7
2021-09-19	8
2021-09-19	9
2021-09-19	10
2021-09-20	1
2021-09-20	2
2021-09-20	3
2021-09-20	4
2021-09-20	5
2021-09-20	6
2021-09-20	7
2021-09-20	8
2021-09-20	9
2021-09-20	10
2021-09-21	1
2021-09-21	2
2021-09-21	3
2021-09-21	4
2021-09-21	5
2021-09-21	6
2021-09-21	7
2021-09-21	8
2021-09-21	9
2021-09-21	10
2021-09-22	1
2021-09-22	2
2021-09-22	3
2021-09-22	4
2021-09-22	5
2021-09-22	6
2021-09-22	7
2021-09-22	8
2021-09-22	9
2021-09-22	10
2021-09-23	1
2021-09-23	2
2021-09-23	3
2021-09-23	4
2021-09-23	5
2021-09-23	6
2021-09-23	7
2021-09-23	8
2021-09-23	9
2021-09-23	10
2021-09-24	1
2021-09-24	2
2021-09-24	3
2021-09-24	4
2021-09-24	5
2021-09-24	6
2021-09-24	7
2021-09-24	8
2021-09-24	9
2021-09-24	10
2021-09-25	1
2021-09-25	2
2021-09-25	3
2021-09-25	4
2021-09-25	5
2021-09-25	6
2021-09-25	7
2021-09-25	8
2021-09-25	9
2021-09-25	10
2021-09-26	1
2021-09-26	2
2021-09-26	3
2021-09-26	4
2021-09-26	5
2021-09-26	6
2021-09-26	7
2021-09-26	8
2021-09-26	9
2021-09-26	10
\.


--
-- TOC entry 2810 (class 2606 OID 16396)
-- Name: Arriendo Arriendo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Arriendo"
    ADD CONSTRAINT "Arriendo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 16481)
-- Name: Baño Baño_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Baño"
    ADD CONSTRAINT "Baño_pkey" PRIMARY KEY (edificio_nombre, "nroPiso", "número");


--
-- TOC entry 2844 (class 2606 OID 16548)
-- Name: Calefaccion Calefaccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calefaccion"
    ADD CONSTRAINT "Calefaccion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2846 (class 2606 OID 16561)
-- Name: Computador Computador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Computador"
    ADD CONSTRAINT "Computador_pkey" PRIMARY KEY (id);


--
-- TOC entry 2842 (class 2606 OID 16535)
-- Name: Data Data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Data"
    ADD CONSTRAINT "Data_pkey" PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 16449)
-- Name: Edificio Edificio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Edificio"
    ADD CONSTRAINT "Edificio_pkey" PRIMARY KEY ("Nombre");


--
-- TOC entry 2833 (class 2606 OID 16495)
-- Name: Instrumento Instrumento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Instrumento"
    ADD CONSTRAINT "Instrumento_pkey" PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 16781)
-- Name: Instrumento Instrumento_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Instrumento"
    ADD CONSTRAINT "Instrumento_unique" UNIQUE (id);


--
-- TOC entry 2815 (class 2606 OID 16404)
-- Name: Persona Persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT "Persona_pkey" PRIMARY KEY (rut);


--
-- TOC entry 2848 (class 2606 OID 16575)
-- Name: Pizarra Pizarra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pizarra"
    ADD CONSTRAINT "Pizarra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 16509)
-- Name: Profesor Profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profesor"
    ADD CONSTRAINT "Profesor_pkey" PRIMARY KEY (rut);


--
-- TOC entry 2819 (class 2606 OID 16441)
-- Name: Sala Sala_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sala"
    ADD CONSTRAINT "Sala_pkey" PRIMARY KEY ("Nombre");


--
-- TOC entry 2840 (class 2606 OID 16522)
-- Name: Secretaria Secretaria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Secretaria"
    ADD CONSTRAINT "Secretaria_pkey" PRIMARY KEY (rut);


--
-- TOC entry 2812 (class 2606 OID 16777)
-- Name: Arriendo arriendo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Arriendo"
    ADD CONSTRAINT arriendo_unique UNIQUE (id);


--
-- TOC entry 2826 (class 2606 OID 16779)
-- Name: Edificio edificio_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Edificio"
    ADD CONSTRAINT edificio_unique UNIQUE ("Nombre");


--
-- TOC entry 2808 (class 2606 OID 16388)
-- Name: horario horario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (dia, bloque);


--
-- TOC entry 2822 (class 2606 OID 16783)
-- Name: Sala sala_unuique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sala"
    ADD CONSTRAINT sala_unuique UNIQUE ("Nombre");


--
-- TOC entry 2813 (class 1259 OID 16425)
-- Name: fki_arriendo_persona; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_arriendo_persona ON public."Arriendo" USING btree (persona_rut);


--
-- TOC entry 2827 (class 1259 OID 16467)
-- Name: fki_arriendo_tiene; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_arriendo_tiene ON public."Tiene" USING btree (arriendo_id);


--
-- TOC entry 2816 (class 1259 OID 16419)
-- Name: fki_asociado_arriendo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_asociado_arriendo ON public."Asociado" USING btree (arriendo_id);


--
-- TOC entry 2817 (class 1259 OID 16413)
-- Name: fki_asociado_horario1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_asociado_horario1 ON public."Asociado" USING btree (horario_dia, horario_bloque);


--
-- TOC entry 2831 (class 1259 OID 16487)
-- Name: fki_baño_edificio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_baño_edificio" ON public."Baño" USING btree (edificio_nombre);


--
-- TOC entry 2836 (class 1259 OID 16501)
-- Name: fki_instrumento_sala; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instrumento_sala ON public."Instrumento" USING btree (sala_nombre);


--
-- TOC entry 2820 (class 1259 OID 16455)
-- Name: fki_sala_edificio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_sala_edificio ON public."Sala" USING btree ("Edificio_nombre");


--
-- TOC entry 2828 (class 1259 OID 16473)
-- Name: fki_sala_tiene; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_sala_tiene ON public."Tiene" USING btree (sala_nombre);


--
-- TOC entry 2849 (class 2606 OID 16420)
-- Name: Arriendo arriendo_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Arriendo"
    ADD CONSTRAINT arriendo_persona FOREIGN KEY (persona_rut) REFERENCES public."Persona"(rut) ON DELETE CASCADE;


--
-- TOC entry 2853 (class 2606 OID 16462)
-- Name: Tiene arriendo_tiene; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tiene"
    ADD CONSTRAINT arriendo_tiene FOREIGN KEY (arriendo_id) REFERENCES public."Arriendo"(id) ON DELETE CASCADE;


--
-- TOC entry 2851 (class 2606 OID 16414)
-- Name: Asociado asociado_arriendo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asociado"
    ADD CONSTRAINT asociado_arriendo FOREIGN KEY (arriendo_id) REFERENCES public."Arriendo"(id) ON DELETE CASCADE;


--
-- TOC entry 2850 (class 2606 OID 16408)
-- Name: Asociado asociado_horario1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asociado"
    ADD CONSTRAINT asociado_horario1 FOREIGN KEY (horario_dia, horario_bloque) REFERENCES public.horario(dia, bloque) ON DELETE CASCADE;


--
-- TOC entry 2855 (class 2606 OID 16482)
-- Name: Baño baño_edificio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Baño"
    ADD CONSTRAINT "baño_edificio" FOREIGN KEY (edificio_nombre) REFERENCES public."Edificio"("Nombre") ON DELETE CASCADE;


--
-- TOC entry 2859 (class 2606 OID 16536)
-- Name: Data herencia_instrumento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Data"
    ADD CONSTRAINT herencia_instrumento FOREIGN KEY (id) REFERENCES public."Instrumento"(id) ON DELETE CASCADE;


--
-- TOC entry 2860 (class 2606 OID 16549)
-- Name: Calefaccion herencia_instrumento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calefaccion"
    ADD CONSTRAINT herencia_instrumento FOREIGN KEY (id) REFERENCES public."Instrumento"(id) ON DELETE CASCADE;


--
-- TOC entry 2861 (class 2606 OID 16563)
-- Name: Computador herencia_instrumento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Computador"
    ADD CONSTRAINT herencia_instrumento FOREIGN KEY (id) REFERENCES public."Instrumento"(id) ON DELETE CASCADE;


--
-- TOC entry 2862 (class 2606 OID 16576)
-- Name: Pizarra herencia_instrumento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pizarra"
    ADD CONSTRAINT herencia_instrumento FOREIGN KEY (id) REFERENCES public."Instrumento"(id) ON DELETE CASCADE;


--
-- TOC entry 2857 (class 2606 OID 16510)
-- Name: Profesor herencia_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profesor"
    ADD CONSTRAINT herencia_persona FOREIGN KEY (rut) REFERENCES public."Persona"(rut) ON DELETE CASCADE;


--
-- TOC entry 2858 (class 2606 OID 16523)
-- Name: Secretaria herencia_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Secretaria"
    ADD CONSTRAINT herencia_persona FOREIGN KEY (rut) REFERENCES public."Persona"(rut) ON DELETE CASCADE;


--
-- TOC entry 2856 (class 2606 OID 16496)
-- Name: Instrumento instrumento_sala; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Instrumento"
    ADD CONSTRAINT instrumento_sala FOREIGN KEY (sala_nombre) REFERENCES public."Sala"("Nombre") ON DELETE CASCADE;


--
-- TOC entry 2852 (class 2606 OID 16450)
-- Name: Sala sala_edificio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sala"
    ADD CONSTRAINT sala_edificio FOREIGN KEY ("Edificio_nombre") REFERENCES public."Edificio"("Nombre") ON DELETE CASCADE;


--
-- TOC entry 2854 (class 2606 OID 16468)
-- Name: Tiene sala_tiene; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tiene"
    ADD CONSTRAINT sala_tiene FOREIGN KEY (sala_nombre) REFERENCES public."Sala"("Nombre") ON DELETE CASCADE;


-- Completed on 2019-06-04 12:49:16 -04

--
-- PostgreSQL database dump complete
--

