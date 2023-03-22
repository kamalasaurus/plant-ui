--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Homebrew)
-- Dumped by pg_dump version 14.6 (Homebrew)

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
-- Name: accessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accessions (
    id bigint NOT NULL,
    population_id bigint NOT NULL,
    accession_number integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: accessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.accessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: accessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.accessions_id_seq OWNED BY public.accessions.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: cytometry_readings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cytometry_readings (
    id bigint NOT NULL,
    accession_id bigint NOT NULL,
    minimum_peak integer,
    mean_f2 double precision,
    peak_pattern integer[] DEFAULT '{}'::integer[],
    chromosome_count integer[] DEFAULT '{}'::integer[],
    chromosome_count_certain boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: cytometry_readings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cytometry_readings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cytometry_readings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cytometry_readings_id_seq OWNED BY public.cytometry_readings.id;


--
-- Name: leaf_communities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.leaf_communities (
    id bigint NOT NULL,
    population_id bigint NOT NULL,
    leaf_otu_1 boolean,
    leaf_otu_2 boolean,
    leaf_otu_3 boolean,
    leaf_otu_4 boolean,
    leaf_otu_5 boolean,
    leaf_otu_6 boolean,
    leaf_otu_8 boolean,
    leaf_otu_9 boolean,
    leaf_otu_10 boolean,
    leaf_otu_11 boolean,
    leaf_otu_12 boolean,
    leaf_otu_13 boolean,
    leaf_otu_14 boolean,
    leaf_otu_15 boolean,
    leaf_otu_16 boolean,
    leaf_otu_17 boolean,
    leaf_otu_18 boolean,
    leaf_otu_22 boolean,
    leaf_otu_23 boolean,
    leaf_otu_25 boolean,
    leaf_otu_27 boolean,
    leaf_otu_28 boolean,
    leaf_otu_29 boolean,
    leaf_otu_30 boolean,
    leaf_otu_31 boolean,
    leaf_otu_32 boolean,
    leaf_otu_33 boolean,
    leaf_otu_34 boolean,
    leaf_otu_35 boolean,
    leaf_otu_36 boolean,
    leaf_otu_37 boolean,
    leaf_otu_38 boolean,
    leaf_otu_42 boolean,
    leaf_otu_44 boolean,
    leaf_otu_51 boolean,
    leaf_otu_52 boolean,
    leaf_otu_57 boolean,
    leaf_otu_58 boolean,
    leaf_otu_63 boolean,
    leaf_otu_66 boolean,
    leaf_otu_67 boolean,
    leaf_otu_68 boolean,
    leaf_otu_70 boolean,
    leaf_otu_73 boolean,
    leaf_otu_74 boolean,
    leaf_otu_77 boolean,
    leaf_otu_78 boolean,
    leaf_otu_84 boolean,
    leaf_otu_89 boolean,
    leaf_otu_93 boolean,
    leaf_otu_94 boolean,
    leaf_otu_96 boolean,
    leaf_otu_100 boolean,
    leaf_otu_101 boolean,
    leaf_otu_109 boolean,
    leaf_otu_115 boolean,
    leaf_otu_116 boolean,
    leaf_otu_117 boolean,
    leaf_otu_120 boolean,
    leaf_otu_137 boolean,
    leaf_otu_152 boolean,
    leaf_otu_157 boolean,
    leaf_otu_179 boolean,
    leaf_otu_246 boolean,
    leaf_otu_365 boolean,
    leaf_microbiota_richness double precision,
    leaf_microbiota_shannon double precision,
    leaf_microbiota_pcoa1 double precision,
    leaf_microbiota_pcoa2 double precision,
    leaf_pathobiota_richness double precision,
    leaf_pathobiota_shannon double precision,
    leaf_pathobiota_pcoa1 double precision,
    leaf_pathobiota_pcoa2 double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: leaf_communities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.leaf_communities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: leaf_communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.leaf_communities_id_seq OWNED BY public.leaf_communities.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locations (
    id bigint NOT NULL,
    latitude double precision,
    longitude double precision,
    elevation integer,
    mean_annual_temperature double precision,
    mean_coldest_month_temperature double precision,
    winter_precipitations double precision,
    summer_precipitations double precision,
    autumn_precipitations double precision,
    spring_precipitations double precision,
    nitrogen double precision,
    carbon_nitrogen_ratio double precision,
    ph double precision,
    phosphorus double precision,
    calcium double precision,
    magnesium double precision,
    sodium double precision,
    potassium double precision,
    iron double precision,
    aluminium double precision,
    water_holding_capacity double precision,
    organic_carbon double precision,
    soil_organic_matter double precision,
    manganese double precision,
    population_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: plant_neighborhoods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plant_neighborhoods (
    id bigint NOT NULL,
    population_id bigint NOT NULL,
    plant_otu_1 integer,
    plant_otu_3 integer,
    plant_otu_4 integer,
    plant_otu_7 integer,
    plant_otu_8 integer,
    plant_otu_10 integer,
    plant_otu_15 integer,
    plant_otu_16 integer,
    plant_otu_18 integer,
    plant_otu_20 integer,
    plant_otu_27 integer,
    plant_otu_46 integer,
    plant_otu_49 integer,
    plant_otu_65 integer,
    plant_otu_67 integer,
    plant_otu_71 integer,
    plant_otu_72 integer,
    plant_otu_78 integer,
    plant_otu_83 integer,
    plant_otu_87 integer,
    plant_otu_88 integer,
    plant_otu_100 integer,
    plant_otu_109 integer,
    plant_otu_113 integer,
    plant_otu_114 integer,
    plant_otu_132 integer,
    plant_otu_136 integer,
    plant_otu_143 integer,
    plant_otu_145 integer,
    plant_otu_146 integer,
    plant_otu_147 integer,
    plant_otu_149 integer,
    plant_otu_154 integer,
    plant_otu_159 integer,
    plant_otu_179 integer,
    plant_otu_192 integer,
    plant_otu_196 integer,
    plant_otu_198 integer,
    plant_otu_202 integer,
    plant_otu_203 integer,
    plant_otu_204 integer,
    plant_otu_216 integer,
    plant_otu_223 integer,
    plant_otu_234 integer,
    plant_richness double precision,
    plant_shannon double precision,
    plant_pcoa1 double precision,
    plant_pcoa2 double precision,
    plant_pcoa3 double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: plant_neighborhoods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plant_neighborhoods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plant_neighborhoods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plant_neighborhoods_id_seq OWNED BY public.plant_neighborhoods.id;


--
-- Name: plant_samples; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plant_samples (
    id bigint NOT NULL,
    species character varying NOT NULL,
    label character varying NOT NULL,
    storage_method character varying NOT NULL,
    quantity integer NOT NULL,
    accession_tray character varying,
    replication_tray integer,
    "row" character varying,
    "column" integer,
    sowing_date date,
    harvest_date date,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    accession_id bigint
);


--
-- Name: plant_samples_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plant_samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plant_samples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plant_samples_id_seq OWNED BY public.plant_samples.id;


--
-- Name: populations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.populations (
    id bigint NOT NULL,
    population_name character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    subpopulation character varying NOT NULL
);


--
-- Name: populations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.populations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: populations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.populations_id_seq OWNED BY public.populations.id;


--
-- Name: root_communities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.root_communities (
    id bigint NOT NULL,
    population_id bigint NOT NULL,
    root_otu_1 boolean,
    root_otu_2 boolean,
    root_otu_3 boolean,
    root_otu_4 boolean,
    root_otu_5 boolean,
    root_otu_6 boolean,
    root_otu_7 boolean,
    root_otu_9 boolean,
    root_otu_11 boolean,
    root_otu_16 boolean,
    root_otu_17 boolean,
    root_otu_19 boolean,
    root_otu_20 boolean,
    root_otu_21 boolean,
    root_otu_24 boolean,
    root_otu_26 boolean,
    root_otu_28 boolean,
    root_otu_30 boolean,
    root_otu_41 boolean,
    root_otu_46 boolean,
    root_otu_49 boolean,
    root_otu_50 boolean,
    root_otu_51 boolean,
    root_otu_58 boolean,
    root_otu_63 boolean,
    root_otu_64 boolean,
    root_otu_70 boolean,
    root_otu_75 boolean,
    root_otu_76 boolean,
    root_otu_100 boolean,
    root_otu_102 boolean,
    root_otu_114 boolean,
    root_otu_121 boolean,
    root_otu_122 boolean,
    root_otu_144 boolean,
    root_otu_146 boolean,
    root_otu_156 boolean,
    root_otu_163 boolean,
    root_otu_174 boolean,
    root_otu_199 boolean,
    root_otu_238 boolean,
    root_otu_258 boolean,
    root_otu_284 boolean,
    root_otu_989 boolean,
    root_microbiota_richness double precision,
    root_microbiota_shannon double precision,
    root_microbiota_pcoa1 double precision,
    root_microbiota_pcoa2 double precision,
    root_pathobiota_richness double precision,
    root_pathobiota_shannon double precision,
    root_pathobiota_pcoa2 double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: root_communities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.root_communities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: root_communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.root_communities_id_seq OWNED BY public.root_communities.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: seedboxes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.seedboxes (
    id bigint NOT NULL,
    name character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: seedboxes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seedboxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seedboxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.seedboxes_id_seq OWNED BY public.seedboxes.id;


--
-- Name: seeds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.seeds (
    id bigint NOT NULL,
    species character varying NOT NULL,
    generation integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    parent_id bigint,
    accession_id bigint
);


--
-- Name: seeds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seeds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.seeds_id_seq OWNED BY public.seeds.id;


--
-- Name: seeds_plant_samples; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.seeds_plant_samples (
    id bigint NOT NULL,
    seed_id bigint,
    plant_sample_id bigint
);


--
-- Name: seeds_plant_samples_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seeds_plant_samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seeds_plant_samples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.seeds_plant_samples_id_seq OWNED BY public.seeds_plant_samples.id;


--
-- Name: tubes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tubes (
    id bigint NOT NULL,
    seed_id bigint NOT NULL,
    seedbox_id bigint NOT NULL,
    "position" integer NOT NULL,
    volume numeric,
    count integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: tubes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tubes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tubes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tubes_id_seq OWNED BY public.tubes.id;


--
-- Name: accessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessions ALTER COLUMN id SET DEFAULT nextval('public.accessions_id_seq'::regclass);


--
-- Name: cytometry_readings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cytometry_readings ALTER COLUMN id SET DEFAULT nextval('public.cytometry_readings_id_seq'::regclass);


--
-- Name: leaf_communities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.leaf_communities ALTER COLUMN id SET DEFAULT nextval('public.leaf_communities_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: plant_neighborhoods id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plant_neighborhoods ALTER COLUMN id SET DEFAULT nextval('public.plant_neighborhoods_id_seq'::regclass);


--
-- Name: plant_samples id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plant_samples ALTER COLUMN id SET DEFAULT nextval('public.plant_samples_id_seq'::regclass);


--
-- Name: populations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.populations ALTER COLUMN id SET DEFAULT nextval('public.populations_id_seq'::regclass);


--
-- Name: root_communities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.root_communities ALTER COLUMN id SET DEFAULT nextval('public.root_communities_id_seq'::regclass);


--
-- Name: seedboxes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seedboxes ALTER COLUMN id SET DEFAULT nextval('public.seedboxes_id_seq'::regclass);


--
-- Name: seeds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds ALTER COLUMN id SET DEFAULT nextval('public.seeds_id_seq'::regclass);


--
-- Name: seeds_plant_samples id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds_plant_samples ALTER COLUMN id SET DEFAULT nextval('public.seeds_plant_samples_id_seq'::regclass);


--
-- Name: tubes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tubes ALTER COLUMN id SET DEFAULT nextval('public.tubes_id_seq'::regclass);


--
-- Data for Name: accessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.accessions (id, population_id, accession_number, created_at, updated_at) FROM stdin;
1	1	1	2022-10-05 22:04:16.751944	2022-10-05 22:04:16.751944
2	1	2	2022-10-05 22:04:16.810371	2022-10-05 22:04:16.810371
3	1	3	2022-10-05 22:04:16.818371	2022-10-05 22:04:16.818371
4	1	4	2022-10-05 22:04:16.825073	2022-10-05 22:04:16.825073
5	1	5	2022-10-05 22:04:16.833516	2022-10-05 22:04:16.833516
6	1	6	2022-10-05 22:04:16.839703	2022-10-05 22:04:16.839703
7	1	7	2022-10-05 22:04:16.84682	2022-10-05 22:04:16.84682
8	1	8	2022-10-05 22:04:16.853471	2022-10-05 22:04:16.853471
9	1	9	2022-10-05 22:04:16.858698	2022-10-05 22:04:16.858698
10	1	10	2022-10-05 22:04:16.866932	2022-10-05 22:04:16.866932
11	11	1	2022-10-05 22:04:16.872646	2022-10-05 22:04:16.872646
12	11	2	2022-10-05 22:04:16.880032	2022-10-05 22:04:16.880032
13	11	3	2022-10-05 22:04:16.893103	2022-10-05 22:04:16.893103
14	11	4	2022-10-05 22:04:16.90237	2022-10-05 22:04:16.90237
15	11	6	2022-10-05 22:04:16.908411	2022-10-05 22:04:16.908411
16	11	10	2022-10-05 22:04:16.914344	2022-10-05 22:04:16.914344
17	11	11	2022-10-05 22:04:16.9195	2022-10-05 22:04:16.9195
18	11	13	2022-10-05 22:04:16.925398	2022-10-05 22:04:16.925398
19	19	2	2022-10-05 22:04:16.93101	2022-10-05 22:04:16.93101
20	19	4	2022-10-05 22:04:16.936204	2022-10-05 22:04:16.936204
21	19	5	2022-10-05 22:04:16.942395	2022-10-05 22:04:16.942395
22	19	7	2022-10-05 22:04:16.948931	2022-10-05 22:04:16.948931
23	19	8	2022-10-05 22:04:16.954781	2022-10-05 22:04:16.954781
24	19	9	2022-10-05 22:04:16.962062	2022-10-05 22:04:16.962062
25	19	10	2022-10-05 22:04:16.967984	2022-10-05 22:04:16.967984
26	19	11	2022-10-05 22:04:16.976917	2022-10-05 22:04:16.976917
27	27	1	2022-10-05 22:04:16.986844	2022-10-05 22:04:16.986844
28	27	2	2022-10-05 22:04:16.994215	2022-10-05 22:04:16.994215
29	27	3	2022-10-05 22:04:17.000543	2022-10-05 22:04:17.000543
30	27	4	2022-10-05 22:04:17.006137	2022-10-05 22:04:17.006137
31	27	5	2022-10-05 22:04:17.012364	2022-10-05 22:04:17.012364
32	27	6	2022-10-05 22:04:17.018142	2022-10-05 22:04:17.018142
33	27	7	2022-10-05 22:04:17.023595	2022-10-05 22:04:17.023595
34	27	8	2022-10-05 22:04:17.030385	2022-10-05 22:04:17.030385
35	27	9	2022-10-05 22:04:17.03609	2022-10-05 22:04:17.03609
36	27	10	2022-10-05 22:04:17.042266	2022-10-05 22:04:17.042266
37	37	2	2022-10-05 22:04:17.04838	2022-10-05 22:04:17.04838
38	37	3	2022-10-05 22:04:17.053944	2022-10-05 22:04:17.053944
39	37	4	2022-10-05 22:04:17.061159	2022-10-05 22:04:17.061159
40	37	5	2022-10-05 22:04:17.067312	2022-10-05 22:04:17.067312
41	37	8	2022-10-05 22:04:17.072844	2022-10-05 22:04:17.072844
42	37	14	2022-10-05 22:04:17.079432	2022-10-05 22:04:17.079432
43	37	15	2022-10-05 22:04:17.085041	2022-10-05 22:04:17.085041
44	37	16	2022-10-05 22:04:17.092238	2022-10-05 22:04:17.092238
45	37	17	2022-10-05 22:04:17.098922	2022-10-05 22:04:17.098922
46	46	1	2022-10-05 22:04:17.105178	2022-10-05 22:04:17.105178
47	46	2	2022-10-05 22:04:17.116822	2022-10-05 22:04:17.116822
48	46	3	2022-10-05 22:04:17.122546	2022-10-05 22:04:17.122546
49	46	4	2022-10-05 22:04:17.128463	2022-10-05 22:04:17.128463
50	46	5	2022-10-05 22:04:17.133896	2022-10-05 22:04:17.133896
51	46	6	2022-10-05 22:04:17.139319	2022-10-05 22:04:17.139319
52	46	7	2022-10-05 22:04:17.145657	2022-10-05 22:04:17.145657
53	46	8	2022-10-05 22:04:17.151258	2022-10-05 22:04:17.151258
54	46	9	2022-10-05 22:04:17.156572	2022-10-05 22:04:17.156572
55	46	10	2022-10-05 22:04:17.163395	2022-10-05 22:04:17.163395
56	56	1	2022-10-05 22:04:17.169262	2022-10-05 22:04:17.169262
57	56	2	2022-10-05 22:04:17.174781	2022-10-05 22:04:17.174781
58	56	3	2022-10-05 22:04:17.182334	2022-10-05 22:04:17.182334
59	56	4	2022-10-05 22:04:17.187711	2022-10-05 22:04:17.187711
60	56	5	2022-10-05 22:04:17.19453	2022-10-05 22:04:17.19453
61	56	6	2022-10-05 22:04:17.200526	2022-10-05 22:04:17.200526
62	56	7	2022-10-05 22:04:17.205936	2022-10-05 22:04:17.205936
63	56	8	2022-10-05 22:04:17.212585	2022-10-05 22:04:17.212585
64	56	9	2022-10-05 22:04:17.217802	2022-10-05 22:04:17.217802
65	56	10	2022-10-05 22:04:17.223106	2022-10-05 22:04:17.223106
66	56	11	2022-10-05 22:04:17.228515	2022-10-05 22:04:17.228515
67	67	1	2022-10-05 22:04:17.234718	2022-10-05 22:04:17.234718
68	67	2	2022-10-05 22:04:17.240056	2022-10-05 22:04:17.240056
69	67	3	2022-10-05 22:04:17.246344	2022-10-05 22:04:17.246344
70	67	4	2022-10-05 22:04:17.252819	2022-10-05 22:04:17.252819
71	67	5	2022-10-05 22:04:17.259335	2022-10-05 22:04:17.259335
72	67	6	2022-10-05 22:04:17.266278	2022-10-05 22:04:17.266278
73	67	7	2022-10-05 22:04:17.27193	2022-10-05 22:04:17.27193
74	67	8	2022-10-05 22:04:17.279814	2022-10-05 22:04:17.279814
75	67	9	2022-10-05 22:04:17.285577	2022-10-05 22:04:17.285577
76	67	10	2022-10-05 22:04:17.293078	2022-10-05 22:04:17.293078
77	77	1	2022-10-05 22:04:17.299351	2022-10-05 22:04:17.299351
78	77	9	2022-10-05 22:04:17.304921	2022-10-05 22:04:17.304921
79	77	10	2022-10-05 22:04:17.311705	2022-10-05 22:04:17.311705
80	80	1	2022-10-05 22:04:17.317701	2022-10-05 22:04:17.317701
81	80	2	2022-10-05 22:04:17.327672	2022-10-05 22:04:17.327672
82	80	3	2022-10-05 22:04:17.333983	2022-10-05 22:04:17.333983
83	80	4	2022-10-05 22:04:17.340219	2022-10-05 22:04:17.340219
84	80	5	2022-10-05 22:04:17.34847	2022-10-05 22:04:17.34847
85	80	6	2022-10-05 22:04:17.354502	2022-10-05 22:04:17.354502
86	80	9	2022-10-05 22:04:17.360927	2022-10-05 22:04:17.360927
87	80	11	2022-10-05 22:04:17.367065	2022-10-05 22:04:17.367065
88	88	1	2022-10-05 22:04:17.372468	2022-10-05 22:04:17.372468
89	88	2	2022-10-05 22:04:17.379988	2022-10-05 22:04:17.379988
90	88	7	2022-10-05 22:04:17.386486	2022-10-05 22:04:17.386486
91	88	9	2022-10-05 22:04:17.392294	2022-10-05 22:04:17.392294
92	92	1	2022-10-05 22:04:17.39822	2022-10-05 22:04:17.39822
93	92	2	2022-10-05 22:04:17.403948	2022-10-05 22:04:17.403948
94	92	3	2022-10-05 22:04:17.409851	2022-10-05 22:04:17.409851
95	92	4	2022-10-05 22:04:17.417274	2022-10-05 22:04:17.417274
96	92	5	2022-10-05 22:04:17.423061	2022-10-05 22:04:17.423061
97	92	6	2022-10-05 22:04:17.42979	2022-10-05 22:04:17.42979
98	92	7	2022-10-05 22:04:17.435572	2022-10-05 22:04:17.435572
99	92	8	2022-10-05 22:04:17.442642	2022-10-05 22:04:17.442642
100	92	9	2022-10-05 22:04:17.449082	2022-10-05 22:04:17.449082
101	92	10	2022-10-05 22:04:17.454663	2022-10-05 22:04:17.454663
102	102	3	2022-10-05 22:04:17.460955	2022-10-05 22:04:17.460955
103	102	4	2022-10-05 22:04:17.467029	2022-10-05 22:04:17.467029
104	102	6	2022-10-05 22:04:17.473011	2022-10-05 22:04:17.473011
105	102	7	2022-10-05 22:04:17.481244	2022-10-05 22:04:17.481244
106	102	8	2022-10-05 22:04:17.487189	2022-10-05 22:04:17.487189
107	102	9	2022-10-05 22:04:17.495425	2022-10-05 22:04:17.495425
108	102	10	2022-10-05 22:04:17.501794	2022-10-05 22:04:17.501794
109	102	12	2022-10-05 22:04:17.508228	2022-10-05 22:04:17.508228
110	102	16	2022-10-05 22:04:17.514931	2022-10-05 22:04:17.514931
111	111	1	2022-10-05 22:04:17.521382	2022-10-05 22:04:17.521382
112	111	2	2022-10-05 22:04:17.528038	2022-10-05 22:04:17.528038
113	111	4	2022-10-05 22:04:17.534962	2022-10-05 22:04:17.534962
114	111	6	2022-10-05 22:04:17.541922	2022-10-05 22:04:17.541922
115	111	7	2022-10-05 22:04:17.549797	2022-10-05 22:04:17.549797
116	111	9	2022-10-05 22:04:17.555802	2022-10-05 22:04:17.555802
117	111	10	2022-10-05 22:04:17.562927	2022-10-05 22:04:17.562927
118	111	11	2022-10-05 22:04:17.570258	2022-10-05 22:04:17.570258
119	111	12	2022-10-05 22:04:17.577194	2022-10-05 22:04:17.577194
120	111	13	2022-10-05 22:04:17.583404	2022-10-05 22:04:17.583404
121	121	1	2022-10-05 22:04:17.601466	2022-10-05 22:04:17.601466
122	121	2	2022-10-05 22:04:17.610961	2022-10-05 22:04:17.610961
123	121	3	2022-10-05 22:04:17.620326	2022-10-05 22:04:17.620326
124	121	11	2022-10-05 22:04:17.627383	2022-10-05 22:04:17.627383
125	121	12	2022-10-05 22:04:17.634433	2022-10-05 22:04:17.634433
126	126	1	2022-10-05 22:04:17.642567	2022-10-05 22:04:17.642567
127	126	2	2022-10-05 22:04:17.649983	2022-10-05 22:04:17.649983
128	126	4	2022-10-05 22:04:17.656062	2022-10-05 22:04:17.656062
129	126	5	2022-10-05 22:04:17.663985	2022-10-05 22:04:17.663985
130	126	6	2022-10-05 22:04:17.670701	2022-10-05 22:04:17.670701
131	126	7	2022-10-05 22:04:17.676771	2022-10-05 22:04:17.676771
132	126	8	2022-10-05 22:04:17.683759	2022-10-05 22:04:17.683759
133	126	10	2022-10-05 22:04:17.689421	2022-10-05 22:04:17.689421
134	126	11	2022-10-05 22:04:17.697124	2022-10-05 22:04:17.697124
135	126	12	2022-10-05 22:04:17.702788	2022-10-05 22:04:17.702788
136	136	2	2022-10-05 22:04:17.708396	2022-10-05 22:04:17.708396
137	136	3	2022-10-05 22:04:17.714388	2022-10-05 22:04:17.714388
138	136	4	2022-10-05 22:04:17.720188	2022-10-05 22:04:17.720188
139	136	6	2022-10-05 22:04:17.726144	2022-10-05 22:04:17.726144
140	136	9	2022-10-05 22:04:17.732409	2022-10-05 22:04:17.732409
141	136	10	2022-10-05 22:04:17.738205	2022-10-05 22:04:17.738205
142	136	11	2022-10-05 22:04:17.744898	2022-10-05 22:04:17.744898
143	136	13	2022-10-05 22:04:17.755538	2022-10-05 22:04:17.755538
144	136	15	2022-10-05 22:04:17.761147	2022-10-05 22:04:17.761147
145	145	1	2022-10-05 22:04:17.767327	2022-10-05 22:04:17.767327
146	145	2	2022-10-05 22:04:17.773208	2022-10-05 22:04:17.773208
147	145	3	2022-10-05 22:04:17.779288	2022-10-05 22:04:17.779288
148	145	5	2022-10-05 22:04:17.785559	2022-10-05 22:04:17.785559
149	145	6	2022-10-05 22:04:17.793115	2022-10-05 22:04:17.793115
150	145	8	2022-10-05 22:04:17.800497	2022-10-05 22:04:17.800497
151	145	9	2022-10-05 22:04:17.806718	2022-10-05 22:04:17.806718
152	145	10	2022-10-05 22:04:17.813184	2022-10-05 22:04:17.813184
153	145	11	2022-10-05 22:04:17.820365	2022-10-05 22:04:17.820365
154	154	1	2022-10-05 22:04:17.839681	2022-10-05 22:04:17.839681
155	154	2	2022-10-05 22:04:17.84665	2022-10-05 22:04:17.84665
156	154	3	2022-10-05 22:04:17.853691	2022-10-05 22:04:17.853691
157	154	4	2022-10-05 22:04:17.859568	2022-10-05 22:04:17.859568
158	154	5	2022-10-05 22:04:17.86712	2022-10-05 22:04:17.86712
159	154	6	2022-10-05 22:04:17.872609	2022-10-05 22:04:17.872609
160	154	7	2022-10-05 22:04:17.879257	2022-10-05 22:04:17.879257
161	154	8	2022-10-05 22:04:17.886037	2022-10-05 22:04:17.886037
162	154	9	2022-10-05 22:04:17.891855	2022-10-05 22:04:17.891855
163	154	10	2022-10-05 22:04:17.899416	2022-10-05 22:04:17.899416
164	164	1	2022-10-05 22:04:17.905556	2022-10-05 22:04:17.905556
165	164	2	2022-10-05 22:04:17.911985	2022-10-05 22:04:17.911985
166	164	3	2022-10-05 22:04:17.918556	2022-10-05 22:04:17.918556
167	164	4	2022-10-05 22:04:17.924915	2022-10-05 22:04:17.924915
168	164	5	2022-10-05 22:04:17.956871	2022-10-05 22:04:17.956871
169	164	6	2022-10-05 22:04:17.963341	2022-10-05 22:04:17.963341
170	164	8	2022-10-05 22:04:17.970432	2022-10-05 22:04:17.970432
171	164	9	2022-10-05 22:04:17.978294	2022-10-05 22:04:17.978294
172	164	10	2022-10-05 22:04:17.98596	2022-10-05 22:04:17.98596
173	173	1	2022-10-05 22:04:17.993742	2022-10-05 22:04:17.993742
174	173	2	2022-10-05 22:04:18.00129	2022-10-05 22:04:18.00129
175	173	3	2022-10-05 22:04:18.00919	2022-10-05 22:04:18.00919
176	173	4	2022-10-05 22:04:18.018159	2022-10-05 22:04:18.018159
177	173	5	2022-10-05 22:04:18.02695	2022-10-05 22:04:18.02695
178	173	6	2022-10-05 22:04:18.034646	2022-10-05 22:04:18.034646
179	173	7	2022-10-05 22:04:18.04214	2022-10-05 22:04:18.04214
180	173	8	2022-10-05 22:04:18.049278	2022-10-05 22:04:18.049278
181	173	9	2022-10-05 22:04:18.056836	2022-10-05 22:04:18.056836
182	173	11	2022-10-05 22:04:18.065768	2022-10-05 22:04:18.065768
183	183	1	2022-10-05 22:04:18.074356	2022-10-05 22:04:18.074356
184	183	2	2022-10-05 22:04:18.083552	2022-10-05 22:04:18.083552
185	183	3	2022-10-05 22:04:18.091051	2022-10-05 22:04:18.091051
186	183	4	2022-10-05 22:04:18.099946	2022-10-05 22:04:18.099946
187	183	6	2022-10-05 22:04:18.119958	2022-10-05 22:04:18.119958
188	183	8	2022-10-05 22:04:18.129247	2022-10-05 22:04:18.129247
189	183	10	2022-10-05 22:04:18.137305	2022-10-05 22:04:18.137305
190	183	11	2022-10-05 22:04:18.145397	2022-10-05 22:04:18.145397
191	191	1	2022-10-05 22:04:18.153623	2022-10-05 22:04:18.153623
192	191	3	2022-10-05 22:04:18.163619	2022-10-05 22:04:18.163619
193	191	4	2022-10-05 22:04:18.171483	2022-10-05 22:04:18.171483
194	191	5	2022-10-05 22:04:18.179445	2022-10-05 22:04:18.179445
195	191	6	2022-10-05 22:04:18.187177	2022-10-05 22:04:18.187177
196	191	7	2022-10-05 22:04:18.195083	2022-10-05 22:04:18.195083
197	191	8	2022-10-05 22:04:18.204262	2022-10-05 22:04:18.204262
198	191	9	2022-10-05 22:04:18.212879	2022-10-05 22:04:18.212879
199	191	10	2022-10-05 22:04:18.222266	2022-10-05 22:04:18.222266
200	191	11	2022-10-05 22:04:18.235579	2022-10-05 22:04:18.235579
201	201	1	2022-10-05 22:04:18.248	2022-10-05 22:04:18.248
202	201	2	2022-10-05 22:04:18.255092	2022-10-05 22:04:18.255092
203	201	3	2022-10-05 22:04:18.261456	2022-10-05 22:04:18.261456
204	201	4	2022-10-05 22:04:18.268982	2022-10-05 22:04:18.268982
205	201	7	2022-10-05 22:04:18.276124	2022-10-05 22:04:18.276124
206	201	8	2022-10-05 22:04:18.283049	2022-10-05 22:04:18.283049
207	201	9	2022-10-05 22:04:18.289406	2022-10-05 22:04:18.289406
208	201	10	2022-10-05 22:04:18.295493	2022-10-05 22:04:18.295493
209	201	11	2022-10-05 22:04:18.301952	2022-10-05 22:04:18.301952
210	201	12	2022-10-05 22:04:18.308516	2022-10-05 22:04:18.308516
211	211	1	2022-10-05 22:04:18.315867	2022-10-05 22:04:18.315867
212	211	2	2022-10-05 22:04:18.322566	2022-10-05 22:04:18.322566
213	211	3	2022-10-05 22:04:18.32944	2022-10-05 22:04:18.32944
214	211	4	2022-10-05 22:04:18.337312	2022-10-05 22:04:18.337312
215	211	5	2022-10-05 22:04:18.343492	2022-10-05 22:04:18.343492
216	211	6	2022-10-05 22:04:18.350141	2022-10-05 22:04:18.350141
217	211	7	2022-10-05 22:04:18.357118	2022-10-05 22:04:18.357118
218	211	8	2022-10-05 22:04:18.363017	2022-10-05 22:04:18.363017
219	211	9	2022-10-05 22:04:18.369684	2022-10-05 22:04:18.369684
220	211	10	2022-10-05 22:04:18.375622	2022-10-05 22:04:18.375622
221	221	2	2022-10-05 22:04:18.382388	2022-10-05 22:04:18.382388
222	221	3	2022-10-05 22:04:18.38835	2022-10-05 22:04:18.38835
223	221	6	2022-10-05 22:04:18.396722	2022-10-05 22:04:18.396722
224	221	11	2022-10-05 22:04:18.403831	2022-10-05 22:04:18.403831
225	221	12	2022-10-05 22:04:18.411206	2022-10-05 22:04:18.411206
226	226	1	2022-10-05 22:04:18.417986	2022-10-05 22:04:18.417986
227	226	2	2022-10-05 22:04:18.424994	2022-10-05 22:04:18.424994
228	226	3	2022-10-05 22:04:18.432783	2022-10-05 22:04:18.432783
229	226	5	2022-10-05 22:04:18.43877	2022-10-05 22:04:18.43877
230	226	6	2022-10-05 22:04:18.44544	2022-10-05 22:04:18.44544
231	226	7	2022-10-05 22:04:18.451244	2022-10-05 22:04:18.451244
232	226	8	2022-10-05 22:04:18.456586	2022-10-05 22:04:18.456586
233	226	9	2022-10-05 22:04:18.462632	2022-10-05 22:04:18.462632
234	226	10	2022-10-05 22:04:18.468182	2022-10-05 22:04:18.468182
235	235	2	2022-10-05 22:04:18.473458	2022-10-05 22:04:18.473458
236	235	4	2022-10-05 22:04:18.48032	2022-10-05 22:04:18.48032
237	235	5	2022-10-05 22:04:18.48605	2022-10-05 22:04:18.48605
238	235	10	2022-10-05 22:04:18.49177	2022-10-05 22:04:18.49177
239	235	11	2022-10-05 22:04:18.499567	2022-10-05 22:04:18.499567
240	235	14	2022-10-05 22:04:18.50509	2022-10-05 22:04:18.50509
241	241	1	2022-10-05 22:04:18.51222	2022-10-05 22:04:18.51222
242	241	2	2022-10-05 22:04:18.518976	2022-10-05 22:04:18.518976
243	241	3	2022-10-05 22:04:18.52514	2022-10-05 22:04:18.52514
244	241	4	2022-10-05 22:04:18.531045	2022-10-05 22:04:18.531045
245	241	5	2022-10-05 22:04:18.536808	2022-10-05 22:04:18.536808
246	241	6	2022-10-05 22:04:18.543347	2022-10-05 22:04:18.543347
247	241	7	2022-10-05 22:04:18.54952	2022-10-05 22:04:18.54952
248	241	8	2022-10-05 22:04:18.55631	2022-10-05 22:04:18.55631
249	241	9	2022-10-05 22:04:18.562967	2022-10-05 22:04:18.562967
250	241	10	2022-10-05 22:04:18.568754	2022-10-05 22:04:18.568754
251	241	15	2022-10-05 22:04:18.575286	2022-10-05 22:04:18.575286
252	252	1	2022-10-05 22:04:18.581166	2022-10-05 22:04:18.581166
253	252	2	2022-10-05 22:04:18.586778	2022-10-05 22:04:18.586778
254	252	3	2022-10-05 22:04:18.593837	2022-10-05 22:04:18.593837
255	252	4	2022-10-05 22:04:18.600992	2022-10-05 22:04:18.600992
256	252	5	2022-10-05 22:04:18.610797	2022-10-05 22:04:18.610797
257	252	6	2022-10-05 22:04:18.619968	2022-10-05 22:04:18.619968
258	252	7	2022-10-05 22:04:18.626325	2022-10-05 22:04:18.626325
259	252	8	2022-10-05 22:04:18.632754	2022-10-05 22:04:18.632754
260	252	9	2022-10-05 22:04:18.6403	2022-10-05 22:04:18.6403
261	252	10	2022-10-05 22:04:18.647642	2022-10-05 22:04:18.647642
262	262	1	2022-10-05 22:04:18.654351	2022-10-05 22:04:18.654351
263	262	2	2022-10-05 22:04:18.661575	2022-10-05 22:04:18.661575
264	262	3	2022-10-05 22:04:18.668525	2022-10-05 22:04:18.668525
265	262	4	2022-10-05 22:04:18.676413	2022-10-05 22:04:18.676413
266	262	5	2022-10-05 22:04:18.683498	2022-10-05 22:04:18.683498
267	262	6	2022-10-05 22:04:18.689697	2022-10-05 22:04:18.689697
268	262	7	2022-10-05 22:04:18.700375	2022-10-05 22:04:18.700375
269	262	8	2022-10-05 22:04:18.708957	2022-10-05 22:04:18.708957
270	262	9	2022-10-05 22:04:18.71624	2022-10-05 22:04:18.71624
271	262	10	2022-10-05 22:04:18.723227	2022-10-05 22:04:18.723227
272	262	11	2022-10-05 22:04:18.730615	2022-10-05 22:04:18.730615
273	273	1	2022-10-05 22:04:18.736964	2022-10-05 22:04:18.736964
274	273	2	2022-10-05 22:04:18.743558	2022-10-05 22:04:18.743558
275	273	3	2022-10-05 22:04:18.750313	2022-10-05 22:04:18.750313
276	273	4	2022-10-05 22:04:18.75772	2022-10-05 22:04:18.75772
277	273	5	2022-10-05 22:04:18.764865	2022-10-05 22:04:18.764865
278	273	6	2022-10-05 22:04:18.77104	2022-10-05 22:04:18.77104
279	273	7	2022-10-05 22:04:18.779278	2022-10-05 22:04:18.779278
280	273	8	2022-10-05 22:04:18.786125	2022-10-05 22:04:18.786125
281	273	9	2022-10-05 22:04:18.792875	2022-10-05 22:04:18.792875
282	273	10	2022-10-05 22:04:18.798993	2022-10-05 22:04:18.798993
283	283	1	2022-10-05 22:04:18.804715	2022-10-05 22:04:18.804715
284	283	2	2022-10-05 22:04:18.811109	2022-10-05 22:04:18.811109
285	283	3	2022-10-05 22:04:18.817042	2022-10-05 22:04:18.817042
286	283	4	2022-10-05 22:04:18.822593	2022-10-05 22:04:18.822593
287	283	5	2022-10-05 22:04:18.828551	2022-10-05 22:04:18.828551
288	283	6	2022-10-05 22:04:18.836585	2022-10-05 22:04:18.836585
289	283	7	2022-10-05 22:04:18.853337	2022-10-05 22:04:18.853337
290	283	8	2022-10-05 22:04:18.868533	2022-10-05 22:04:18.868533
291	283	9	2022-10-05 22:04:18.875163	2022-10-05 22:04:18.875163
292	283	10	2022-10-05 22:04:18.881389	2022-10-05 22:04:18.881389
293	293	1	2022-10-05 22:04:18.889096	2022-10-05 22:04:18.889096
294	293	2	2022-10-05 22:04:18.895609	2022-10-05 22:04:18.895609
295	293	3	2022-10-05 22:04:18.902151	2022-10-05 22:04:18.902151
296	293	4	2022-10-05 22:04:18.908276	2022-10-05 22:04:18.908276
297	293	5	2022-10-05 22:04:18.914831	2022-10-05 22:04:18.914831
298	293	6	2022-10-05 22:04:18.920623	2022-10-05 22:04:18.920623
299	293	7	2022-10-05 22:04:18.927058	2022-10-05 22:04:18.927058
300	293	8	2022-10-05 22:04:18.932959	2022-10-05 22:04:18.932959
301	293	9	2022-10-05 22:04:18.938864	2022-10-05 22:04:18.938864
302	293	10	2022-10-05 22:04:18.945505	2022-10-05 22:04:18.945505
303	303	1	2022-10-05 22:04:18.951603	2022-10-05 22:04:18.951603
304	303	2	2022-10-05 22:04:18.958024	2022-10-05 22:04:18.958024
305	303	3	2022-10-05 22:04:18.964427	2022-10-05 22:04:18.964427
306	303	4	2022-10-05 22:04:18.970513	2022-10-05 22:04:18.970513
307	303	5	2022-10-05 22:04:18.97907	2022-10-05 22:04:18.97907
308	303	6	2022-10-05 22:04:18.987733	2022-10-05 22:04:18.987733
309	303	7	2022-10-05 22:04:18.993955	2022-10-05 22:04:18.993955
310	303	8	2022-10-05 22:04:19.000497	2022-10-05 22:04:19.000497
311	303	9	2022-10-05 22:04:19.007322	2022-10-05 22:04:19.007322
312	303	10	2022-10-05 22:04:19.013591	2022-10-05 22:04:19.013591
313	313	8	2022-10-05 22:04:19.019474	2022-10-05 22:04:19.019474
314	314	1	2022-10-05 22:04:19.025575	2022-10-05 22:04:19.025575
315	314	4	2022-10-05 22:04:19.031484	2022-10-05 22:04:19.031484
316	314	5	2022-10-05 22:04:19.037145	2022-10-05 22:04:19.037145
317	314	6	2022-10-05 22:04:19.042884	2022-10-05 22:04:19.042884
318	314	7	2022-10-05 22:04:19.048487	2022-10-05 22:04:19.048487
319	314	8	2022-10-05 22:04:19.055279	2022-10-05 22:04:19.055279
320	314	9	2022-10-05 22:04:19.061066	2022-10-05 22:04:19.061066
321	314	10	2022-10-05 22:04:19.067347	2022-10-05 22:04:19.067347
322	314	11	2022-10-05 22:04:19.073459	2022-10-05 22:04:19.073459
323	314	12	2022-10-05 22:04:19.080627	2022-10-05 22:04:19.080627
324	324	1	2022-10-05 22:04:19.086751	2022-10-05 22:04:19.086751
325	324	2	2022-10-05 22:04:19.09914	2022-10-05 22:04:19.09914
326	324	3	2022-10-05 22:04:19.104913	2022-10-05 22:04:19.104913
327	324	4	2022-10-05 22:04:19.113194	2022-10-05 22:04:19.113194
328	324	5	2022-10-05 22:04:19.120158	2022-10-05 22:04:19.120158
329	324	6	2022-10-05 22:04:19.128467	2022-10-05 22:04:19.128467
330	324	7	2022-10-05 22:04:19.135106	2022-10-05 22:04:19.135106
331	324	8	2022-10-05 22:04:19.141902	2022-10-05 22:04:19.141902
332	324	9	2022-10-05 22:04:19.148529	2022-10-05 22:04:19.148529
333	324	10	2022-10-05 22:04:19.154834	2022-10-05 22:04:19.154834
334	334	1	2022-10-05 22:04:19.16276	2022-10-05 22:04:19.16276
335	334	2	2022-10-05 22:04:19.172595	2022-10-05 22:04:19.172595
336	334	3	2022-10-05 22:04:19.178617	2022-10-05 22:04:19.178617
337	334	5	2022-10-05 22:04:19.184811	2022-10-05 22:04:19.184811
338	334	6	2022-10-05 22:04:19.190776	2022-10-05 22:04:19.190776
339	334	7	2022-10-05 22:04:19.196685	2022-10-05 22:04:19.196685
340	334	8	2022-10-05 22:04:19.202715	2022-10-05 22:04:19.202715
341	334	9	2022-10-05 22:04:19.209084	2022-10-05 22:04:19.209084
342	334	10	2022-10-05 22:04:19.215733	2022-10-05 22:04:19.215733
343	343	1	2022-10-05 22:04:19.222148	2022-10-05 22:04:19.222148
344	343	2	2022-10-05 22:04:19.2287	2022-10-05 22:04:19.2287
345	343	3	2022-10-05 22:04:19.234586	2022-10-05 22:04:19.234586
346	343	4	2022-10-05 22:04:19.240725	2022-10-05 22:04:19.240725
347	343	5	2022-10-05 22:04:19.247226	2022-10-05 22:04:19.247226
348	343	6	2022-10-05 22:04:19.253311	2022-10-05 22:04:19.253311
349	343	7	2022-10-05 22:04:19.259189	2022-10-05 22:04:19.259189
350	343	8	2022-10-05 22:04:19.265946	2022-10-05 22:04:19.265946
351	343	9	2022-10-05 22:04:19.272956	2022-10-05 22:04:19.272956
352	343	10	2022-10-05 22:04:19.280163	2022-10-05 22:04:19.280163
353	353	1	2022-10-05 22:04:19.286919	2022-10-05 22:04:19.286919
354	353	2	2022-10-05 22:04:19.296646	2022-10-05 22:04:19.296646
355	353	3	2022-10-05 22:04:19.302805	2022-10-05 22:04:19.302805
356	353	4	2022-10-05 22:04:19.310744	2022-10-05 22:04:19.310744
357	353	5	2022-10-05 22:04:19.317312	2022-10-05 22:04:19.317312
358	353	6	2022-10-05 22:04:19.323928	2022-10-05 22:04:19.323928
359	353	7	2022-10-05 22:04:19.330734	2022-10-05 22:04:19.330734
360	353	8	2022-10-05 22:04:19.338298	2022-10-05 22:04:19.338298
361	353	9	2022-10-05 22:04:19.345612	2022-10-05 22:04:19.345612
362	353	10	2022-10-05 22:04:19.353989	2022-10-05 22:04:19.353989
363	363	1	2022-10-05 22:04:19.361308	2022-10-05 22:04:19.361308
364	363	2	2022-10-05 22:04:19.368154	2022-10-05 22:04:19.368154
365	363	3	2022-10-05 22:04:19.374162	2022-10-05 22:04:19.374162
366	363	4	2022-10-05 22:04:19.382029	2022-10-05 22:04:19.382029
367	363	5	2022-10-05 22:04:19.388559	2022-10-05 22:04:19.388559
368	363	6	2022-10-05 22:04:19.394665	2022-10-05 22:04:19.394665
369	363	7	2022-10-05 22:04:19.40072	2022-10-05 22:04:19.40072
370	363	8	2022-10-05 22:04:19.409941	2022-10-05 22:04:19.409941
371	363	9	2022-10-05 22:04:19.415821	2022-10-05 22:04:19.415821
372	363	10	2022-10-05 22:04:19.421394	2022-10-05 22:04:19.421394
373	373	1	2022-10-05 22:04:19.427257	2022-10-05 22:04:19.427257
374	373	2	2022-10-05 22:04:19.433672	2022-10-05 22:04:19.433672
375	373	3	2022-10-05 22:04:19.439919	2022-10-05 22:04:19.439919
376	373	4	2022-10-05 22:04:19.448605	2022-10-05 22:04:19.448605
377	373	5	2022-10-05 22:04:19.454775	2022-10-05 22:04:19.454775
378	373	6	2022-10-05 22:04:19.46157	2022-10-05 22:04:19.46157
379	373	7	2022-10-05 22:04:19.467436	2022-10-05 22:04:19.467436
380	373	9	2022-10-05 22:04:19.473171	2022-10-05 22:04:19.473171
381	373	10	2022-10-05 22:04:19.480135	2022-10-05 22:04:19.480135
382	373	11	2022-10-05 22:04:19.486327	2022-10-05 22:04:19.486327
383	383	1	2022-10-05 22:04:19.493458	2022-10-05 22:04:19.493458
384	383	2	2022-10-05 22:04:19.500103	2022-10-05 22:04:19.500103
385	383	3	2022-10-05 22:04:19.505925	2022-10-05 22:04:19.505925
386	383	4	2022-10-05 22:04:19.512633	2022-10-05 22:04:19.512633
387	383	5	2022-10-05 22:04:19.518545	2022-10-05 22:04:19.518545
388	383	6	2022-10-05 22:04:19.524516	2022-10-05 22:04:19.524516
389	383	8	2022-10-05 22:04:19.53042	2022-10-05 22:04:19.53042
390	383	9	2022-10-05 22:04:19.537058	2022-10-05 22:04:19.537058
391	383	10	2022-10-05 22:04:19.544249	2022-10-05 22:04:19.544249
392	392	1	2022-10-05 22:04:19.550025	2022-10-05 22:04:19.550025
393	392	2	2022-10-05 22:04:19.555611	2022-10-05 22:04:19.555611
394	392	3	2022-10-05 22:04:19.563425	2022-10-05 22:04:19.563425
395	392	4	2022-10-05 22:04:19.569041	2022-10-05 22:04:19.569041
396	392	5	2022-10-05 22:04:19.574924	2022-10-05 22:04:19.574924
397	392	6	2022-10-05 22:04:19.581016	2022-10-05 22:04:19.581016
398	392	7	2022-10-05 22:04:19.586324	2022-10-05 22:04:19.586324
399	392	8	2022-10-05 22:04:19.592284	2022-10-05 22:04:19.592284
400	392	9	2022-10-05 22:04:19.598657	2022-10-05 22:04:19.598657
401	392	10	2022-10-05 22:04:19.603935	2022-10-05 22:04:19.603935
402	402	2	2022-10-05 22:04:19.611152	2022-10-05 22:04:19.611152
403	402	5	2022-10-05 22:04:19.616974	2022-10-05 22:04:19.616974
404	402	7	2022-10-05 22:04:19.622514	2022-10-05 22:04:19.622514
405	402	8	2022-10-05 22:04:19.628825	2022-10-05 22:04:19.628825
406	402	9	2022-10-05 22:04:19.635241	2022-10-05 22:04:19.635241
407	407	1	2022-10-05 22:04:19.642653	2022-10-05 22:04:19.642653
408	407	2	2022-10-05 22:04:19.649263	2022-10-05 22:04:19.649263
409	407	3	2022-10-05 22:04:19.656061	2022-10-05 22:04:19.656061
410	407	4	2022-10-05 22:04:19.662823	2022-10-05 22:04:19.662823
411	407	5	2022-10-05 22:04:19.668902	2022-10-05 22:04:19.668902
412	407	6	2022-10-05 22:04:19.674844	2022-10-05 22:04:19.674844
413	407	7	2022-10-05 22:04:19.680778	2022-10-05 22:04:19.680778
414	407	9	2022-10-05 22:04:19.687251	2022-10-05 22:04:19.687251
415	407	10	2022-10-05 22:04:19.693584	2022-10-05 22:04:19.693584
416	407	11	2022-10-05 22:04:19.700147	2022-10-05 22:04:19.700147
417	417	2	2022-10-05 22:04:19.70536	2022-10-05 22:04:19.70536
418	417	4	2022-10-05 22:04:19.713014	2022-10-05 22:04:19.713014
419	417	5	2022-10-05 22:04:19.718326	2022-10-05 22:04:19.718326
420	417	9	2022-10-05 22:04:19.724737	2022-10-05 22:04:19.724737
421	417	10	2022-10-05 22:04:19.730321	2022-10-05 22:04:19.730321
422	417	12	2022-10-05 22:04:19.7356	2022-10-05 22:04:19.7356
423	417	13	2022-10-05 22:04:19.741309	2022-10-05 22:04:19.741309
424	417	14	2022-10-05 22:04:19.747072	2022-10-05 22:04:19.747072
425	425	1	2022-10-05 22:04:19.752315	2022-10-05 22:04:19.752315
426	425	2	2022-10-05 22:04:19.757745	2022-10-05 22:04:19.757745
427	425	3	2022-10-05 22:04:19.764454	2022-10-05 22:04:19.764454
428	425	4	2022-10-05 22:04:19.770238	2022-10-05 22:04:19.770238
429	425	5	2022-10-05 22:04:19.776125	2022-10-05 22:04:19.776125
430	425	6	2022-10-05 22:04:19.784148	2022-10-05 22:04:19.784148
431	425	7	2022-10-05 22:04:19.789559	2022-10-05 22:04:19.789559
432	425	8	2022-10-05 22:04:19.795924	2022-10-05 22:04:19.795924
433	425	9	2022-10-05 22:04:19.801695	2022-10-05 22:04:19.801695
434	425	10	2022-10-05 22:04:19.807392	2022-10-05 22:04:19.807392
435	435	1	2022-10-05 22:04:19.813323	2022-10-05 22:04:19.813323
436	435	3	2022-10-05 22:04:19.818951	2022-10-05 22:04:19.818951
437	435	4	2022-10-05 22:04:19.824571	2022-10-05 22:04:19.824571
438	435	6	2022-10-05 22:04:19.83196	2022-10-05 22:04:19.83196
439	435	9	2022-10-05 22:04:19.838936	2022-10-05 22:04:19.838936
440	435	10	2022-10-05 22:04:19.845265	2022-10-05 22:04:19.845265
441	435	11	2022-10-05 22:04:19.855553	2022-10-05 22:04:19.855553
442	435	12	2022-10-05 22:04:19.861467	2022-10-05 22:04:19.861467
443	443	1	2022-10-05 22:04:19.867144	2022-10-05 22:04:19.867144
444	443	2	2022-10-05 22:04:19.872577	2022-10-05 22:04:19.872577
445	443	3	2022-10-05 22:04:19.878165	2022-10-05 22:04:19.878165
446	443	4	2022-10-05 22:04:19.884458	2022-10-05 22:04:19.884458
447	443	6	2022-10-05 22:04:19.889975	2022-10-05 22:04:19.889975
448	443	7	2022-10-05 22:04:19.896337	2022-10-05 22:04:19.896337
449	443	8	2022-10-05 22:04:19.902613	2022-10-05 22:04:19.902613
450	450	1	2022-10-05 22:04:19.909878	2022-10-05 22:04:19.909878
451	450	2	2022-10-05 22:04:19.916753	2022-10-05 22:04:19.916753
452	450	3	2022-10-05 22:04:19.922998	2022-10-05 22:04:19.922998
453	450	5	2022-10-05 22:04:19.92904	2022-10-05 22:04:19.92904
454	450	7	2022-10-05 22:04:19.935448	2022-10-05 22:04:19.935448
455	450	8	2022-10-05 22:04:19.942871	2022-10-05 22:04:19.942871
456	450	9	2022-10-05 22:04:19.949164	2022-10-05 22:04:19.949164
457	450	10	2022-10-05 22:04:19.954921	2022-10-05 22:04:19.954921
458	450	11	2022-10-05 22:04:19.962445	2022-10-05 22:04:19.962445
459	450	12	2022-10-05 22:04:19.969167	2022-10-05 22:04:19.969167
460	460	1	2022-10-05 22:04:19.975151	2022-10-05 22:04:19.975151
461	460	2	2022-10-05 22:04:19.985587	2022-10-05 22:04:19.985587
462	460	3	2022-10-05 22:04:19.992512	2022-10-05 22:04:19.992512
463	460	4	2022-10-05 22:04:19.998643	2022-10-05 22:04:19.998643
464	460	5	2022-10-05 22:04:20.004721	2022-10-05 22:04:20.004721
465	460	6	2022-10-05 22:04:20.012311	2022-10-05 22:04:20.012311
466	460	8	2022-10-05 22:04:20.01863	2022-10-05 22:04:20.01863
467	460	9	2022-10-05 22:04:20.025185	2022-10-05 22:04:20.025185
468	460	10	2022-10-05 22:04:20.031468	2022-10-05 22:04:20.031468
469	460	11	2022-10-05 22:04:20.037038	2022-10-05 22:04:20.037038
470	470	1	2022-10-05 22:04:20.044191	2022-10-05 22:04:20.044191
471	470	2	2022-10-05 22:04:20.050575	2022-10-05 22:04:20.050575
472	470	3	2022-10-05 22:04:20.057244	2022-10-05 22:04:20.057244
473	470	4	2022-10-05 22:04:20.064127	2022-10-05 22:04:20.064127
474	470	5	2022-10-05 22:04:20.071041	2022-10-05 22:04:20.071041
475	470	6	2022-10-05 22:04:20.078017	2022-10-05 22:04:20.078017
476	470	7	2022-10-05 22:04:20.084142	2022-10-05 22:04:20.084142
477	470	8	2022-10-05 22:04:20.093495	2022-10-05 22:04:20.093495
478	470	9	2022-10-05 22:04:20.100835	2022-10-05 22:04:20.100835
479	470	10	2022-10-05 22:04:20.10768	2022-10-05 22:04:20.10768
480	480	1	2022-10-05 22:04:20.117231	2022-10-05 22:04:20.117231
481	480	2	2022-10-05 22:04:20.123956	2022-10-05 22:04:20.123956
482	480	3	2022-10-05 22:04:20.131175	2022-10-05 22:04:20.131175
483	480	5	2022-10-05 22:04:20.13733	2022-10-05 22:04:20.13733
484	480	7	2022-10-05 22:04:20.144613	2022-10-05 22:04:20.144613
485	480	8	2022-10-05 22:04:20.152387	2022-10-05 22:04:20.152387
486	480	9	2022-10-05 22:04:20.158776	2022-10-05 22:04:20.158776
487	480	11	2022-10-05 22:04:20.168662	2022-10-05 22:04:20.168662
488	480	13	2022-10-05 22:04:20.175285	2022-10-05 22:04:20.175285
489	480	14	2022-10-05 22:04:20.182001	2022-10-05 22:04:20.182001
490	490	1	2022-10-05 22:04:20.18827	2022-10-05 22:04:20.18827
491	490	2	2022-10-05 22:04:20.195279	2022-10-05 22:04:20.195279
492	490	3	2022-10-05 22:04:20.20152	2022-10-05 22:04:20.20152
493	490	4	2022-10-05 22:04:20.208687	2022-10-05 22:04:20.208687
494	490	5	2022-10-05 22:04:20.215165	2022-10-05 22:04:20.215165
495	490	6	2022-10-05 22:04:20.221179	2022-10-05 22:04:20.221179
496	490	7	2022-10-05 22:04:20.229677	2022-10-05 22:04:20.229677
497	490	8	2022-10-05 22:04:20.235842	2022-10-05 22:04:20.235842
498	490	9	2022-10-05 22:04:20.243039	2022-10-05 22:04:20.243039
499	490	10	2022-10-05 22:04:20.253367	2022-10-05 22:04:20.253367
500	500	2	2022-10-05 22:04:20.263496	2022-10-05 22:04:20.263496
501	500	3	2022-10-05 22:04:20.272049	2022-10-05 22:04:20.272049
502	500	4	2022-10-05 22:04:20.284494	2022-10-05 22:04:20.284494
503	500	5	2022-10-05 22:04:20.291346	2022-10-05 22:04:20.291346
504	500	6	2022-10-05 22:04:20.298423	2022-10-05 22:04:20.298423
505	500	7	2022-10-05 22:04:20.304575	2022-10-05 22:04:20.304575
506	500	8	2022-10-05 22:04:20.311667	2022-10-05 22:04:20.311667
507	500	9	2022-10-05 22:04:20.317683	2022-10-05 22:04:20.317683
508	500	10	2022-10-05 22:04:20.323719	2022-10-05 22:04:20.323719
509	509	1	2022-10-05 22:04:20.331335	2022-10-05 22:04:20.331335
510	509	2	2022-10-05 22:04:20.338077	2022-10-05 22:04:20.338077
511	509	4	2022-10-05 22:04:20.344333	2022-10-05 22:04:20.344333
512	509	5	2022-10-05 22:04:20.350527	2022-10-05 22:04:20.350527
513	509	7	2022-10-05 22:04:20.356644	2022-10-05 22:04:20.356644
514	509	8	2022-10-05 22:04:20.361686	2022-10-05 22:04:20.361686
515	509	9	2022-10-05 22:04:20.366608	2022-10-05 22:04:20.366608
516	509	10	2022-10-05 22:04:20.371906	2022-10-05 22:04:20.371906
517	517	1	2022-10-05 22:04:20.37717	2022-10-05 22:04:20.37717
518	517	2	2022-10-05 22:04:20.382845	2022-10-05 22:04:20.382845
519	517	3	2022-10-05 22:04:20.387931	2022-10-05 22:04:20.387931
520	517	4	2022-10-05 22:04:20.393038	2022-10-05 22:04:20.393038
521	517	5	2022-10-05 22:04:20.39846	2022-10-05 22:04:20.39846
522	517	6	2022-10-05 22:04:20.403769	2022-10-05 22:04:20.403769
523	517	8	2022-10-05 22:04:20.409786	2022-10-05 22:04:20.409786
524	517	9	2022-10-05 22:04:20.416395	2022-10-05 22:04:20.416395
525	517	10	2022-10-05 22:04:20.421643	2022-10-05 22:04:20.421643
526	526	1	2022-10-05 22:04:20.427608	2022-10-05 22:04:20.427608
527	526	2	2022-10-05 22:04:20.433441	2022-10-05 22:04:20.433441
528	526	3	2022-10-05 22:04:20.438468	2022-10-05 22:04:20.438468
529	526	4	2022-10-05 22:04:20.445551	2022-10-05 22:04:20.445551
530	526	5	2022-10-05 22:04:20.4513	2022-10-05 22:04:20.4513
531	526	6	2022-10-05 22:04:20.45736	2022-10-05 22:04:20.45736
532	526	7	2022-10-05 22:04:20.463311	2022-10-05 22:04:20.463311
533	526	8	2022-10-05 22:04:20.468655	2022-10-05 22:04:20.468655
534	526	9	2022-10-05 22:04:20.474423	2022-10-05 22:04:20.474423
535	526	10	2022-10-05 22:04:20.480528	2022-10-05 22:04:20.480528
536	536	1	2022-10-05 22:04:20.485789	2022-10-05 22:04:20.485789
537	536	2	2022-10-05 22:04:20.493491	2022-10-05 22:04:20.493491
538	536	3	2022-10-05 22:04:20.499665	2022-10-05 22:04:20.499665
539	536	4	2022-10-05 22:04:20.504679	2022-10-05 22:04:20.504679
540	536	5	2022-10-05 22:04:20.514629	2022-10-05 22:04:20.514629
541	536	6	2022-10-05 22:04:20.520239	2022-10-05 22:04:20.520239
542	536	7	2022-10-05 22:04:20.526217	2022-10-05 22:04:20.526217
543	536	8	2022-10-05 22:04:20.532187	2022-10-05 22:04:20.532187
544	536	9	2022-10-05 22:04:20.537154	2022-10-05 22:04:20.537154
545	536	10	2022-10-05 22:04:20.543002	2022-10-05 22:04:20.543002
546	546	1	2022-10-05 22:04:20.548402	2022-10-05 22:04:20.548402
547	546	2	2022-10-05 22:04:20.553466	2022-10-05 22:04:20.553466
548	546	3	2022-10-05 22:04:20.559145	2022-10-05 22:04:20.559145
549	546	4	2022-10-05 22:04:20.56574	2022-10-05 22:04:20.56574
550	546	5	2022-10-05 22:04:20.571039	2022-10-05 22:04:20.571039
551	546	6	2022-10-05 22:04:20.577027	2022-10-05 22:04:20.577027
552	546	7	2022-10-05 22:04:20.583142	2022-10-05 22:04:20.583142
553	546	8	2022-10-05 22:04:20.587945	2022-10-05 22:04:20.587945
554	546	9	2022-10-05 22:04:20.594341	2022-10-05 22:04:20.594341
555	546	10	2022-10-05 22:04:20.599401	2022-10-05 22:04:20.599401
556	556	1	2022-10-05 22:04:20.604545	2022-10-05 22:04:20.604545
557	556	2	2022-10-05 22:04:20.6095	2022-10-05 22:04:20.6095
558	556	3	2022-10-05 22:04:20.614866	2022-10-05 22:04:20.614866
559	556	4	2022-10-05 22:04:20.619695	2022-10-05 22:04:20.619695
560	556	5	2022-10-05 22:04:20.625114	2022-10-05 22:04:20.625114
561	556	6	2022-10-05 22:04:20.633052	2022-10-05 22:04:20.633052
562	556	7	2022-10-05 22:04:20.638242	2022-10-05 22:04:20.638242
563	556	9	2022-10-05 22:04:20.644034	2022-10-05 22:04:20.644034
564	556	10	2022-10-05 22:04:20.649389	2022-10-05 22:04:20.649389
565	556	11	2022-10-05 22:04:20.654576	2022-10-05 22:04:20.654576
566	566	2	2022-10-05 22:04:20.662295	2022-10-05 22:04:20.662295
567	566	5	2022-10-05 22:04:20.669884	2022-10-05 22:04:20.669884
568	566	6	2022-10-05 22:04:20.674902	2022-10-05 22:04:20.674902
569	566	8	2022-10-05 22:04:20.681265	2022-10-05 22:04:20.681265
570	566	9	2022-10-05 22:04:20.686428	2022-10-05 22:04:20.686428
571	566	10	2022-10-05 22:04:20.691638	2022-10-05 22:04:20.691638
572	566	12	2022-10-05 22:04:20.697045	2022-10-05 22:04:20.697045
573	566	13	2022-10-05 22:04:20.70246	2022-10-05 22:04:20.70246
574	574	1	2022-10-05 22:04:20.707818	2022-10-05 22:04:20.707818
575	574	2	2022-10-05 22:04:20.713248	2022-10-05 22:04:20.713248
576	574	3	2022-10-05 22:04:20.719142	2022-10-05 22:04:20.719142
577	574	4	2022-10-05 22:04:20.724179	2022-10-05 22:04:20.724179
578	574	5	2022-10-05 22:04:20.730033	2022-10-05 22:04:20.730033
579	574	6	2022-10-05 22:04:20.735604	2022-10-05 22:04:20.735604
580	574	7	2022-10-05 22:04:20.741775	2022-10-05 22:04:20.741775
581	574	8	2022-10-05 22:04:20.749078	2022-10-05 22:04:20.749078
582	574	9	2022-10-05 22:04:20.754368	2022-10-05 22:04:20.754368
583	574	10	2022-10-05 22:04:20.759699	2022-10-05 22:04:20.759699
898	11	5	2022-10-05 22:04:22.574503	2022-10-05 22:04:22.574503
900	11	7	2022-10-05 22:04:22.585689	2022-10-05 22:04:22.585689
901	11	8	2022-10-05 22:04:22.59165	2022-10-05 22:04:22.59165
902	11	9	2022-10-05 22:04:22.597474	2022-10-05 22:04:22.597474
904	19	1	2022-10-05 22:04:22.610528	2022-10-05 22:04:22.610528
906	19	3	2022-10-05 22:04:22.621446	2022-10-05 22:04:22.621446
909	19	6	2022-10-05 22:04:22.642859	2022-10-05 22:04:22.642859
954	80	10	2022-10-05 22:04:22.904461	2022-10-05 22:04:22.904461
956	88	5	2022-10-05 22:04:22.916133	2022-10-05 22:04:22.916133
957	88	6	2022-10-05 22:04:22.921165	2022-10-05 22:04:22.921165
959	88	10	2022-10-05 22:04:22.934551	2022-10-05 22:04:22.934551
970	102	1	2022-10-05 22:04:22.998739	2022-10-05 22:04:22.998739
971	102	2	2022-10-05 22:04:23.003766	2022-10-05 22:04:23.003766
980	111	3	2022-10-05 22:04:23.055584	2022-10-05 22:04:23.055584
982	111	5	2022-10-05 22:04:23.066918	2022-10-05 22:04:23.066918
985	111	8	2022-10-05 22:04:23.083311	2022-10-05 22:04:23.083311
988	121	5	2022-10-05 22:04:23.100283	2022-10-05 22:04:23.100283
989	121	6	2022-10-05 22:04:23.105374	2022-10-05 22:04:23.105374
991	126	3	2022-10-05 22:04:23.117138	2022-10-05 22:04:23.117138
997	136	1	2022-10-05 22:04:23.151334	2022-10-05 22:04:23.151334
1001	136	5	2022-10-05 22:04:23.176523	2022-10-05 22:04:23.176523
1003	136	7	2022-10-05 22:04:23.187714	2022-10-05 22:04:23.187714
1004	136	8	2022-10-05 22:04:23.193823	2022-10-05 22:04:23.193823
1023	164	7	2022-10-05 22:04:23.300339	2022-10-05 22:04:23.300339
1035	173	10	2022-10-05 22:04:23.3692	2022-10-05 22:04:23.3692
1040	183	7	2022-10-05 22:04:23.395153	2022-10-05 22:04:23.395153
1042	183	9	2022-10-05 22:04:23.405601	2022-10-05 22:04:23.405601
1044	191	2	2022-10-05 22:04:23.416559	2022-10-05 22:04:23.416559
1056	201	5	2022-10-05 22:04:23.48419	2022-10-05 22:04:23.48419
1057	201	6	2022-10-05 22:04:23.488922	2022-10-05 22:04:23.488922
1071	221	1	2022-10-05 22:04:23.566583	2022-10-05 22:04:23.566583
1074	221	4	2022-10-05 22:04:23.582435	2022-10-05 22:04:23.582435
1075	221	5	2022-10-05 22:04:23.587066	2022-10-05 22:04:23.587066
1077	221	7	2022-10-05 22:04:23.598557	2022-10-05 22:04:23.598557
1078	221	8	2022-10-05 22:04:23.603662	2022-10-05 22:04:23.603662
1079	221	9	2022-10-05 22:04:23.608693	2022-10-05 22:04:23.608693
1080	221	10	2022-10-05 22:04:23.614617	2022-10-05 22:04:23.614617
1084	226	4	2022-10-05 22:04:23.63819	2022-10-05 22:04:23.63819
1087	235	1	2022-10-05 22:04:23.661093	2022-10-05 22:04:23.661093
1089	235	3	2022-10-05 22:04:23.672422	2022-10-05 22:04:23.672422
1092	235	6	2022-10-05 22:04:23.693886	2022-10-05 22:04:23.693886
1093	235	7	2022-10-05 22:04:23.699787	2022-10-05 22:04:23.699787
1094	235	8	2022-10-05 22:04:23.704852	2022-10-05 22:04:23.704852
1095	235	9	2022-10-05 22:04:23.710815	2022-10-05 22:04:23.710815
1147	313	1	2022-10-05 22:04:24.02696	2022-10-05 22:04:24.02696
1148	313	2	2022-10-05 22:04:24.033975	2022-10-05 22:04:24.033975
1149	313	3	2022-10-05 22:04:24.03938	2022-10-05 22:04:24.03938
1150	313	4	2022-10-05 22:04:24.045465	2022-10-05 22:04:24.045465
1151	313	5	2022-10-05 22:04:24.051251	2022-10-05 22:04:24.051251
1152	313	6	2022-10-05 22:04:24.057117	2022-10-05 22:04:24.057117
1153	313	7	2022-10-05 22:04:24.063238	2022-10-05 22:04:24.063238
1154	313	10	2022-10-05 22:04:24.068271	2022-10-05 22:04:24.068271
1156	314	2	2022-10-05 22:04:24.078896	2022-10-05 22:04:24.078896
1157	314	3	2022-10-05 22:04:24.084789	2022-10-05 22:04:24.084789
1176	334	4	2022-10-05 22:04:24.202336	2022-10-05 22:04:24.202336
1212	373	8	2022-10-05 22:04:24.443949	2022-10-05 22:04:24.443949
1220	383	7	2022-10-05 22:04:24.497724	2022-10-05 22:04:24.497724
1235	407	8	2022-10-05 22:04:24.601082	2022-10-05 22:04:24.601082
1237	1237	1	2022-10-05 22:04:24.616693	2022-10-05 22:04:24.616693
1238	1237	2	2022-10-05 22:04:24.623098	2022-10-05 22:04:24.623098
1239	1237	3	2022-10-05 22:04:24.635944	2022-10-05 22:04:24.635944
1240	1237	4	2022-10-05 22:04:24.641875	2022-10-05 22:04:24.641875
1241	1237	6	2022-10-05 22:04:24.648538	2022-10-05 22:04:24.648538
1242	1237	7	2022-10-05 22:04:24.654243	2022-10-05 22:04:24.654243
1243	1237	8	2022-10-05 22:04:24.661958	2022-10-05 22:04:24.661958
1244	1237	9	2022-10-05 22:04:24.669761	2022-10-05 22:04:24.669761
1245	1237	10	2022-10-05 22:04:24.677659	2022-10-05 22:04:24.677659
1247	417	3	2022-10-05 22:04:24.702572	2022-10-05 22:04:24.702572
1250	417	6	2022-10-05 22:04:24.724267	2022-10-05 22:04:24.724267
1251	417	7	2022-10-05 22:04:24.732045	2022-10-05 22:04:24.732045
1254	435	2	2022-10-05 22:04:24.753468	2022-10-05 22:04:24.753468
1257	435	5	2022-10-05 22:04:24.776005	2022-10-05 22:04:24.776005
1259	435	7	2022-10-05 22:04:24.790588	2022-10-05 22:04:24.790588
1260	435	8	2022-10-05 22:04:24.798174	2022-10-05 22:04:24.798174
1266	443	5	2022-10-05 22:04:24.841879	2022-10-05 22:04:24.841879
1270	443	9	2022-10-05 22:04:24.869434	2022-10-05 22:04:24.869434
1274	450	4	2022-10-05 22:04:24.895355	2022-10-05 22:04:24.895355
1276	450	6	2022-10-05 22:04:24.908063	2022-10-05 22:04:24.908063
1296	480	4	2022-10-05 22:04:25.037236	2022-10-05 22:04:25.037236
1298	480	6	2022-10-05 22:04:25.049021	2022-10-05 22:04:25.049021
1302	480	10	2022-10-05 22:04:25.072818	2022-10-05 22:04:25.072818
1313	500	1	2022-10-05 22:04:25.153695	2022-10-05 22:04:25.153695
1323	509	3	2022-10-05 22:04:25.217115	2022-10-05 22:04:25.217115
1326	509	6	2022-10-05 22:04:25.235063	2022-10-05 22:04:25.235063
1333	517	7	2022-10-05 22:04:25.277753	2022-10-05 22:04:25.277753
1371	556	8	2022-10-05 22:04:25.504384	2022-10-05 22:04:25.504384
1377	183	5	2022-10-05 22:04:25.538224	2022-10-05 22:04:25.538224
1391	102	5	2022-10-05 22:04:25.636691	2022-10-05 22:04:25.636691
1392	121	4	2022-10-05 22:04:25.64158	2022-10-05 22:04:25.64158
1393	121	8	2022-10-05 22:04:25.647032	2022-10-05 22:04:25.647032
1394	121	9	2022-10-05 22:04:25.653108	2022-10-05 22:04:25.653108
1566	1	11	2022-10-05 22:04:26.704791	2022-10-05 22:04:26.704791
1593	27	11	2022-10-05 22:04:26.869661	2022-10-05 22:04:26.869661
1594	27	12	2022-10-05 22:04:26.874943	2022-10-05 22:04:26.874943
1595	27	14	2022-10-05 22:04:26.880309	2022-10-05 22:04:26.880309
1596	37	1	2022-10-05 22:04:26.885473	2022-10-05 22:04:26.885473
1601	37	6	2022-10-05 22:04:26.915932	2022-10-05 22:04:26.915932
1602	37	7	2022-10-05 22:04:26.921321	2022-10-05 22:04:26.921321
1604	37	9	2022-10-05 22:04:26.932909	2022-10-05 22:04:26.932909
1605	37	10	2022-10-05 22:04:26.937902	2022-10-05 22:04:26.937902
1606	37	11	2022-10-05 22:04:26.943724	2022-10-05 22:04:26.943724
1614	46	11	2022-10-05 22:04:26.990876	2022-10-05 22:04:26.990876
1615	46	12	2022-10-05 22:04:26.996754	2022-10-05 22:04:26.996754
1616	46	13	2022-10-05 22:04:27.003147	2022-10-05 22:04:27.003147
1617	46	14	2022-10-05 22:04:27.009123	2022-10-05 22:04:27.009123
1618	46	15	2022-10-05 22:04:27.015655	2022-10-05 22:04:27.015655
1624	56	12	2022-10-05 22:04:27.05378	2022-10-05 22:04:27.05378
1626	77	2	2022-10-05 22:04:27.066909	2022-10-05 22:04:27.066909
1627	77	3	2022-10-05 22:04:27.072525	2022-10-05 22:04:27.072525
1628	77	4	2022-10-05 22:04:27.079664	2022-10-05 22:04:27.079664
1634	88	3	2022-10-05 22:04:27.115666	2022-10-05 22:04:27.115666
1635	88	4	2022-10-05 22:04:27.121155	2022-10-05 22:04:27.121155
1638	88	8	2022-10-05 22:04:27.14034	2022-10-05 22:04:27.14034
1641	88	11	2022-10-05 22:04:27.158181	2022-10-05 22:04:27.158181
1642	88	12	2022-10-05 22:04:27.165368	2022-10-05 22:04:27.165368
1661	126	9	2022-10-05 22:04:27.278364	2022-10-05 22:04:27.278364
1677	145	4	2022-10-05 22:04:27.381212	2022-10-05 22:04:27.381212
1680	145	7	2022-10-05 22:04:27.399033	2022-10-05 22:04:27.399033
1690	154	11	2022-10-05 22:04:27.455638	2022-10-05 22:04:27.455638
1706	1706	1	2022-10-05 22:04:27.550023	2022-10-05 22:04:27.550023
1707	1706	4	2022-10-05 22:04:27.554956	2022-10-05 22:04:27.554956
1708	1706	5	2022-10-05 22:04:27.560592	2022-10-05 22:04:27.560592
1720	191	12	2022-10-05 22:04:27.636676	2022-10-05 22:04:27.636676
1748	226	11	2022-10-05 22:04:27.787003	2022-10-05 22:04:27.787003
1762	241	11	2022-10-05 22:04:27.878362	2022-10-05 22:04:27.878362
1763	241	12	2022-10-05 22:04:27.884186	2022-10-05 22:04:27.884186
1764	241	13	2022-10-05 22:04:27.889487	2022-10-05 22:04:27.889487
1765	241	14	2022-10-05 22:04:27.89825	2022-10-05 22:04:27.89825
1783	273	11	2022-10-05 22:04:27.99837	2022-10-05 22:04:27.99837
1784	273	12	2022-10-05 22:04:28.003399	2022-10-05 22:04:28.003399
1785	273	13	2022-10-05 22:04:28.008604	2022-10-05 22:04:28.008604
1786	273	14	2022-10-05 22:04:28.013953	2022-10-05 22:04:28.013953
1787	273	15	2022-10-05 22:04:28.019656	2022-10-05 22:04:28.019656
1794	1794	1	2022-10-05 22:04:28.064415	2022-10-05 22:04:28.064415
1795	1794	2	2022-10-05 22:04:28.070478	2022-10-05 22:04:28.070478
1796	1794	3	2022-10-05 22:04:28.078014	2022-10-05 22:04:28.078014
1797	1794	4	2022-10-05 22:04:28.08404	2022-10-05 22:04:28.08404
1798	1794	5	2022-10-05 22:04:28.090584	2022-10-05 22:04:28.090584
1799	1794	6	2022-10-05 22:04:28.096734	2022-10-05 22:04:28.096734
1800	1794	7	2022-10-05 22:04:28.103221	2022-10-05 22:04:28.103221
1801	1794	8	2022-10-05 22:04:28.109181	2022-10-05 22:04:28.109181
1802	1794	9	2022-10-05 22:04:28.115358	2022-10-05 22:04:28.115358
1803	1794	10	2022-10-05 22:04:28.120566	2022-10-05 22:04:28.120566
1809	303	11	2022-10-05 22:04:28.156484	2022-10-05 22:04:28.156484
1810	303	12	2022-10-05 22:04:28.163069	2022-10-05 22:04:28.163069
1811	303	13	2022-10-05 22:04:28.168409	2022-10-05 22:04:28.168409
1812	303	14	2022-10-05 22:04:28.17404	2022-10-05 22:04:28.17404
1813	303	15	2022-10-05 22:04:28.180102	2022-10-05 22:04:28.180102
1821	313	9	2022-10-05 22:04:28.225366	2022-10-05 22:04:28.225366
1837	334	11	2022-10-05 22:04:28.325582	2022-10-05 22:04:28.325582
1838	334	12	2022-10-05 22:04:28.332368	2022-10-05 22:04:28.332368
1839	1839	1	2022-10-05 22:04:28.339035	2022-10-05 22:04:28.339035
1840	1839	2	2022-10-05 22:04:28.345172	2022-10-05 22:04:28.345172
1841	1839	3	2022-10-05 22:04:28.351635	2022-10-05 22:04:28.351635
1842	1839	4	2022-10-05 22:04:28.357599	2022-10-05 22:04:28.357599
1843	1839	5	2022-10-05 22:04:28.362896	2022-10-05 22:04:28.362896
1844	1839	6	2022-10-05 22:04:28.36916	2022-10-05 22:04:28.36916
1845	1839	7	2022-10-05 22:04:28.375372	2022-10-05 22:04:28.375372
1846	1839	8	2022-10-05 22:04:28.383297	2022-10-05 22:04:28.383297
1858	373	12	2022-10-05 22:04:28.457664	2022-10-05 22:04:28.457664
1859	373	13	2022-10-05 22:04:28.464851	2022-10-05 22:04:28.464851
1869	392	11	2022-10-05 22:04:28.526235	2022-10-05 22:04:28.526235
1870	392	12	2022-10-05 22:04:28.532425	2022-10-05 22:04:28.532425
1875	1237	5	2022-10-05 22:04:28.562841	2022-10-05 22:04:28.562841
1896	435	13	2022-10-05 22:04:28.702074	2022-10-05 22:04:28.702074
1906	443	11	2022-10-05 22:04:28.765059	2022-10-05 22:04:28.765059
1907	443	12	2022-10-05 22:04:28.771173	2022-10-05 22:04:28.771173
1908	443	13	2022-10-05 22:04:28.780608	2022-10-05 22:04:28.780608
1909	443	14	2022-10-05 22:04:28.786761	2022-10-05 22:04:28.786761
1941	490	11	2022-10-05 22:04:29.024095	2022-10-05 22:04:29.024095
1959	509	11	2022-10-05 22:04:29.144968	2022-10-05 22:04:29.144968
1960	509	12	2022-10-05 22:04:29.15116	2022-10-05 22:04:29.15116
1971	546	11	2022-10-05 22:04:29.230047	2022-10-05 22:04:29.230047
1972	546	12	2022-10-05 22:04:29.23574	2022-10-05 22:04:29.23574
1973	546	13	2022-10-05 22:04:29.242696	2022-10-05 22:04:29.242696
1974	546	14	2022-10-05 22:04:29.249221	2022-10-05 22:04:29.249221
1984	556	13	2022-10-05 22:04:29.31782	2022-10-05 22:04:29.31782
1985	556	14	2022-10-05 22:04:29.325115	2022-10-05 22:04:29.325115
1986	566	1	2022-10-05 22:04:29.333796	2022-10-05 22:04:29.333796
1988	566	3	2022-10-05 22:04:29.346889	2022-10-05 22:04:29.346889
1989	566	4	2022-10-05 22:04:29.353507	2022-10-05 22:04:29.353507
1991	566	7	2022-10-05 22:04:29.366179	2022-10-05 22:04:29.366179
2196	11	12	2022-10-05 22:04:30.66457	2022-10-05 22:04:30.66457
2199	80	8	2022-10-05 22:04:30.683619	2022-10-05 22:04:30.683619
2201	80	12	2022-10-05 22:04:30.69499	2022-10-05 22:04:30.69499
2202	80	14	2022-10-05 22:04:30.700317	2022-10-05 22:04:30.700317
2204	88	14	2022-10-05 22:04:30.711709	2022-10-05 22:04:30.711709
2205	102	15	2022-10-05 22:04:30.717164	2022-10-05 22:04:30.717164
2206	121	15	2022-10-05 22:04:30.722255	2022-10-05 22:04:30.722255
2208	126	13	2022-10-05 22:04:30.734321	2022-10-05 22:04:30.734321
2209	126	14	2022-10-05 22:04:30.740515	2022-10-05 22:04:30.740515
2210	136	12	2022-10-05 22:04:30.746843	2022-10-05 22:04:30.746843
2212	164	11	2022-10-05 22:04:30.758404	2022-10-05 22:04:30.758404
2213	164	12	2022-10-05 22:04:30.766287	2022-10-05 22:04:30.766287
2216	183	12	2022-10-05 22:04:30.784123	2022-10-05 22:04:30.784123
2217	183	13	2022-10-05 22:04:30.789505	2022-10-05 22:04:30.789505
2222	221	13	2022-10-05 22:04:30.81612	2022-10-05 22:04:30.81612
2224	262	12	2022-10-05 22:04:30.828886	2022-10-05 22:04:30.828886
2225	262	13	2022-10-05 22:04:30.836545	2022-10-05 22:04:30.836545
2229	402	10	2022-10-05 22:04:30.860522	2022-10-05 22:04:30.860522
2234	443	15	2022-10-05 22:04:30.887424	2022-10-05 22:04:30.887424
2239	566	17	2022-10-05 22:04:30.918412	2022-10-05 22:04:30.918412
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-10-05 22:04:16.618683	2022-10-05 22:04:16.618683
\.


--
-- Data for Name: cytometry_readings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cytometry_readings (id, accession_id, minimum_peak, mean_f2, peak_pattern, chromosome_count, chromosome_count_certain, created_at, updated_at) FROM stdin;
1	1566	180	270	{180,360}	{}	t	2022-10-05 22:04:44.422231	2022-10-05 22:04:44.422231
2	11	180	280	{180,380}	{}	t	2022-10-05 22:04:44.436602	2022-10-05 22:04:44.436602
3	12	100	170	{100,240,480}	{}	t	2022-10-05 22:04:44.439473	2022-10-05 22:04:44.439473
4	13	180	270	{180,360}	{}	t	2022-10-05 22:04:44.444361	2022-10-05 22:04:44.444361
5	14	120	185	{120,250,500}	{}	t	2022-10-05 22:04:44.4473	2022-10-05 22:04:44.4473
6	901	100	170	{100,240,480}	{}	t	2022-10-05 22:04:44.449825	2022-10-05 22:04:44.449825
7	904	180	270	{180,360}	{}	t	2022-10-05 22:04:44.452219	2022-10-05 22:04:44.452219
8	19	180	270	{180,360}	{36,38}	t	2022-10-05 22:04:44.454508	2022-10-05 22:04:44.454508
9	906	180	270	{180,360}	{}	t	2022-10-05 22:04:44.458121	2022-10-05 22:04:44.458121
10	20	180	270	{180,360}	{}	t	2022-10-05 22:04:44.460762	2022-10-05 22:04:44.460762
11	21	180	280	{180,380}	{}	t	2022-10-05 22:04:44.464079	2022-10-05 22:04:44.464079
12	23	180	270	{180,360}	{}	t	2022-10-05 22:04:44.466589	2022-10-05 22:04:44.466589
13	24	207	303.5	{207,400}	{}	t	2022-10-05 22:04:44.469078	2022-10-05 22:04:44.469078
14	25	207	303.5	{207,400}	{}	t	2022-10-05 22:04:44.471379	2022-10-05 22:04:44.471379
15	26	180	270	{180,360}	{}	t	2022-10-05 22:04:44.474117	2022-10-05 22:04:44.474117
16	31	200	300	{200,400}	{}	t	2022-10-05 22:04:44.476853	2022-10-05 22:04:44.476853
17	34	207	313.5	{207,420,840}	{}	t	2022-10-05 22:04:44.479308	2022-10-05 22:04:44.479308
18	35	207	293.5	{207,380,740}	{36,38}	t	2022-10-05 22:04:44.482633	2022-10-05 22:04:44.482633
19	1594	200	290	{200,380,740}	{}	t	2022-10-05 22:04:44.484947	2022-10-05 22:04:44.484947
20	1595	200	300	{200,400,760}	{36,38}	t	2022-10-05 22:04:44.487577	2022-10-05 22:04:44.487577
21	1596	180	260	{180,340}	{}	t	2022-10-05 22:04:44.493615	2022-10-05 22:04:44.493615
22	37	180	280	{180,380}	{}	t	2022-10-05 22:04:44.496284	2022-10-05 22:04:44.496284
23	38	220	335	{220,450}	{}	t	2022-10-05 22:04:44.499632	2022-10-05 22:04:44.499632
24	39	180	270	{180,360}	{}	t	2022-10-05 22:04:44.502001	2022-10-05 22:04:44.502001
25	40	180	270	{180,360}	{}	t	2022-10-05 22:04:44.504722	2022-10-05 22:04:44.504722
26	1601	180	270	{180,360}	{}	t	2022-10-05 22:04:44.507452	2022-10-05 22:04:44.507452
27	1602	240	360	{240,480}	{}	t	2022-10-05 22:04:44.509989	2022-10-05 22:04:44.509989
28	1605	180	270	{180,360}	{}	t	2022-10-05 22:04:44.512535	2022-10-05 22:04:44.512535
29	1606	180	265	{180,350}	{}	t	2022-10-05 22:04:44.515005	2022-10-05 22:04:44.515005
30	50	140	210	{140,280,520}	{}	t	2022-10-05 22:04:44.517452	2022-10-05 22:04:44.517452
31	54	180	270	{180,360,720}	{}	t	2022-10-05 22:04:44.519907	2022-10-05 22:04:44.519907
32	56	180	270	{180,360}	{}	t	2022-10-05 22:04:44.522314	2022-10-05 22:04:44.522314
33	66	160	240	{160,320}	{}	t	2022-10-05 22:04:44.525131	2022-10-05 22:04:44.525131
34	77	220	330	{220,440}	{}	t	2022-10-05 22:04:44.527641	2022-10-05 22:04:44.527641
35	1627	200	290	{200,380}	{}	t	2022-10-05 22:04:44.530299	2022-10-05 22:04:44.530299
36	1628	340	510	{340,680}	{}	t	2022-10-05 22:04:44.532906	2022-10-05 22:04:44.532906
37	81	210	315	{210,420}	{}	t	2022-10-05 22:04:44.535698	2022-10-05 22:04:44.535698
38	83	200	290	{200,380}	{}	t	2022-10-05 22:04:44.538032	2022-10-05 22:04:44.538032
39	88	160	240	{160,320}	{}	t	2022-10-05 22:04:44.540561	2022-10-05 22:04:44.540561
40	89	160	240	{160,320}	{}	t	2022-10-05 22:04:44.543014	2022-10-05 22:04:44.543014
41	1634	210	305	{210,400}	{}	t	2022-10-05 22:04:44.54581	2022-10-05 22:04:44.54581
42	1635	200	290	{200,380}	{}	t	2022-10-05 22:04:44.5485	2022-10-05 22:04:44.5485
43	956	140	220	{140,300}	{}	t	2022-10-05 22:04:44.550911	2022-10-05 22:04:44.550911
44	957	220	330	{220,440}	{}	t	2022-10-05 22:04:44.553576	2022-10-05 22:04:44.553576
45	1638	200	300	{200,400}	{}	t	2022-10-05 22:04:44.556063	2022-10-05 22:04:44.556063
46	91	200	300	{200,400}	{}	t	2022-10-05 22:04:44.55889	2022-10-05 22:04:44.55889
47	959	200	300	{200,400}	{}	t	2022-10-05 22:04:44.561467	2022-10-05 22:04:44.561467
48	1641	200	300	{200,400}	{}	t	2022-10-05 22:04:44.565128	2022-10-05 22:04:44.565128
49	1642	180	270	{180,360}	{}	t	2022-10-05 22:04:44.568115	2022-10-05 22:04:44.568115
50	92	180	270	{180,360}	{}	t	2022-10-05 22:04:44.57041	2022-10-05 22:04:44.57041
51	93	200	300	{200,400}	{28}	t	2022-10-05 22:04:44.574757	2022-10-05 22:04:44.574757
52	95	140	220	{140,300}	{}	t	2022-10-05 22:04:44.584121	2022-10-05 22:04:44.584121
53	971	210	317.5	{210,425}	{}	t	2022-10-05 22:04:44.586535	2022-10-05 22:04:44.586535
54	102	207	303.5	{207,400}	{}	t	2022-10-05 22:04:44.588949	2022-10-05 22:04:44.588949
55	103	240	360	{240,480}	{}	t	2022-10-05 22:04:44.593197	2022-10-05 22:04:44.593197
56	1391	360	520	{360,680}	{50}	t	2022-10-05 22:04:44.596617	2022-10-05 22:04:44.596617
57	104	207	306.5	{207,406}	{}	t	2022-10-05 22:04:44.599714	2022-10-05 22:04:44.599714
58	105	220	330	{220,440}	{36,38}	t	2022-10-05 22:04:44.602068	2022-10-05 22:04:44.602068
59	107	220	330	{220,440}	{}	t	2022-10-05 22:04:44.60469	2022-10-05 22:04:44.60469
60	121	180	270	{180,360}	{}	t	2022-10-05 22:04:44.607932	2022-10-05 22:04:44.607932
61	123	160	240	{160,320}	{}	t	2022-10-05 22:04:44.61067	2022-10-05 22:04:44.61067
62	1392	220	330	{220,440}	{}	t	2022-10-05 22:04:44.613362	2022-10-05 22:04:44.613362
63	128	220	320	{220,420,840}	{}	t	2022-10-05 22:04:44.615931	2022-10-05 22:04:44.615931
64	131	220	330	{220,440,880}	{}	t	2022-10-05 22:04:44.618407	2022-10-05 22:04:44.618407
65	132	220	330	{220,440,880}	{}	t	2022-10-05 22:04:44.620974	2022-10-05 22:04:44.620974
66	1661	220	330	{220,440}	{}	t	2022-10-05 22:04:44.624348	2022-10-05 22:04:44.624348
67	997	220	340	{220,460,880}	{}	t	2022-10-05 22:04:44.62818	2022-10-05 22:04:44.62818
68	136	240	360	{240,480}	{}	t	2022-10-05 22:04:44.631535	2022-10-05 22:04:44.631535
69	137	220	340	{220,460}	{}	t	2022-10-05 22:04:44.633945	2022-10-05 22:04:44.633945
70	138	220	330	{220,440,900}	{}	t	2022-10-05 22:04:44.636618	2022-10-05 22:04:44.636618
71	1001	220	330	{220,440,900}	{}	t	2022-10-05 22:04:44.639076	2022-10-05 22:04:44.639076
72	1003	220	335	{220,450}	{}	t	2022-10-05 22:04:44.644756	2022-10-05 22:04:44.644756
73	1004	240	360	{240,480}	{}	t	2022-10-05 22:04:44.650907	2022-10-05 22:04:44.650907
74	140	240	360	{240,480}	{36,38}	t	2022-10-05 22:04:44.653406	2022-10-05 22:04:44.653406
75	146	210	310	{210,410}	{}	t	2022-10-05 22:04:44.656318	2022-10-05 22:04:44.656318
76	147	75	107.5	{75,140,280,560}	{}	t	2022-10-05 22:04:44.659625	2022-10-05 22:04:44.659625
77	1677	260	390	{260,520}	{}	t	2022-10-05 22:04:44.662715	2022-10-05 22:04:44.662715
78	148	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.665489	2022-10-05 22:04:44.665489
79	1680	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.668011	2022-10-05 22:04:44.668011
80	150	210	315	{210,420}	{}	t	2022-10-05 22:04:44.671204	2022-10-05 22:04:44.671204
81	151	160	240	{160,320,640}	{}	t	2022-10-05 22:04:44.673231	2022-10-05 22:04:44.673231
82	152	207	306.5	{207,406}	{}	t	2022-10-05 22:04:44.676057	2022-10-05 22:04:44.676057
83	161	75	107.5	{75,140,280}	{}	t	2022-10-05 22:04:44.678514	2022-10-05 22:04:44.678514
84	162	140	205	{140,270}	{}	t	2022-10-05 22:04:44.681413	2022-10-05 22:04:44.681413
85	164	100	170	{100,240,480}	{}	t	2022-10-05 22:04:44.684114	2022-10-05 22:04:44.684114
86	166	100	150	{100,200,400}	{}	t	2022-10-05 22:04:44.686586	2022-10-05 22:04:44.686586
87	167	100	160	{100,220,440}	{}	t	2022-10-05 22:04:44.689237	2022-10-05 22:04:44.689237
88	168	100	160	{100,220,440}	{}	t	2022-10-05 22:04:44.692011	2022-10-05 22:04:44.692011
89	169	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.694566	2022-10-05 22:04:44.694566
90	173	160	240	{160,320,640}	{}	t	2022-10-05 22:04:44.697355	2022-10-05 22:04:44.697355
91	174	100	160	{100,220,460}	{}	t	2022-10-05 22:04:44.699642	2022-10-05 22:04:44.699642
92	176	100	160	{100,220,460}	{}	t	2022-10-05 22:04:44.70203	2022-10-05 22:04:44.70203
93	180	100	160	{100,220,460}	{}	t	2022-10-05 22:04:44.704276	2022-10-05 22:04:44.704276
94	183	180	270	{180,360}	{}	t	2022-10-05 22:04:44.706741	2022-10-05 22:04:44.706741
95	184	200	290	{200,380}	{}	t	2022-10-05 22:04:44.709534	2022-10-05 22:04:44.709534
96	186	180	270	{180,360,700}	{}	t	2022-10-05 22:04:44.712225	2022-10-05 22:04:44.712225
97	1377	180	270	{180,360}	{}	t	2022-10-05 22:04:44.714976	2022-10-05 22:04:44.714976
98	1707	220	340	{220,460}	{}	t	2022-10-05 22:04:44.717299	2022-10-05 22:04:44.717299
99	1708	220	330	{220,440}	{}	t	2022-10-05 22:04:44.719725	2022-10-05 22:04:44.719725
100	191	180	270	{180,360,720}	{}	t	2022-10-05 22:04:44.722046	2022-10-05 22:04:44.722046
101	1044	180	270	{180,360,700}	{}	t	2022-10-05 22:04:44.728812	2022-10-05 22:04:44.728812
102	192	160	240	{160,320,640}	{}	t	2022-10-05 22:04:44.73192	2022-10-05 22:04:44.73192
103	193	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.734417	2022-10-05 22:04:44.734417
104	194	180	270	{180,360,720}	{}	t	2022-10-05 22:04:44.737196	2022-10-05 22:04:44.737196
105	195	180	270	{180,360,720}	{}	t	2022-10-05 22:04:44.740381	2022-10-05 22:04:44.740381
106	196	200	290	{200,380,760}	{}	t	2022-10-05 22:04:44.746373	2022-10-05 22:04:44.746373
107	197	200	300	{200,400,800}	{}	t	2022-10-05 22:04:44.749828	2022-10-05 22:04:44.749828
108	198	200	300	{200,400,800}	{}	t	2022-10-05 22:04:44.75276	2022-10-05 22:04:44.75276
109	199	200	300	{200,400,760}	{}	t	2022-10-05 22:04:44.755196	2022-10-05 22:04:44.755196
110	200	200	300	{200,400,760}	{}	t	2022-10-05 22:04:44.758473	2022-10-05 22:04:44.758473
111	1720	180	270	{180,360,720}	{}	t	2022-10-05 22:04:44.761021	2022-10-05 22:04:44.761021
112	202	180	270	{180,360,740}	{}	t	2022-10-05 22:04:44.763768	2022-10-05 22:04:44.763768
113	1057	140	200	{140,260,520}	{}	t	2022-10-05 22:04:44.766635	2022-10-05 22:04:44.766635
114	208	140	200	{140,260,520}	{}	t	2022-10-05 22:04:44.769286	2022-10-05 22:04:44.769286
115	211	180	270	{180,360}	{}	t	2022-10-05 22:04:44.772018	2022-10-05 22:04:44.772018
116	212	200	300	{200,400,800}	{}	t	2022-10-05 22:04:44.774805	2022-10-05 22:04:44.774805
117	213	180	270	{180,360,760}	{}	t	2022-10-05 22:04:44.777521	2022-10-05 22:04:44.777521
118	214	180	280	{180,380,760}	{}	t	2022-10-05 22:04:44.780886	2022-10-05 22:04:44.780886
119	1071	140	210	{140,280,540}	{}	t	2022-10-05 22:04:44.783581	2022-10-05 22:04:44.783581
120	222	140	200	{140,260,520}	{}	t	2022-10-05 22:04:44.786579	2022-10-05 22:04:44.786579
121	1074	140	200	{140,260,500}	{}	t	2022-10-05 22:04:44.788895	2022-10-05 22:04:44.788895
122	223	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.792055	2022-10-05 22:04:44.792055
123	1077	200	300	{200,400,800}	{}	t	2022-10-05 22:04:44.794677	2022-10-05 22:04:44.794677
124	1078	120	180	{120,240,500}	{}	t	2022-10-05 22:04:44.797728	2022-10-05 22:04:44.797728
125	1079	200	300	{200,400,800}	{}	t	2022-10-05 22:04:44.80023	2022-10-05 22:04:44.80023
126	226	180	270	{180,360,720}	{}	t	2022-10-05 22:04:44.802836	2022-10-05 22:04:44.802836
127	227	250	375	{250,500,960}	{}	t	2022-10-05 22:04:44.805612	2022-10-05 22:04:44.805612
128	1084	200	300	{200,400,760}	{}	t	2022-10-05 22:04:44.808421	2022-10-05 22:04:44.808421
129	230	240	370	{240,500}	{}	t	2022-10-05 22:04:44.811121	2022-10-05 22:04:44.811121
130	231	240	370	{240,500}	{}	t	2022-10-05 22:04:44.81398	2022-10-05 22:04:44.81398
131	232	300	440	{300,580}	{}	t	2022-10-05 22:04:44.816606	2022-10-05 22:04:44.816606
132	234	200	300	{200,400,780}	{}	t	2022-10-05 22:04:44.819332	2022-10-05 22:04:44.819332
133	1748	300	440	{300,580}	{}	t	2022-10-05 22:04:44.821899	2022-10-05 22:04:44.821899
134	1087	200	290	{200,380}	{}	t	2022-10-05 22:04:44.824958	2022-10-05 22:04:44.824958
135	235	200	290	{200,380}	{}	t	2022-10-05 22:04:44.828034	2022-10-05 22:04:44.828034
136	1089	200	300	{200,400}	{}	t	2022-10-05 22:04:44.830974	2022-10-05 22:04:44.830974
137	244	100	160	{100,220,440}	{}	t	2022-10-05 22:04:44.834521	2022-10-05 22:04:44.834521
138	245	100	160	{100,220,440}	{}	t	2022-10-05 22:04:44.837008	2022-10-05 22:04:44.837008
139	246	100	160	{100,220,440}	{}	t	2022-10-05 22:04:44.83941	2022-10-05 22:04:44.83941
140	247	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.842002	2022-10-05 22:04:44.842002
141	248	100	160	{100,220,440}	{}	t	2022-10-05 22:04:44.844599	2022-10-05 22:04:44.844599
142	1762	180	270	{180,360}	{}	t	2022-10-05 22:04:44.847615	2022-10-05 22:04:44.847615
143	1763	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.850544	2022-10-05 22:04:44.850544
144	1764	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.853214	2022-10-05 22:04:44.853214
145	1765	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.855426	2022-10-05 22:04:44.855426
146	251	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.857964	2022-10-05 22:04:44.857964
147	252	220	330	{220,440}	{}	t	2022-10-05 22:04:44.860804	2022-10-05 22:04:44.860804
148	253	220	330	{220,440}	{}	t	2022-10-05 22:04:44.863732	2022-10-05 22:04:44.863732
149	254	220	330	{220,440}	{}	t	2022-10-05 22:04:44.86676	2022-10-05 22:04:44.86676
150	262	220	330	{220,440}	{}	t	2022-10-05 22:04:44.869244	2022-10-05 22:04:44.869244
151	263	220	330	{220,440}	{}	t	2022-10-05 22:04:44.872085	2022-10-05 22:04:44.872085
152	264	220	330	{220,440}	{}	t	2022-10-05 22:04:44.876164	2022-10-05 22:04:44.876164
153	266	220	330	{220,440}	{}	t	2022-10-05 22:04:44.878678	2022-10-05 22:04:44.878678
154	273	100	160	{100,220,440}	{}	t	2022-10-05 22:04:44.881619	2022-10-05 22:04:44.881619
155	274	180	270	{180,360,660}	{}	t	2022-10-05 22:04:44.884458	2022-10-05 22:04:44.884458
156	275	180	270	{180,360,680}	{}	t	2022-10-05 22:04:44.886974	2022-10-05 22:04:44.886974
157	276	100	160	{100,220,400}	{}	t	2022-10-05 22:04:44.889294	2022-10-05 22:04:44.889294
158	277	100	160	{100,220,400}	{}	t	2022-10-05 22:04:44.893613	2022-10-05 22:04:44.893613
159	278	180	270	{180,360,680}	{}	t	2022-10-05 22:04:44.896571	2022-10-05 22:04:44.896571
160	279	100	160	{100,220,400}	{}	t	2022-10-05 22:04:44.899306	2022-10-05 22:04:44.899306
161	281	100	160	{100,220,400}	{}	t	2022-10-05 22:04:44.901545	2022-10-05 22:04:44.901545
162	282	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.903897	2022-10-05 22:04:44.903897
163	1783	120	180	{120,240,480}	{}	t	2022-10-05 22:04:44.906785	2022-10-05 22:04:44.906785
164	1784	180	270	{180,360,680}	{}	t	2022-10-05 22:04:44.909382	2022-10-05 22:04:44.909382
165	1785	200	300	{200,400}	{}	t	2022-10-05 22:04:44.911795	2022-10-05 22:04:44.911795
166	1786	100	160	{100,220,400}	{}	t	2022-10-05 22:04:44.914427	2022-10-05 22:04:44.914427
167	1787	100	160	{100,220,400}	{}	t	2022-10-05 22:04:44.916845	2022-10-05 22:04:44.916845
168	286	100	160	{100,220,400}	{}	t	2022-10-05 22:04:44.919143	2022-10-05 22:04:44.919143
169	1794	180	270	{180,360}	{}	t	2022-10-05 22:04:44.921364	2022-10-05 22:04:44.921364
170	1796	200	290	{200,380}	{}	t	2022-10-05 22:04:44.924822	2022-10-05 22:04:44.924822
171	1798	240	360	{240,480}	{}	t	2022-10-05 22:04:44.92799	2022-10-05 22:04:44.92799
172	1799	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.930737	2022-10-05 22:04:44.930737
173	1800	207	306.5	{207,406}	{}	t	2022-10-05 22:04:44.93424	2022-10-05 22:04:44.93424
174	1801	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.937066	2022-10-05 22:04:44.937066
175	1802	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.940541	2022-10-05 22:04:44.940541
176	1803	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.94345	2022-10-05 22:04:44.94345
177	306	140	200	{140,260,560}	{}	t	2022-10-05 22:04:44.946308	2022-10-05 22:04:44.946308
178	307	140	200	{140,260,560}	{}	t	2022-10-05 22:04:44.948832	2022-10-05 22:04:44.948832
179	1812	260	410	{260,560}	{}	t	2022-10-05 22:04:44.951478	2022-10-05 22:04:44.951478
180	1147	140	200	{140,260,520}	{}	t	2022-10-05 22:04:44.954412	2022-10-05 22:04:44.954412
181	1148	120	170	{120,220,440}	{}	t	2022-10-05 22:04:44.95775	2022-10-05 22:04:44.95775
182	1150	240	360	{240,480}	{}	t	2022-10-05 22:04:44.960822	2022-10-05 22:04:44.960822
183	1151	100	155	{100,210,440}	{}	t	2022-10-05 22:04:44.964015	2022-10-05 22:04:44.964015
184	313	100	155	{100,210,440}	{}	t	2022-10-05 22:04:44.966791	2022-10-05 22:04:44.966791
185	1821	100	155	{100,210,420}	{}	t	2022-10-05 22:04:44.96929	2022-10-05 22:04:44.96929
186	1154	210	315	{210,420}	{38,0}	t	2022-10-05 22:04:44.971934	2022-10-05 22:04:44.971934
187	319	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.975256	2022-10-05 22:04:44.975256
188	321	207	303.5	{207,400}	{}	t	2022-10-05 22:04:44.978247	2022-10-05 22:04:44.978247
189	323	207	293.5	{207,380}	{}	t	2022-10-05 22:04:44.981082	2022-10-05 22:04:44.981082
190	334	210	317.5	{210,425}	{}	t	2022-10-05 22:04:44.984535	2022-10-05 22:04:44.984535
191	335	210	325	{210,440}	{}	t	2022-10-05 22:04:44.987275	2022-10-05 22:04:44.987275
192	336	210	325	{210,440}	{}	t	2022-10-05 22:04:44.9901	2022-10-05 22:04:44.9901
193	337	210	325	{210,440}	{38,0}	t	2022-10-05 22:04:44.993498	2022-10-05 22:04:44.993498
194	338	210	325	{210,440}	{}	t	2022-10-05 22:04:44.996165	2022-10-05 22:04:44.996165
195	339	210	325	{210,440}	{}	t	2022-10-05 22:04:44.999239	2022-10-05 22:04:44.999239
196	340	210	325	{210,440}	{}	t	2022-10-05 22:04:45.001947	2022-10-05 22:04:45.001947
197	341	210	335	{210,460}	{}	t	2022-10-05 22:04:45.004928	2022-10-05 22:04:45.004928
198	342	210	325	{210,440}	{}	t	2022-10-05 22:04:45.008842	2022-10-05 22:04:45.008842
199	1837	240	360	{240,480}	{}	t	2022-10-05 22:04:45.011656	2022-10-05 22:04:45.011656
200	1839	200	290	{200,380,740}	{}	t	2022-10-05 22:04:45.014689	2022-10-05 22:04:45.014689
201	1840	240	360	{240,480}	{}	t	2022-10-05 22:04:45.017704	2022-10-05 22:04:45.017704
202	1843	180	270	{180,360,680}	{}	t	2022-10-05 22:04:45.020454	2022-10-05 22:04:45.020454
203	1844	180	270	{180,360,680}	{}	t	2022-10-05 22:04:45.02453	2022-10-05 22:04:45.02453
204	1845	200	290	{200,380,720}	{}	t	2022-10-05 22:04:45.027835	2022-10-05 22:04:45.027835
205	1846	200	300	{200,400,720}	{}	t	2022-10-05 22:04:45.032076	2022-10-05 22:04:45.032076
206	373	200	300	{200,400,800}	{}	t	2022-10-05 22:04:45.035027	2022-10-05 22:04:45.035027
207	374	180	270	{180,360,680}	{}	t	2022-10-05 22:04:45.038472	2022-10-05 22:04:45.038472
208	376	180	270	{180,360,680}	{}	t	2022-10-05 22:04:45.044358	2022-10-05 22:04:45.044358
209	378	180	270	{180,360,680}	{}	t	2022-10-05 22:04:45.049301	2022-10-05 22:04:45.049301
210	1212	180	260	{180,340}	{}	t	2022-10-05 22:04:45.052422	2022-10-05 22:04:45.052422
211	380	200	300	{200,400,760}	{}	t	2022-10-05 22:04:45.05522	2022-10-05 22:04:45.05522
212	1858	180	270	{180,360,720}	{}	t	2022-10-05 22:04:45.060893	2022-10-05 22:04:45.060893
213	392	250	375	{250,500,920}	{}	t	2022-10-05 22:04:45.063943	2022-10-05 22:04:45.063943
214	395	280	400	{280,520}	{}	t	2022-10-05 22:04:45.068406	2022-10-05 22:04:45.068406
215	396	260	380	{260,500}	{}	t	2022-10-05 22:04:45.071575	2022-10-05 22:04:45.071575
216	397	180	270	{180,360,800}	{}	t	2022-10-05 22:04:45.076115	2022-10-05 22:04:45.076115
217	398	220	330	{220,440}	{}	t	2022-10-05 22:04:45.079708	2022-10-05 22:04:45.079708
218	399	240	360	{240,480}	{}	t	2022-10-05 22:04:45.083691	2022-10-05 22:04:45.083691
219	400	220	330	{220,440}	{}	t	2022-10-05 22:04:45.08723	2022-10-05 22:04:45.08723
220	401	250	375	{250,500}	{}	t	2022-10-05 22:04:45.101003	2022-10-05 22:04:45.101003
221	1869	220	330	{220,440,800}	{}	t	2022-10-05 22:04:45.104692	2022-10-05 22:04:45.104692
222	1870	200	300	{200,400,760}	{}	t	2022-10-05 22:04:45.108727	2022-10-05 22:04:45.108727
223	1237	180	270	{180,360,760}	{}	t	2022-10-05 22:04:45.112572	2022-10-05 22:04:45.112572
224	1238	180	270	{180,360,640}	{}	t	2022-10-05 22:04:45.118589	2022-10-05 22:04:45.118589
225	1239	180	270	{180,360}	{}	t	2022-10-05 22:04:45.122121	2022-10-05 22:04:45.122121
226	1240	180	270	{180,360}	{}	t	2022-10-05 22:04:45.126637	2022-10-05 22:04:45.126637
227	1875	200	300	{200,400,760}	{}	t	2022-10-05 22:04:45.131469	2022-10-05 22:04:45.131469
228	1241	200	290	{200,380}	{}	t	2022-10-05 22:04:45.135085	2022-10-05 22:04:45.135085
229	1242	200	290	{200,380,760}	{}	t	2022-10-05 22:04:45.139744	2022-10-05 22:04:45.139744
230	426	180	270	{180,360}	{}	t	2022-10-05 22:04:45.149294	2022-10-05 22:04:45.149294
231	428	180	270	{180,360}	{}	t	2022-10-05 22:04:45.152858	2022-10-05 22:04:45.152858
232	429	140	220	{140,300}	{}	t	2022-10-05 22:04:45.156196	2022-10-05 22:04:45.156196
233	430	180	270	{180,360}	{}	t	2022-10-05 22:04:45.161547	2022-10-05 22:04:45.161547
234	433	180	270	{180,360}	{}	t	2022-10-05 22:04:45.165653	2022-10-05 22:04:45.165653
235	1254	180	270	{180,360}	{}	t	2022-10-05 22:04:45.169533	2022-10-05 22:04:45.169533
236	436	180	270	{180,360}	{}	t	2022-10-05 22:04:45.173446	2022-10-05 22:04:45.173446
237	1257	180	270	{180,360}	{}	t	2022-10-05 22:04:45.178725	2022-10-05 22:04:45.178725
238	438	180	270	{180,360}	{}	t	2022-10-05 22:04:45.183866	2022-10-05 22:04:45.183866
239	1259	220	330	{220,440}	{}	t	2022-10-05 22:04:45.187607	2022-10-05 22:04:45.187607
240	439	100	160	{100,220,440}	{}	t	2022-10-05 22:04:45.193071	2022-10-05 22:04:45.193071
241	1896	180	270	{180,360}	{}	t	2022-10-05 22:04:45.197076	2022-10-05 22:04:45.197076
242	444	120	180	{120,240,460}	{}	t	2022-10-05 22:04:45.200736	2022-10-05 22:04:45.200736
243	445	100	160	{100,220,440}	{}	t	2022-10-05 22:04:45.203967	2022-10-05 22:04:45.203967
244	449	120	180	{120,240,460}	{}	t	2022-10-05 22:04:45.209948	2022-10-05 22:04:45.209948
245	1270	100	150	{100,200,400}	{}	t	2022-10-05 22:04:45.213677	2022-10-05 22:04:45.213677
246	1906	100	140	{100,180,360}	{}	t	2022-10-05 22:04:45.21743	2022-10-05 22:04:45.21743
247	450	120	190	{120,260,520}	{}	t	2022-10-05 22:04:45.220338	2022-10-05 22:04:45.220338
248	451	160	240	{160,320,600}	{}	t	2022-10-05 22:04:45.225286	2022-10-05 22:04:45.225286
249	452	140	220	{140,300,600}	{}	t	2022-10-05 22:04:45.229053	2022-10-05 22:04:45.229053
250	1274	200	290	{200,380,720}	{}	t	2022-10-05 22:04:45.232729	2022-10-05 22:04:45.232729
251	453	170	255	{170,340,680}	{}	t	2022-10-05 22:04:45.235676	2022-10-05 22:04:45.235676
252	455	170	255	{170,340,680}	{}	t	2022-10-05 22:04:45.238908	2022-10-05 22:04:45.238908
253	456	150	225	{150,300}	{}	t	2022-10-05 22:04:45.242672	2022-10-05 22:04:45.242672
254	458	140	220	{140,300}	{}	t	2022-10-05 22:04:45.246621	2022-10-05 22:04:45.246621
255	470	220	330	{220,440}	{}	t	2022-10-05 22:04:45.250613	2022-10-05 22:04:45.250613
256	480	170	255	{170,340}	{}	t	2022-10-05 22:04:45.254058	2022-10-05 22:04:45.254058
257	481	180	270	{180,360}	{}	t	2022-10-05 22:04:45.256744	2022-10-05 22:04:45.256744
258	482	200	290	{200,380}	{}	t	2022-10-05 22:04:45.259767	2022-10-05 22:04:45.259767
259	483	200	290	{200,380}	{}	t	2022-10-05 22:04:45.262395	2022-10-05 22:04:45.262395
260	1298	200	300	{200,400}	{}	t	2022-10-05 22:04:45.26658	2022-10-05 22:04:45.26658
261	484	200	300	{200,400}	{}	t	2022-10-05 22:04:45.269161	2022-10-05 22:04:45.269161
262	485	100	170	{100,240,480}	{}	t	2022-10-05 22:04:45.271674	2022-10-05 22:04:45.271674
263	1302	220	330	{220,440}	{}	t	2022-10-05 22:04:45.275256	2022-10-05 22:04:45.275256
264	491	180	270	{180,360}	{}	t	2022-10-05 22:04:45.278285	2022-10-05 22:04:45.278285
265	492	180	260	{180,340}	{}	t	2022-10-05 22:04:45.281708	2022-10-05 22:04:45.281708
266	493	200	290	{200,380}	{}	t	2022-10-05 22:04:45.28464	2022-10-05 22:04:45.28464
267	494	180	270	{180,360}	{}	t	2022-10-05 22:04:45.287246	2022-10-05 22:04:45.287246
268	495	180	260	{180,340}	{}	t	2022-10-05 22:04:45.291849	2022-10-05 22:04:45.291849
269	496	180	270	{180,360}	{}	t	2022-10-05 22:04:45.296418	2022-10-05 22:04:45.296418
270	497	180	270	{180,360}	{}	t	2022-10-05 22:04:45.299499	2022-10-05 22:04:45.299499
271	498	180	270	{180,360}	{}	t	2022-10-05 22:04:45.302108	2022-10-05 22:04:45.302108
272	1941	180	270	{180,360}	{}	t	2022-10-05 22:04:45.30482	2022-10-05 22:04:45.30482
273	1313	180	270	{180,360}	{}	t	2022-10-05 22:04:45.30851	2022-10-05 22:04:45.30851
274	500	200	300	{200,400}	{}	t	2022-10-05 22:04:45.311782	2022-10-05 22:04:45.311782
275	501	180	270	{180,360}	{}	t	2022-10-05 22:04:45.315686	2022-10-05 22:04:45.315686
276	502	180	270	{180,360}	{}	t	2022-10-05 22:04:45.31885	2022-10-05 22:04:45.31885
277	503	180	270	{180,360}	{}	t	2022-10-05 22:04:45.322248	2022-10-05 22:04:45.322248
278	504	180	270	{180,360}	{}	t	2022-10-05 22:04:45.326106	2022-10-05 22:04:45.326106
279	505	180	270	{180,360}	{}	t	2022-10-05 22:04:45.329106	2022-10-05 22:04:45.329106
280	506	180	260	{180,340}	{}	t	2022-10-05 22:04:45.333978	2022-10-05 22:04:45.333978
281	509	180	270	{180,360}	{}	t	2022-10-05 22:04:45.336755	2022-10-05 22:04:45.336755
282	511	180	270	{180,360}	{}	t	2022-10-05 22:04:45.339247	2022-10-05 22:04:45.339247
283	513	180	270	{180,360}	{}	t	2022-10-05 22:04:45.342207	2022-10-05 22:04:45.342207
284	514	180	270	{180,360}	{}	t	2022-10-05 22:04:45.344753	2022-10-05 22:04:45.344753
285	515	180	270	{180,360}	{}	t	2022-10-05 22:04:45.347704	2022-10-05 22:04:45.347704
286	1960	180	270	{180,360}	{}	t	2022-10-05 22:04:45.350069	2022-10-05 22:04:45.350069
287	546	180	270	{180,360}	{}	t	2022-10-05 22:04:45.353359	2022-10-05 22:04:45.353359
288	547	200	300	{200,400,800}	{}	t	2022-10-05 22:04:45.356422	2022-10-05 22:04:45.356422
289	548	160	240	{160,320,640}	{}	t	2022-10-05 22:04:45.360704	2022-10-05 22:04:45.360704
290	549	200	300	{200,400,800}	{}	t	2022-10-05 22:04:45.363089	2022-10-05 22:04:45.363089
291	551	180	270	{180,360,720}	{}	t	2022-10-05 22:04:45.365635	2022-10-05 22:04:45.365635
292	552	200	280	{200,360,720}	{}	t	2022-10-05 22:04:45.368107	2022-10-05 22:04:45.368107
293	553	120	185	{120,250,500}	{}	t	2022-10-05 22:04:45.370445	2022-10-05 22:04:45.370445
294	554	180	270	{180,360}	{}	t	2022-10-05 22:04:45.372768	2022-10-05 22:04:45.372768
295	1972	180	270	{180,360,720}	{}	t	2022-10-05 22:04:45.375581	2022-10-05 22:04:45.375581
296	556	120	180	{120,240,480}	{}	t	2022-10-05 22:04:45.37802	2022-10-05 22:04:45.37802
297	558	200	300	{200,400,800}	{}	t	2022-10-05 22:04:45.380699	2022-10-05 22:04:45.380699
298	560	200	300	{200,400,680}	{}	t	2022-10-05 22:04:45.383181	2022-10-05 22:04:45.383181
299	561	200	300	{200,400,760}	{}	t	2022-10-05 22:04:45.385538	2022-10-05 22:04:45.385538
300	564	160	240	{160,320,640}	{}	t	2022-10-05 22:04:45.387819	2022-10-05 22:04:45.387819
301	565	200	280	{200,360,720}	{}	t	2022-10-05 22:04:45.390169	2022-10-05 22:04:45.390169
302	1986	120	180	{120,240,480}	{}	t	2022-10-05 22:04:45.392647	2022-10-05 22:04:45.392647
303	568	140	210	{140,280,540}	{}	t	2022-10-05 22:04:45.395396	2022-10-05 22:04:45.395396
304	1991	220	320	{220,420,840}	{}	t	2022-10-05 22:04:45.397814	2022-10-05 22:04:45.397814
\.


--
-- Data for Name: leaf_communities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.leaf_communities (id, population_id, leaf_otu_1, leaf_otu_2, leaf_otu_3, leaf_otu_4, leaf_otu_5, leaf_otu_6, leaf_otu_8, leaf_otu_9, leaf_otu_10, leaf_otu_11, leaf_otu_12, leaf_otu_13, leaf_otu_14, leaf_otu_15, leaf_otu_16, leaf_otu_17, leaf_otu_18, leaf_otu_22, leaf_otu_23, leaf_otu_25, leaf_otu_27, leaf_otu_28, leaf_otu_29, leaf_otu_30, leaf_otu_31, leaf_otu_32, leaf_otu_33, leaf_otu_34, leaf_otu_35, leaf_otu_36, leaf_otu_37, leaf_otu_38, leaf_otu_42, leaf_otu_44, leaf_otu_51, leaf_otu_52, leaf_otu_57, leaf_otu_58, leaf_otu_63, leaf_otu_66, leaf_otu_67, leaf_otu_68, leaf_otu_70, leaf_otu_73, leaf_otu_74, leaf_otu_77, leaf_otu_78, leaf_otu_84, leaf_otu_89, leaf_otu_93, leaf_otu_94, leaf_otu_96, leaf_otu_100, leaf_otu_101, leaf_otu_109, leaf_otu_115, leaf_otu_116, leaf_otu_117, leaf_otu_120, leaf_otu_137, leaf_otu_152, leaf_otu_157, leaf_otu_179, leaf_otu_246, leaf_otu_365, leaf_microbiota_richness, leaf_microbiota_shannon, leaf_microbiota_pcoa1, leaf_microbiota_pcoa2, leaf_pathobiota_richness, leaf_pathobiota_shannon, leaf_pathobiota_pcoa1, leaf_pathobiota_pcoa2, created_at, updated_at) FROM stdin;
1	1	t	t	t	f	t	t	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	13.07456016	2.277505138	0.3392549338	0.05156025459	2.91958673	0.7510572654	0.07896689394	-0.114477726	2022-10-05 22:04:31.953618	2022-10-05 22:04:31.953618
2	11	t	f	t	t	t	t	f	t	f	t	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	11.46311016	1.985845138	0.07523493384	0.2296402546	2.33298673	0.3204572654	0.04828689394	0.03573227401	2022-10-05 22:04:31.972169	2022-10-05 22:04:31.972169
3	19	t	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	11.37722016	2.158405138	0.2026349338	0.2275402546	2.15138673	0.4144072654	0.009456893941	-0.155077726	2022-10-05 22:04:31.981511	2022-10-05 22:04:31.981511
4	2268	f	f	t	t	f	f	f	f	f	f	t	t	t	t	f	f	t	t	t	t	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	12.29246016	2.168205138	0.4362549338	0.2103402546	2.60346973	0.4205672654	0.1339468939	-0.09071772599	2022-10-05 22:04:31.988038	2022-10-05 22:04:31.988038
5	2269	t	t	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	11.77966016	1.898905138	0.08711493384	-0.08847974541	2.30298673	0.4341372654	0.04051689394	0.04826227401	2022-10-05 22:04:31.995366	2022-10-05 22:04:31.995366
6	27	t	t	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.33342016	1.928905138	0.1347949338	-0.1382597454	2.41848673	0.3811572654	-0.06636310606	-0.01736772599	2022-10-05 22:04:32.002792	2022-10-05 22:04:32.002792
7	2271	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.74726016	2.183205138	0.1345649338	-0.1085597454	3.15558673	0.6769572654	0.07643689394	-0.006887725993	2022-10-05 22:04:32.010309	2022-10-05 22:04:32.010309
8	2272	f	t	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.89266016	1.865305138	0.1576249338	-0.06789974541	2.88498673	0.5312272654	0.1836368939	-0.136067726	2022-10-05 22:04:32.016917	2022-10-05 22:04:32.016917
9	2273	t	f	t	t	t	t	f	f	f	t	f	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	11.07536016	2.130425138	-0.02654506616	-0.1951597454	2.47828673	0.6525572654	0.09475689394	0.09356227401	2022-10-05 22:04:32.023534	2022-10-05 22:04:32.023534
10	2274	t	f	t	t	t	t	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.31116016	2.013055138	-0.09054506616	-0.3941597454	2.38188673	0.2982572654	0.05013689394	0.04366227401	2022-10-05 22:04:32.032359	2022-10-05 22:04:32.032359
11	2275	t	f	t	t	t	t	f	t	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	10.67826016	2.044459138	-0.05504506616	-0.3558597454	2.72338673	0.5541572654	0.08035689394	-0.03179772599	2022-10-05 22:04:32.039045	2022-10-05 22:04:32.039045
12	2276	t	f	f	f	t	t	f	f	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.58386016	2.052845138	-0.07824506616	-0.3566597454	3.46528673	0.8803572654	0.09743689394	0.03928227401	2022-10-05 22:04:32.045808	2022-10-05 22:04:32.045808
13	2277	t	f	t	t	t	t	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.96896016	2.120265138	-0.04154506616	-0.3224597454	2.51472673	0.6437572654	-0.01234310606	0.03862227401	2022-10-05 22:04:32.052419	2022-10-05 22:04:32.052419
14	2278	f	t	t	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	12.19036016	2.002825138	0.1829349338	-0.06297974541	2.32778673	0.4579772654	0.04055689394	0.01082227401	2022-10-05 22:04:32.059499	2022-10-05 22:04:32.059499
15	2279	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.457160158	1.783505138	0.1782549338	-0.05899974541	2.80088673	0.5555072654	0.1840368939	-0.06794772599	2022-10-05 22:04:32.066469	2022-10-05 22:04:32.066469
16	2280	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.074212	2022-10-05 22:04:32.074212
17	2281	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	14.15246016	2.354105138	0.1557049338	-0.1039597454	2.12808673	0.3808572654	-0.05186310606	-0.08604772599	2022-10-05 22:04:32.080745	2022-10-05 22:04:32.080745
18	2282	t	t	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.80616016	1.988675138	0.1347649338	-0.09485974541	2.25948673	0.4238872654	0.1976368939	-0.08157772599	2022-10-05 22:04:32.087082	2022-10-05 22:04:32.087082
19	2283	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	13.48806016	2.349405138	0.1894649338	-0.05968974541	2.18618673	0.3813572654	0.1532068939	-0.01208772599	2022-10-05 22:04:32.094073	2022-10-05 22:04:32.094073
20	37	t	t	t	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.956660158	1.950615138	0.2281549338	0.02657025459	3.16188673	0.6152572654	0.003806893941	-0.207037726	2022-10-05 22:04:32.101147	2022-10-05 22:04:32.101147
21	2285	f	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.59526016	2.112205138	0.2944549338	0.1050402546	2.17058673	0.4030472654	-0.06586310606	-0.115827726	2022-10-05 22:04:32.107842	2022-10-05 22:04:32.107842
22	46	f	f	t	t	f	f	t	f	t	f	t	f	t	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	12.30396016	2.204605138	0.3143549338	0.1078402546	2.76138673	0.5668472654	0.09714689394	-0.123167726	2022-10-05 22:04:32.114937	2022-10-05 22:04:32.114937
23	2287	t	t	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	14.86976016	2.481005138	0.3121549338	0.1519402546	3.44428673	0.4088272654	0.004146893941	0.03816227401	2022-10-05 22:04:32.121195	2022-10-05 22:04:32.121195
24	2288	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	11.37049016	2.162505138	0.1900449338	-0.02957974541	2.80648673	0.6577572654	0.03362689394	-0.117077726	2022-10-05 22:04:32.130349	2022-10-05 22:04:32.130349
25	2289	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	8.984660158	1.805205138	0.1735649338	-0.03812974541	2.50930673	0.6311572654	0.04466689394	-0.04901872599	2022-10-05 22:04:32.137017	2022-10-05 22:04:32.137017
26	2290	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.29206016	2.081055138	0.2226549338	0.1033402546	2.46698673	0.4430472654	0.1902368939	-0.03025772599	2022-10-05 22:04:32.144616	2022-10-05 22:04:32.144616
27	56	t	t	t	t	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	t	f	f	t	f	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	12.46306016	2.290305138	0.3251549338	0.08751025459	2.88638673	0.4811172654	0.06306689394	0.003082274007	2022-10-05 22:04:32.152214	2022-10-05 22:04:32.152214
28	2292	f	f	t	t	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.85236016	2.083545138	0.1585549338	-0.08936974541	2.41688673	0.4864872654	-0.1289631061	-0.108917726	2022-10-05 22:04:32.158938	2022-10-05 22:04:32.158938
29	2293	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	15.10366016	2.443205138	0.1261449338	-0.02378974541	2.42158673	0.5066032654	0.07778689394	-0.168337726	2022-10-05 22:04:32.166061	2022-10-05 22:04:32.166061
30	2294	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.479860158	1.780005138	0.3087549338	0.1635402546	2.12118673	0.4187672654	0.008666893941	0.122762274	2022-10-05 22:04:32.172293	2022-10-05 22:04:32.172293
31	67	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	t	f	f	t	f	f	f	11.67166016	2.214305138	0.2532549338	-0.02834974541	2.48988673	0.4776272654	-0.03526310606	-0.131857726	2022-10-05 22:04:32.179767	2022-10-05 22:04:32.179767
32	2296	t	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	11.45091016	2.172705138	0.1918849338	0.07019025459	2.55891673	0.6430572654	0.08421389394	-0.09361772599	2022-10-05 22:04:32.185953	2022-10-05 22:04:32.185953
33	2297	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	14.25456016	2.266105138	0.1597149338	-0.02573974541	1.92038673	0.3281572654	0.05515689394	-0.01067772599	2022-10-05 22:04:32.192708	2022-10-05 22:04:32.192708
34	2298	f	t	t	t	f	f	t	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.47626016	1.850505138	0.1346849338	-0.06651974541	2.21038673	0.3640572654	0.2185368939	-0.03724772599	2022-10-05 22:04:32.19927	2022-10-05 22:04:32.19927
35	2299	t	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.29946016	2.188505138	0.1703549338	-0.01787974541	4.31938673	0.5865572654	0.1859368939	-0.05573272599	2022-10-05 22:04:32.205719	2022-10-05 22:04:32.205719
36	77	f	f	t	t	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	13.01046016	2.325605138	0.1777449338	-0.06668974541	2.27748673	0.4536172654	0.2629368939	-0.07557772599	2022-10-05 22:04:32.213302	2022-10-05 22:04:32.213302
37	80	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.12596016	2.222605138	0.1901449338	-0.06125974541	2.80688673	0.4846672654	0.07073689394	-0.06635772599	2022-10-05 22:04:32.219972	2022-10-05 22:04:32.219972
38	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.227124	2022-10-05 22:04:32.227124
39	2303	f	f	t	t	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	13.38366016	2.252605138	0.3227549338	0.09186025459	1.75758673	0.2830572654	0.02541689394	0.114062274	2022-10-05 22:04:32.234048	2022-10-05 22:04:32.234048
40	92	f	f	t	t	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	11.30665016	2.205105138	0.3859549338	0.1343402546	2.02788673	0.3339572654	0.2038368939	-0.08878772599	2022-10-05 22:04:32.241178	2022-10-05 22:04:32.241178
41	102	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	11.45732016	2.172705138	0.1921149338	-0.06963974541	2.46828673	0.5610672654	-0.05826310606	0.02913227401	2022-10-05 22:04:32.247884	2022-10-05 22:04:32.247884
42	111	f	f	t	t	t	t	t	t	f	f	f	t	t	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.10976016	2.134195138	0.4156549338	-0.02467974541	2.24978673	0.4008672654	0.1201468939	-0.208437726	2022-10-05 22:04:32.25456	2022-10-05 22:04:32.25456
43	2307	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.21786016	1.989505138	0.1727949338	-0.08725974541	2.75628673	0.4984972654	0.1357768939	-0.05985772599	2022-10-05 22:04:32.261788	2022-10-05 22:04:32.261788
44	2308	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.269523	2022-10-05 22:04:32.269523
45	2309	t	f	t	t	t	t	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	11.38383016	2.078885138	0.2282549338	-0.1278597454	3.05468673	0.7434572654	0.07627689394	-0.01741772599	2022-10-05 22:04:32.283051	2022-10-05 22:04:32.283051
46	121	f	f	t	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	9.527360158	1.883805138	0.2381549338	0.02836025459	2.78928673	0.6037572654	-0.1047631061	-0.03202772599	2022-10-05 22:04:32.290342	2022-10-05 22:04:32.290342
47	126	t	t	t	t	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	8.879760158	1.778905138	0.2112549338	-0.01888974541	3.92108673	0.8155572654	-0.07076310606	-0.181037726	2022-10-05 22:04:32.297821	2022-10-05 22:04:32.297821
48	2312	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	10.30036016	1.944475138	0.1385949338	-0.1113597454	2.14178673	0.4199072654	-0.02186310606	-0.141347726	2022-10-05 22:04:32.304462	2022-10-05 22:04:32.304462
49	136	t	f	t	t	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	10.32436016	1.876205138	-0.2792450662	-0.03886974541	2.17778673	0.3468572654	0.3091368939	-0.06499772599	2022-10-05 22:04:32.311857	2022-10-05 22:04:32.311857
50	2314	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.54956016	1.717705138	-0.5276450662	0.06485025459	2.80878673	0.5782972654	0.1856368939	-0.09327772599	2022-10-05 22:04:32.31872	2022-10-05 22:04:32.31872
51	2315	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.325831	2022-10-05 22:04:32.325831
52	145	t	f	t	t	t	t	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	10.52886016	2.045567138	-0.07644506616	-0.3936597454	2.60349473	0.6533572654	-0.03376310606	0.02341227401	2022-10-05 22:04:32.333773	2022-10-05 22:04:32.333773
53	154	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.02996016	1.729105138	-0.3200450662	-0.01419974541	2.32808673	0.5088092654	0.04387689394	-0.08655772599	2022-10-05 22:04:32.345015	2022-10-05 22:04:32.345015
54	2318	t	f	f	t	f	f	f	f	t	f	f	t	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	11.07346016	1.872705138	-0.1566450662	0.2150402546	2.24948673	0.4423172654	-0.06986310606	-0.144337726	2022-10-05 22:04:32.351351	2022-10-05 22:04:32.351351
55	164	t	t	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	12.62956016	2.066925138	-0.1769450662	0.1739402546	2.41188673	0.3706572654	-0.06086310606	-0.08027772599	2022-10-05 22:04:32.358656	2022-10-05 22:04:32.358656
56	173	t	f	t	t	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.41986016	2.105555138	-0.04684506616	0.1847402546	1.76898673	0.2891572654	0.1922368939	-0.06352772599	2022-10-05 22:04:32.366377	2022-10-05 22:04:32.366377
57	2321	f	f	t	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	12.27826016	2.195905138	0.1760549338	-0.06241974541	1.96998673	0.3605572654	0.2331368939	-0.05955772599	2022-10-05 22:04:32.373105	2022-10-05 22:04:32.373105
58	183	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	10.05696016	1.974675138	0.1672549338	-0.08032974541	2.29358673	0.4207672654	0.06049689394	-0.03049772599	2022-10-05 22:04:32.380094	2022-10-05 22:04:32.380094
59	2323	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	10.91336016	2.106265138	0.1916749338	-0.07142974541	2.16528673	0.3790572654	0.03468689394	0.04066227401	2022-10-05 22:04:32.387517	2022-10-05 22:04:32.387517
60	2324	f	f	t	t	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	11.54826016	2.175005138	0.1956849338	-0.04044974541	2.55030673	0.5589572654	-0.01253310606	-0.01612772599	2022-10-05 22:04:32.394692	2022-10-05 22:04:32.394692
61	2325	t	t	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	12.27526016	2.229805138	0.1794349338	0.006068254587	2.40538673	0.3618572654	0.3211368939	-0.121037726	2022-10-05 22:04:32.403023	2022-10-05 22:04:32.403023
62	2326	t	f	t	f	t	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.28326016	2.137905138	0.1555749338	-0.1723597454	2.85368673	0.7686572654	0.1613768939	-0.01531772599	2022-10-05 22:04:32.410309	2022-10-05 22:04:32.410309
63	2327	t	f	t	t	t	t	f	t	t	f	t	t	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.83566016	2.217505138	0.1118249338	-0.3078597454	2.91458673	0.6094572654	-0.02666310606	-0.004407725993	2022-10-05 22:04:32.418336	2022-10-05 22:04:32.418336
64	1706	t	f	t	f	t	t	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.31693016	2.165205138	0.1381949338	-0.3473597454	2.45698673	0.4532672654	0.07565689394	-0.01681772599	2022-10-05 22:04:32.431904	2022-10-05 22:04:32.431904
65	191	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.52686016	2.016365138	0.2716549338	0.009061254587	1.89018673	0.3268572654	-0.04906310606	-0.03032772599	2022-10-05 22:04:32.440094	2022-10-05 22:04:32.440094
66	2330	f	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.33086016	2.045166138	0.2852549338	0.02950025459	1.90788673	0.3192572654	0.03441689394	0.105562274	2022-10-05 22:04:32.446323	2022-10-05 22:04:32.446323
67	201	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.45282	2022-10-05 22:04:32.45282
68	2332	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	9.888260158	1.981295138	-0.1208450662	0.05867025459	4.15448673	0.9399572654	-0.05366310606	-0.007387725993	2022-10-05 22:04:32.459474	2022-10-05 22:04:32.459474
69	211	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.06136016	2.260405138	0.2571549338	0.001103254587	2.00688673	0.3042572654	0.1360568939	-0.05210572599	2022-10-05 22:04:32.465917	2022-10-05 22:04:32.465917
70	221	t	f	t	t	t	t	f	t	f	t	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	10.42286016	1.769505138	0.1504149338	0.06490025459	2.11238673	0.4198472654	0.09339289394	-0.05985772599	2022-10-05 22:04:32.472616	2022-10-05 22:04:32.472616
71	226	t	f	t	t	t	f	t	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.50556016	2.203905138	0.2230549338	0.2016402546	3.11708673	0.5333472654	0.2420368939	-0.162037726	2022-10-05 22:04:32.478704	2022-10-05 22:04:32.478704
72	235	t	t	t	t	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	10.44276016	2.014185138	-0.2991450662	0.06867025459	4.48278673	0.9147572654	0.03488689394	0.01777227401	2022-10-05 22:04:32.485658	2022-10-05 22:04:32.485658
73	2337	t	t	t	f	t	t	f	t	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	12.71076016	2.026825138	0.1783349338	-0.005249745413	2.39778673	0.5320372654	-0.05576310606	0.01526227401	2022-10-05 22:04:32.49332	2022-10-05 22:04:32.49332
74	2338	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.501815	2022-10-05 22:04:32.501815
75	2339	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	t	f	t	f	t	f	f	f	f	t	13.63276016	2.353405138	0.1635249338	-0.09345974541	1.96388673	0.3173572654	0.1042768939	0.02555227401	2022-10-05 22:04:32.508758	2022-10-05 22:04:32.508758
76	241	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.17876016	2.186705138	0.3869549338	0.1204402546	2.19048673	0.3124572654	-0.01946310606	-0.005717725993	2022-10-05 22:04:32.515564	2022-10-05 22:04:32.515564
77	252	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	9.152460158	1.802305138	0.1823749338	0.03331025459	3.19658673	0.6286572654	-0.1019631061	-0.172837726	2022-10-05 22:04:32.52276	2022-10-05 22:04:32.52276
78	2342	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.146760158	1.877905138	0.1644649338	-0.05187974541	2.54076673	0.6319572654	0.2038368939	-0.04531772599	2022-10-05 22:04:32.529077	2022-10-05 22:04:32.529077
79	262	t	t	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.89056016	2.084175138	0.1606649338	-0.04545974541	2.92768673	0.7685572654	0.1270368939	0.007592274007	2022-10-05 22:04:32.535573	2022-10-05 22:04:32.535573
80	273	t	f	t	t	t	t	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.39296016	2.149505138	0.2164549338	-0.1125597454	4.26048673	0.8504572654	0.2767368939	-0.07717772599	2022-10-05 22:04:32.543013	2022-10-05 22:04:32.543013
81	2345	t	f	t	t	t	t	f	t	f	f	f	f	t	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	13.16106016	2.322605138	0.2296549338	-0.1679597454	3.50738673	0.7872572654	0.2453368939	-0.02077772599	2022-10-05 22:04:32.553087	2022-10-05 22:04:32.553087
82	2346	t	t	t	t	t	t	t	t	t	f	f	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	11.53056016	2.164405138	0.4669549338	0.07144025459	3.97578673	0.5124972654	0.1827868939	-0.193337726	2022-10-05 22:04:32.560778	2022-10-05 22:04:32.560778
83	2347	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.568827	2022-10-05 22:04:32.568827
84	283	t	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	10.17996016	1.702605138	-0.2876450662	0.2432402546	2.15808673	0.4346672654	0.2705368939	-0.165337726	2022-10-05 22:04:32.576691	2022-10-05 22:04:32.576691
85	2349	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.24276016	2.033855138	0.3278549338	0.08731025459	2.56245673	0.6462572654	0.1671568939	-0.07328772599	2022-10-05 22:04:32.583822	2022-10-05 22:04:32.583822
86	2350	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	11.33256016	2.196905138	0.2890549338	0.04626025459	2.56659673	0.4927672654	-0.09566310606	-0.143057726	2022-10-05 22:04:32.591256	2022-10-05 22:04:32.591256
87	2351	t	t	t	t	t	t	f	t	f	f	f	t	f	t	t	f	f	t	f	t	t	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	9.339860158	1.814205138	0.1680349338	-0.01232974541	2.61286673	0.5622572654	0.01718689394	-0.04455772599	2022-10-05 22:04:32.59744	2022-10-05 22:04:32.59744
88	2352	t	t	t	f	f	f	f	f	t	f	t	f	f	f	t	f	t	f	f	t	f	f	f	f	t	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	14.10256016	2.376105138	0.1920149338	-0.02518974541	2.80978673	0.5501472654	0.2026368939	-0.08174772599	2022-10-05 22:04:32.606059	2022-10-05 22:04:32.606059
89	2353	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	13.66906016	2.298805138	0.2952549338	-0.01763974541	2.41028673	0.5641072654	0.1889368939	-0.117617726	2022-10-05 22:04:32.613061	2022-10-05 22:04:32.613061
90	293	t	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.525060158	1.664305138	-0.2325450662	0.3031402546	2.92088673	0.3549572654	0.2013368939	-0.06515772599	2022-10-05 22:04:32.620961	2022-10-05 22:04:32.620961
91	2355	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	9.870660158	1.500005138	-0.3699450662	0.2090402546	1.99788673	0.3925572654	0.2432368939	-0.175437726	2022-10-05 22:04:32.628103	2022-10-05 22:04:32.628103
92	1794	t	t	t	t	f	f	t	f	f	f	f	t	t	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.39634516	2.185105138	0.4188549338	0.1470402546	2.92158673	0.6313572654	0.2491368939	-0.09327772599	2022-10-05 22:04:32.636325	2022-10-05 22:04:32.636325
93	2357	t	f	t	t	t	t	t	t	f	t	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.50566016	2.014625138	-0.1156450662	-0.4413597454	3.38548673	0.5435972654	0.2671368939	-0.06280772599	2022-10-05 22:04:32.642739	2022-10-05 22:04:32.642739
94	303	t	f	t	t	t	t	f	t	f	t	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	11.16926016	2.123975138	-0.1447450662	-0.4917597454	2.78188673	0.5226672654	0.1033768939	0.03621227401	2022-10-05 22:04:32.649184	2022-10-05 22:04:32.649184
95	313	t	f	t	f	f	f	f	f	f	t	f	f	t	f	t	f	t	f	f	t	f	f	t	f	t	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	14.70076016	2.271405138	0.3110549338	0.06615025459	2.39558673	0.3330572654	0.06400689394	-0.02107772599	2022-10-05 22:04:32.655757	2022-10-05 22:04:32.655757
96	314	t	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	8.685660158	1.228505138	-0.3962450662	0.2188402546	2.17028673	0.4464672654	-0.1064631061	-0.185837726	2022-10-05 22:04:32.662389	2022-10-05 22:04:32.662389
97	324	t	t	t	t	t	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.05516016	1.569205138	-0.3251450662	0.2587402546	1.94258673	0.2970572654	0.1493968939	-0.01164772599	2022-10-05 22:04:32.671197	2022-10-05 22:04:32.671197
98	2362	f	f	t	t	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	11.86136016	2.193805138	0.2124249338	-0.04134974541	2.34278673	0.4390972654	0.05255689394	-0.01677772599	2022-10-05 22:04:32.679107	2022-10-05 22:04:32.679107
99	2363	t	f	t	t	t	t	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.18646016	2.336405138	0.09881493384	-0.2275597454	2.45638673	0.6879572654	0.08749989394	-0.01281772599	2022-10-05 22:04:32.685748	2022-10-05 22:04:32.685748
100	2364	t	f	f	t	t	t	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	9.912160158	1.988305138	-0.1719450662	-0.4842597454	3.24968673	0.9053572654	-0.002483106059	0.09846227401	2022-10-05 22:04:32.692254	2022-10-05 22:04:32.692254
101	334	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.699295	2022-10-05 22:04:32.699295
102	2366	f	t	t	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.57406016	2.209605138	0.1165059338	-0.1296597454	2.27098673	0.4853672654	0.1518268939	-0.02580772599	2022-10-05 22:04:32.705447	2022-10-05 22:04:32.705447
103	2367	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	12.61026016	2.176805138	0.1334249338	-0.1279597454	2.57536673	0.4076372654	0.1966368939	-0.149447726	2022-10-05 22:04:32.71196	2022-10-05 22:04:32.71196
104	2368	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.719074	2022-10-05 22:04:32.719074
105	2369	f	t	t	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	11.33435016	1.903405138	0.1492649338	-0.04265974541	2.92948673	0.4996452654	0.2665368939	-0.07752772599	2022-10-05 22:04:32.726668	2022-10-05 22:04:32.726668
106	343	t	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	8.863360158	1.282405138	-0.4078450662	0.2329402546	1.54088673	0.2252572654	0.2722368939	-0.100607726	2022-10-05 22:04:32.733578	2022-10-05 22:04:32.733578
107	2371	t	t	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	9.108960158	1.478405138	-0.2965450662	0.2182402546	2.26038673	0.4012272654	0.2161368939	-0.04863072599	2022-10-05 22:04:32.741142	2022-10-05 22:04:32.741142
108	353	f	f	t	t	f	f	f	t	t	t	f	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.41869016	2.042070138	0.3852549338	0.1634402546	3.13528673	0.3692572654	0.1001468939	-0.108577726	2022-10-05 22:04:32.748044	2022-10-05 22:04:32.748044
109	363	f	f	t	t	f	f	t	f	t	f	t	t	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	10.78096016	2.094325138	0.2715549338	0.02869025459	1.96778673	0.3988572654	0.1146768939	0.01400227401	2022-10-05 22:04:32.754879	2022-10-05 22:04:32.754879
110	2374	f	f	t	t	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	t	f	t	f	f	f	t	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	t	f	13.41136016	2.295205138	0.2396549338	0.1458402546	2.60536673	0.4444772654	0.1656968939	-0.138527726	2022-10-05 22:04:32.762022	2022-10-05 22:04:32.762022
111	2375	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.95586016	2.119245138	0.2617549338	0.06634025459	2.46578673	0.4286872654	0.1910368939	-0.112077726	2022-10-05 22:04:32.769265	2022-10-05 22:04:32.769265
112	2376	f	t	t	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.52146016	2.131525138	0.1259949338	-0.1223597454	2.33958673	0.4358472654	0.05880689394	-0.02048772599	2022-10-05 22:04:32.77661	2022-10-05 22:04:32.77661
113	2377	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	t	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	11.99216016	2.226005138	0.1399849338	-0.09663974541	2.56148673	0.4923572654	0.1895368939	-0.07629772599	2022-10-05 22:04:32.784036	2022-10-05 22:04:32.784036
114	2378	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	11.35246016	2.109315138	0.3083549338	0.1372402546	2.98308673	0.6080572654	0.1334968939	-0.112487726	2022-10-05 22:04:32.79095	2022-10-05 22:04:32.79095
115	2379	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	10.03216016	1.933405138	0.2837549338	-0.01508974541	2.12888673	0.3551572654	-0.1175631061	-0.193837726	2022-10-05 22:04:32.798784	2022-10-05 22:04:32.798784
116	373	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	13.54526016	2.286505138	0.03107493384	0.1447402546	2.37078673	0.2483572654	0.02124689394	-0.103027726	2022-10-05 22:04:32.805999	2022-10-05 22:04:32.805999
117	383	t	t	f	f	t	t	f	t	t	t	f	t	f	f	t	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	9.949860158	1.785305138	0.2359549338	-0.04313974541	2.36618673	0.5272972654	0.001956893941	-0.04538772599	2022-10-05 22:04:32.813961	2022-10-05 22:04:32.813961
118	392	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.916560158	1.703905138	-0.1755450662	0.2175402546	2.12038673	0.3365572654	0.03886689394	-0.214237726	2022-10-05 22:04:32.821129	2022-10-05 22:04:32.821129
119	2383	t	f	f	t	t	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	t	12.16116016	2.241705138	0.05989493384	-0.1218597454	2.77778673	0.6483572654	0.03298689394	-0.09349772599	2022-10-05 22:04:32.846029	2022-10-05 22:04:32.846029
120	402	t	f	f	t	t	t	f	t	t	f	t	t	f	t	f	t	f	t	f	t	f	t	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	11.39077216	2.062975138	0.1222569338	0.09809025459	2.20428673	0.3593572654	-0.05446310606	-0.104207726	2022-10-05 22:04:32.856717	2022-10-05 22:04:32.856717
121	2385	f	f	f	t	f	f	f	f	f	t	t	f	f	t	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	11.79156016	1.972965138	0.3412549338	-0.03619974541	3.64698673	0.6175572654	0.1553168939	-0.03761772599	2022-10-05 22:04:32.870588	2022-10-05 22:04:32.870588
122	2386	t	t	t	t	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	11.74456016	2.152405138	0.1736049338	0.03571025459	3.51588673	0.5715572654	0.03075689394	-0.03616772599	2022-10-05 22:04:32.882378	2022-10-05 22:04:32.882378
123	2387	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	11.26016016	2.034945138	0.1523349338	-0.07947974541	2.47378673	0.4668072654	0.008776893941	-0.06091772599	2022-10-05 22:04:32.889749	2022-10-05 22:04:32.889749
124	407	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	12.19046016	2.170905138	0.2218549338	0.06805025459	2.49900673	0.5561872654	-0.05366310606	0.05826227401	2022-10-05 22:04:32.902287	2022-10-05 22:04:32.902287
125	1237	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	10.33316016	1.870205138	0.2693549338	0.06971025459	2.08868673	0.3494572654	0.1649668939	-0.158837726	2022-10-05 22:04:32.915289	2022-10-05 22:04:32.915289
126	417	t	t	t	t	t	t	f	f	f	f	f	t	t	t	f	f	t	t	f	t	f	f	t	f	t	f	t	f	t	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	t	f	13.18186016	2.321105138	0.2912549338	0.1258402546	2.42158673	0.4963272654	0.03739689394	0.07106227401	2022-10-05 22:04:32.922992	2022-10-05 22:04:32.922992
127	425	t	f	t	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	10.66596016	1.812905138	-0.5203450662	0.06483025459	2.42558673	0.4993632654	0.09145089394	-0.08234772599	2022-10-05 22:04:32.934703	2022-10-05 22:04:32.934703
128	2392	t	t	t	t	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.614860158	1.646805138	-0.5335450662	0.1004402546	3.77108673	0.6291572654	0.2209368939	-0.08639772599	2022-10-05 22:04:32.947035	2022-10-05 22:04:32.947035
129	2393	f	f	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	t	f	f	f	f	f	f	f	11.32400016	1.984705138	0.2957549338	0.05921025459	2.17298673	0.3324572654	0.1329068939	-0.01055772599	2022-10-05 22:04:32.956387	2022-10-05 22:04:32.956387
130	2394	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:32.96833	2022-10-05 22:04:32.96833
131	2395	t	f	t	t	f	f	t	f	t	f	t	t	f	t	f	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	11.97536016	2.072445138	0.08634493384	0.04596025459	2.83488673	0.6279572654	0.1902368939	-0.140587726	2022-10-05 22:04:33.002788	2022-10-05 22:04:33.002788
132	2396	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.27856016	2.181605138	0.1906949338	-0.004939745413	2.29638673	0.4664172654	0.1028868939	0.05026227401	2022-10-05 22:04:33.013648	2022-10-05 22:04:33.013648
133	2397	t	t	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	t	f	f	f	f	f	f	f	9.650860158	1.924805138	0.1875149338	-0.05843974541	2.25438673	0.4150572654	-0.1123631061	-0.09745772599	2022-10-05 22:04:33.025296	2022-10-05 22:04:33.025296
134	435	f	f	t	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	13.77546016	2.416805138	0.2516549338	-0.06013974541	2.32768673	0.4478672654	0.01017689394	-0.131077726	2022-10-05 22:04:33.034542	2022-10-05 22:04:33.034542
135	2399	t	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	10.94076016	2.067705138	0.2770549338	0.01396025459	2.14918673	0.4497272654	0.1267968939	-0.02216772599	2022-10-05 22:04:33.044638	2022-10-05 22:04:33.044638
136	2400	f	f	t	t	f	f	t	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	11.37052016	2.128495138	0.3421549338	0.1656402546	2.53352673	0.4938372654	0.1949368939	-0.03341772599	2022-10-05 22:04:33.053587	2022-10-05 22:04:33.053587
137	2401	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	11.22296016	2.056595138	0.2009449338	-0.03315974541	2.81808673	0.5626072654	0.1505268939	-0.123827726	2022-10-05 22:04:33.063953	2022-10-05 22:04:33.063953
138	2402	t	f	t	t	t	t	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.247060158	1.666605138	-0.4048450662	0.03461025459	2.29558673	0.3505572654	0.02408689394	0.03764227401	2022-10-05 22:04:33.073438	2022-10-05 22:04:33.073438
139	2403	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.985160158	1.006505138	-0.5216450662	0.2067402546	2.33578673	0.3751572654	0.06367689394	-0.004037725993	2022-10-05 22:04:33.083502	2022-10-05 22:04:33.083502
140	443	f	f	t	t	f	f	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	11.38193016	2.103605138	0.2447549338	0.02174025459	3.03598673	0.6212572654	0.1660068939	-0.07473772599	2022-10-05 22:04:33.093978	2022-10-05 22:04:33.093978
141	2405	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	12.33316016	2.215905138	0.1996449338	0.06256025459	0	0	0	0	2022-10-05 22:04:33.102622	2022-10-05 22:04:33.102622
142	450	f	f	t	t	f	f	t	f	t	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	11.80126016	2.068585138	0.1664849338	-0.05302974541	3.01058673	0.6617572654	0.1248768939	-0.146957726	2022-10-05 22:04:33.113395	2022-10-05 22:04:33.113395
143	460	f	f	t	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	13.25176016	2.393005138	0.2231549338	-0.01389974541	2.40378673	0.5617772654	0.1678868939	0.002812274007	2022-10-05 22:04:33.125348	2022-10-05 22:04:33.125348
144	2408	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	10.64676016	1.808905138	0.1508549338	0.07026025459	2.46248673	0.5170472654	-0.01836310606	-0.07485772599	2022-10-05 22:04:33.137047	2022-10-05 22:04:33.137047
145	2409	t	t	t	t	f	f	f	f	f	f	t	t	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	10.80486016	2.039188138	0.2300549338	0.06376025459	3.20938673	0.6570572654	0.02928689394	-0.03206772599	2022-10-05 22:04:33.150978	2022-10-05 22:04:33.150978
146	2410	t	t	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.960760158	1.810105138	0.2763549338	-0.0008397454129	2.22458673	0.4034072654	-0.04006310606	-0.132947726	2022-10-05 22:04:33.160621	2022-10-05 22:04:33.160621
147	470	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	11.43160016	2.158705138	0.1720649338	-0.05507974541	2.29698673	0.4685172654	0.1348768939	-0.06287772599	2022-10-05 22:04:33.169143	2022-10-05 22:04:33.169143
148	480	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	10.71526016	2.022455138	0.3173549338	0.1297402546	2.51350673	0.5531072654	0.07691689394	-0.03097772599	2022-10-05 22:04:33.176974	2022-10-05 22:04:33.176974
149	2413	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.778760158	1.593705138	-0.08354506616	0.2932402546	2.03268673	0.4608172654	-0.04466310606	-0.141707726	2022-10-05 22:04:33.183944	2022-10-05 22:04:33.183944
150	2414	t	f	t	t	t	t	t	t	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.18896016	1.969665138	-0.03034506616	-0.3668597454	2.79398673	0.5286072654	0.1666968939	0.04516227401	2022-10-05 22:04:33.19164	2022-10-05 22:04:33.19164
151	490	t	t	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.42726016	1.812405138	-0.4915450662	0.03305025459	3.03538673	0.4793972654	0.01661689394	-0.006807725993	2022-10-05 22:04:33.198731	2022-10-05 22:04:33.198731
152	2416	t	f	t	t	t	t	f	t	t	t	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	11.13426016	2.125235138	-0.07844506616	-0.2208597454	2.43978673	0.4444472654	-0.04176310606	0.01510227401	2022-10-05 22:04:33.205933	2022-10-05 22:04:33.205933
153	2417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:33.214526	2022-10-05 22:04:33.214526
154	2418	f	f	t	t	f	f	f	f	t	f	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	11.74246016	2.250505138	0.2863549338	0.05413025459	2.25918673	0.4349172654	-0.09936310606	-0.09720772599	2022-10-05 22:04:33.221498	2022-10-05 22:04:33.221498
155	500	f	f	t	t	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.14576016	1.941315138	0.2576549338	0.07773025459	2.19708673	0.4036172654	0.04707689394	0.04686227401	2022-10-05 22:04:33.229039	2022-10-05 22:04:33.229039
156	2420	t	t	f	f	t	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	t	f	f	f	10.17166016	1.858505138	0.2519549338	-0.03298974541	1.99368673	0.3172572654	0.02016689394	0.04986227401	2022-10-05 22:04:33.235874	2022-10-05 22:04:33.235874
157	2421	t	t	t	t	t	t	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.90716016	1.819405138	0.3953549338	0.1641402546	3.48708673	0.6601572654	0.1844368939	-0.148597726	2022-10-05 22:04:33.24251	2022-10-05 22:04:33.24251
158	509	t	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	11.32304016	2.001355138	-0.07394506616	0.2169402546	3.48868673	0.4895672654	0.2152368939	-0.03958772599	2022-10-05 22:04:33.249707	2022-10-05 22:04:33.249707
159	2423	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-10-05 22:04:33.257029	2022-10-05 22:04:33.257029
160	517	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	11.48173016	2.066795138	0.2187549338	0.05113025459	2.66266673	0.4872172654	0.1634868939	-0.107437726	2022-10-05 22:04:33.264527	2022-10-05 22:04:33.264527
161	2425	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	9.870760158	1.959315138	0.2239549338	0.03526025459	3.17318673	0.6119572654	0.08527789394	-0.02213772599	2022-10-05 22:04:33.271041	2022-10-05 22:04:33.271041
162	526	t	f	t	f	t	t	f	t	t	f	f	t	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	12.52816016	2.231505138	0.1782949338	-0.3203597454	3.57238673	0.7507572654	0.01207689394	0.01558227401	2022-10-05 22:04:33.278191	2022-10-05 22:04:33.278191
163	536	t	f	t	t	t	t	f	t	t	t	f	f	t	f	t	t	f	f	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	13.17296016	2.320005138	0.1536249338	-0.2340597454	2.73978673	0.5396072654	0.2965368939	-0.135907726	2022-10-05 22:04:33.284729	2022-10-05 22:04:33.284729
164	546	t	f	t	t	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.47786016	2.147105138	-0.03264506616	0.1311402546	2.21878673	0.4990572654	-0.05096310606	-0.105387726	2022-10-05 22:04:33.292056	2022-10-05 22:04:33.292056
165	556	t	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	12.37266016	1.944175138	-0.2240450662	0.2581402546	1.69608673	0.2396572654	-0.09566310606	-0.167237726	2022-10-05 22:04:33.299501	2022-10-05 22:04:33.299501
166	566	t	f	t	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.174760158	1.439305138	-0.3955450662	0.2033402546	2.60070973	0.6150572654	0.06005689394	-0.05761772599	2022-10-05 22:04:33.305947	2022-10-05 22:04:33.305947
167	2431	f	f	t	t	f	f	f	f	t	t	f	t	f	t	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	11.50956016	2.072605138	0.4069549338	0.1505402546	1.93868673	0.2736572654	0.01182689394	0.009902274007	2022-10-05 22:04:33.314508	2022-10-05 22:04:33.314508
168	574	t	t	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	13.83286016	2.368705138	0.2906549338	0.09125025459	3.01108673	0.5439872654	0.1508668939	-0.01865772599	2022-10-05 22:04:33.32111	2022-10-05 22:04:33.32111
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (id, latitude, longitude, elevation, mean_annual_temperature, mean_coldest_month_temperature, winter_precipitations, summer_precipitations, autumn_precipitations, spring_precipitations, nitrogen, carbon_nitrogen_ratio, ph, phosphorus, calcium, magnesium, sodium, potassium, iron, aluminium, water_holding_capacity, organic_carbon, soil_organic_matter, manganese, population_id, created_at, updated_at) FROM stdin;
1	43.733229	1.823869	136	10.76	0.15	128.91	77.64	171.55	70.18	2.735	22.05	7.895	0.081	14	1.485	0.071	0.453	0	0.013	0.449	61.3	106.25	0	1	2022-10-05 22:04:31.101611	2022-10-05 22:04:31.101611
2	43.911999	1.656649	169	10.54	0.08	127.27	85.73	172.18	70.64	1.025	12.7	8.445	0.051	12.4	0.655	0.019	0.438	0	0.024	0.277	12.95	22.45	0	11	2022-10-05 22:04:31.11568	2022-10-05 22:04:31.11568
3	43.91214	1.656855	168	10.55	0.08	127.27	85.73	172.18	70.64	2.85	11.05	7.815	0.041	20.2	1.059	0.024	0.312	0.003	0.032	0.342	31.45	54.5	0	19	2022-10-05 22:04:31.120856	2022-10-05 22:04:31.120856
4	43.190552	0.815774	339	10.08	-0.07	117.09	92.18	186.36	75.45	2.655	10.8	8.01	0.134	17.35	0.714	0.033	0.661	0.003	0.016	0.463	28.7	49.6	0	2268	2022-10-05 22:04:31.129308	2022-10-05 22:04:31.129308
5	43.477976	1.452214	197	10.61	0.19	114	83.36	166.36	73.18	1.245	11.15	8.385	0.055	22.05	2.23	0.141	0.886	0	0	0.455	13.9	24.05	0	2269	2022-10-05 22:04:31.133419	2022-10-05 22:04:31.133419
6	43.527792	1.491628	200	10.51	-0.05	112.73	79.55	163	71.09	1.074	13.85	7.235	0.028	6.08	0.398	0.016	0.207	0.004	0.023	0.178	14.805	25.65	0.01	27	2022-10-05 22:04:31.137229	2022-10-05 22:04:31.137229
7	42.724197	1.834034	734	9.47	0.27	111.27	126.82	198.91	94.73	1.625	48.5	8.325	0.044	10.285	0.565	0.027	0.143	0.007	0.033	0.226	78.7	136	0	2271	2022-10-05 22:04:31.142708	2022-10-05 22:04:31.142708
8	42.724588	1.833497	733	9.47	0.27	111.18	126.82	198.64	94.73	2.09	18.25	7.33	0.101	9.195	0.751	0.026	0.294	0.004	0.028	0.343	38.2	66.1	0.008	2272	2022-10-05 22:04:31.146665	2022-10-05 22:04:31.146665
9	43.312225	1.515167	201	10.71	0.14	110.18	81.82	166	72.27	1.835	12.1	8.12	0.085	15.9	1.83	0.073	0.492	0	0.015	0.399	22.3	38.55	0	2273	2022-10-05 22:04:31.150578	2022-10-05 22:04:31.150578
10	43.311868	1.515459	201	10.71	0.14	110.18	81.82	165.91	72.27	4.925	10.95	7.165	0.124	24.1	1.25	0.028	0.653	0.003	0.025	0.532	54.15	93.7	0.01	2274	2022-10-05 22:04:31.154328	2022-10-05 22:04:31.154328
11	43.311866	1.515623	201	10.71	0.14	110.18	81.82	165.91	72.27	6.325	11.8	6.43	0.146	22.25	1.905	0.032	0.731	0	0	0.587	75.9	131.1	0.034	2275	2022-10-05 22:04:31.158352	2022-10-05 22:04:31.158352
12	43.31187	1.515709	201	10.71	0.14	110.18	81.82	165.91	72.27	5.06	11	6.82	0.074	22.75	1.205	0.025	0.383	0	0	0.594	55.65	96.25	0.019	2276	2022-10-05 22:04:31.162659	2022-10-05 22:04:31.162659
13	43.311926	1.515463	201	10.71	0.14	110.18	81.82	165.91	72.27	4.52	11.7	7.44	0.126	24.35	1.248	0.033	0.724	0.004	0.035	0.293	53.55	92.85	0.009	2277	2022-10-05 22:04:31.169668	2022-10-05 22:04:31.169668
14	43.075729	0.151764	532	9.16	-0.32	136.45	88.18	207.55	78.91	2.225	10.95	7.39	0.072	11.3	1.215	0.097	0.316	0.003	0.028	0.416	24.45	42.3	0.007	2278	2022-10-05 22:04:31.173718	2022-10-05 22:04:31.173718
15	43.076454	0.151533	530	9.16	-0.32	136.45	88.09	207.36	78.82	2.015	12.1	7.22	0.078	10.24	1.1	0.143	0.269	0.009	0.047	0.365	24.3	42.05	0.014	2279	2022-10-05 22:04:31.177948	2022-10-05 22:04:31.177948
16	43.042867	0.234732	488	9.45	-0.01	134.55	91.27	208.91	79.36	4.625	10.155	6.68	0.078	15.7	1.875	0.089	0.303	0	0.016	0.645	46.9	81.15	0.028	2280	2022-10-05 22:04:31.182194	2022-10-05 22:04:31.182194
17	43.043644	0.234303	487	9.45	-0.01	134.55	91.18	208.82	79.36	2.44	10.35	8.47	0.037	11.25	0.524	0.025	0.156	0	0.037	0.456	25.25	43.75	0	2281	2022-10-05 22:04:31.186269	2022-10-05 22:04:31.186269
18	43.043644	0.234303	487	9.45	-0.01	134.55	91.18	208.82	79.36	1.895	9.355	8.38	0.064	11.9	0.346	0.022	0.116	0.004	0.033	0.429	17.6	30.5	0	2282	2022-10-05 22:04:31.190457	2022-10-05 22:04:31.190457
19	44.269727	2.426322	756	8.48	-1.15	169.55	124.18	226.18	93.27	5.535	14.25	7.48	0.134	23.3	2.12	0.045	0.827	0.008	0.042	0.41	79.2	137	0.003	2283	2022-10-05 22:04:31.195252	2022-10-05 22:04:31.195252
20	44.270842	2.427551	756	8.49	-1.14	169.55	124.27	226.82	93.27	2.709	14.277	7.525	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.306	38.493	66.605	0.013	37	2022-10-05 22:04:31.199634	2022-10-05 22:04:31.199634
21	43.362044	0.387723	218	10.29	0.08	127.82	82.09	185.55	71.73	3.05	12.4	7.775	0.129	15.55	0.981	0.051	0.387	0	0.028	0.381	39.45	68.2	0	2285	2022-10-05 22:04:31.204813	2022-10-05 22:04:31.204813
22	44.202421	1.767492	174	10.56	0.29	135.73	100.64	185.45	71.36	8.61	13.75	7.19	0.161	32.6	2.425	0.037	0.863	0.01	0.05	0.287	118.5	205	0	46	2022-10-05 22:04:31.215373	2022-10-05 22:04:31.215373
23	43.453602	1.620674	166	10.78	0.18	116.64	79.09	166.45	71.64	1.21	16	7.935	0.06	9.64	0.67	0.025	0.402	0.003	0	0.25	19.3	33.4	0	2287	2022-10-05 22:04:31.22239	2022-10-05 22:04:31.22239
24	44.387532	2.336117	415	9.89	-0.01	165.82	121.55	221.18	89.82	2.709	14.277	7.525	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.369	38.493	66.605	0.013	2288	2022-10-05 22:04:31.226803	2022-10-05 22:04:31.226803
25	44.387527	2.336782	412	9.91	0.02	165.91	121.55	221.27	89.82	2.385	16.7	8.05	0.106	15.6	1.105	0.025	0.299	0	0.011	0.277	39.55	68.45	0	2289	2022-10-05 22:04:31.231164	2022-10-05 22:04:31.231164
26	44.389212	2.336636	453	9.69	-0.22	165.82	121.55	221.18	89.64	1.62	12.25	6.705	0.058	4.98	1.154	0.025	0.349	0	0.2	0.397	19.8	34.25	0.073	2290	2022-10-05 22:04:31.235501	2022-10-05 22:04:31.235501
27	43.790307	1.106456	229	10.25	-0.17	123.36	88	171	73.55	1.94	13.15	8.08	0.121	14.9	1.38	0.052	0.78	0	0.03	0.349	25.45	44	0	56	2022-10-05 22:04:31.239732	2022-10-05 22:04:31.239732
28	43.16215	0.111398	394	9.62	-0.2	134.73	80.91	198.27	74.36	2.105	10.8	6.33	0.155	7.015	1.21	0.059	0.677	0	0.066	0.468	22.65	39.2	0.064	2292	2022-10-05 22:04:31.244927	2022-10-05 22:04:31.244927
29	44.526359	2.730092	352	10.13	-0.16	177	130	236.36	87.27	9.025	15.95	7.505	0.592	23.485	9.705	0.113	4.211	0.008	0.038	0.555	145.8	251.85	0.038	2293	2022-10-05 22:04:31.249773	2022-10-05 22:04:31.249773
30	43.28908	0.639795	339	9.9	-0.28	122.27	87.45	186.55	74.27	2.35	10.4	8.365	0.032	19.8	0.463	0.051	0.347	0.003	0.016	0.493	24.2	41.85	0	2294	2022-10-05 22:04:31.253814	2022-10-05 22:04:31.253814
31	43.999349	2.621684	281	10.69	0.27	178.91	97.82	202.18	84.91	2.105	12.05	6.605	0.032	6.945	2.26	0.03	0.784	0.003	0.027	0.419	25.5	44.15	0.059	67	2022-10-05 22:04:31.258149	2022-10-05 22:04:31.258149
32	44.033129	2.638672	678	9	-1.05	186.27	113.64	229.27	90.36	2.23	12.6	6	0.061	5.04	1.53	0.03	0.994	0.008	0.114	0.419	28.15	48.75	0.058	2296	2022-10-05 22:04:31.263439	2022-10-05 22:04:31.263439
33	44.03326	2.638683	678	9	-1.05	186.27	113.64	229.36	90.36	2.915	12.25	6.6	0.074	7.65	1.665	0.237	0.841	0.003	0.035	0.463	35.65	61.7	0.05	2297	2022-10-05 22:04:31.267683	2022-10-05 22:04:31.267683
34	43.039803	0.277297	491	9.44	-0.08	131.73	91.18	206.36	78.64	11.5	21.7	7.525	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.401	249	432	0.013	2298	2022-10-05 22:04:31.271816	2022-10-05 22:04:31.271816
35	42.91058	1.248122	525	9.94	0.24	116.36	119	201.82	86.09	2.54	11.05	7.53	0.137	13.6	1.08	0.026	0.534	0	0	0.519	28.15	48.65	0	2299	2022-10-05 22:04:31.277576	2022-10-05 22:04:31.277576
36	43.824878	2.881661	397	10.38	-0.03	183.55	77.36	224	73.64	2.435	13.4	8.255	0.063	11.15	1.64	0.149	0.444	0.003	0.025	0.487	32.65	56.5	0	77	2022-10-05 22:04:31.282004	2022-10-05 22:04:31.282004
37	43.823736	2.881003	393	10.4	0.02	185	77.55	225.64	73.82	1.955	10.2	7.29	0.074	10.4	1.925	0.046	0.428	0	0.013	0.326	19.9	34.4	0.008	80	2022-10-05 22:04:31.287159	2022-10-05 22:04:31.287159
38	43.824878	2.881661	397	10.38	-0.03	183.55	77.36	224	73.64	1.525	18.5	8.115	0.071	11.7	0.6	0.043	0.339	0.003	0.027	0.257	28.2	48.75	0	88	2022-10-05 22:04:31.292564	2022-10-05 22:04:31.292564
39	44.108545	1.990168	322	9.95	-0.31	137.55	97.09	184.55	71.55	0.888	11.5	7.04	0.017	3.895	0.975	0.019	0.488	0	0.031	0.372	10.15	17.6	0.038	2303	2022-10-05 22:04:31.298077	2022-10-05 22:04:31.298077
40	43.151102	1.3923	385	10.03	-0.31	109.18	92.18	173.82	75.18	1.52	11.25	8.205	0.065	12.65	0.358	0.014	0.364	0	0.013	0.312	17	29.45	0	92	2022-10-05 22:04:31.302262	2022-10-05 22:04:31.302262
41	44.17653	2.518164	616	9.11	-0.89	177.09	117.82	224.91	91.73	2.255	20.95	7.085	0.057	9.21	1.32	0.05	0.5	0.009	0.05	0.367	47.2	81.7	0.02	102	2022-10-05 22:04:31.307801	2022-10-05 22:04:31.307801
42	43.698534	1.427856	126	10.75	0.14	113.55	79.09	159.91	70.27	0.916	17.15	8.3	0.124	9.89	1.695	0.032	0.768	0.003	0.031	0.37	15.55	26.9	0	111	2022-10-05 22:04:31.313195	2022-10-05 22:04:31.313195
43	42.920498	1.034063	574	9.57	-0.18	120.18	116.82	209.09	85.09	7.16	13.5	7.585	0.308	22.5	1.424	0.046	1.463	0.014	0.07	1.394	97.3	168.1	0.003	2307	2022-10-05 22:04:31.318385	2022-10-05 22:04:31.318385
44	42.831484	0.420091	1140	7.04	-1.72	150.27	121.18	248.27	94.73	3.89	10.3	7.11	0.106	13.8	1.9	0.023	0.767	0	0.027	0.416	40.2	69.5	0.022	2308	2022-10-05 22:04:31.322985	2022-10-05 22:04:31.322985
45	43.755183	1.435978	125	10.74	0.15	116.27	79.73	161.82	70.55	0.78	10.3	8.59	0.065	14.55	0.874	0.095	0.467	0.003	0.033	0.329	8.065	13.95	0	2309	2022-10-05 22:04:31.328494	2022-10-05 22:04:31.328494
46	44.01194	2.966488	406	10.47	0.1	181.18	92.45	232.82	72.91	2.6	27.45	7.79	0.112	9.555	0.709	0.047	0.247	0	0.011	0.228	70.45	122	0	121	2022-10-05 22:04:31.333379	2022-10-05 22:04:31.333379
47	44.014684	2.967927	407	10.45	0.09	181.18	92.73	233	72.73	3.465	16.4	7.92	0.205	15.9	1.255	0.027	0.481	0.003	0.012	0.288	56.85	98.5	0	126	2022-10-05 22:04:31.338739	2022-10-05 22:04:31.338739
48	43.013708	0.86707	603	9.19	-0.59	123.64	109.27	207.55	83.09	1.915	12.9	5.56	0.025	2.86	0.844	0.02	0.77	0.016	0.65	0.503	24.7	42.75	0.076	2312	2022-10-05 22:04:31.344148	2022-10-05 22:04:31.344148
49	42.85332	0.602039	594	9.41	0.1	131.64	113.36	226.55	86	2.295	18.5	7.62	0.058	8.965	0.484	0.02	0.215	0.004	0.032	0.231	41.45	71.65	0.015	136	2022-10-05 22:04:31.3491	2022-10-05 22:04:31.3491
50	42.859978	0.600413	667	9.14	-0.08	135.91	116.36	232.09	88.18	4.325	9.585	7.37	0.045	13.2	1.03	0.027	0.276	0.003	0.028	0.422	41.55	71.9	0.013	2314	2022-10-05 22:04:31.355822	2022-10-05 22:04:31.355822
51	42.860166	0.601088	656	9.19	-0.07	134.91	115.55	230.82	87.73	2.19	9.21	7.43	0.026	5.66	0.394	0.023	0.152	0.01	0.038	0.223	20.1	34.8	0.011	2315	2022-10-05 22:04:31.360507	2022-10-05 22:04:31.360507
52	43.305466	1.520441	204	10.71	0.14	110.09	81.82	166.36	72.64	1.495	13.25	7.355	0.055	7.345	0.669	0.03	0.381	0.009	0.053	0.217	19.8	34.25	0.008	145	2022-10-05 22:04:31.366059	2022-10-05 22:04:31.366059
53	43.305611	1.520735	204	10.71	0.14	110.18	81.82	166.36	72.64	2.825	13.25	6.965	0.05	11.2	1.33	0.031	0.73	0.003	0.034	0.486	37.4	64.7	0.01	154	2022-10-05 22:04:31.371881	2022-10-05 22:04:31.371881
54	43.464776	1.219019	218	10.45	-0.05	110.09	83.73	165.45	71.45	1.043	10.8	6.355	0.088	5.225	0.694	0.037	0.689	0.01	0.076	0.249	11.25	19.45	0.09	2318	2022-10-05 22:04:31.377507	2022-10-05 22:04:31.377507
55	43.465281	1.218577	218	10.45	-0.05	110.18	83.73	165.45	71.45	2.205	11.6	6.955	0.114	10.26	1.255	0.033	0.711	0	0.024	0.237	25.45	44.05	0.038	164	2022-10-05 22:04:31.381756	2022-10-05 22:04:31.381756
56	43.464058	1.21799	218	10.45	-0.04	110.18	83.73	165.45	71.45	4.495	20.95	7.255	0.169	17.55	2.228	0.054	0.895	0.007	0.038	0.386	85.9	149	0.043	173	2022-10-05 22:04:31.386772	2022-10-05 22:04:31.386772
57	44.346915	2.340243	670	8.72	-1.04	169.18	121.73	225.82	90.82	9.275	12.3	5.505	0.131	18.3	2.15	0.073	1.042	0.007	0.083	0.598	114.75	198.5	0.141	2321	2022-10-05 22:04:31.391882	2022-10-05 22:04:31.391882
58	44.34773	2.339715	664	8.75	-0.99	169.36	121.73	225.91	90.82	3.065	21.85	7.45	0.049	14.45	1.85	0.119	0.657	0	0	0.401	70.85	122.5	0.009	183	2022-10-05 22:04:31.397335	2022-10-05 22:04:31.397335
59	44.34806	2.339698	664	8.75	-0.99	169.55	121.73	225.91	90.82	2.74	12	7.44	0.062	14.25	1.345	0.076	0.978	0	0	0.539	32.9	56.9	0	2323	2022-10-05 22:04:31.402751	2022-10-05 22:04:31.402751
60	44.540652	2.602245	558	9.17	-0.81	215.45	144.73	285.18	98.27	1.385	11.4	6.51	0.03	5.775	1.035	0.024	0.521	0.003	0.05	0.367	15.8	27.35	0.036	2324	2022-10-05 22:04:31.407133	2022-10-05 22:04:31.407133
61	44.529845	2.260486	318	9.9	-0.28	150	118.09	202.91	79.64	2.57	19.8	7.57	0.068	12.8	1.78	0.091	0.485	0.005	0.033	0.196	50.7	87.7	0	2325	2022-10-05 22:04:31.412382	2022-10-05 22:04:31.412382
62	43.654515	1.977636	143	10.81	0.27	136.45	76.82	176.09	71	1.235	22	8.18	0.036	7.37	0.818	0.011	0.116	0	0	0.175	27.15	47	0	2326	2022-10-05 22:04:31.417231	2022-10-05 22:04:31.417231
63	43.654515	1.977636	143	10.81	0.27	136.45	76.82	176.09	71	1.09	12.75	7.905	0.05	10.05	1.655	0.027	0.45	0.004	0.046	0.366	13.95	24.1	0.006	2327	2022-10-05 22:04:31.421307	2022-10-05 22:04:31.421307
64	43.654515	1.977636	143	10.81	0.27	136.45	76.82	176.09	71	1.845	16.3	7.755	0.07	11.85	0.922	0.021	0.404	0.003	0.025	0.265	29.95	51.85	0.003	1706	2022-10-05 22:04:31.426289	2022-10-05 22:04:31.426289
65	44.199896	1.77189	234	10.25	-0.05	135.45	100.36	185.36	71.36	1.825	15.55	8.24	0.126	15.8	1.062	0.021	0.691	0.012	0.05	0.367	27.2	47.05	0	191	2022-10-05 22:04:31.431557	2022-10-05 22:04:31.431557
66	44.059797	1.220975	91	10.73	0.2	126.09	88.55	169.09	70.73	1.935	13.05	6.89	0.054	9.905	1.54	0.12	0.482	0.007	0.084	0.374	25.2	43.6	0.011	2330	2022-10-05 22:04:31.436612	2022-10-05 22:04:31.436612
67	43.693335	2.534582	573	9.55	-0.3	283.36	122.82	306	114	0.742	15.45	8.125	0.056	6.39	0.256	0.014	0.125	0.006	0.055	0.286	11.45	19.85	0	201	2022-10-05 22:04:31.440815	2022-10-05 22:04:31.440815
68	43.8021	2.951709	457	10.24	0.03	236.36	89.27	310.91	86	1.8	16	8.115	0.108	10.95	0.409	0.026	0.222	0.003	0.023	0.429	28.85	49.9	0	2332	2022-10-05 22:04:31.446249	2022-10-05 22:04:31.446249
69	43.657743	2.44371	541	9.57	-0.45	259.73	116.91	284.73	110.55	6.785	12.95	7.555	0.094	27.4	1.44	0.063	0.696	0.005	0.047	0.72	88.55	153.5	0	211	2022-10-05 22:04:31.450375	2022-10-05 22:04:31.450375
70	43.908928	1.900574	144	10.7	0.18	130.45	82.91	173.91	68.64	2.145	13.45	8.115	0.078	14.1	1.191	0.024	0.622	0.003	0.027	0.198	28.35	49.05	0	221	2022-10-05 22:04:31.455312	2022-10-05 22:04:31.455312
71	43.909032	1.901077	144	10.7	0.18	130.55	82.91	173.91	68.64	3.455	12.5	7.955	0.123	19.15	1.85	0.038	0.84	0.007	0.035	0.357	41.6	72.1	0	226	2022-10-05 22:04:31.460668	2022-10-05 22:04:31.460668
72	42.876896	0.349714	740	8.74	-0.25	141.27	109.82	233.09	88.82	3.87	16	7.77	0.092	12	0.775	1.34	0.542	0.007	0.038	0.318	61.9	107	0.038	235	2022-10-05 22:04:31.466344	2022-10-05 22:04:31.466344
73	42.905839	1.406513	990	8.2	-0.74	138.18	139.09	232.09	101.82	1.9	12.4	7.255	0.087	8.91	0.764	0.03	0.267	0.009	0.062	0.405	23.65	40.95	0	2337	2022-10-05 22:04:31.473719	2022-10-05 22:04:31.473719
74	42.905839	1.406513	990	8.2	-0.74	138.18	139.09	232.09	101.82	1.65	11.7	6.51	0.066	5.74	0.607	0.021	0.299	0.009	0.071	0.441	19.3	33.4	0.008	2338	2022-10-05 22:04:31.481032	2022-10-05 22:04:31.481032
75	44.522606	2.36351	407	9.56	-0.66	168.91	122	221.64	86.64	1.183	13.65	5.62	0.016	3.67	1.078	0.033	0.588	0.006	0.349	0.416	16.2	28	0.108	2339	2022-10-05 22:04:31.484966	2022-10-05 22:04:31.484966
76	43.448838	1.79053	235	10.52	0.02	129.09	80.18	174.91	74.64	1.047	18.35	8.06	0.032	5.185	0.603	0.021	0.082	0.011	0	0.185	19.1	33	0	241	2022-10-05 22:04:31.489874	2022-10-05 22:04:31.489874
77	42.977713	0.756373	571	9.38	-0.25	127.73	110.55	214.82	83.91	5.34	15.05	7.78	0.085	19	1.44	0.03	0.541	0.02	0.088	0.279	80.2	139	0	252	2022-10-05 22:04:31.495519	2022-10-05 22:04:31.495519
78	42.977354	0.755498	576	9.37	-0.27	127.91	110.55	215	84	3.635	17.9	7.54	0.125	11.3	0.927	0.023	0.491	0.015	0.084	0.506	70.3	121.85	0.015	2342	2022-10-05 22:04:31.500843	2022-10-05 22:04:31.500843
79	42.977354	0.755498	576	9.37	-0.27	127.91	110.55	215	84	6.535	18.35	7.27	0.221	15.5	1.93	0.047	0.922	0.038	0.192	0.369	120	207.5	0.052	262	2022-10-05 22:04:31.504978	2022-10-05 22:04:31.504978
80	43.45155	1.400498	165	10.71	0.19	108.55	80	162.73	70.45	2.7	16.6	7.3	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.334	44.8	77.6	0.013	273	2022-10-05 22:04:31.510284	2022-10-05 22:04:31.510284
81	43.450892	1.40116	165	10.71	0.19	108.55	80	162.64	70.45	1.775	11.05	7.64	0.218	12.9	1.3	0.125	1.485	0.006	0.033	0.481	19.65	33.95	0.005	2345	2022-10-05 22:04:31.518961	2022-10-05 22:04:31.518961
82	43.451451	1.39935	165	10.71	0.19	108.55	80	162.82	70.45	1.94	20.25	7.88	0.154	17.45	1.345	0.044	0.726	0	0.012	0.381	39.45	68.15	0.006	2346	2022-10-05 22:04:31.52317	2022-10-05 22:04:31.52317
83	43.458019	1.381137	172	10.68	0.18	108.55	80.64	162.73	70.36	2.75	11.7	7.155	0.152	13.75	1.96	0.119	0.398	0.005	0.04	0.33	32.25	55.8	0.016	2347	2022-10-05 22:04:31.527492	2022-10-05 22:04:31.527492
84	43.00844	1.420039	397	10.28	0.14	108.64	102.73	181	79.55	2.29	9.64	7.92	0.035	14.85	0.924	0.035	0.192	0.003	0.02	0.418	22.05	38.2	0	283	2022-10-05 22:04:31.532308	2022-10-05 22:04:31.532308
85	43.008716	1.420053	396	10.29	0.15	108.64	102.73	181	79.55	0.572	11.4	8.4	0.029	6.2	0.177	0.031	0.117	0.006	0.034	0.143	6.54	11.35	0	2349	2022-10-05 22:04:31.537373	2022-10-05 22:04:31.537373
86	43.531185	2.262591	206	10.63	0.14	140.18	82.73	177.82	82.45	2.66	11.7	7.37	0.034	13.7	2.09	0.041	0.361	0.006	0.047	0.316	31.3	54.1	0	2350	2022-10-05 22:04:31.542424	2022-10-05 22:04:31.542424
87	42.999869	1.075659	497	9.67	-0.46	111.73	104.45	190.09	78.64	7.135	13.4	7.62	0.14	35.2	2.005	0.071	1.101	0.009	0.041	0.625	98.85	171.1	0.004	2351	2022-10-05 22:04:31.546735	2022-10-05 22:04:31.546735
88	43.000155	1.075624	493	9.68	-0.44	111.73	104.27	190.09	78.55	4.6	10.85	8.135	0.1	22.2	0.931	0.105	0.979	0.004	0.026	0.376	49.75	86.1	0	2352	2022-10-05 22:04:31.550974	2022-10-05 22:04:31.550974
89	43.795323	1.073752	264	10.06	-0.32	124.82	88.64	171	73.82	2.2	10.9	6.215	0.043	10.895	2.31	0.059	0.333	0.006	0.061	0.513	24	41.55	0.044	2353	2022-10-05 22:04:31.555037	2022-10-05 22:04:31.555037
90	43.487424	1.243559	182	10.6	0.12	109.27	82.91	164.27	71.09	1.735	11.75	7.35	0.139	12.725	1.403	0.046	0.619	0.005	0.04	0.292	20.25	35	0.003	293	2022-10-05 22:04:31.559316	2022-10-05 22:04:31.559316
91	43.479745	1.241592	182	10.61	0.12	109.45	82.91	164.55	71.09	1.645	11.55	7.37	0.154	11.935	1.623	0.047	0.804	0.008	0.051	0.376	18.75	32.45	0.006	2355	2022-10-05 22:04:31.564855	2022-10-05 22:04:31.564855
92	43.564943	1.65239	246	10.35	-0.14	123.27	81.36	170	73	8.745	16.6	7.045	0.304	34.75	6.215	0.277	0.842	0.008	0.016	0.657	146.5	253	0.011	1794	2022-10-05 22:04:31.569234	2022-10-05 22:04:31.569234
93	43.564822	1.65201	246	10.35	-0.14	123.18	81.36	170	73	1.555	11.95	7.985	0.157	12.3	4.585	0.033	0.973	0.005	0.031	0.262	18.5	32.05	0.004	2357	2022-10-05 22:04:31.57457	2022-10-05 22:04:31.57457
94	43.564822	1.65201	246	10.35	-0.14	123.18	81.36	170	73	2.38	14.15	7.84	0.088	8.845	1.97	0.015	0.401	0.008	0.028	0.56	33.25	57.5	0	303	2022-10-05 22:04:31.579254	2022-10-05 22:04:31.579254
95	44.25608	1.140526	176	10.27	-0.17	136.64	97	178.09	72.55	2.327	13.3	7.915	0.081	13.055	1.41	0.026	0.368	0	0	0.255	31.84	55.1	0	313	2022-10-05 22:04:31.584901	2022-10-05 22:04:31.584901
96	43.911721	0.629745	85	10.64	0.19	131.27	89.91	173.73	68.64	3.61	12.5	7.74	0.121	16.65	0.895	0.039	0.596	0.007	0.038	0.425	46.35	80.15	0.003	314	2022-10-05 22:04:31.590151	2022-10-05 22:04:31.590151
97	43.911721	0.629745	85	10.64	0.19	131.27	89.91	173.73	68.64	7.015	21.65	7.63	0.093	12.65	0.582	0.052	0.535	0.004	0.038	0.275	151.8	263.25	0.007	324	2022-10-05 22:04:31.597612	2022-10-05 22:04:31.597612
98	43.094237	1.719981	290	10.57	0.18	112	87	171.27	76.09	1.95	16.75	7.79	0.218	17.6	1.4	0.028	0.864	0	0.014	0.532	29.35	50.8	0	2362	2022-10-05 22:04:31.60295	2022-10-05 22:04:31.60295
99	43.574273	1.786038	220	10.46	-0.07	128.64	79.09	172.64	72	1.362	16.35	7.735	0.144	11.3	0.757	0.112	1.066	0	0.011	0.379	20.7	35.8	0	2363	2022-10-05 22:04:31.607547	2022-10-05 22:04:31.607547
100	43.574647	1.785723	217	10.48	-0.07	128.55	79	172.55	72	2.02	11.5	8.24	0.103	18.05	1.475	0.118	1.78	0.005	0.034	0.386	23.05	39.85	0	2364	2022-10-05 22:04:31.611865	2022-10-05 22:04:31.611865
101	43.339706	0.689839	283	10.11	-0.17	119.91	85.45	180.55	72.45	2.133	10.65	8.03	0.108	14.7	1.655	0.036	1.032	0.007	0.041	0.387	22.75	39.3	0	334	2022-10-05 22:04:31.616297	2022-10-05 22:04:31.616297
102	42.764683	1.752959	584	10.06	0.68	108.36	122.73	192.09	92.45	1.385	21	7.885	0.023	6.125	0.28	0.015	0.126	0.004	0.033	0.216	29.35	50.75	0	2366	2022-10-05 22:04:31.622062	2022-10-05 22:04:31.622062
103	42.764419	1.753595	584	10.06	0.68	108.64	122.73	192.36	92.64	1.405	23.05	8.325	0.04	9.085	0.435	0.024	0.261	0.01	0.016	0.312	32.25	55.85	0	2367	2022-10-05 22:04:31.629525	2022-10-05 22:04:31.629525
104	42.764419	1.753595	584	10.06	0.68	108.64	122.73	192.36	92.64	1.31	19.95	8.375	0.041	8.485	0.218	0.035	0.162	0.015	0.023	0.244	26.15	45.2	0	2368	2022-10-05 22:04:31.63408	2022-10-05 22:04:31.63408
105	42.764683	1.752959	584	10.06	0.68	108.36	122.73	192.09	92.45	1.52	20.35	8.135	0.09	7.845	0.318	0.03	0.194	0.005	0.037	0.218	30.85	53.4	0	2369	2022-10-05 22:04:31.638217	2022-10-05 22:04:31.638217
106	43.662542	0.718265	196	10.32	-0.05	126.64	88.18	176.45	71.82	2.32	9.945	8.09	0.451	15.55	2.51	0.033	2.16	0.003	0.033	0.435	23.15	40.05	0	343	2022-10-05 22:04:31.642989	2022-10-05 22:04:31.642989
107	43.662542	0.718265	196	10.32	-0.05	126.64	88.18	176.45	71.82	1.76	25.9	8.085	0.143	10.12	1.155	0.025	0.638	0	0.012	0.284	44.4	77.05	0	2371	2022-10-05 22:04:31.649118	2022-10-05 22:04:31.649118
108	43.202147	1.010976	266	10.42	0.04	109.55	89.36	175.82	72.91	1.91	16.55	7.445	0.073	8.29	0.499	0.165	0.286	0.003	0.024	0.231	31.5	54.5	0.008	353	2022-10-05 22:04:31.653263	2022-10-05 22:04:31.653263
109	43.437536	0.579271	204	10.38	0.06	123.45	84	179.36	70.82	2.615	12.75	7.84	0.048	11.75	0.819	0.027	0.226	0.007	0.038	0.332	33.3	57.55	0	363	2022-10-05 22:04:31.659564	2022-10-05 22:04:31.659564
110	43.497754	2.375372	242	10.61	0.25	194.45	90.73	223.64	92.91	2.855	30	7.865	0.106	12.95	0.962	0.031	0.495	0.004	0.038	0.296	85.55	148	0	2374	2022-10-05 22:04:31.666408	2022-10-05 22:04:31.666408
111	43.490485	0.461439	180	10.41	0.15	128	84.64	183.82	70.82	0.931	11.25	8.175	0.037	7.57	0.257	0.018	0.104	0.003	0.04	0.29	10.465	18.15	0	2375	2022-10-05 22:04:31.67083	2022-10-05 22:04:31.67083
112	42.656618	1.836221	1080	8.15	-0.54	124.73	139.73	220	103.64	3.755	12.7	7	0.121	13.4	1.032	0.018	0.429	0.011	0.06	0.353	47.8	82.65	0.01	2376	2022-10-05 22:04:31.675315	2022-10-05 22:04:31.675315
113	42.656546	1.836175	1080	8.15	-0.55	124.73	139.73	219.91	103.64	1.26	12.2	7.93	0.199	8.27	0.164	0.037	0.194	0.01	0.067	0.24	15.3	26.5	0	2377	2022-10-05 22:04:31.679901	2022-10-05 22:04:31.679901
114	43.720426	1.296824	156	10.61	0.05	114.36	81.36	161.45	71.09	0.495	11	8.455	0.062	8.975	0.902	0.045	0.256	0.005	0.045	0.294	5.47	9.485	0	2378	2022-10-05 22:04:31.685246	2022-10-05 22:04:31.685246
115	43.725141	1.247629	123	10.75	0.14	114.18	80.55	161.64	70.45	2.73	12.95	7.075	0.087	8.06	1.095	0.1	0.775	0.003	0.02	0.244	35.4	61.25	0.023	2379	2022-10-05 22:04:31.689403	2022-10-05 22:04:31.689403
116	43.46529	0.986273	231	10.35	-0.11	114.27	86	170.82	71.64	2.25	12.7	8.135	0.043	15.4	1.24	0.04	0.596	0.005	0.033	0.392	29.05	50.25	0	373	2022-10-05 22:04:31.694124	2022-10-05 22:04:31.694124
117	44.115354	2.094725	405	9.64	-0.56	142.91	102.73	187.36	75.09	3.245	14.35	6.98	0.047	9.555	2.38	0.128	0.75	0.003	0.016	0.47	47.3	81.7	0.095	383	2022-10-05 22:04:31.699558	2022-10-05 22:04:31.699558
118	43.616254	0.972435	209	10.35	-0.05	119.27	86.36	170.18	72.27	1.054	29.45	7.645	0.02	5.89	0.523	0.029	0.171	0.009	0.032	0.215	33.3	57.55	0.012	392	2022-10-05 22:04:31.704359	2022-10-05 22:04:31.704359
119	43.852212	1.87432	156	10.66	0.14	131.91	82	175.09	69.45	1.245	12.4	6.45	0.048	5.115	0.903	0.026	0.835	0.003	0.044	0.441	15.35	26.55	0.04	2383	2022-10-05 22:04:31.709907	2022-10-05 22:04:31.709907
120	43.852723	1.873536	156	10.65	0.13	131.91	82	175	69.45	1.27	11.2	6.81	0.032	5.91	1.25	0.033	0.676	0	0.039	0.426	14.3	24.7	0.048	402	2022-10-05 22:04:31.71437	2022-10-05 22:04:31.71437
121	43.130495	1.269927	281	10.53	0.14	107.45	92	174.45	73.45	0.958	11.2	6	0.065	4.57	0.645	0.015	0.544	0.003	0.076	0.392	10.76	18.6	0.066	2385	2022-10-05 22:04:31.719462	2022-10-05 22:04:31.719462
122	43.12729	0.110681	437	9.46	-0.19	135.64	83.18	201.82	76.18	1.52	14.25	7.79	0.09	8.03	0.872	0.015	0.368	0.004	0.04	0.329	21.7	37.5	0	2386	2022-10-05 22:04:31.72382	2022-10-05 22:04:31.72382
123	43.127713	0.110633	437	9.46	-0.19	135.64	83.18	201.82	76.18	2.095	11.2	6.725	0.099	7.78	0.981	0.03	0.717	0.014	0.085	0.368	23.5	40.6	0.014	2387	2022-10-05 22:04:31.728117	2022-10-05 22:04:31.728117
124	43.389383	0.67282	313	9.97	-0.25	123.91	88.64	183.73	74.27	1.64	10.54	8.3	0.09	17.7	0.649	0.034	0.621	0.003	0.013	0.473	17.35	29.95	0	407	2022-10-05 22:04:31.732436	2022-10-05 22:04:31.732436
125	43.383934	0.67257	313	9.97	-0.25	123.82	88.45	183.82	74.27	3.24	10.7	8.35	0.079	23.2	0.793	0.064	0.558	0.003	0.022	0.411	34.75	60.1	0	1237	2022-10-05 22:04:31.737238	2022-10-05 22:04:31.737238
126	43.383934	0.67257	313	9.97	-0.25	123.82	88.45	183.82	74.27	0.844	11.7	8.59	0.046	12.807	1.296	0.053	0.587	0.004	0.038	0.172	9.74	16.8	0.013	417	2022-10-05 22:04:31.741986	2022-10-05 22:04:31.741986
127	42.86156	0.595943	792	8.67	-0.31	143	121.55	241.45	92.45	3.56	10.68	7.955	0.182	14.245	0.661	0.018	0.275	0.004	0.034	0.324	34.4	59.5	0	425	2022-10-05 22:04:31.749167	2022-10-05 22:04:31.749167
128	42.861218	0.596869	774	8.71	-0.31	141.36	120.45	239.36	91.55	3.443	11.43	8.02	0.157	13.335	0.561	0.017	0.187	0.003	0.028	0.282	33.65	58.2	0.004	2392	2022-10-05 22:04:31.755174	2022-10-05 22:04:31.755174
129	44.089762	2.296094	428	9.75	-0.41	161.82	107.45	203.82	83.64	2.285	28.15	6.805	0.018	8.91	1.42	0.022	0.555	0.006	0.054	0.315	64.65	111.7	0.033	2393	2022-10-05 22:04:31.76027	2022-10-05 22:04:31.76027
130	44.520751	2.427404	259	10.29	-0.04	173.64	126.09	228.91	90.09	2.67	11.65	8.135	0.134	16.55	1.515	0.014	0.714	0.003	0.017	0.32	30.95	53.55	0	2394	2022-10-05 22:04:31.7648	2022-10-05 22:04:31.7648
131	44.520418	2.427129	257	10.29	-0.01	173.55	125.91	228.82	90.09	1.225	10.9	8.25	0.066	12.85	1.345	0.023	0.751	0.006	0.036	0.382	13.3	23	0	2395	2022-10-05 22:04:31.768927	2022-10-05 22:04:31.768927
132	44.520397	2.42721	259	10.29	-0.03	173.45	125.91	228.82	90.09	11.4	11.6	7.68	0.628	36.1	7.18	0.387	2.37	0.004	0	0.369	131	227	0.021	2396	2022-10-05 22:04:31.772985	2022-10-05 22:04:31.772985
133	44.161368	2.544711	631	9.12	-0.79	176.64	118.45	229	90.73	3.54	12.5	5.47	0.075	7.175	1.582	0.044	0.446	0.007	0.284	0.307	44.05	76.25	0.048	2397	2022-10-05 22:04:31.777826	2022-10-05 22:04:31.777826
134	44.220329	1.064953	93	10.67	0.24	135.36	96.18	177.36	71.73	2.15	10.625	8.07	0.08	11.3	1.495	0.016	0.352	0	0.01	0.323	23.1	39.95	0	435	2022-10-05 22:04:31.782159	2022-10-05 22:04:31.782159
135	44.124864	2.255514	317	10.19	-0.07	153.36	104.91	194.27	78.18	3.355	12.25	6.23	0.063	9.66	2.06	0.025	0.356	0.003	0.027	0.293	41.05	71.05	0.057	2399	2022-10-05 22:04:31.787072	2022-10-05 22:04:31.787072
136	44.124876	2.255184	317	10.19	-0.07	153.27	104.91	194	78.18	2.6	12.3	8.21	0.059	16.6	1.31	0.045	0.875	0	0	0.31	32.1	55.5	0	2400	2022-10-05 22:04:31.791999	2022-10-05 22:04:31.791999
137	44.078884	2.711136	767	8.77	-1.05	195.55	120.27	239.18	93.09	2.71	11.6	6.515	0.12	8.345	1.82	0.026	1.23	0.003	0.07	0.358	31.45	54.35	0.025	2401	2022-10-05 22:04:31.797092	2022-10-05 22:04:31.797092
138	43.811758	2.871661	603	9.49	-0.74	214.36	82.91	265.09	80.64	1.18	12.1	7.38	0.015	8.12	1.19	0.061	0.444	0	0	0.297	14.3	24.7	0.011	2402	2022-10-05 22:04:31.801023	2022-10-05 22:04:31.801023
139	43.717856	0.623298	120	10.57	0.18	127.73	86.91	175.09	69.73	2.535	16.8	8.25	0.041	16.15	0.916	0.019	0.344	0.003	0.018	0.334	42.65	73.8	0	2403	2022-10-05 22:04:31.805119	2022-10-05 22:04:31.805119
140	43.372913	0.765694	278	10.13	-0.22	117.64	86.09	177.64	71.91	5.865	14.75	7.18	0.144	24.8	0.991	0.073	0.426	0.009	0.047	0.246	85.15	147	0	443	2022-10-05 22:04:31.809336	2022-10-05 22:04:31.809336
141	44.345163	2.620821	622	9.12	-0.86	166.91	126.18	229.55	88.27	3.655	10.1	7.73	0.118	15.85	2.715	0.024	0.887	0.003	0.019	0.514	36.85	63.8	0.003	2405	2022-10-05 22:04:31.814654	2022-10-05 22:04:31.814654
142	44.196005	2.493157	555	9.36	-0.68	176	117.91	223.55	93	4.32	9.925	8.025	0.224	16.6	0.83	0.03	0.396	0	0.023	0.33	42.9	74.25	0	450	2022-10-05 22:04:31.818667	2022-10-05 22:04:31.818667
143	44.196006	2.493076	555	9.36	-0.68	176	117.91	223.55	93	2.38	13.95	6.595	0.215	9.965	1.355	0.029	1.285	0	0.016	0.479	33.25	57.55	0.019	460	2022-10-05 22:04:31.823385	2022-10-05 22:04:31.823385
144	43.83165	2.20155	239	10.45	0.01	139.91	89.36	178.82	75.55	1.965	12.55	7.585	0.028	12.3	3.195	0.021	1.045	0.004	0.042	0.389	24.65	42.7	0.023	2408	2022-10-05 22:04:31.829138	2022-10-05 22:04:31.829138
145	44.041553	2.909576	446	10.28	-0.05	167.73	94.36	210.82	70.27	1.23	23.15	7.8	0.07	34.55	0.638	0.033	0.453	0.004	0.016	0.261	28.2	48.85	0	2409	2022-10-05 22:04:31.833531	2022-10-05 22:04:31.833531
146	43.667907	2.290214	261	10.38	-0.11	143.27	91.27	184.82	83.55	2.57	11.1	7.79	0.077	12.9	2.18	0.028	0.851	0.012	0.066	0.448	28.5	49.3	0	2410	2022-10-05 22:04:31.83783	2022-10-05 22:04:31.83783
147	43.024966	0.965965	413	10.04	-0.04	113.18	102	191.36	78.09	2.455	14.2	7.82	0.073	13.05	0.963	0.034	0.397	0	0.024	0.309	34.85	60.25	0.006	470	2022-10-05 22:04:31.842987	2022-10-05 22:04:31.842987
148	43.602578	2.36338	473	9.7	-0.45	215	108.64	252.18	103.45	3.37	18.2	7.69	0.078	14.05	1.219	0.372	0.716	0.004	0.02	0.386	59.85	103.4	0.003	480	2022-10-05 22:04:31.848426	2022-10-05 22:04:31.848426
149	43.494325	0.92391	179	10.55	0.09	115.82	85.09	171.18	71.18	0.94	10.3	7.13	0.039	8.865	1.25	0.048	0.877	0.01	0.06	0.38	9.63	16.7	0.036	2413	2022-10-05 22:04:31.853366	2022-10-05 22:04:31.853366
150	43.464914	1.365136	164	10.71	0.2	108.55	80.82	162.36	70.64	1.77	12.85	6.485	0.086	9.9	2.22	0.151	0.71	0.007	0.047	0.453	22.65	39.25	0.038	2414	2022-10-05 22:04:31.857415	2022-10-05 22:04:31.857415
151	43.474107	1.364175	164	10.69	0.19	108.55	80.91	161.82	70.55	8.5	14.35	6.87	0.228	22.75	3.615	0.055	1.14	0.003	0.029	0.336	122	210.5	0.042	490	2022-10-05 22:04:31.861106	2022-10-05 22:04:31.861106
152	43.475583	1.367589	164	10.69	0.19	108.55	80.73	161.82	70.45	1.735	11.05	7.295	0.123	10.25	1.185	0.049	0.854	0.003	0.017	0.36	19.3	33.35	0.018	2416	2022-10-05 22:04:31.865933	2022-10-05 22:04:31.865933
153	42.889844	1.485209	1023	8.15	-0.61	140.64	142.18	235.64	104.45	3.455	11.8	6.455	0.043	10.035	0.926	0.058	0.474	0.008	0.055	0.452	40.95	70.85	0.015	2417	2022-10-05 22:04:31.869938	2022-10-05 22:04:31.869938
154	43.487302	0.588798	193	10.39	0.11	124.09	85.45	179.55	71.18	1.595	12.65	7.98	0.044	11.35	0.597	0.041	0.24	0	0.023	0.403	20.25	35.1	0	2418	2022-10-05 22:04:31.874225	2022-10-05 22:04:31.874225
155	43.449392	0.734601	204	10.45	0.13	120.27	86.36	178.18	71.91	2.925	13.6	7.93	0.222	20.25	1.215	0.027	1.057	0	0.022	0.354	39.7	68.65	0	500	2022-10-05 22:04:31.878284	2022-10-05 22:04:31.878284
156	43.452628	2.072476	293	10.39	0.08	150	81.18	186.82	80.82	2.28	10.1	8.05	0.097	12.9	3.11	0.038	0.693	0	0	0.505	23.1	40	0	2420	2022-10-05 22:04:31.883393	2022-10-05 22:04:31.883393
157	43.85328	1.502009	99	10.82	0.24	119.64	80.91	164.64	69	0.752	12.1	7.23	0.07	4.35	0.448	0.047	0.382	0.005	0.038	0.327	9.1	15.75	0.008	2421	2022-10-05 22:04:31.887555	2022-10-05 22:04:31.887555
158	43.513975	1.082859	322	9.95	-0.41	118.73	89.55	174	74.36	0.882	18.25	7.73	0.035	5.84	0.294	0.029	0.246	0	0.026	0.222	16.1	27.85	0.003	509	2022-10-05 22:04:31.893783	2022-10-05 22:04:31.893783
159	44.022296	2.403434	459	9.73	-0.49	175.91	110.09	212.82	87.36	1.365	12.75	8.12	0.097	14.55	1.23	0.031	0.719	0.006	0.041	0.386	17.45	30.2	0	2423	2022-10-05 22:04:31.899198	2022-10-05 22:04:31.899198
160	44.052243	2.834023	629	9.35	-0.91	165.82	98	195.73	69.91	2.4	11.4	7.91	0.07	12	1.91	0.016	0.352	0	0.034	0.4	27.4	47.5	0.017	517	2022-10-05 22:04:31.90342	2022-10-05 22:04:31.90342
161	44.052243	2.834023	629	9.35	-0.91	165.82	98	195.73	69.91	2.21	10.9	7.73	0.134	9.53	2.14	0.013	0.479	0	0.031	0.366	24.1	41.7	0	2425	2022-10-05 22:04:31.909366	2022-10-05 22:04:31.909366
162	43.623801	2.089616	155	10.76	0.15	137.27	76	173.36	71.73	2.25	34.85	8.055	0.047	12	0.815	0.026	0.424	0.003	0.01	0.248	78.55	135.5	0	526	2022-10-05 22:04:31.914285	2022-10-05 22:04:31.914285
163	43.458174	1.380951	169	10.69	0.18	108.55	80.64	162.73	70.36	3.155	11.75	6.485	0.117	11.6	1.67	0.042	1.015	0.003	0.029	0.414	37.1	64.2	0.028	536	2022-10-05 22:04:31.919267	2022-10-05 22:04:31.919267
164	43.439784	1.671	188	10.72	0.11	120.45	79.27	168.18	72.55	1.59	14.4	8.085	0.126	14.05	0.725	0.028	0.582	0	0.024	0.398	22.5	38.95	0	546	2022-10-05 22:04:31.924482	2022-10-05 22:04:31.924482
165	43.440342	1.669595	187	10.72	0.11	120.27	79.27	168.18	72.55	1.345	12.4	8.16	0.091	11.66	1.038	0.062	1.102	0.003	0.017	0.431	15.475	26.75	0	556	2022-10-05 22:04:31.929633	2022-10-05 22:04:31.929633
166	43.440024	1.670111	188	10.72	0.1	120.36	79.27	168.09	72.55	2.045	18.8	7.79	0.114	13.145	0.673	0.041	0.657	0	0	0.339	36.3	62.85	0	566	2022-10-05 22:04:31.934908	2022-10-05 22:04:31.934908
167	43.439733	1.670712	188	10.72	0.11	120.36	79.27	168.18	72.55	1.26	26.2	7.82	0.038	8.58	0.26	0.017	0.164	0	0.023	0.19	33	57.1	0	2431	2022-10-05 22:04:31.940572	2022-10-05 22:04:31.940572
168	43.273815	0.321238	326	9.86	-0.14	131.09	82.36	191.73	74.64	3.485	12.65	5.33	0.062	6.645	1.051	0.047	0.474	0.009	0.433	0.442	44.2	76.5	0.085	574	2022-10-05 22:04:31.945429	2022-10-05 22:04:31.945429
\.


--
-- Data for Name: plant_neighborhoods; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plant_neighborhoods (id, population_id, plant_otu_1, plant_otu_3, plant_otu_4, plant_otu_7, plant_otu_8, plant_otu_10, plant_otu_15, plant_otu_16, plant_otu_18, plant_otu_20, plant_otu_27, plant_otu_46, plant_otu_49, plant_otu_65, plant_otu_67, plant_otu_71, plant_otu_72, plant_otu_78, plant_otu_83, plant_otu_87, plant_otu_88, plant_otu_100, plant_otu_109, plant_otu_113, plant_otu_114, plant_otu_132, plant_otu_136, plant_otu_143, plant_otu_145, plant_otu_146, plant_otu_147, plant_otu_149, plant_otu_154, plant_otu_159, plant_otu_179, plant_otu_192, plant_otu_196, plant_otu_198, plant_otu_202, plant_otu_203, plant_otu_204, plant_otu_216, plant_otu_223, plant_otu_234, plant_richness, plant_shannon, plant_pcoa1, plant_pcoa2, plant_pcoa3, created_at, updated_at) FROM stdin;
1	1	4	3	0	1	1	0	1	3	0	0	1	0	0	2	0	135	0	5	0	0	0	46	0	20	0	1	1	92	0	0	1	0	9	0	72	0	0	131	0	0	0	0	0	0	25	1.886075582	0.2097	-0.1391	-0.0576	2022-10-05 22:04:34.594151	2022-10-05 22:04:34.594151
2	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	109	0	0	0	0	0	0	5	0.984175582	-0.3308	0.1126	0.08224	2022-10-05 22:04:34.613438	2022-10-05 22:04:34.613438
3	19	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	12	0	378	0	1	0	0	0	0	2	0	10	8	18	0	0	0	0	20	0	0	0	8	0	0	13	1.136075582	0.01075	-0.1694	0.03258	2022-10-05 22:04:34.620686	2022-10-05 22:04:34.620686
4	2268	0	0	0	0	13	0	0	0	0	99	49	0	0	0	3	3	0	0	6	22	0	0	0	0	3	0	0	0	0	0	13	0	6	0	0	0	0	165	0	0	0	0	0	0	16	1.675675582	0.07034	-0.2135	-0.01854	2022-10-05 22:04:34.627465	2022-10-05 22:04:34.627465
5	2269	0	0	0	0	0	0	0	7	0	0	3	0	0	5	8	3	0	0	0	0	0	0	0	4	0	2	0	0	1	0	0	31	0	0	0	0	0	15	61	0	0	0	2	0	15	1.732275582	0.2202	-0.01358	0.128	2022-10-05 22:04:34.633533	2022-10-05 22:04:34.633533
6	27	10	1	5	1	0	0	0	0	0	0	0	36	0	0	0	67	0	0	0	0	0	429	0	31	0	7	0	2	0	0	0	0	181	1	0	0	0	124	0	0	2	0	0	0	17	1.613575582	0.2036	-0.03057	0.01391	2022-10-05 22:04:34.639424	2022-10-05 22:04:34.639424
7	2271	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	127	1	0	1	0	59	0	0	0	0	21	0	0	0	5	12	0	0	6	24	0	0	17	1.742275582	0.04391	0.02784	-0.2512	2022-10-05 22:04:34.648434	2022-10-05 22:04:34.648434
8	2272	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	558	0	0	0	0	0	0	3	0.822075582	-0.3344	0.1408	0.05284	2022-10-05 22:04:34.655983	2022-10-05 22:04:34.655983
9	2273	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.663176	2022-10-05 22:04:34.663176
10	2274	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.673346	2022-10-05 22:04:34.673346
11	2275	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.679589	2022-10-05 22:04:34.679589
12	2276	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.687619	2022-10-05 22:04:34.687619
13	2277	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.694004	2022-10-05 22:04:34.694004
14	2278	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.700693	2022-10-05 22:04:34.700693
15	2279	0	0	0	0	0	0	0	0	10	0	0	0	0	0	0	7	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	3	34	1	0	0	0	1	0	0	0	0	0	0	12	1.702075582	0.09057	-0.1281	0.08257	2022-10-05 22:04:34.707432	2022-10-05 22:04:34.707432
16	2280	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	154	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	15	1.299375582	0.1224	0.1648	-0.3763	2022-10-05 22:04:34.714425	2022-10-05 22:04:34.714425
17	2281	0	0	0	0	0	0	0	0	4	0	0	1	0	0	124	0	0	0	13	0	1	0	0	0	0	0	0	7	0	0	0	0	0	0	4	0	0	55	0	56	0	0	0	0	11	1.476575582	-0.06759	-0.02887	-0.1376	2022-10-05 22:04:34.72041	2022-10-05 22:04:34.72041
18	2282	0	0	0	0	0	0	0	0	12	0	0	1	0	0	14	0	0	0	2	0	13	0	0	0	0	10	0	3	0	0	0	0	249	0	13	0	0	104	0	0	0	3	0	0	13	1.413305582	-0.02485	-0.1328	-0.202	2022-10-05 22:04:34.727914	2022-10-05 22:04:34.727914
19	2283	0	0	0	0	0	5	0	0	0	0	0	1	0	0	0	8	0	0	0	0	0	0	12	0	0	18	0	0	0	0	0	0	0	0	0	0	0	30	0	0	0	0	0	0	8	1.301545582	0.04049	0.1851	0.03223	2022-10-05 22:04:34.735368	2022-10-05 22:04:34.735368
20	37	7	4	0	1	16	0	0	0	0	1	0	2	0	0	0	12	0	11	0	0	0	0	3	8	5	0	0	71	0	0	0	0	0	0	0	0	0	5	0	0	0	50	0	0	16	1.919875582	0.2361	0.08868	-0.03133	2022-10-05 22:04:34.74254	2022-10-05 22:04:34.74254
21	2285	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	2	0	0	1	0	0	0	0	34	0	64	0	0	9	3	0	0	0	0	0	7	1.349495582	-0.1901	-0.197	-0.1095	2022-10-05 22:04:34.748981	2022-10-05 22:04:34.748981
22	46	17	0	1	0	0	0	0	0	1	0	9	0	0	13	1	0	0	0	0	0	0	0	68	44	0	1	0	0	0	0	24	0	0	0	0	0	1	39	0	0	0	0	0	65	15	1.754075582	0.2122	0.0961	0.03959	2022-10-05 22:04:34.754955	2022-10-05 22:04:34.754955
23	2287	23	0	0	0	1	0	0	0	0	1	0	0	0	0	7	8	0	0	0	0	0	8	21	76	0	0	0	0	0	0	0	0	270	0	0	0	0	48	0	0	25	0	0	0	12	1.354885582	0.06432	-0.08923	-0.012	2022-10-05 22:04:34.763032	2022-10-05 22:04:34.763032
24	2288	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	2	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	0	4	1.171975582	0.009968	0.1299	0.2263	2022-10-05 22:04:34.769912	2022-10-05 22:04:34.769912
25	2289	3	0	1	1	0	0	0	0	1	0	0	0	0	0	0	2	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	1	0	20	0	0	84	0	0	0	0	0	0	14	0.957875582	-0.02177	-0.1039	0.04476	2022-10-05 22:04:34.776279	2022-10-05 22:04:34.776279
26	2290	1	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	43	0	0	9	0	0	0	9	1.455935582	-0.1172	0.1899	0.1206	2022-10-05 22:04:34.783116	2022-10-05 22:04:34.783116
27	56	1	0	0	0	0	0	0	0	0	4	1	0	0	0	0	0	0	0	0	0	0	31	0	0	0	0	0	96	0	0	7	0	34	0	0	0	0	470	0	0	0	0	0	0	8	1.055275582	-0.03266	-0.1404	-0.183	2022-10-05 22:04:34.789366	2022-10-05 22:04:34.789366
28	2292	1	0	0	4	0	0	1	0	1	0	0	3	0	0	0	6	4	0	0	0	1	0	0	1	2	0	0	0	0	0	0	0	0	4	1	0	0	11	7	0	0	0	0	0	23	2.227075582	0.1132	0.03798	0.1502	2022-10-05 22:04:34.795886	2022-10-05 22:04:34.795886
29	2293	0	0	0	0	0	0	0	0	0	0	0	7	1	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	24	0	0	0	0	0	0	5	1.137975582	-0.2095	0.1266	0.07025	2022-10-05 22:04:34.802303	2022-10-05 22:04:34.802303
30	2294	0	0	0	0	0	0	0	1	0	0	3	0	0	0	8	38	0	0	0	0	0	3	0	0	0	0	33	0	0	0	86	0	0	0	0	0	0	158	0	0	0	172	0	0	12	1.346555582	0.0893	-0.0363	0.05756	2022-10-05 22:04:34.808984	2022-10-05 22:04:34.808984
31	67	6	13	0	0	0	0	0	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	0	3	0	12	0	0	0	18	0	0	0	0	0	0	0	1	0	0	0	0	4	48	20	2.020275582	0.1682	0.2281	0.02279	2022-10-05 22:04:34.815815	2022-10-05 22:04:34.815815
32	2296	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.821599	2022-10-05 22:04:34.821599
33	2297	22	0	0	0	0	0	0	0	0	0	0	2	0	1	2	21	0	0	0	0	0	0	0	0	0	8	0	82	0	4	0	0	1	23	98	0	10	41	0	20	0	0	12	0	25	1.973675582	0.1458	0.0142	-0.1803	2022-10-05 22:04:34.83752	2022-10-05 22:04:34.83752
34	2298	0	0	0	0	0	0	1	0	0	2	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	35	0	2	0	0	136	12	0	0	0	0	0	7	1.005775582	-0.2172	-0.2215	0.009795	2022-10-05 22:04:34.845152	2022-10-05 22:04:34.845152
35	2299	0	1	0	0	0	0	0	0	0	0	0	0	14	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	41	0	0	0	0	188	0	0	0	0	0	0	9	1.068375582	-0.1929	-0.1227	0.000583	2022-10-05 22:04:34.852968	2022-10-05 22:04:34.852968
36	77	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7	0	0	0	0	0	5	4	1.033875582	-0.2347	0.1754	0.04502	2022-10-05 22:04:34.859755	2022-10-05 22:04:34.859755
37	80	1	4	0	0	0	0	0	0	0	0	0	0	0	0	0	50	24	0	0	0	0	0	0	14	0	0	5	3	0	1	1	0	0	0	0	0	0	15	2	0	0	0	47	356	25	1.238875582	0.02516	0.1479	0.06365	2022-10-05 22:04:34.86685	2022-10-05 22:04:34.86685
38	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:34.875051	2022-10-05 22:04:34.875051
39	2303	5	1	0	0	0	13	0	0	0	1	1	6	0	2	0	20	0	0	0	0	0	0	0	5	0	2	0	2	0	0	0	0	0	0	0	0	0	63	21	0	0	0	1	0	24	2.106575582	0.2141	0.1026	0.141	2022-10-05 22:04:34.882385	2022-10-05 22:04:34.882385
40	92	402	0	0	1	0	0	0	0	0	0	216	0	0	0	1	0	0	0	0	76	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	32	0	0	0	0	0	0	7	1.242775582	-0.01919	-0.02099	0.09547	2022-10-05 22:04:34.888481	2022-10-05 22:04:34.888481
41	102	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0	0	0	0	0	176	0	0	0	0	0	0	0	0	5	0.577075582	0.08608	0.1569	-0.403	2022-10-05 22:04:34.895079	2022-10-05 22:04:34.895079
42	111	8	0	0	0	0	0	0	0	0	1	20	0	0	0	45	124	0	4	11	0	0	4	0	5	0	0	0	0	0	0	0	0	43	0	0	1	3	197	0	0	0	0	0	0	17	1.580675582	0.1591	-0.194	0.05228	2022-10-05 22:04:34.901225	2022-10-05 22:04:34.901225
43	2307	0	0	0	5	0	0	0	0	1	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	14	0	1	0	0	3	0	0	0	0	23	11	0	0	0	0	0	12	1.756575582	-0.1129	-0.1226	-0.1762	2022-10-05 22:04:34.908324	2022-10-05 22:04:34.908324
44	2308	0	0	0	0	0	17	8	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7	0	0	0	0	0	0	12	1.248475582	-0.1395	0.21	0.02041	2022-10-05 22:04:34.915342	2022-10-05 22:04:34.915342
45	2309	5	0	0	0	1	0	0	0	0	0	1	0	0	0	4	37	0	0	6	2	40	3	2	33	61	0	40	6	0	0	0	0	0	0	63	0	0	19	0	0	0	0	0	0	17	1.895975582	0.213	-0.04761	-0.06047	2022-10-05 22:04:34.925274	2022-10-05 22:04:34.925274
46	121	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	29	0	2	0	0	0	0	6	1.012875582	-0.2104	0.09166	0.102	2022-10-05 22:04:34.939328	2022-10-05 22:04:34.939328
47	126	4	0	0	0	0	0	0	0	0	0	0	0	0	0	1	28	0	24	0	0	4	0	20	83	0	0	0	0	0	0	0	172	0	0	0	0	0	33	2	0	0	8	0	0	18	1.366375582	0.1595	0.006763	0.1317	2022-10-05 22:04:34.946704	2022-10-05 22:04:34.946704
48	2312	3	0	0	0	0	7	3	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	34	0	0	0	0	0	0	0	0	11	0	0	0	0	0	1	20	1.752275582	-0.03381	0.2065	0.006131	2022-10-05 22:04:34.953072	2022-10-05 22:04:34.953072
49	136	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	110	0	0	31	0	53	0	0	0	0	0	0	5	1.045275582	-0.2511	-0.1632	-0.06726	2022-10-05 22:04:34.96543	2022-10-05 22:04:34.96543
50	2314	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0.974975582	0.07003	0.02874	-0.3372	2022-10-05 22:04:34.971582	2022-10-05 22:04:34.971582
51	2315	1	0	1	14	0	0	7	0	37	0	7	3	4	19	22	42	0	0	0	0	22	0	0	0	0	1	0	99	0	0	0	0	3	0	0	0	0	30	0	0	0	0	0	0	24	2.082275582	0.232	-0.04191	-0.07305	2022-10-05 22:04:34.978401	2022-10-05 22:04:34.978401
52	145	48	8	0	0	5	0	0	0	0	0	6	9	0	0	0	152	0	0	0	0	0	4	446	3	12	0	12	0	0	0	0	0	20	0	0	0	0	184	0	0	0	0	0	38	19	1.581775582	0.1559	0.01855	0.01279	2022-10-05 22:04:34.985856	2022-10-05 22:04:34.985856
53	154	0	0	15	0	0	28	0	0	0	0	0	8	0	7	0	60	1	1	0	0	0	150	45	48	0	0	0	9	0	0	0	0	0	45	0	0	0	35	0	0	0	0	0	122	20	2.065375582	0.2657	0.09873	-0.01577	2022-10-05 22:04:34.994928	2022-10-05 22:04:34.994928
54	2318	0	1	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	5	94	0	0	0	0	0	2	0	0	0	0	0	26	268	0	11	0	0	49	0	0	15	0	0	0	14	1.282375582	-0.1191	-0.07053	-0.1016	2022-10-05 22:04:35.00191	2022-10-05 22:04:35.00191
55	164	4	3	0	1	0	0	0	0	0	0	1	4	0	8	0	9	0	0	0	0	0	96	0	89	0	11	0	0	0	0	101	0	0	0	3	0	0	14	0	0	0	0	0	0	20	1.861475582	0.25	0.01144	0.159	2022-10-05 22:04:35.009855	2022-10-05 22:04:35.009855
56	173	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	74	0	6	0	0	0	0	3	0.961075582	-0.2787	0.08407	0.08168	2022-10-05 22:04:35.016504	2022-10-05 22:04:35.016504
57	2321	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20	0	0	0	0	0	0	1	0	0	0	0	2	0	5	0	0	0	0	10	1.319215582	-0.1245	0.05088	-0.07074	2022-10-05 22:04:35.02464	2022-10-05 22:04:35.02464
58	183	0	0	0	0	0	11	0	0	0	0	0	2	0	6	0	2	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	96	4	0	0	0	0	0	11	1.155875582	0.0168	0.1117	0.2222	2022-10-05 22:04:35.032381	2022-10-05 22:04:35.032381
59	2323	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	13	0	0	1	0	0	0	6	1.454595582	-0.1966	0.1468	0.09161	2022-10-05 22:04:35.038387	2022-10-05 22:04:35.038387
60	2324	8	0	0	0	0	1	4	0	15	1	0	3	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	35	8	0	1	0	2	0	0	0	3	0	0	0	0	0	0	26	1.725875582	0.03004	0.1456	0.05262	2022-10-05 22:04:35.048269	2022-10-05 22:04:35.048269
61	2325	8	0	2	0	14	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	1.345235582	0.09073	0.1695	-0.08954	2022-10-05 22:04:35.054717	2022-10-05 22:04:35.054717
62	2326	0	0	0	0	1	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	2	0	0	0	0	0	0	4	1.349035582	-0.1662	0.1024	-0.01419	2022-10-05 22:04:35.061664	2022-10-05 22:04:35.061664
63	2327	12	0	0	7	0	0	0	2	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	60	0	0	0	0	0	0	5	0	0	0	0	0	0	7	1.120075582	-0.03832	0.09388	0.01842	2022-10-05 22:04:35.070913	2022-10-05 22:04:35.070913
64	1706	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	21	0	0	0	0	0	0	0	1	0.316075582	-0.00079	0.08954	-0.1557	2022-10-05 22:04:35.079048	2022-10-05 22:04:35.079048
65	191	2	0	0	0	0	0	0	0	0	0	0	0	1	0	0	43	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	37	2	0	0	0	2	0	7	1.226675582	-0.0263	-0.0163	0.1581	2022-10-05 22:04:35.085983	2022-10-05 22:04:35.085983
66	2330	0	0	0	0	0	10	7	35	0	0	2	21	0	43	10	36	8	0	2	3	0	0	0	35	0	0	0	3	0	0	0	10	2	4	0	0	0	35	0	0	0	0	2	0	28	2.422775582	0.2556	-0.0227	0.06271	2022-10-05 22:04:35.097117	2022-10-05 22:04:35.097117
67	201	0	0	0	0	0	0	0	0	0	1	1	2	2	0	2	0	0	0	0	0	0	0	1	18	0	0	0	0	0	0	0	0	37	0	3	0	0	80	0	0	0	5	0	0	13	1.330565582	-0.05975	-0.169	-0.01611	2022-10-05 22:04:35.103988	2022-10-05 22:04:35.103988
68	2332	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.11097	2022-10-05 22:04:35.11097
69	211	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	0	2	0	0	0	0	0	0	0	0	0	3	29	0	0	87	0	0	0	0	0	0	4	0.827975582	-0.188	0.04124	0.07878	2022-10-05 22:04:35.124877	2022-10-05 22:04:35.124877
70	221	1	0	0	0	0	0	0	0	0	0	0	0	0	0	12	1	0	0	0	7	0	0	0	0	0	0	0	0	0	0	0	0	27	0	4	0	0	4	0	0	0	0	5	0	9	1.442105582	-0.03713	-0.113	0.02197	2022-10-05 22:04:35.133644	2022-10-05 22:04:35.133644
71	226	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	199	1	1	363	0	97	1	0	0	0	0	0	10	1.198075582	-0.06184	-0.1582	0.04362	2022-10-05 22:04:35.146026	2022-10-05 22:04:35.146026
72	235	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.15453	2022-10-05 22:04:35.15453
73	2337	0	0	0	0	0	0	0	0	0	0	0	0	212	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	213	0	0	0	0	0	0	3	0.661675582	-0.3095	0.07372	0.04497	2022-10-05 22:04:35.162335	2022-10-05 22:04:35.162335
74	2338	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	0	0	261	0	7	0	0	0	0	5	0.789175582	-0.2822	-0.02008	0.01957	2022-10-05 22:04:35.169428	2022-10-05 22:04:35.169428
75	2339	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.176668	2022-10-05 22:04:35.176668
76	241	1	0	0	0	0	0	0	0	0	0	98	0	0	0	4	25	0	0	0	0	0	29	21	1	7	0	0	9	0	0	0	0	7	0	0	0	0	80	0	0	0	0	0	0	13	1.526075582	0.1627	-0.1733	-0.0269	2022-10-05 22:04:35.189391	2022-10-05 22:04:35.189391
77	252	0	0	0	2	0	0	0	0	0	0	0	4	0	11	0	23	0	0	1	0	0	0	0	2	0	0	0	0	0	0	0	0	58	0	0	0	0	87	0	5	0	0	0	0	9	1.387835582	0.1005	-0.1109	0.1062	2022-10-05 22:04:35.197791	2022-10-05 22:04:35.197791
78	2342	5	0	0	0	0	1	1	0	1	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6	9	0	7	0	0	7	0	2	0	0	0	0	15	1.965675582	-0.02859	-0.191	0.01803	2022-10-05 22:04:35.204528	2022-10-05 22:04:35.204528
79	262	1	0	0	0	0	0	0	0	0	0	1	2	0	0	2	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	0	4	33	0	0	0	6	11	0	0	0	0	0	0	12	1.586075582	0.06915	-0.1118	0.1018	2022-10-05 22:04:35.212169	2022-10-05 22:04:35.212169
80	273	2	0	0	0	0	0	2	0	2	0	2	0	0	0	0	0	0	0	0	0	0	39	0	1	0	0	0	1	0	0	0	0	28	0	0	1	0	36	0	11	0	1	0	0	16	1.594775582	0.04374	-0.2008	-0.07162	2022-10-05 22:04:35.222095	2022-10-05 22:04:35.222095
81	2345	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.241322	2022-10-05 22:04:35.241322
82	2346	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	109	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	65	7	0	0	0	0	0	6	1.050475582	-0.00946	-0.02056	0.1815	2022-10-05 22:04:35.251424	2022-10-05 22:04:35.251424
83	2347	0	0	0	0	0	0	0	7	0	0	0	79	0	26	0	0	0	0	3	0	0	0	0	0	4	48	37	287	0	0	0	0	0	0	0	0	0	61	0	0	7	0	0	0	16	1.718875582	0.1172	0.2161	-0.2127	2022-10-05 22:04:35.259294	2022-10-05 22:04:35.259294
84	283	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.266424	2022-10-05 22:04:35.266424
85	2349	0	0	0	3	0	0	0	0	0	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	138	6	0	0	0	0	0	4	0.553375582	-0.2983	0.1058	0.08596	2022-10-05 22:04:35.273166	2022-10-05 22:04:35.273166
86	2350	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.280162	2022-10-05 22:04:35.280162
87	2351	1	0	0	75	0	0	1	0	0	0	4	0	0	0	8	26	0	0	0	2	0	0	0	29	0	0	0	0	0	0	0	0	4	0	0	0	0	58	0	0	0	21	0	0	13	1.436185582	0.09204	-0.1413	0.06399	2022-10-05 22:04:35.286509	2022-10-05 22:04:35.286509
88	2352	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	20	8	0	0	1	0	0	6	1.045775582	-0.1135	0.05594	-0.03534	2022-10-05 22:04:35.293752	2022-10-05 22:04:35.293752
89	2353	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.299788	2022-10-05 22:04:35.299788
90	293	0	0	0	0	0	0	0	0	4	3	0	0	0	0	82	0	0	0	0	19	0	5	0	0	0	0	0	0	0	0	0	0	21	0	0	0	0	63	3	0	0	0	0	0	8	1.068975582	-0.2192	-0.1876	-0.02773	2022-10-05 22:04:35.305488	2022-10-05 22:04:35.305488
91	2355	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.311767	2022-10-05 22:04:35.311767
92	1794	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	8	0	0	32	0	0	88	0	0	31	0	0	0	0	0	0	75	0	0	0	0	0	0	10	1.298975582	0.03457	0.1184	-0.01371	2022-10-05 22:04:35.31771	2022-10-05 22:04:35.31771
93	2357	0	0	0	0	0	0	0	0	0	6	4	0	0	0	0	0	0	0	0	405	0	6	0	0	0	0	0	0	0	0	0	0	6	0	6	0	0	73	0	1	0	0	0	0	10	1.192775582	-0.1773	-0.2963	-0.02102	2022-10-05 22:04:35.323567	2022-10-05 22:04:35.323567
94	303	0	0	0	0	0	0	0	0	0	0	38	0	0	0	0	0	0	0	0	14	0	5	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	709	8	0	0	0	0	0	8	1.045175582	-0.1334	-0.1191	0.1389	2022-10-05 22:04:35.330328	2022-10-05 22:04:35.330328
95	313	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	98	0	0	12	0	11	2	0	0	2	0	0	9	1.195375582	-0.1521	-0.18	0.03602	2022-10-05 22:04:35.336982	2022-10-05 22:04:35.336982
96	314	0	0	0	0	0	0	0	7	0	0	8	0	0	0	0	0	0	19	0	0	0	0	0	0	0	0	0	0	0	0	0	0	24	0	34	0	0	60	0	0	0	0	0	0	8	1.614175582	-0.1589	-0.1344	0.02565	2022-10-05 22:04:35.34293	2022-10-05 22:04:35.34293
97	324	1	0	0	0	0	0	1	25	0	0	1	0	1	0	0	0	0	0	0	2	0	0	0	5	0	0	0	0	0	0	0	0	0	0	12	0	0	7	0	0	0	0	0	0	12	1.631475582	0.01218	-0.07557	0.1314	2022-10-05 22:04:35.349973	2022-10-05 22:04:35.349973
98	2362	1	0	0	0	0	0	0	0	0	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	74	38	0	0	0	0	0	4	1.038175582	-0.2238	0.1078	0.1246	2022-10-05 22:04:35.356988	2022-10-05 22:04:35.356988
99	2363	21	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	60	0	0	0	0	28	0	0	0	0	0	0	3	0.942775582	-0.1608	0.04466	0.03776	2022-10-05 22:04:35.368632	2022-10-05 22:04:35.368632
100	2364	0	0	0	0	0	0	0	0	6	0	0	10	0	0	0	41	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	2	0	0	0	0	0	7	0	0	0	0	0	0	8	1.453695582	-0.03461	0.1597	-0.01153	2022-10-05 22:04:35.374583	2022-10-05 22:04:35.374583
101	334	0	0	0	0	0	0	0	0	0	0	63	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	7	0	1	86	1	0	518	0	0	0	8	0	0	0	0	0	0	9	1.163175582	-0.04884	0.02859	-0.04076	2022-10-05 22:04:35.381259	2022-10-05 22:04:35.381259
102	2366	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	0	0	3	0	0	0	2	0	0	0	0	58	0	0	0	0	63	0	0	16	0	82	0	0	0	0	0	0	10	1.515675582	0.05237	-0.01272	-0.1366	2022-10-05 22:04:35.387037	2022-10-05 22:04:35.387037
103	2367	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.393136	2022-10-05 22:04:35.393136
104	2368	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	88	0	0	0	0	3	0	0	0	0	15	0	0	0	0	6	0	0	0	0	0	0	5	0.977575582	-0.05339	-0.1051	-0.2227	2022-10-05 22:04:35.401062	2022-10-05 22:04:35.401062
105	2369	0	0	0	0	4	0	12	0	0	16	0	0	0	0	0	24	0	0	0	0	0	0	0	0	0	7	0	55	0	0	0	0	1	0	0	0	0	80	0	0	0	0	0	0	7	1.437345582	0.04337	0.01535	-0.1762	2022-10-05 22:04:35.409483	2022-10-05 22:04:35.409483
106	343	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.415648	2022-10-05 22:04:35.415648
107	2371	0	0	0	0	0	0	0	1	1	0	6	0	0	0	0	38	0	0	0	2	0	4	0	1	0	0	0	0	0	0	0	2	52	0	2	0	0	64	0	0	0	0	0	0	12	1.236175582	0.07948	-0.1564	0.1663	2022-10-05 22:04:35.421919	2022-10-05 22:04:35.421919
108	353	3	0	0	1	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	27	0	0	0	0	48	242	12	0	0	1011	0	0	0	0	0	0	11	0.830275582	-0.06109	-0.1583	-0.2102	2022-10-05 22:04:35.42851	2022-10-05 22:04:35.42851
109	363	0	0	2	0	10	0	1	0	0	10	130	0	0	4	1	7	0	0	12	0	0	0	0	1	0	3	0	0	0	0	0	0	0	0	0	6	0	217	0	0	0	0	0	15	19	1.662175582	0.2088	0.05052	-0.01267	2022-10-05 22:04:35.435328	2022-10-05 22:04:35.435328
110	2374	187	0	0	0	0	0	0	0	0	130	0	2	0	0	0	47	0	0	0	244	0	0	0	2	1	6	0	0	0	0	0	0	0	0	0	0	0	863	0	0	0	1	0	1	15	1.322005582	0.1714	0.1128	0.08829	2022-10-05 22:04:35.441705	2022-10-05 22:04:35.441705
111	2375	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	46	0	2	0	0	45	0	0	0	9	0	0	8	1.222175582	-0.2372	-0.2301	-0.04579	2022-10-05 22:04:35.448486	2022-10-05 22:04:35.448486
112	2376	2	0	1	1	0	0	0	0	0	0	1	0	2	17	0	62	0	0	6	0	0	0	323	29	0	0	0	121	0	0	0	0	0	0	0	0	0	6	0	0	0	0	15	11	23	1.749875582	0.2721	0.09533	-0.00982	2022-10-05 22:04:35.45439	2022-10-05 22:04:35.45439
113	2377	2	0	9	11	4	0	0	0	0	0	10	0	0	1	0	0	0	0	0	0	0	0	11	1	0	0	0	0	17	0	0	21	87	0	0	0	2	26	0	0	0	0	7	29	23	2.111375582	0.1434	-0.09487	-0.0088	2022-10-05 22:04:35.460727	2022-10-05 22:04:35.460727
114	2378	4	0	0	0	0	0	0	0	0	4	4	0	0	0	0	2	0	0	0	13	0	37	0	1	0	0	0	0	0	0	0	0	34	0	9	0	0	102	1	0	0	0	0	0	11	1.435215582	0.08838	-0.234	0.1258	2022-10-05 22:04:35.466821	2022-10-05 22:04:35.466821
115	2379	0	0	0	0	0	0	0	0	0	0	1	12	0	0	0	8	0	0	0	0	0	0	0	0	24	0	58	0	0	0	23	6	0	0	0	0	0	1	0	0	0	0	0	0	10	1.695375582	0.1398	0.01368	0.1451	2022-10-05 22:04:35.47527	2022-10-05 22:04:35.47527
116	373	5	0	0	0	0	0	0	0	0	0	1	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	4	0	50	143	0	0	3	0	0	9	1.140175582	-0.09055	0.06568	0.1362	2022-10-05 22:04:35.482475	2022-10-05 22:04:35.482475
117	383	40	6	0	0	0	28	0	0	0	0	1	4	0	1	0	85	0	0	0	0	0	0	0	0	0	12	20	0	0	0	0	0	0	0	0	0	0	25	0	0	0	0	0	1	19	1.748175582	0.1921	0.1637	0.1502	2022-10-05 22:04:35.489401	2022-10-05 22:04:35.489401
118	392	1	0	0	0	0	0	0	0	47	0	0	0	0	0	0	0	0	0	0	0	0	91	7	6	0	44	0	29	0	0	7	0	0	0	0	0	0	17	0	0	0	0	0	6	13	1.675675582	0.1611	0.1315	-0.1806	2022-10-05 22:04:35.496399	2022-10-05 22:04:35.496399
119	2383	1	0	0	0	0	0	0	50	1	0	4	33	0	24	0	79	0	0	4	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	35	0	0	0	0	0	3	20	2.018375582	0.2162	0.07944	0.1354	2022-10-05 22:04:35.502411	2022-10-05 22:04:35.502411
120	402	10	2	0	0	0	0	0	0	0	0	0	31	0	14	0	3	0	0	45	0	0	0	0	0	0	0	14	9	0	0	0	16	2	0	1	0	0	62	0	0	0	0	0	0	20	1.885375582	0.06244	-0.01729	-0.01851	2022-10-05 22:04:35.509021	2022-10-05 22:04:35.509021
121	2385	1	0	0	0	0	0	6	0	6	1	5	6	0	1	0	0	0	0	39	0	0	0	0	14	0	0	0	0	0	0	0	0	0	1	8	0	0	56	0	1	0	0	0	0	16	1.599475582	0.0848	0.0211	0.08555	2022-10-05 22:04:35.515339	2022-10-05 22:04:35.515339
122	2386	0	0	0	4	0	0	0	0	3	0	2	0	0	0	0	31	0	0	0	3	0	0	0	0	10	5	0	57	0	4	1	0	13	0	1	0	0	216	0	0	0	11	1	0	19	1.541975582	0.1326	-0.159	-0.1383	2022-10-05 22:04:35.522611	2022-10-05 22:04:35.522611
123	2387	0	0	1	2	0	0	0	0	3	0	0	0	0	0	0	0	0	0	6	0	0	0	0	0	0	0	0	0	0	4	0	0	0	0	5	0	0	2	0	0	0	0	0	0	11	1.729775582	-0.1414	0.08105	-0.05381	2022-10-05 22:04:35.529252	2022-10-05 22:04:35.529252
124	407	0	0	0	1	1	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	73	0	0	75	0	17	1	0	0	0	0	0	10	1.333115582	-0.1045	-0.1738	-0.05845	2022-10-05 22:04:35.5349	2022-10-05 22:04:35.5349
125	1237	0	0	0	0	0	0	0	1	0	0	5	0	0	0	2	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	36	1	39	0	14	0	0	0	0	11	1.659975582	-0.01055	-0.02045	0.06784	2022-10-05 22:04:35.541876	2022-10-05 22:04:35.541876
126	417	0	0	0	1	0	0	0	2	0	0	105	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	72	1	0	0	57	0	0	7	1.205775582	-0.05465	-0.02871	0.1309	2022-10-05 22:04:35.548107	2022-10-05 22:04:35.548107
127	425	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	20	0	0	0	0	18	0	0	8	0	0	0	5	0.987875582	-0.1078	-0.0634	-0.2683	2022-10-05 22:04:35.553934	2022-10-05 22:04:35.553934
128	2392	0	0	0	0	0	0	0	0	0	0	0	1	0	0	26	0	0	0	0	22	0	0	0	0	0	4	0	28	0	0	0	0	0	1	0	0	0	18	0	0	0	8	0	0	13	1.771975582	-0.01374	0.06828	-0.2256	2022-10-05 22:04:35.568985	2022-10-05 22:04:35.568985
129	2393	14	0	0	0	0	0	0	0	2	0	1	0	34	36	0	0	0	0	5	0	1	0	0	0	0	0	0	0	2	0	0	15	15	0	0	0	0	4	81	0	0	0	0	0	15	1.757375582	0.03899	-0.1216	0.06125	2022-10-05 22:04:35.577555	2022-10-05 22:04:35.577555
130	2394	0	0	0	9	0	0	0	0	0	4	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	121	0	0	0	0	0	0	4	0.828175582	-0.2369	0.09444	0.0101	2022-10-05 22:04:35.583462	2022-10-05 22:04:35.583462
131	2395	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	8	1.350805582	0.03893	0.1061	-0.08116	2022-10-05 22:04:35.58957	2022-10-05 22:04:35.58957
132	2396	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	20	1	0	4	0	0	0	5	0.943175582	-0.1625	0.16	0.1015	2022-10-05 22:04:35.595987	2022-10-05 22:04:35.595987
133	2397	0	0	0	0	0	2	0	0	44	8	0	0	0	0	0	377	0	54	0	0	0	0	0	114	0	4	0	0	0	0	0	0	0	0	0	0	0	68	0	0	1	0	0	0	19	1.625075582	0.1056	0.08747	0.1052	2022-10-05 22:04:35.601751	2022-10-05 22:04:35.601751
134	435	0	0	0	0	1	0	0	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	170	0	0	0	0	248	0	9	1.044275582	-0.1709	0.078	0.02008	2022-10-05 22:04:35.607874	2022-10-05 22:04:35.607874
135	2399	0	0	0	0	22	0	0	0	0	41	0	0	3	0	0	11	0	0	0	0	0	0	0	0	0	95	0	0	0	12	0	0	0	0	0	0	0	23	0	0	0	0	0	0	17	1.964175582	-0.05478	0.151	-0.0909	2022-10-05 22:04:35.616334	2022-10-05 22:04:35.616334
136	2400	0	0	0	0	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	0	0	0	0	0	0	0	7	0	0	13	2	0	0	10	1.616775582	-0.1971	0.154	-0.06014	2022-10-05 22:04:35.622055	2022-10-05 22:04:35.622055
137	2401	0	0	0	0	0	0	0	0	1	1	0	65	0	0	0	14	0	3	0	0	1	0	0	142	0	0	0	0	0	0	0	3	0	3	0	0	1	20	33	0	0	0	0	0	20	1.351095582	0.1056	0.01633	0.1874	2022-10-05 22:04:35.630415	2022-10-05 22:04:35.630415
138	2402	1	5	0	0	0	0	0	0	0	0	3	0	0	0	0	10	0	0	0	0	0	0	0	11	0	14	0	0	0	11	2	0	0	0	0	0	0	8	0	0	1	0	2	16	20	1.475645582	0.2094	0.1364	0.04542	2022-10-05 22:04:35.63626	2022-10-05 22:04:35.63626
139	2403	0	0	0	0	0	0	0	14	0	0	0	0	1	0	7	11	0	0	2	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	33	0	0	0	44	1	0	12	1.622575582	-0.01402	0.002359	-0.02587	2022-10-05 22:04:35.643516	2022-10-05 22:04:35.643516
140	443	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.653716	2022-10-05 22:04:35.653716
141	2405	0	0	0	0	0	0	0	0	0	0	0	0	4	1	0	70	0	7	11	0	0	0	25	2	13	6	0	35	0	0	0	0	0	3	0	0	0	20	0	0	0	0	0	11	21	2.044975582	0.2115	0.139	-0.1588	2022-10-05 22:04:35.660555	2022-10-05 22:04:35.660555
142	450	0	0	0	0	0	0	0	0	0	0	5	0	0	0	0	2	0	0	0	8	1	0	0	0	0	0	0	0	0	0	0	2	3	0	11	182	0	159	0	2	0	0	0	0	12	1.227275582	-0.04967	-0.3068	0.02027	2022-10-05 22:04:35.667646	2022-10-05 22:04:35.667646
143	460	0	0	0	0	0	0	0	0	0	0	0	7	1	0	0	0	0	5	0	21	0	0	0	0	0	0	0	0	0	0	0	0	6	0	39	0	0	39	0	8	0	0	0	0	10	1.519075582	-0.137	-0.1891	-0.00239	2022-10-05 22:04:35.673088	2022-10-05 22:04:35.673088
144	2408	6	0	0	0	0	25	3	0	0	0	0	3	0	10	5	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	0	2	0	0	0	0	0	10	0	0	0	46	0	0	23	2.058075582	0.1643	0.08717	0.1511	2022-10-05 22:04:35.678841	2022-10-05 22:04:35.678841
145	2409	2	0	0	0	2	0	0	0	0	0	13	0	0	1	1	0	0	0	6	0	1	0	3	0	0	36	0	1	0	0	0	0	2	0	0	0	0	24	0	0	0	0	0	0	17	1.870675582	0.08361	0.02003	-0.1869	2022-10-05 22:04:35.685202	2022-10-05 22:04:35.685202
146	2410	6	2	0	0	0	0	0	0	0	0	0	0	0	2	2	21	170	0	0	0	0	0	0	13	0	0	0	0	23	19	2	20	0	0	0	0	0	40	0	0	4	0	15	0	23	1.960475582	0.2363	0.1092	0.1172	2022-10-05 22:04:35.69115	2022-10-05 22:04:35.69115
147	470	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	3	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	105	0	1	1	0	71	0	0	0	0	0	0	7	0.644875582	-0.1344	-0.02431	0.1027	2022-10-05 22:04:35.697236	2022-10-05 22:04:35.697236
148	480	1	0	0	0	0	2	0	0	13	1	0	13	0	0	5	0	0	0	0	0	0	0	0	1	0	0	0	3	13	0	1	0	0	0	0	0	0	8	0	0	0	0	0	0	21	1.938875582	0.0225	0.1188	-0.02325	2022-10-05 22:04:35.703052	2022-10-05 22:04:35.703052
149	2413	0	0	0	1	0	0	0	1	0	0	1	0	0	0	12	158	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	4	257	0	0	0	0	46	0	0	0	0	0	0	10	1.170675582	0.03171	-0.2359	0.04857	2022-10-05 22:04:35.708783	2022-10-05 22:04:35.708783
150	2414	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.715214	2022-10-05 22:04:35.715214
151	490	0	2	0	0	1	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	3	0	0	0	0	0	28	0	0	0	0	1	4	0	0	0	87	0	3	0	0	0	0	12	1.333575582	-0.04281	-0.01782	-0.2266	2022-10-05 22:04:35.720865	2022-10-05 22:04:35.720865
152	2416	123	1	0	2	0	0	0	0	0	0	3	113	0	73	0	197	0	0	0	3	0	0	0	9	0	5	0	0	0	0	0	277	0	0	2	0	0	37	0	0	0	0	0	0	18	1.779875582	0.2862	0.02615	0.1672	2022-10-05 22:04:35.727212	2022-10-05 22:04:35.727212
153	2417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.733999	2022-10-05 22:04:35.733999
154	2418	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.740201	2022-10-05 22:04:35.740201
155	500	0	0	0	0	0	0	1	0	0	1	8	0	0	0	7	9	0	1	0	4	1	3	0	4	0	0	0	0	0	0	0	0	117	0	1	1	0	27	12	0	0	7	0	0	16	1.574075582	0.1141	-0.2689	0.09049	2022-10-05 22:04:35.749353	2022-10-05 22:04:35.749353
156	2420	1	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	106	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	12	1.147575582	0.1338	0.2244	-0.2076	2022-10-05 22:04:35.755686	2022-10-05 22:04:35.755686
157	2421	0	0	0	0	0	0	0	0	0	14	0	0	0	0	1	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	0	0	0	0	0	0	0	151	0	0	0	0	0	0	3	0.797375582	-0.114	0.08184	0.1012	2022-10-05 22:04:35.761608	2022-10-05 22:04:35.761608
158	509	0	1	0	0	0	0	2	29	2	0	57	0	0	0	24	0	0	0	0	3	0	205	0	0	0	0	0	11	0	0	0	0	0	4	0	0	4	59	0	0	0	72	0	0	16	1.630975582	0.08831	-0.07855	-0.1473	2022-10-05 22:04:35.767429	2022-10-05 22:04:35.767429
159	2423	27	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	1	0.779175582	-0.1982	0.1978	0.1147	2022-10-05 22:04:35.772966	2022-10-05 22:04:35.772966
160	517	0	0	86	3	2	0	0	0	0	1	0	0	0	0	0	0	0	6	0	0	0	0	0	2	0	3	0	0	0	0	0	0	0	0	0	0	0	43	0	4	1	0	0	0	11	1.298175582	-0.02842	0.1207	-0.1131	2022-10-05 22:04:35.780493	2022-10-05 22:04:35.780493
161	2425	0	0	0	8	0	0	0	0	2	0	0	0	0	1	6	20	0	4	0	4	1	0	0	5	0	0	0	0	0	0	0	11	21	0	0	0	0	16	0	19	0	0	0	0	13	1.874675582	0.09801	-0.232	0.03869	2022-10-05 22:04:35.787312	2022-10-05 22:04:35.787312
162	526	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	1	0	0	0	9	0	5	2	0	133	0	0	0	0	0	0	0	0	0	82	0	0	2	0	0	1	12	1.309755582	0.1117	0.1951	-0.1977	2022-10-05 22:04:35.794134	2022-10-05 22:04:35.794134
163	536	26	0	0	0	0	0	0	0	0	1	5	3	0	3	1	4	0	0	0	4	0	3	0	202	0	0	44	0	0	0	0	8	0	0	1	401	0	1175	0	0	0	2	0	0	20	1.254975582	0.2579	-0.0752	0.1708	2022-10-05 22:04:35.80091	2022-10-05 22:04:35.80091
164	546	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-10-05 22:04:35.806886	2022-10-05 22:04:35.806886
165	556	76	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	88	354	0	4	0	0	0	0	9	1.327065582	-0.1062	0.1059	0.005348	2022-10-05 22:04:35.813031	2022-10-05 22:04:35.813031
166	566	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	156	0	0	0	23	0	0	0	0	1	1	36	0	0	0	5	5	0	0	0	0	0	0	12	1.347185582	-0.02724	-0.0752	-0.125	2022-10-05 22:04:35.819104	2022-10-05 22:04:35.819104
167	2431	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	15	0	0	0	0	0	0	1	0.836475582	-0.3654	0.1655	0.08335	2022-10-05 22:04:35.827194	2022-10-05 22:04:35.827194
168	574	0	0	0	0	0	0	0	0	0	0	4	0	0	1	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	21	51	0	17	0	0	102	0	1	0	0	0	0	11	1.370695582	0.008788	-0.2708	0.09611	2022-10-05 22:04:35.835947	2022-10-05 22:04:35.835947
\.


--
-- Data for Name: plant_samples; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plant_samples (id, species, label, storage_method, quantity, accession_tray, replication_tray, "row", "column", sowing_date, harvest_date, created_at, updated_at, accession_id) FROM stdin;
1	draba-verna	Eve-AMBR-A-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.842298	2022-10-05 22:04:35.842298	5
2	draba-verna	Eve-AMBR-A-6-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.872196	2022-10-05 22:04:35.872196	6
3	draba-verna	Eve-AMBR-A-8-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.877375	2022-10-05 22:04:35.877375	8
4	draba-verna	Eve-AMBR-A-10-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.882615	2022-10-05 22:04:35.882615	10
5	draba-verna	Eve-AMBR-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.887371	2022-10-05 22:04:35.887371	1566
6	draba-verna	Eve-ANGE-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.89303	2022-10-05 22:04:35.89303	11
7	draba-verna	Eve-ANGE-A-2-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.900268	2022-10-05 22:04:35.900268	12
8	draba-verna	Eve-ANGE-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.904041	2022-10-05 22:04:35.904041	12
9	draba-verna	Eve-ANGE-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.908031	2022-10-05 22:04:35.908031	13
10	draba-verna	Eve-ANGE-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.912202	2022-10-05 22:04:35.912202	14
11	draba-verna	Eve-ANGE-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.916897	2022-10-05 22:04:35.916897	14
12	draba-verna	Eve-ANGE-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.920553	2022-10-05 22:04:35.920553	898
13	draba-verna	Eve-ANGE-A-6-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.924909	2022-10-05 22:04:35.924909	15
14	draba-verna	Eve-ANGE-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.928769	2022-10-05 22:04:35.928769	900
15	draba-verna	Eve-ANGE-A-8-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.932741	2022-10-05 22:04:35.932741	901
16	draba-verna	Eve-ANGE-A-8-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.936546	2022-10-05 22:04:35.936546	901
17	draba-verna	Eve-ANGE-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.940335	2022-10-05 22:04:35.940335	902
18	draba-verna	Eve-ANGE-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.944635	2022-10-05 22:04:35.944635	904
19	draba-verna	Eve-ANGE-B-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.948836	2022-10-05 22:04:35.948836	19
20	draba-verna	Eve-ANGE-B-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.952912	2022-10-05 22:04:35.952912	906
21	draba-verna	Eve-ANGE-B-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.957828	2022-10-05 22:04:35.957828	20
22	draba-verna	Eve-ANGE-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.961977	2022-10-05 22:04:35.961977	21
23	draba-verna	Eve-ANGE-B-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.966368	2022-10-05 22:04:35.966368	23
24	draba-verna	Eve-ANGE-B-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.970257	2022-10-05 22:04:35.970257	24
25	draba-verna	Eve-ANGE-B-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.975047	2022-10-05 22:04:35.975047	25
26	draba-verna	Eve-ANGE-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.979324	2022-10-05 22:04:35.979324	26
27	draba-verna	Eve-ANGE-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.98365	2022-10-05 22:04:35.98365	26
28	draba-verna	Eve-AUZE-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.98763	2022-10-05 22:04:35.98763	27
29	draba-verna	Eve-AUZE-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.99191	2022-10-05 22:04:35.99191	27
30	draba-verna	Eve-AUZE-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:35.996264	2022-10-05 22:04:35.996264	29
31	draba-verna	Eve-AUZE-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.001	2022-10-05 22:04:36.001	30
32	draba-verna	Eve-AUZE-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.007638	2022-10-05 22:04:36.007638	31
33	draba-verna	Eve-AUZE-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.012683	2022-10-05 22:04:36.012683	31
34	draba-verna	Eve-AUZE-A-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.017676	2022-10-05 22:04:36.017676	34
35	draba-verna	Eve-AUZE-A-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.021784	2022-10-05 22:04:36.021784	34
36	draba-verna	Eve-AUZE-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.025818	2022-10-05 22:04:36.025818	35
37	draba-verna	Eve-AUZE-A-10-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.03153	2022-10-05 22:04:36.03153	36
38	draba-verna	Eve-AUZE-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.0355	2022-10-05 22:04:36.0355	1593
39	draba-verna	Eve-AUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.039332	2022-10-05 22:04:36.039332	1594
40	draba-verna	Eve-AUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.044712	2022-10-05 22:04:36.044712	1594
41	draba-verna	Eve-AUZE-A-14-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.049243	2022-10-05 22:04:36.049243	1595
42	draba-verna	Eve-BARA-C-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.054065	2022-10-05 22:04:36.054065	1596
43	draba-verna	Eve-BARA-C-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.057806	2022-10-05 22:04:36.057806	37
44	draba-verna	Eve-BARA-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.064484	2022-10-05 22:04:36.064484	38
45	draba-verna	Eve-BARA-C-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.068475	2022-10-05 22:04:36.068475	39
46	draba-verna	Eve-BARA-C-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.072363	2022-10-05 22:04:36.072363	40
47	draba-verna	Eve-BARA-C-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.076458	2022-10-05 22:04:36.076458	1601
48	draba-verna	Eve-BARA-C-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.082491	2022-10-05 22:04:36.082491	1602
49	draba-verna	Eve-BARA-C-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.086467	2022-10-05 22:04:36.086467	41
50	draba-verna	Eve-BARA-C-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.091189	2022-10-05 22:04:36.091189	1605
51	draba-verna	Eve-BARA-C-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.095486	2022-10-05 22:04:36.095486	1606
52	draba-verna	Eve-BARA-C-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.099838	2022-10-05 22:04:36.099838	1606
53	draba-verna	Eve-BARR-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.103772	2022-10-05 22:04:36.103772	46
54	draba-verna	Eve-BARR-A-5-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.108546	2022-10-05 22:04:36.108546	50
55	draba-verna	Eve-BARR-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.11273	2022-10-05 22:04:36.11273	52
56	draba-verna	Eve-BARR-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.116945	2022-10-05 22:04:36.116945	54
57	draba-verna	Eve-BELL-A-1-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.121015	2022-10-05 22:04:36.121015	56
58	draba-verna	Eve-BELL-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.126476	2022-10-05 22:04:36.126476	57
59	draba-verna	Eve-BELL-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.131346	2022-10-05 22:04:36.131346	57
60	draba-verna	Eve-BELL-A-3-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.135814	2022-10-05 22:04:36.135814	58
61	draba-verna	Eve-BELL-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.139792	2022-10-05 22:04:36.139792	59
62	draba-verna	Eve-BELL-A-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.14604	2022-10-05 22:04:36.14604	60
63	draba-verna	Eve-BELL-A-7-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.151795	2022-10-05 22:04:36.151795	62
64	draba-verna	Eve-BELL-A-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.155863	2022-10-05 22:04:36.155863	64
65	draba-verna	Eve-BELL-A-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.160709	2022-10-05 22:04:36.160709	64
66	draba-verna	Eve-BELL-A-10-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.165583	2022-10-05 22:04:36.165583	65
67	draba-verna	Eve-BELL-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.170226	2022-10-05 22:04:36.170226	66
68	draba-verna	Eve-BELL-A-11-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.175792	2022-10-05 22:04:36.175792	66
69	draba-verna	Eve-BELL-A-12-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.181817	2022-10-05 22:04:36.181817	1624
70	draba-verna	Eve-CAMA-C-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.186055	2022-10-05 22:04:36.186055	77
71	draba-verna	Eve-CAMA-C-2-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.190461	2022-10-05 22:04:36.190461	1626
72	draba-verna	Eve-CAMA-C-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.195129	2022-10-05 22:04:36.195129	1627
73	draba-verna	Eve-CAMA-C-3-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.199351	2022-10-05 22:04:36.199351	1627
74	draba-verna	Eve-CAMA-C-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.203201	2022-10-05 22:04:36.203201	1628
75	draba-verna	Eve-CAMA-C-4-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.208229	2022-10-05 22:04:36.208229	1628
76	draba-verna	Eve-CAMA-D-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.212684	2022-10-05 22:04:36.212684	81
77	draba-verna	Eve-CAMA-D-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.217155	2022-10-05 22:04:36.217155	83
78	draba-verna	Eve-CAMA-D-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.221518	2022-10-05 22:04:36.221518	83
79	draba-verna	Eve-CAMA-E-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.225477	2022-10-05 22:04:36.225477	88
80	draba-verna	Eve-CAMA-E-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.230347	2022-10-05 22:04:36.230347	89
81	draba-verna	Eve-CAMA-E-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.234413	2022-10-05 22:04:36.234413	89
82	draba-verna	Eve-CAMA-E-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.238212	2022-10-05 22:04:36.238212	1634
83	draba-verna	Eve-CAMA-E-3-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.242375	2022-10-05 22:04:36.242375	1634
84	draba-verna	Eve-CAMA-E-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.250549	2022-10-05 22:04:36.250549	1634
85	draba-verna	Eve-CAMA-E-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.254585	2022-10-05 22:04:36.254585	1635
86	draba-verna	Eve-CAMA-E-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.258345	2022-10-05 22:04:36.258345	956
87	draba-verna	Eve-CAMA-E-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.262181	2022-10-05 22:04:36.262181	956
88	draba-verna	Eve-CAMA-E-6-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.267173	2022-10-05 22:04:36.267173	957
89	draba-verna	Eve-CAMA-E-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.271312	2022-10-05 22:04:36.271312	957
90	draba-verna	Eve-CAMA-E-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.275344	2022-10-05 22:04:36.275344	1638
91	draba-verna	Eve-CAMA-E-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.281167	2022-10-05 22:04:36.281167	1638
92	draba-verna	Eve-CAMA-E-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.286665	2022-10-05 22:04:36.286665	91
93	draba-verna	Eve-CAMA-E-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.292929	2022-10-05 22:04:36.292929	91
94	draba-verna	Eve-CAMA-E-10-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.297936	2022-10-05 22:04:36.297936	959
95	draba-verna	Eve-CAMA-E-10-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.302497	2022-10-05 22:04:36.302497	959
96	draba-verna	Eve-CAMA-E-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.306769	2022-10-05 22:04:36.306769	1641
97	draba-verna	Eve-CAMA-E-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.312163	2022-10-05 22:04:36.312163	1641
98	draba-verna	Eve-CAMA-E-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.317006	2022-10-05 22:04:36.317006	1642
99	draba-verna	Eve-CAMA-E-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.321028	2022-10-05 22:04:36.321028	1642
100	draba-verna	Eve-CARL-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.325437	2022-10-05 22:04:36.325437	92
101	draba-verna	Eve-CARL-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.329928	2022-10-05 22:04:36.329928	92
102	draba-verna	Eve-CARL-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.334186	2022-10-05 22:04:36.334186	93
103	draba-verna	Eve-CARL-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.338042	2022-10-05 22:04:36.338042	94
104	draba-verna	Eve-CARL-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.343077	2022-10-05 22:04:36.343077	95
105	draba-verna	Eve-CARL-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.348286	2022-10-05 22:04:36.348286	95
106	draba-verna	Eve-CASS-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.352298	2022-10-05 22:04:36.352298	971
107	draba-verna	Eve-CASS-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.356282	2022-10-05 22:04:36.356282	971
108	draba-verna	Eve-CASS-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.360716	2022-10-05 22:04:36.360716	102
109	draba-verna	Eve-CASS-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.364936	2022-10-05 22:04:36.364936	102
110	draba-verna	Eve-CASS-A-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.368721	2022-10-05 22:04:36.368721	103
111	draba-verna	Eve-CASS-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.37238	2022-10-05 22:04:36.37238	1391
112	draba-verna	Eve-CASS-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.376017	2022-10-05 22:04:36.376017	104
113	draba-verna	Eve-CASS-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.380021	2022-10-05 22:04:36.380021	105
114	draba-verna	Eve-CASS-A-9-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.383647	2022-10-05 22:04:36.383647	107
115	draba-verna	Eve-CASS-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.387108	2022-10-05 22:04:36.387108	107
116	draba-verna	Eve-CASS-A-9---2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.390795	2022-10-05 22:04:36.390795	107
117	draba-verna	Eve-CASS-A-9---2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.39794	2022-10-05 22:04:36.39794	107
118	draba-verna	Eve-CERN-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.404037	2022-10-05 22:04:36.404037	121
119	draba-verna	Eve-CERN-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.408311	2022-10-05 22:04:36.408311	123
120	draba-verna	Eve-CERN-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.412736	2022-10-05 22:04:36.412736	1392
121	draba-verna	Eve-CERN-B-1-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.417828	2022-10-05 22:04:36.417828	126
122	draba-verna	Eve-CERN-B-2-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.421971	2022-10-05 22:04:36.421971	127
123	draba-verna	Eve-CERN-B-3-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.426793	2022-10-05 22:04:36.426793	991
124	draba-verna	Eve-CERN-B-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.432266	2022-10-05 22:04:36.432266	128
125	draba-verna	Eve-CERN-B-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.436423	2022-10-05 22:04:36.436423	129
126	draba-verna	Eve-CERN-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.44027	2022-10-05 22:04:36.44027	130
127	draba-verna	Eve-CERN-B-7-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.444921	2022-10-05 22:04:36.444921	131
128	draba-verna	Eve-CERN-B-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.449142	2022-10-05 22:04:36.449142	132
129	draba-verna	Eve-CERN-B-9-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.452894	2022-10-05 22:04:36.452894	1661
130	draba-verna	Eve-CERN-B-10-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.457036	2022-10-05 22:04:36.457036	133
131	draba-verna	Eve-CERN-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.461243	2022-10-05 22:04:36.461243	134
132	draba-verna	Eve-CERN-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.465576	2022-10-05 22:04:36.465576	134
133	draba-verna	Eve-CIER-A-1-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.469351	2022-10-05 22:04:36.469351	997
134	draba-verna	Eve-CIER-A-2-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.473208	2022-10-05 22:04:36.473208	136
135	draba-verna	Eve-CIER-A-3-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.477345	2022-10-05 22:04:36.477345	137
136	draba-verna	Eve-CIER-A-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.481794	2022-10-05 22:04:36.481794	138
137	draba-verna	Eve-CIER-A-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.485766	2022-10-05 22:04:36.485766	1001
138	draba-verna	Eve-CIER-A-6-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.489475	2022-10-05 22:04:36.489475	139
139	draba-verna	Eve-CIER-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.498141	2022-10-05 22:04:36.498141	1003
140	draba-verna	Eve-CIER-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.502243	2022-10-05 22:04:36.502243	1004
141	draba-verna	Eve-CIER-A-9-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.505898	2022-10-05 22:04:36.505898	140
142	draba-verna	Eve-CIER-A-10-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.510247	2022-10-05 22:04:36.510247	141
143	draba-verna	Eve-CIER-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.513995	2022-10-05 22:04:36.513995	142
144	draba-verna	Eve-CIER-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.517496	2022-10-05 22:04:36.517496	142
145	draba-verna	Eve-CINT-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.520916	2022-10-05 22:04:36.520916	146
146	draba-verna	Eve-CINT-A-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.525036	2022-10-05 22:04:36.525036	147
147	draba-verna	Eve-CINT-A-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.529294	2022-10-05 22:04:36.529294	147
148	draba-verna	Eve-CINT-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.533179	2022-10-05 22:04:36.533179	1677
149	draba-verna	Eve-CINT-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.536736	2022-10-05 22:04:36.536736	148
150	draba-verna	Eve-CINT-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.541685	2022-10-05 22:04:36.541685	149
151	draba-verna	Eve-CINT-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.546739	2022-10-05 22:04:36.546739	1680
152	draba-verna	Eve-CINT-A-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.550825	2022-10-05 22:04:36.550825	150
153	draba-verna	Eve-CINT-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.554913	2022-10-05 22:04:36.554913	151
154	draba-verna	Eve-CINT-A-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.564322	2022-10-05 22:04:36.564322	152
155	draba-verna	Eve-CINT-A-11-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.568239	2022-10-05 22:04:36.568239	153
156	draba-verna	Eve-CINT-B-1-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.572247	2022-10-05 22:04:36.572247	154
157	draba-verna	Eve-CINT-B-2-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.576365	2022-10-05 22:04:36.576365	155
158	draba-verna	Eve-CINT-B-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.58148	2022-10-05 22:04:36.58148	156
159	draba-verna	Eve-CINT-B-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.587525	2022-10-05 22:04:36.587525	156
160	draba-verna	Eve-CINT-B-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.592081	2022-10-05 22:04:36.592081	157
161	draba-verna	Eve-CINT-B-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.596368	2022-10-05 22:04:36.596368	157
162	draba-verna	Eve-CINT-B-5-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.600727	2022-10-05 22:04:36.600727	158
163	draba-verna	Eve-CINT-B-6-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.604721	2022-10-05 22:04:36.604721	159
164	draba-verna	Eve-CINT-B-7-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.61607	2022-10-05 22:04:36.61607	160
165	draba-verna	Eve-CINT-B-8-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.620932	2022-10-05 22:04:36.620932	161
166	draba-verna	Eve-CINT-B-9-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.626986	2022-10-05 22:04:36.626986	162
167	draba-verna	Eve-CINT-B-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.633868	2022-10-05 22:04:36.633868	163
168	draba-verna	Eve-CINT-B-11-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.638718	2022-10-05 22:04:36.638718	1690
169	draba-verna	Eve-CINT-B-11-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.645579	2022-10-05 22:04:36.645579	1690
170	draba-verna	Eve-CLAR-B-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.650851	2022-10-05 22:04:36.650851	164
171	draba-verna	Eve-CLAR-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.654887	2022-10-05 22:04:36.654887	166
172	draba-verna	Eve-CLAR-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.659272	2022-10-05 22:04:36.659272	167
173	draba-verna	Eve-CLAR-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.664285	2022-10-05 22:04:36.664285	168
174	draba-verna	Eve-CLAR-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.668875	2022-10-05 22:04:36.668875	169
175	draba-verna	Eve-CLAR-C-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.673017	2022-10-05 22:04:36.673017	173
176	draba-verna	Eve-CLAR-C-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.677448	2022-10-05 22:04:36.677448	174
177	draba-verna	Eve-CLAR-C-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.683059	2022-10-05 22:04:36.683059	175
178	draba-verna	Eve-CLAR-C-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.687135	2022-10-05 22:04:36.687135	176
179	draba-verna	Eve-CLAR-C-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.691567	2022-10-05 22:04:36.691567	180
180	draba-verna	Eve-COLO-B-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.696365	2022-10-05 22:04:36.696365	183
181	draba-verna	Eve-COLO-B-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.700762	2022-10-05 22:04:36.700762	184
182	draba-verna	Eve-COLO-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.704967	2022-10-05 22:04:36.704967	186
183	draba-verna	Eve-COLO-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.710173	2022-10-05 22:04:36.710173	1377
184	draba-verna	Eve-DAMI-C-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.714386	2022-10-05 22:04:36.714386	1707
185	draba-verna	Eve-DAMI-C-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.718319	2022-10-05 22:04:36.718319	1708
186	draba-verna	Eve-DECA-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.722606	2022-10-05 22:04:36.722606	191
187	draba-verna	Eve-DECA-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.727184	2022-10-05 22:04:36.727184	1044
188	draba-verna	Eve-DECA-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.731623	2022-10-05 22:04:36.731623	192
189	draba-verna	Eve-DECA-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.736423	2022-10-05 22:04:36.736423	193
190	draba-verna	Eve-DECA-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.74087	2022-10-05 22:04:36.74087	194
191	draba-verna	Eve-DECA-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.745555	2022-10-05 22:04:36.745555	195
192	draba-verna	Eve-DECA-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.750144	2022-10-05 22:04:36.750144	196
193	draba-verna	Eve-DECA-A-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.754244	2022-10-05 22:04:36.754244	197
194	draba-verna	Eve-DECA-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.759014	2022-10-05 22:04:36.759014	197
195	draba-verna	Eve-DECA-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.763807	2022-10-05 22:04:36.763807	198
196	draba-verna	Eve-DECA-A-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.768559	2022-10-05 22:04:36.768559	199
197	draba-verna	Eve-DECA-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.772914	2022-10-05 22:04:36.772914	200
198	draba-verna	Eve-DECA-A-12-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.778479	2022-10-05 22:04:36.778479	1720
199	draba-verna	Eve-ESPE-B-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.783226	2022-10-05 22:04:36.783226	202
200	draba-verna	Eve-ESPE-B-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.787307	2022-10-05 22:04:36.787307	203
201	draba-verna	Eve-ESPE-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.793595	2022-10-05 22:04:36.793595	1057
202	draba-verna	Eve-ESPE-B-7-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.799397	2022-10-05 22:04:36.799397	205
203	draba-verna	Eve-ESPE-B-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.8036	2022-10-05 22:04:36.8036	208
204	draba-verna	Eve-FERR-A-1-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.808615	2022-10-05 22:04:36.808615	211
205	draba-verna	Eve-FERR-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.813004	2022-10-05 22:04:36.813004	211
206	draba-verna	Eve-FERR-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.817231	2022-10-05 22:04:36.817231	212
207	draba-verna	Eve-FERR-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.821274	2022-10-05 22:04:36.821274	212
208	draba-verna	Eve-FERR-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.825701	2022-10-05 22:04:36.825701	213
209	draba-verna	Eve-FERR-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.830641	2022-10-05 22:04:36.830641	213
210	draba-verna	Eve-FERR-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.837159	2022-10-05 22:04:36.837159	214
211	draba-verna	Eve-GAIL-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.842179	2022-10-05 22:04:36.842179	1071
212	draba-verna	Eve-GAIL-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.847253	2022-10-05 22:04:36.847253	222
213	draba-verna	Eve-GAIL-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.851443	2022-10-05 22:04:36.851443	1074
214	draba-verna	Eve-GAIL-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.855161	2022-10-05 22:04:36.855161	223
215	draba-verna	Eve-GAIL-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.862609	2022-10-05 22:04:36.862609	1077
216	draba-verna	Eve-GAIL-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.867009	2022-10-05 22:04:36.867009	1078
217	draba-verna	Eve-GAIL-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.870619	2022-10-05 22:04:36.870619	1079
218	draba-verna	Eve-GAIL-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.874886	2022-10-05 22:04:36.874886	226
219	draba-verna	Eve-GAIL-B-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.879037	2022-10-05 22:04:36.879037	227
220	draba-verna	Eve-GAIL-B-3-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.882808	2022-10-05 22:04:36.882808	228
221	draba-verna	Eve-GAIL-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.886845	2022-10-05 22:04:36.886845	1084
222	draba-verna	Eve-GAIL-B-5-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.890584	2022-10-05 22:04:36.890584	229
223	draba-verna	Eve-GAIL-B-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.894534	2022-10-05 22:04:36.894534	230
224	draba-verna	Eve-GAIL-B-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.898419	2022-10-05 22:04:36.898419	231
225	draba-verna	Eve-GAIL-B-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.902525	2022-10-05 22:04:36.902525	232
226	draba-verna	Eve-GAIL-B-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.914991	2022-10-05 22:04:36.914991	232
227	draba-verna	Eve-GAIL-B-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.918837	2022-10-05 22:04:36.918837	233
228	draba-verna	Eve-GAIL-B-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.922722	2022-10-05 22:04:36.922722	234
229	draba-verna	Eve-GAIL-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.927004	2022-10-05 22:04:36.927004	1748
230	draba-verna	Eve-GREZ-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.93081	2022-10-05 22:04:36.93081	1087
231	draba-verna	Eve-GREZ-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.93453	2022-10-05 22:04:36.93453	235
232	draba-verna	Eve-GREZ-A-3-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.93819	2022-10-05 22:04:36.93819	1089
233	draba-verna	Eve-GREZ-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.942174	2022-10-05 22:04:36.942174	1089
234	draba-verna	Eve-GREZ-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.946664	2022-10-05 22:04:36.946664	236
235	draba-verna	Eve-JUZE-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.950816	2022-10-05 22:04:36.950816	242
236	draba-verna	Eve-JUZE-A-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.954834	2022-10-05 22:04:36.954834	244
237	draba-verna	Eve-JUZE-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.959746	2022-10-05 22:04:36.959746	245
238	draba-verna	Eve-JUZE-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.963655	2022-10-05 22:04:36.963655	246
239	draba-verna	Eve-JUZE-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.967531	2022-10-05 22:04:36.967531	247
240	draba-verna	Eve-JUZE-A-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.972164	2022-10-05 22:04:36.972164	248
241	draba-verna	Eve-JUZE-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.979181	2022-10-05 22:04:36.979181	1762
242	draba-verna	Eve-JUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.983463	2022-10-05 22:04:36.983463	1763
243	draba-verna	Eve-JUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.987496	2022-10-05 22:04:36.987496	1763
244	draba-verna	Eve-JUZE-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.991879	2022-10-05 22:04:36.991879	1764
245	draba-verna	Eve-JUZE-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:36.998189	2022-10-05 22:04:36.998189	1764
246	draba-verna	Eve-JUZE-A-14-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.002611	2022-10-05 22:04:37.002611	1765
247	draba-verna	Eve-JUZE-A-15-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.007363	2022-10-05 22:04:37.007363	251
248	draba-verna	Eve-JUZE-A-15-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.011576	2022-10-05 22:04:37.011576	251
249	draba-verna	Eve-JUZET-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.016004	2022-10-05 22:04:37.016004	252
250	draba-verna	Eve-JUZET-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.020195	2022-10-05 22:04:37.020195	253
251	draba-verna	Eve-JUZET-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.024765	2022-10-05 22:04:37.024765	254
252	draba-verna	Eve-JUZET-C-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.029284	2022-10-05 22:04:37.029284	262
253	draba-verna	Eve-JUZET-C-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.033945	2022-10-05 22:04:37.033945	263
254	draba-verna	Eve-JUZET-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.037945	2022-10-05 22:04:37.037945	264
255	draba-verna	Eve-JUZET-C-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.042574	2022-10-05 22:04:37.042574	266
256	draba-verna	Eve-LABA-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.048426	2022-10-05 22:04:37.048426	273
257	draba-verna	Eve-LABA-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.053467	2022-10-05 22:04:37.053467	274
258	draba-verna	Eve-LABA-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.058226	2022-10-05 22:04:37.058226	275
259	draba-verna	Eve-LABA-A-4-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.062287	2022-10-05 22:04:37.062287	276
260	draba-verna	Eve-LABA-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.067065	2022-10-05 22:04:37.067065	276
261	draba-verna	Eve-LABA-A-5-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.071254	2022-10-05 22:04:37.071254	277
262	draba-verna	Eve-LABA-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.077876	2022-10-05 22:04:37.077876	277
263	draba-verna	Eve-LABA-A-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.083031	2022-10-05 22:04:37.083031	278
264	draba-verna	Eve-LABA-A-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.087283	2022-10-05 22:04:37.087283	278
265	draba-verna	Eve-LABA-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.093632	2022-10-05 22:04:37.093632	279
266	draba-verna	Eve-LABA-A-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.101509	2022-10-05 22:04:37.101509	280
267	draba-verna	Eve-LABA-A-9-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.105544	2022-10-05 22:04:37.105544	281
268	draba-verna	Eve-LABA-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.110071	2022-10-05 22:04:37.110071	282
269	draba-verna	Eve-LABA-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.114539	2022-10-05 22:04:37.114539	1783
270	draba-verna	Eve-LABA-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.119573	2022-10-05 22:04:37.119573	1783
271	draba-verna	Eve-LABA-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.124028	2022-10-05 22:04:37.124028	1784
272	draba-verna	Eve-LABA-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.131415	2022-10-05 22:04:37.131415	1784
273	draba-verna	Eve-LABA-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.135322	2022-10-05 22:04:37.135322	1785
274	draba-verna	Eve-LABA-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.139471	2022-10-05 22:04:37.139471	1785
275	draba-verna	Eve-LABA-A-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.145878	2022-10-05 22:04:37.145878	1786
276	draba-verna	Eve-LABA-A-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.15074	2022-10-05 22:04:37.15074	1786
277	draba-verna	Eve-LABA-A-15-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.154595	2022-10-05 22:04:37.154595	1787
278	draba-verna	Eve-LABAS-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.158827	2022-10-05 22:04:37.158827	284
279	draba-verna	Eve-LABAS-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.163331	2022-10-05 22:04:37.163331	285
280	draba-verna	Eve-LABAS-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.168415	2022-10-05 22:04:37.168415	286
281	draba-verna	Eve-LABAS-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.172294	2022-10-05 22:04:37.172294	286
282	draba-verna	Eve-LAMA-A-1-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.176346	2022-10-05 22:04:37.176346	293
283	draba-verna	Eve-LAMA-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.180863	2022-10-05 22:04:37.180863	293
284	draba-verna	Eve-LAMA-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.185372	2022-10-05 22:04:37.185372	294
285	draba-verna	Eve-LAMA-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.18935	2022-10-05 22:04:37.18935	295
286	draba-verna	Eve-LAMA-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.195322	2022-10-05 22:04:37.195322	295
287	draba-verna	Eve-LAMA-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.199752	2022-10-05 22:04:37.199752	296
288	draba-verna	Eve-LANT-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.203461	2022-10-05 22:04:37.203461	1794
289	draba-verna	Eve-LANT-B-2-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.209573	2022-10-05 22:04:37.209573	1795
290	draba-verna	Eve-LANT-B-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.213788	2022-10-05 22:04:37.213788	1796
291	draba-verna	Eve-LANT-B-5-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.218159	2022-10-05 22:04:37.218159	1798
292	draba-verna	Eve-LANT-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.226771	2022-10-05 22:04:37.226771	1799
293	draba-verna	Eve-LANT-B-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.231063	2022-10-05 22:04:37.231063	1800
294	draba-verna	Eve-LANT-B-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.234926	2022-10-05 22:04:37.234926	1801
295	draba-verna	Eve-LANT-B-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.238584	2022-10-05 22:04:37.238584	1802
296	draba-verna	Eve-LANT-B-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.243368	2022-10-05 22:04:37.243368	1803
297	draba-verna	Eve-LANT-D-1-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.247636	2022-10-05 22:04:37.247636	303
298	draba-verna	Eve-LANT-D-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.251601	2022-10-05 22:04:37.251601	304
299	draba-verna	Eve-LANT-D-3-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.256248	2022-10-05 22:04:37.256248	305
300	draba-verna	Eve-LANT-D-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.260771	2022-10-05 22:04:37.260771	306
301	draba-verna	Eve-LANT-D-5-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.265318	2022-10-05 22:04:37.265318	307
302	draba-verna	Eve-LANT-D-6-G1--2020	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.269466	2022-10-05 22:04:37.269466	308
303	draba-verna	Eve-LANT-D-7-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.273733	2022-10-05 22:04:37.273733	309
304	draba-verna	Eve-LANT-D-8-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.277896	2022-10-05 22:04:37.277896	310
305	draba-verna	Eve-LANT-D-9-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.282599	2022-10-05 22:04:37.282599	311
306	draba-verna	Eve-LANT-D-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.288935	2022-10-05 22:04:37.288935	312
307	draba-verna	Eve-LANT-D-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.29323	2022-10-05 22:04:37.29323	1812
308	draba-verna	Eve-LANT-D-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.298144	2022-10-05 22:04:37.298144	1812
309	draba-verna	Eve-LANT-D-15-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.302241	2022-10-05 22:04:37.302241	1813
310	draba-verna	Eve-LAUZ-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.306296	2022-10-05 22:04:37.306296	1147
311	draba-verna	Eve-LAUZ-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.310714	2022-10-05 22:04:37.310714	1148
312	draba-verna	Eve-LAUZ-A-4-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.314942	2022-10-05 22:04:37.314942	1150
313	draba-verna	Eve-LAUZ-A-5-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.319005	2022-10-05 22:04:37.319005	1151
314	draba-verna	Eve-LAUZ-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.322917	2022-10-05 22:04:37.322917	1152
315	draba-verna	Eve-LAUZ-A-8-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.327717	2022-10-05 22:04:37.327717	313
316	draba-verna	Eve-LAUZ-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.333841	2022-10-05 22:04:37.333841	1821
317	draba-verna	Eve-LAUZ-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.338406	2022-10-05 22:04:37.338406	1154
318	draba-verna	Eve-LECT-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.343655	2022-10-05 22:04:37.343655	314
319	draba-verna	Eve-LECT-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.349139	2022-10-05 22:04:37.349139	1157
320	draba-verna	Eve-LECT-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.353377	2022-10-05 22:04:37.353377	315
321	draba-verna	Eve-LECT-A-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.357683	2022-10-05 22:04:37.357683	315
322	draba-verna	Eve-LECT-A-5-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.361391	2022-10-05 22:04:37.361391	316
323	draba-verna	Eve-LECT-A-6-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.365367	2022-10-05 22:04:37.365367	317
324	draba-verna	Eve-LECT-A-7-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.369295	2022-10-05 22:04:37.369295	318
325	draba-verna	Eve-LECT-A-8-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.373339	2022-10-05 22:04:37.373339	319
326	draba-verna	Eve-LECT-A-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.377918	2022-10-05 22:04:37.377918	321
327	draba-verna	Eve-LECT-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.382876	2022-10-05 22:04:37.382876	322
328	draba-verna	Eve-LECT-A-12-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.386979	2022-10-05 22:04:37.386979	323
329	draba-verna	Eve-LUNA-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.391899	2022-10-05 22:04:37.391899	334
330	draba-verna	Eve-LUNA-A-2-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.396985	2022-10-05 22:04:37.396985	335
331	draba-verna	Eve-LUNA-A-3-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.400883	2022-10-05 22:04:37.400883	336
332	draba-verna	Eve-LUNA-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.40479	2022-10-05 22:04:37.40479	1176
333	draba-verna	Eve-LUNA-A-6-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.409117	2022-10-05 22:04:37.409117	338
334	draba-verna	Eve-LUNA-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.41332	2022-10-05 22:04:37.41332	338
335	draba-verna	Eve-LUNA-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.417668	2022-10-05 22:04:37.417668	339
336	draba-verna	Eve-LUNA-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.421351	2022-10-05 22:04:37.421351	340
337	draba-verna	Eve-LUNA-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.426375	2022-10-05 22:04:37.426375	341
338	draba-verna	Eve-LUNA-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.430455	2022-10-05 22:04:37.430455	342
339	draba-verna	Eve-LUNA-A-12-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.434396	2022-10-05 22:04:37.434396	1838
340	draba-verna	Eve-MARS-C-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.438315	2022-10-05 22:04:37.438315	1839
341	draba-verna	Eve-MARS-C-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.442524	2022-10-05 22:04:37.442524	1840
342	draba-verna	Eve-MARS-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.446818	2022-10-05 22:04:37.446818	1841
343	draba-verna	Eve-MARS-C-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.451146	2022-10-05 22:04:37.451146	1843
344	draba-verna	Eve-MARS-C-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.455352	2022-10-05 22:04:37.455352	1844
345	draba-verna	Eve-MARS-C-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.460065	2022-10-05 22:04:37.460065	1845
346	draba-verna	Eve-MARS-C-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.464209	2022-10-05 22:04:37.464209	1846
347	draba-verna	Eve-MONB-A-1-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.468172	2022-10-05 22:04:37.468172	373
348	draba-verna	Eve-MONB-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.471899	2022-10-05 22:04:37.471899	373
349	draba-verna	Eve-MONB-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.475906	2022-10-05 22:04:37.475906	374
350	draba-verna	Eve-MONB-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.480258	2022-10-05 22:04:37.480258	374
351	draba-verna	Eve-MONB-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.48485	2022-10-05 22:04:37.48485	375
352	draba-verna	Eve-MONB-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.488438	2022-10-05 22:04:37.488438	376
353	draba-verna	Eve-MONB-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.492474	2022-10-05 22:04:37.492474	377
354	draba-verna	Eve-MONB-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.496898	2022-10-05 22:04:37.496898	378
355	draba-verna	Eve-MONB-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.501805	2022-10-05 22:04:37.501805	1212
356	draba-verna	Eve-MONB-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.505755	2022-10-05 22:04:37.505755	380
357	draba-verna	Eve-MONB-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.512968	2022-10-05 22:04:37.512968	381
358	draba-verna	Eve-MONB-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.517033	2022-10-05 22:04:37.517033	1858
359	draba-verna	Eve-MONF-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.521646	2022-10-05 22:04:37.521646	392
360	draba-verna	Eve-MONF-A-3-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.525924	2022-10-05 22:04:37.525924	394
361	draba-verna	Eve-MONF-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.529938	2022-10-05 22:04:37.529938	395
362	draba-verna	Eve-MONF-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.533651	2022-10-05 22:04:37.533651	396
363	draba-verna	Eve-MONF-A-6-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.537341	2022-10-05 22:04:37.537341	397
364	draba-verna	Eve-MONF-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.546241	2022-10-05 22:04:37.546241	397
365	draba-verna	Eve-MONF-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.55176	2022-10-05 22:04:37.55176	398
366	draba-verna	Eve-MONF-A-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.555704	2022-10-05 22:04:37.555704	399
367	draba-verna	Eve-MONF-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.559675	2022-10-05 22:04:37.559675	400
368	draba-verna	Eve-MONF-A-10-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.563757	2022-10-05 22:04:37.563757	401
369	draba-verna	Eve-MONF-A-10-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.567924	2022-10-05 22:04:37.567924	401
370	draba-verna	Eve-MONF-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.571734	2022-10-05 22:04:37.571734	1869
371	draba-verna	Eve-MONF-A-12-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.575755	2022-10-05 22:04:37.575755	1870
372	draba-verna	Eve-MONF-A-12-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.580311	2022-10-05 22:04:37.580311	1870
373	draba-verna	Eve-MONTI-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.584726	2022-10-05 22:04:37.584726	1237
374	draba-verna	Eve-MONTI-B-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.5888	2022-10-05 22:04:37.5888	1238
375	draba-verna	Eve-MONTI-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.595606	2022-10-05 22:04:37.595606	1239
376	draba-verna	Eve-MONTI-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.599909	2022-10-05 22:04:37.599909	1240
377	draba-verna	Eve-MONTI-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.603859	2022-10-05 22:04:37.603859	1875
378	draba-verna	Eve-MONTI-B-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.608698	2022-10-05 22:04:37.608698	1241
379	draba-verna	Eve-MONTI-B-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.612762	2022-10-05 22:04:37.612762	1242
380	draba-verna	Eve-MONTM-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.616994	2022-10-05 22:04:37.616994	425
381	draba-verna	Eve-MONTM-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.620967	2022-10-05 22:04:37.620967	426
382	draba-verna	Eve-MONTM-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.625353	2022-10-05 22:04:37.625353	428
383	draba-verna	Eve-MONTM-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.63057	2022-10-05 22:04:37.63057	429
384	draba-verna	Eve-MONTM-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.634926	2022-10-05 22:04:37.634926	430
385	draba-verna	Eve-MONTM-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.639012	2022-10-05 22:04:37.639012	433
386	draba-verna	Eve-NAZA-A-1-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.644457	2022-10-05 22:04:37.644457	435
387	draba-verna	Eve-NAZA-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.6494	2022-10-05 22:04:37.6494	1254
388	draba-verna	Eve-NAZA-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.653415	2022-10-05 22:04:37.653415	1254
389	draba-verna	Eve-NAZA-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.659416	2022-10-05 22:04:37.659416	436
390	draba-verna	Eve-NAZA-A-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.666406	2022-10-05 22:04:37.666406	436
391	draba-verna	Eve-NAZA-A-3-G2--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.671187	2022-10-05 22:04:37.671187	436
392	draba-verna	Eve-NAZA-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.675419	2022-10-05 22:04:37.675419	1257
393	draba-verna	Eve-NAZA-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.680002	2022-10-05 22:04:37.680002	438
394	draba-verna	Eve-NAZA-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.685897	2022-10-05 22:04:37.685897	1259
395	draba-verna	Eve-NAZA-A-8-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.691412	2022-10-05 22:04:37.691412	1260
396	draba-verna	Eve-NAZA-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.695712	2022-10-05 22:04:37.695712	439
397	draba-verna	Eve-NAZA-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.700397	2022-10-05 22:04:37.700397	1896
398	draba-verna	Eve-PUYM-B-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.70441	2022-10-05 22:04:37.70441	444
399	draba-verna	Eve-PUYM-B-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.709137	2022-10-05 22:04:37.709137	444
400	draba-verna	Eve-PUYM-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.713231	2022-10-05 22:04:37.713231	445
401	draba-verna	Eve-PUYM-B-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.717458	2022-10-05 22:04:37.717458	449
402	draba-verna	Eve-PUYM-B-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.721307	2022-10-05 22:04:37.721307	449
403	draba-verna	Eve-PUYM-B-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.726348	2022-10-05 22:04:37.726348	1270
404	draba-verna	Eve-PUYM-B-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.730716	2022-10-05 22:04:37.730716	1270
405	draba-verna	Eve-PUYM-B-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.735033	2022-10-05 22:04:37.735033	1906
406	draba-verna	Eve-RAYR-A-1-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.738817	2022-10-05 22:04:37.738817	450
407	draba-verna	Eve-RAYR-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.743277	2022-10-05 22:04:37.743277	450
408	draba-verna	Eve-RAYR-A-2-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.747985	2022-10-05 22:04:37.747985	451
409	draba-verna	Eve-RAYR-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.753161	2022-10-05 22:04:37.753161	452
410	draba-verna	Eve-RAYR-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.757579	2022-10-05 22:04:37.757579	452
411	draba-verna	Eve-RAYR-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.76257	2022-10-05 22:04:37.76257	1274
412	draba-verna	Eve-RAYR-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.767841	2022-10-05 22:04:37.767841	453
413	draba-verna	Eve-RAYR-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.77209	2022-10-05 22:04:37.77209	453
414	draba-verna	Eve-RAYR-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.778016	2022-10-05 22:04:37.778016	454
415	draba-verna	Eve-RAYR-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.782836	2022-10-05 22:04:37.782836	455
416	draba-verna	Eve-RAYR-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.787312	2022-10-05 22:04:37.787312	456
417	draba-verna	Eve-RAYR-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.792981	2022-10-05 22:04:37.792981	458
418	draba-verna	Eve-SALE-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.798416	2022-10-05 22:04:37.798416	470
419	draba-verna	Eve-SALV-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.802761	2022-10-05 22:04:37.802761	480
420	draba-verna	Eve-SALV-A-2-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.807161	2022-10-05 22:04:37.807161	481
421	draba-verna	Eve-SALV-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.811538	2022-10-05 22:04:37.811538	481
422	draba-verna	Eve-SALV-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.816259	2022-10-05 22:04:37.816259	482
423	draba-verna	Eve-SALV-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.820905	2022-10-05 22:04:37.820905	1296
424	draba-verna	Eve-SALV-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.833688	2022-10-05 22:04:37.833688	1296
425	draba-verna	Eve-SALV-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.838372	2022-10-05 22:04:37.838372	1296
426	draba-verna	Eve-SALV-A-5-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.844138	2022-10-05 22:04:37.844138	483
427	draba-verna	Eve-SALV-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.849012	2022-10-05 22:04:37.849012	483
428	draba-verna	Eve-SALV-A-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.853708	2022-10-05 22:04:37.853708	1298
429	draba-verna	Eve-SALV-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.860694	2022-10-05 22:04:37.860694	484
430	draba-verna	Eve-SALV-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.865538	2022-10-05 22:04:37.865538	485
431	draba-verna	Eve-SALV-A-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.869485	2022-10-05 22:04:37.869485	1302
432	draba-verna	Eve-SALV-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.87356	2022-10-05 22:04:37.87356	487
433	draba-verna	Eve-SAUB-B-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.879248	2022-10-05 22:04:37.879248	491
434	draba-verna	Eve-SAUB-B-3-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.883792	2022-10-05 22:04:37.883792	492
435	draba-verna	Eve-SAUB-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.889807	2022-10-05 22:04:37.889807	492
436	draba-verna	Eve-SAUB-B-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.89659	2022-10-05 22:04:37.89659	493
437	draba-verna	Eve-SAUB-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.900843	2022-10-05 22:04:37.900843	494
438	draba-verna	Eve-SAUB-B-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.904463	2022-10-05 22:04:37.904463	495
439	draba-verna	Eve-SAUB-B-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.910411	2022-10-05 22:04:37.910411	496
440	draba-verna	Eve-SAUB-B-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.914311	2022-10-05 22:04:37.914311	497
441	draba-verna	Eve-SAUB-B-9-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.917714	2022-10-05 22:04:37.917714	498
442	draba-verna	Eve-SAUB-B-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.921245	2022-10-05 22:04:37.921245	498
443	draba-verna	Eve-SAUB-B-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.925131	2022-10-05 22:04:37.925131	1941
444	draba-verna	Eve-SIMO-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.928942	2022-10-05 22:04:37.928942	1313
445	draba-verna	Eve-SIMO-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.933055	2022-10-05 22:04:37.933055	500
446	draba-verna	Eve-SIMO-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.936742	2022-10-05 22:04:37.936742	500
447	draba-verna	Eve-SIMO-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.940549	2022-10-05 22:04:37.940549	501
448	draba-verna	Eve-SIMO-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.945758	2022-10-05 22:04:37.945758	502
449	draba-verna	Eve-SIMO-A-5-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.94999	2022-10-05 22:04:37.94999	503
450	draba-verna	Eve-SIMO-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.953727	2022-10-05 22:04:37.953727	503
451	draba-verna	Eve-SIMO-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.958666	2022-10-05 22:04:37.958666	504
452	draba-verna	Eve-SIMO-A-7-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.96337	2022-10-05 22:04:37.96337	505
453	draba-verna	Eve-SIMO-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.968167	2022-10-05 22:04:37.968167	505
454	draba-verna	Eve-SIMO-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.971913	2022-10-05 22:04:37.971913	506
455	draba-verna	Eve-THOM-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.977006	2022-10-05 22:04:37.977006	509
456	draba-verna	Eve-THOM-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.980896	2022-10-05 22:04:37.980896	511
457	draba-verna	Eve-THOM-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.985133	2022-10-05 22:04:37.985133	511
458	draba-verna	Eve-THOM-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.989669	2022-10-05 22:04:37.989669	513
459	draba-verna	Eve-THOM-A-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:37.995465	2022-10-05 22:04:37.995465	514
460	draba-verna	Eve-THOM-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.000128	2022-10-05 22:04:38.000128	514
461	draba-verna	Eve-THOM-A-9-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.004167	2022-10-05 22:04:38.004167	515
462	draba-verna	Eve-THOM-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.010409	2022-10-05 22:04:38.010409	515
463	draba-verna	Eve-THOM-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.014667	2022-10-05 22:04:38.014667	1960
464	draba-verna	Eve-THOM-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.01836	2022-10-05 22:04:38.01836	1960
465	draba-verna	Eve-VILLE-A-1-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.02193	2022-10-05 22:04:38.02193	546
466	draba-verna	Eve-VILLE-A-1-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.02985	2022-10-05 22:04:38.02985	546
467	draba-verna	Eve-VILLE-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.033572	2022-10-05 22:04:38.033572	547
468	draba-verna	Eve-VILLE-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.037577	2022-10-05 22:04:38.037577	547
469	draba-verna	Eve-VILLE-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.042681	2022-10-05 22:04:38.042681	548
470	draba-verna	Eve-VILLE-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.048061	2022-10-05 22:04:38.048061	549
471	draba-verna	Eve-VILLE-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.051811	2022-10-05 22:04:38.051811	549
472	draba-verna	Eve-VILLE-A-6-2-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.055685	2022-10-05 22:04:38.055685	551
473	draba-verna	Eve-VILLE-A-6-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.060062	2022-10-05 22:04:38.060062	551
474	draba-verna	Eve-VILLE-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.064804	2022-10-05 22:04:38.064804	551
475	draba-verna	Eve-VILLE-A-7-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.068584	2022-10-05 22:04:38.068584	552
476	draba-verna	Eve-VILLE-A-7-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.072428	2022-10-05 22:04:38.072428	552
477	draba-verna	Eve-VILLE-A-8-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.077304	2022-10-05 22:04:38.077304	553
478	draba-verna	Eve-VILLE-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.082819	2022-10-05 22:04:38.082819	554
479	draba-verna	Eve-VILLE-A-12-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.08705	2022-10-05 22:04:38.08705	1972
480	draba-verna	Eve-VILLE-A-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.094587	2022-10-05 22:04:38.094587	1974
481	draba-verna	Eve-VILLE-B-1-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.098954	2022-10-05 22:04:38.098954	556
482	draba-verna	Eve-VILLE-B-2-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.103108	2022-10-05 22:04:38.103108	557
483	draba-verna	Eve-VILLE-B-3-2-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.108284	2022-10-05 22:04:38.108284	558
484	draba-verna	Eve-VILLE-B-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.112478	2022-10-05 22:04:38.112478	558
485	draba-verna	Eve-VILLE-B-5-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.117889	2022-10-05 22:04:38.117889	560
486	draba-verna	Eve-VILLE-B-6-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.121796	2022-10-05 22:04:38.121796	561
487	draba-verna	Eve-VILLE-B-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.127565	2022-10-05 22:04:38.127565	564
488	draba-verna	Eve-VILLE-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.132977	2022-10-05 22:04:38.132977	565
489	draba-verna	Eve-VILLE-B-14-2-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.137186	2022-10-05 22:04:38.137186	1985
490	draba-verna	Eve-VILLE-B-14-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.143541	2022-10-05 22:04:38.143541	1985
491	draba-verna	Eve-VILLE-C-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.147939	2022-10-05 22:04:38.147939	1986
492	draba-verna	Eve-VILLE-C-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.15262	2022-10-05 22:04:38.15262	566
493	draba-verna	Eve-VILLE-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.156814	2022-10-05 22:04:38.156814	1988
494	draba-verna	Eve-VILLE-C-6-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.163643	2022-10-05 22:04:38.163643	568
495	draba-verna	Eve-VILLE-C-7-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-10-05 22:04:38.167654	2022-10-05 22:04:38.167654	1991
496	draba-verna	ANGE-A-01-Box1-1	minus-80	2	A	1	A	3	\N	\N	2022-10-05 22:04:38.171982	2022-10-05 22:04:38.171982	11
497	draba-verna	ANGE-A-02-Box1-2	minus-80	2	A	1	A	4	\N	\N	2022-10-05 22:04:38.178047	2022-10-05 22:04:38.178047	12
498	draba-verna	ANGE-A-03-Box1-3	minus-80	2	A	1	A	5	\N	\N	2022-10-05 22:04:38.184346	2022-10-05 22:04:38.184346	13
499	draba-verna	ANGE-A-04-Box1-4	minus-80	1	A	1	A	6	\N	\N	2022-10-05 22:04:38.189333	2022-10-05 22:04:38.189333	14
500	draba-verna	ANGE-A-05-Box1-5	minus-80	1	A	1	A	7	\N	\N	2022-10-05 22:04:38.195048	2022-10-05 22:04:38.195048	898
501	draba-verna	ANGE-A-09-Box1-6	minus-80	1	A	1	A	11	\N	\N	2022-10-05 22:04:38.200055	2022-10-05 22:04:38.200055	902
502	draba-verna	ANGE-B-02-Box1-7	minus-80	2	A	1	A	13	\N	\N	2022-10-05 22:04:38.204728	2022-10-05 22:04:38.204728	19
503	draba-verna	ANGE-B-04-Box1-8	minus-80	2	A	1	B	1	\N	\N	2022-10-05 22:04:38.209528	2022-10-05 22:04:38.209528	20
504	draba-verna	ANGE-B-05-Box1-9	minus-80	2	A	1	B	2	\N	\N	2022-10-05 22:04:38.214235	2022-10-05 22:04:38.214235	21
505	draba-verna	ANGE-B-08-Box1-10	minus-80	2	A	1	B	3	\N	\N	2022-10-05 22:04:38.218897	2022-10-05 22:04:38.218897	23
506	draba-verna	ANGE-B-09-Box1-11	minus-80	1	A	1	B	4	\N	\N	2022-10-05 22:04:38.224512	2022-10-05 22:04:38.224512	24
507	draba-verna	ANGE-B-10-Box1-12	minus-80	2	A	1	B	5	\N	\N	2022-10-05 22:04:38.229914	2022-10-05 22:04:38.229914	25
508	draba-verna	ANGE-B-11-Box1-13	minus-80	2	A	1	B	6	\N	\N	2022-10-05 22:04:38.234881	2022-10-05 22:04:38.234881	26
509	draba-verna	AUZE-A-05-Box1-14	minus-80	2	A	1	B	8	\N	\N	2022-10-05 22:04:38.239048	2022-10-05 22:04:38.239048	31
510	draba-verna	AUZE-A-08-Box1-15	minus-80	2	A	1	B	9	\N	\N	2022-10-05 22:04:38.244699	2022-10-05 22:04:38.244699	34
511	draba-verna	AUZE-A-09-Box1-16	minus-80	2	A	1	B	10	\N	\N	2022-10-05 22:04:38.24953	2022-10-05 22:04:38.24953	35
512	draba-verna	AUZE-A-14-Box1-17	minus-80	2	A	1	B	13	\N	\N	2022-10-05 22:04:38.253986	2022-10-05 22:04:38.253986	1595
513	draba-verna	BARA-C-03-Box1-18	minus-80	2	A	1	C	2	\N	\N	2022-10-05 22:04:38.258922	2022-10-05 22:04:38.258922	38
514	draba-verna	BARA-C-05-Box1-19	minus-80	1	A	1	C	4	\N	\N	2022-10-05 22:04:38.264673	2022-10-05 22:04:38.264673	40
515	draba-verna	BARA-C-06-Box1-20	minus-80	1	A	1	C	5	\N	\N	2022-10-05 22:04:38.270476	2022-10-05 22:04:38.270476	1601
516	draba-verna	BARA-C-07-Box1-21	minus-80	2	A	1	C	6	\N	\N	2022-10-05 22:04:38.275352	2022-10-05 22:04:38.275352	1602
517	draba-verna	BARA-C-10-Box1-22	minus-80	1	A	1	C	8	\N	\N	2022-10-05 22:04:38.280219	2022-10-05 22:04:38.280219	1605
518	draba-verna	BARR-A-07-Box1-23	minus-80	1	A	1	C	11	\N	\N	2022-10-05 22:04:38.285199	2022-10-05 22:04:38.285199	52
519	draba-verna	BARR-A-09-Box1-24	minus-80	1	A	1	C	12	\N	\N	2022-10-05 22:04:38.29007	2022-10-05 22:04:38.29007	54
520	draba-verna	CAMA-D-02-Box1-25	minus-80	2	A	1	D	3	\N	\N	2022-10-05 22:04:38.29542	2022-10-05 22:04:38.29542	81
521	draba-verna	CAMA-D-04-Box1-26	minus-80	2	A	1	D	4	\N	\N	2022-10-05 22:04:38.301003	2022-10-05 22:04:38.301003	83
522	draba-verna	CAMA-E-01-Box1-27	minus-80	2	A	1	D	5	\N	\N	2022-10-05 22:04:38.305662	2022-10-05 22:04:38.305662	88
523	draba-verna	CAMA-E-03-Box1-28	minus-80	2	A	1	D	7	\N	\N	2022-10-05 22:04:38.310987	2022-10-05 22:04:38.310987	1634
524	draba-verna	CAMA-E-04-Box1-29	minus-80	1	A	1	D	8	\N	\N	2022-10-05 22:04:38.315966	2022-10-05 22:04:38.315966	1635
525	draba-verna	CAMA-E-08-Box1-30	minus-80	1	A	1	D	11	\N	\N	2022-10-05 22:04:38.320591	2022-10-05 22:04:38.320591	1638
526	draba-verna	CAMA-E-09-Box1-31	minus-80	1	A	1	D	12	\N	\N	2022-10-05 22:04:38.325404	2022-10-05 22:04:38.325404	91
527	draba-verna	CAMA-E-10-Box1-32	minus-80	2	A	1	D	13	\N	\N	2022-10-05 22:04:38.331235	2022-10-05 22:04:38.331235	959
528	draba-verna	CAMA-E-12-Box1-33	minus-80	1	A	1	E	1	\N	\N	2022-10-05 22:04:38.336526	2022-10-05 22:04:38.336526	1642
529	draba-verna	CARL-A-01-Box1-34	minus-80	2	A	1	E	2	\N	\N	2022-10-05 22:04:38.341411	2022-10-05 22:04:38.341411	92
530	draba-verna	CARL-A-02-Box1-35	minus-80	1	A	1	E	3	\N	\N	2022-10-05 22:04:38.346536	2022-10-05 22:04:38.346536	93
531	draba-verna	CERN-A-01-Box1-36	minus-80	1	A	1	E	6	\N	\N	2022-10-05 22:04:38.352187	2022-10-05 22:04:38.352187	121
532	draba-verna	CERN-A-03-Box1-37	minus-80	2	A	1	E	7	\N	\N	2022-10-05 22:04:38.356594	2022-10-05 22:04:38.356594	123
533	draba-verna	CERN-A-04-Box1-38	minus-80	2	A	1	E	8	\N	\N	2022-10-05 22:04:38.361688	2022-10-05 22:04:38.361688	1392
534	draba-verna	CERN-B-07-Box1-39	minus-80	2	A	1	E	11	\N	\N	2022-10-05 22:04:38.366879	2022-10-05 22:04:38.366879	131
535	draba-verna	CERN-B-08-Box1-40	minus-80	2	A	1	E	12	\N	\N	2022-10-05 22:04:38.371746	2022-10-05 22:04:38.371746	132
536	draba-verna	CERN-B-09-Box1-41	minus-80	2	A	1	E	13	\N	\N	2022-10-05 22:04:38.376097	2022-10-05 22:04:38.376097	1661
537	draba-verna	CIER-A-01-Box1-42	minus-80	2	A	1	F	1	\N	\N	2022-10-05 22:04:38.380486	2022-10-05 22:04:38.380486	997
538	draba-verna	CIER-A-02-Box1-43	minus-80	2	A	1	F	2	\N	\N	2022-10-05 22:04:38.385077	2022-10-05 22:04:38.385077	136
539	draba-verna	CIER-A-03-Box1-44	minus-80	2	A	1	F	3	\N	\N	2022-10-05 22:04:38.389238	2022-10-05 22:04:38.389238	137
540	draba-verna	CIER-A-04-Box1-45	minus-80	1	A	1	F	4	\N	\N	2022-10-05 22:04:38.393811	2022-10-05 22:04:38.393811	138
541	draba-verna	CIER-A-05-Box1-46	minus-80	2	A	1	F	5	\N	\N	2022-10-05 22:04:38.398892	2022-10-05 22:04:38.398892	1001
542	draba-verna	CIER-A-07-Box1-47	minus-80	2	A	1	F	7	\N	\N	2022-10-05 22:04:38.405586	2022-10-05 22:04:38.405586	1003
543	draba-verna	CIER-A-08-Box1-48	minus-80	2	A	1	F	8	\N	\N	2022-10-05 22:04:38.411199	2022-10-05 22:04:38.411199	1004
544	draba-verna	CIER-A-09-Box1-49	minus-80	2	A	1	F	9	\N	\N	2022-10-05 22:04:38.418724	2022-10-05 22:04:38.418724	140
545	draba-verna	CLAR-B-01-Box1-50	minus-80	2	A	1	F	12	\N	\N	2022-10-05 22:04:38.42337	2022-10-05 22:04:38.42337	164
546	draba-verna	CLAR-B-05-Box1-51	minus-80	2	A	1	G	1	\N	\N	2022-10-05 22:04:38.429121	2022-10-05 22:04:38.429121	168
547	draba-verna	CLAR-B-06-Box1-52	minus-80	1	A	1	G	2	\N	\N	2022-10-05 22:04:38.433552	2022-10-05 22:04:38.433552	169
548	draba-verna	CLAR-C-02-Box1-53	minus-80	1	A	1	G	4	\N	\N	2022-10-05 22:04:38.437869	2022-10-05 22:04:38.437869	174
549	draba-verna	CLAR-C-04-Box1-54	minus-80	1	A	1	G	6	\N	\N	2022-10-05 22:04:38.444182	2022-10-05 22:04:38.444182	176
550	draba-verna	CLAR-C-08-Box1-55	minus-80	2	A	1	G	7	\N	\N	2022-10-05 22:04:38.449186	2022-10-05 22:04:38.449186	180
551	draba-verna	COLO-B-01-Box1-56	minus-80	1	A	1	G	8	\N	\N	2022-10-05 22:04:38.45441	2022-10-05 22:04:38.45441	183
552	draba-verna	COLO-B-02-Box1-57	minus-80	2	A	1	G	9	\N	\N	2022-10-05 22:04:38.459472	2022-10-05 22:04:38.459472	184
553	draba-verna	COLO-B-05-Box1-58	minus-80	1	A	1	G	12	\N	\N	2022-10-05 22:04:38.464495	2022-10-05 22:04:38.464495	1377
554	draba-verna	DAMI-C-04-Box1-59	minus-80	2	A	1	G	13	\N	\N	2022-10-05 22:04:38.469357	2022-10-05 22:04:38.469357	1707
555	draba-verna	DAMI-C-05-Box1-60	minus-80	2	A	1	G	14	\N	\N	2022-10-05 22:04:38.474095	2022-10-05 22:04:38.474095	1708
556	draba-verna	DECA-A-01-Box1-61	minus-80	2	B	1	A	1	\N	\N	2022-10-05 22:04:38.479624	2022-10-05 22:04:38.479624	191
557	draba-verna	DECA-A-02-Box1-62	minus-80	2	B	1	A	2	\N	\N	2022-10-05 22:04:38.484017	2022-10-05 22:04:38.484017	1044
558	draba-verna	DECA-A-03-Box1-63	minus-80	2	B	1	A	3	\N	\N	2022-10-05 22:04:38.488283	2022-10-05 22:04:38.488283	192
559	draba-verna	DECA-A-04-Box1-64	minus-80	2	B	1	A	4	\N	\N	2022-10-05 22:04:38.493397	2022-10-05 22:04:38.493397	193
560	draba-verna	DECA-A-05-Box1-65	minus-80	2	B	1	A	5	\N	\N	2022-10-05 22:04:38.498674	2022-10-05 22:04:38.498674	194
561	draba-verna	DECA-A-06-Box1-66	minus-80	2	B	1	A	6	\N	\N	2022-10-05 22:04:38.502869	2022-10-05 22:04:38.502869	195
562	draba-verna	DECA-A-07-Box1-67	minus-80	2	B	1	A	7	\N	\N	2022-10-05 22:04:38.50761	2022-10-05 22:04:38.50761	196
563	draba-verna	DECA-A-08-Box1-68	minus-80	2	B	1	A	8	\N	\N	2022-10-05 22:04:38.512496	2022-10-05 22:04:38.512496	197
564	draba-verna	DECA-A-09-Box1-69	minus-80	2	B	1	A	9	\N	\N	2022-10-05 22:04:38.51684	2022-10-05 22:04:38.51684	198
565	draba-verna	DECA-A-10-Box1-70	minus-80	1	B	1	A	10	\N	\N	2022-10-05 22:04:38.521607	2022-10-05 22:04:38.521607	199
566	draba-verna	DECA-A-11-Box1-71	minus-80	2	B	1	A	11	\N	\N	2022-10-05 22:04:38.527447	2022-10-05 22:04:38.527447	200
567	draba-verna	DECA-A-12-Box1-72	minus-80	2	B	1	A	12	\N	\N	2022-10-05 22:04:38.532387	2022-10-05 22:04:38.532387	1720
568	draba-verna	GAIL-A-01-Box1-73	minus-80	2	B	1	B	8	\N	\N	2022-10-05 22:04:38.536742	2022-10-05 22:04:38.536742	1071
569	draba-verna	GAIL-A-03-Box1-74	minus-80	2	B	1	B	9	\N	\N	2022-10-05 22:04:38.541912	2022-10-05 22:04:38.541912	222
570	draba-verna	GAIL-A-04-Box1-75	minus-80	2	B	1	B	10	\N	\N	2022-10-05 22:04:38.54655	2022-10-05 22:04:38.54655	1074
571	draba-verna	GAIL-A-06-Box1-76	minus-80	2	B	1	B	11	\N	\N	2022-10-05 22:04:38.551146	2022-10-05 22:04:38.551146	223
572	draba-verna	GAIL-A-07-Box1-77	minus-80	2	B	1	B	12	\N	\N	2022-10-05 22:04:38.556562	2022-10-05 22:04:38.556562	1077
573	draba-verna	GAIL-A-08-Box1-78	minus-80	2	B	1	B	13	\N	\N	2022-10-05 22:04:38.561197	2022-10-05 22:04:38.561197	1078
574	draba-verna	GAIL-A-09-Box1-79	minus-80	2	B	1	B	14	\N	\N	2022-10-05 22:04:38.566836	2022-10-05 22:04:38.566836	1079
575	draba-verna	GAIL-B-01-Box1-80	minus-80	2	B	1	C	1	\N	\N	2022-10-05 22:04:38.571942	2022-10-05 22:04:38.571942	226
576	draba-verna	GAIL-B-02-Box1-81	minus-80	2	B	1	C	2	\N	\N	2022-10-05 22:04:38.57721	2022-10-05 22:04:38.57721	227
577	draba-verna	GAIL-B-04-Box1-82	minus-80	2	B	1	C	3	\N	\N	2022-10-05 22:04:38.58294	2022-10-05 22:04:38.58294	1084
578	draba-verna	GAIL-B-07-Box1-83	minus-80	1	B	1	C	5	\N	\N	2022-10-05 22:04:38.587959	2022-10-05 22:04:38.587959	231
579	draba-verna	GAIL-B-08-Box1-84	minus-80	2	B	1	C	6	\N	\N	2022-10-05 22:04:38.59342	2022-10-05 22:04:38.59342	232
580	draba-verna	GAIL-B-10-Box1-85	minus-80	2	B	1	C	8	\N	\N	2022-10-05 22:04:38.598525	2022-10-05 22:04:38.598525	234
581	draba-verna	GAIL-B-11-Box1-86	minus-80	2	B	1	C	9	\N	\N	2022-10-05 22:04:38.603056	2022-10-05 22:04:38.603056	1748
582	draba-verna	GREZ-A-02-Box1-87	minus-80	2	B	1	C	11	\N	\N	2022-10-05 22:04:38.608114	2022-10-05 22:04:38.608114	235
583	draba-verna	GREZ-A-03-Box1-88	minus-80	2	B	1	C	12	\N	\N	2022-10-05 22:04:38.612898	2022-10-05 22:04:38.612898	1089
584	draba-verna	JUZE-A-04-Box1-89	minus-80	2	B	1	D	1	\N	\N	2022-10-05 22:04:38.617506	2022-10-05 22:04:38.617506	244
585	draba-verna	JUZE-A-05-Box1-90	minus-80	2	B	1	D	2	\N	\N	2022-10-05 22:04:38.622021	2022-10-05 22:04:38.622021	245
586	draba-verna	JUZE-A-06-Box1-91	minus-80	2	B	1	D	3	\N	\N	2022-10-05 22:04:38.627459	2022-10-05 22:04:38.627459	246
587	draba-verna	JUZE-A-08-Box1-92	minus-80	2	B	1	D	5	\N	\N	2022-10-05 22:04:38.633836	2022-10-05 22:04:38.633836	248
588	draba-verna	JUZE-A-11-Box1-93	minus-80	2	B	1	D	6	\N	\N	2022-10-05 22:04:38.64002	2022-10-05 22:04:38.64002	1762
589	draba-verna	JUZE-A-12-Box1-94	minus-80	1	B	1	D	7	\N	\N	2022-10-05 22:04:38.648464	2022-10-05 22:04:38.648464	1763
590	draba-verna	JUZE-A-13-Box1-95	minus-80	1	B	1	D	8	\N	\N	2022-10-05 22:04:38.653273	2022-10-05 22:04:38.653273	1764
591	draba-verna	JUZE-A-14-Box1-96	minus-80	2	B	1	D	9	\N	\N	2022-10-05 22:04:38.658437	2022-10-05 22:04:38.658437	1765
592	draba-verna	JUZE-A-15-Box1-97	minus-80	2	B	1	D	10	\N	\N	2022-10-05 22:04:38.664187	2022-10-05 22:04:38.664187	251
593	draba-verna	JUZET-A-02-Box1-98	minus-80	1	B	1	D	12	\N	\N	2022-10-05 22:04:38.669947	2022-10-05 22:04:38.669947	253
594	draba-verna	JUZET-A-03-Box1-99	minus-80	2	B	1	D	13	\N	\N	2022-10-05 22:04:38.675138	2022-10-05 22:04:38.675138	254
595	draba-verna	JUZET-C-02-Box1-100	minus-80	1	B	1	E	1	\N	\N	2022-10-05 22:04:38.679758	2022-10-05 22:04:38.679758	263
596	draba-verna	JUZET-C-03-Box2-1	minus-80	2	B	1	E	2	\N	\N	2022-10-05 22:04:38.686928	2022-10-05 22:04:38.686928	264
597	draba-verna	JUZET-C-05-Box2-2	minus-80	2	B	1	E	3	\N	\N	2022-10-05 22:04:38.691696	2022-10-05 22:04:38.691696	266
598	draba-verna	LABA-A-01-Box2-3	minus-80	2	B	1	E	4	\N	\N	2022-10-05 22:04:38.696987	2022-10-05 22:04:38.696987	273
599	draba-verna	LABA-A-02-Box2-4	minus-80	2	B	1	E	5	\N	\N	2022-10-05 22:04:38.701814	2022-10-05 22:04:38.701814	274
600	draba-verna	LABA-A-03-Box2-5	minus-80	2	B	1	E	6	\N	\N	2022-10-05 22:04:38.706718	2022-10-05 22:04:38.706718	275
601	draba-verna	LABA-A-04-Box2-6	minus-80	2	B	1	E	7	\N	\N	2022-10-05 22:04:38.711284	2022-10-05 22:04:38.711284	276
602	draba-verna	LABA-A-05-Box2-7	minus-80	1	B	1	E	8	\N	\N	2022-10-05 22:04:38.715978	2022-10-05 22:04:38.715978	277
603	draba-verna	LABA-A-06-Box2-8	minus-80	1	B	1	E	9	\N	\N	2022-10-05 22:04:38.720584	2022-10-05 22:04:38.720584	278
604	draba-verna	LABA-A-07-Box2-9	minus-80	2	B	1	E	10	\N	\N	2022-10-05 22:04:38.725363	2022-10-05 22:04:38.725363	279
605	draba-verna	LABA-A-09-Box2-10	minus-80	2	B	1	E	11	\N	\N	2022-10-05 22:04:38.730424	2022-10-05 22:04:38.730424	281
606	draba-verna	LABA-A-11-Box2-11	minus-80	2	B	1	E	13	\N	\N	2022-10-05 22:04:38.735221	2022-10-05 22:04:38.735221	1783
607	draba-verna	LABA-A-13-Box2-12	minus-80	2	B	1	F	1	\N	\N	2022-10-05 22:04:38.73995	2022-10-05 22:04:38.73995	1785
608	draba-verna	LABA-A-14-Box2-13	minus-80	2	B	1	F	2	\N	\N	2022-10-05 22:04:38.745887	2022-10-05 22:04:38.745887	1786
609	draba-verna	MARS-C-01-Box2-14	minus-80	2	B	1	F	6	\N	\N	2022-10-05 22:04:38.755279	2022-10-05 22:04:38.755279	1839
610	draba-verna	MARS-C-02-Box2-15	minus-80	2	B	1	F	7	\N	\N	2022-10-05 22:04:38.759971	2022-10-05 22:04:38.759971	1840
611	draba-verna	MARS-C-03-Box2-16	minus-80	2	B	1	F	8	\N	\N	2022-10-05 22:04:38.765144	2022-10-05 22:04:38.765144	1841
612	draba-verna	MARS-C-05-Box2-17	minus-80	2	B	1	F	9	\N	\N	2022-10-05 22:04:38.769728	2022-10-05 22:04:38.769728	1843
613	draba-verna	MARS-C-06-Box2-18	minus-80	2	B	1	F	10	\N	\N	2022-10-05 22:04:38.774124	2022-10-05 22:04:38.774124	1844
614	draba-verna	MARS-C-07-Box2-19	minus-80	2	B	1	F	11	\N	\N	2022-10-05 22:04:38.778614	2022-10-05 22:04:38.778614	1845
615	draba-verna	MARS-C-08-Box2-20	minus-80	2	B	1	F	12	\N	\N	2022-10-05 22:04:38.783495	2022-10-05 22:04:38.783495	1846
616	draba-verna	MONB-A-01-Box2-21	minus-80	2	B	1	F	13	\N	\N	2022-10-05 22:04:38.788889	2022-10-05 22:04:38.788889	373
617	draba-verna	MONB-A-04-Box2-22	minus-80	2	B	1	G	1	\N	\N	2022-10-05 22:04:38.795948	2022-10-05 22:04:38.795948	376
618	draba-verna	MONB-A-06-Box2-23	minus-80	2	B	1	G	2	\N	\N	2022-10-05 22:04:38.801827	2022-10-05 22:04:38.801827	378
619	draba-verna	MONB-A-08-Box2-24	minus-80	2	B	1	G	3	\N	\N	2022-10-05 22:04:38.808379	2022-10-05 22:04:38.808379	1212
620	draba-verna	MONB-A-09-Box2-25	minus-80	1	B	1	G	4	\N	\N	2022-10-05 22:04:38.814246	2022-10-05 22:04:38.814246	380
621	draba-verna	MONB-A-12-Box2-26	minus-80	2	B	1	G	7	\N	\N	2022-10-05 22:04:38.819249	2022-10-05 22:04:38.819249	1858
622	draba-verna	MONF-A-01-Box2-27	minus-80	2	B	1	G	9	\N	\N	2022-10-05 22:04:38.825571	2022-10-05 22:04:38.825571	392
623	draba-verna	MONF-A-04-Box2-28	minus-80	2	B	1	G	10	\N	\N	2022-10-05 22:04:38.832263	2022-10-05 22:04:38.832263	395
624	draba-verna	MONF-A-05-Box2-29	minus-80	2	B	1	G	11	\N	\N	2022-10-05 22:04:38.851789	2022-10-05 22:04:38.851789	396
625	draba-verna	MONF-A-06-Box2-30	minus-80	1	B	1	G	12	\N	\N	2022-10-05 22:04:38.859399	2022-10-05 22:04:38.859399	397
626	draba-verna	MONF-A-07-Box2-31	minus-80	1	B	1	G	13	\N	\N	2022-10-05 22:04:38.865063	2022-10-05 22:04:38.865063	398
627	draba-verna	MONF-A-08-Box2-32	minus-80	1	B	1	G	14	\N	\N	2022-10-05 22:04:38.870248	2022-10-05 22:04:38.870248	399
628	draba-verna	MONF-A-10-Box2-33	minus-80	2	C	1	A	2	\N	\N	2022-10-05 22:04:38.875595	2022-10-05 22:04:38.875595	401
629	draba-verna	MONF-A-11-Box2-34	minus-80	2	C	1	A	3	\N	\N	2022-10-05 22:04:38.880417	2022-10-05 22:04:38.880417	1869
630	draba-verna	MONF-A-12-Box2-35	minus-80	2	C	1	A	4	\N	\N	2022-10-05 22:04:38.885248	2022-10-05 22:04:38.885248	1870
631	draba-verna	MONTI-B-02-Box2-36	minus-80	2	C	1	A	6	\N	\N	2022-10-05 22:04:38.889746	2022-10-05 22:04:38.889746	1238
632	draba-verna	MONTI-B-04-Box2-37	minus-80	1	C	1	A	8	\N	\N	2022-10-05 22:04:38.894665	2022-10-05 22:04:38.894665	1240
633	draba-verna	MONTI-B-05-Box2-38	minus-80	2	C	1	A	9	\N	\N	2022-10-05 22:04:38.899999	2022-10-05 22:04:38.899999	1875
634	draba-verna	MONTI-B-06-Box2-39	minus-80	2	C	1	A	10	\N	\N	2022-10-05 22:04:38.904468	2022-10-05 22:04:38.904468	1241
635	draba-verna	MONTM-A-02-Box2-40	minus-80	2	C	1	A	13	\N	\N	2022-10-05 22:04:38.910148	2022-10-05 22:04:38.910148	426
636	draba-verna	MONTM-A-04-Box2-41	minus-80	2	C	1	A	14	\N	\N	2022-10-05 22:04:38.915468	2022-10-05 22:04:38.915468	428
637	draba-verna	MONTM-A-05-Box2-42	minus-80	2	C	1	B	1	\N	\N	2022-10-05 22:04:38.920128	2022-10-05 22:04:38.920128	429
638	draba-verna	MONTM-A-06-Box2-43	minus-80	1	C	1	B	2	\N	\N	2022-10-05 22:04:38.926184	2022-10-05 22:04:38.926184	430
639	draba-verna	MONTM-A-09-Box2-44	minus-80	2	C	1	B	5	\N	\N	2022-10-05 22:04:38.931717	2022-10-05 22:04:38.931717	433
640	draba-verna	NAZA-A-03-Box2-45	minus-80	2	C	1	B	7	\N	\N	2022-10-05 22:04:38.936438	2022-10-05 22:04:38.936438	436
641	draba-verna	NAZA-A-05-Box2-46	minus-80	2	C	1	B	8	\N	\N	2022-10-05 22:04:38.941812	2022-10-05 22:04:38.941812	1257
642	draba-verna	NAZA-A-06-Box2-47	minus-80	2	C	1	B	9	\N	\N	2022-10-05 22:04:38.947224	2022-10-05 22:04:38.947224	438
643	draba-verna	NAZA-A-07-Box2-48	minus-80	2	C	1	B	10	\N	\N	2022-10-05 22:04:38.952086	2022-10-05 22:04:38.952086	1259
644	draba-verna	NAZA-A-13-Box2-49	minus-80	1	C	1	B	12	\N	\N	2022-10-05 22:04:38.958016	2022-10-05 22:04:38.958016	1896
645	draba-verna	PUYM-B-08-Box2-50	minus-80	2	C	1	C	2	\N	\N	2022-10-05 22:04:38.963537	2022-10-05 22:04:38.963537	449
646	draba-verna	RAYR-A-02-Box2-51	minus-80	2	C	1	C	6	\N	\N	2022-10-05 22:04:38.969594	2022-10-05 22:04:38.969594	451
647	draba-verna	RAYR-A-05-Box2-52	minus-80	2	C	1	C	9	\N	\N	2022-10-05 22:04:38.974892	2022-10-05 22:04:38.974892	453
648	draba-verna	RAYR-A-08-Box2-53	minus-80	1	C	1	C	11	\N	\N	2022-10-05 22:04:38.980181	2022-10-05 22:04:38.980181	455
649	draba-verna	SALE-A-01-Box2-54	minus-80	2	C	1	D	1	\N	\N	2022-10-05 22:04:38.985662	2022-10-05 22:04:38.985662	470
650	draba-verna	SALV-A-01-Box2-55	minus-80	1	C	1	D	2	\N	\N	2022-10-05 22:04:38.991422	2022-10-05 22:04:38.991422	480
651	draba-verna	SALV-A-02-Box2-56	minus-80	1	C	1	D	3	\N	\N	2022-10-05 22:04:38.99697	2022-10-05 22:04:38.99697	481
652	draba-verna	SALV-A-03-Box2-57	minus-80	1	C	1	D	4	\N	\N	2022-10-05 22:04:39.001923	2022-10-05 22:04:39.001923	482
653	draba-verna	SALV-A-05-Box2-58	minus-80	2	C	1	D	6	\N	\N	2022-10-05 22:04:39.007867	2022-10-05 22:04:39.007867	483
654	draba-verna	SALV-A-06-Box2-59	minus-80	2	C	1	D	7	\N	\N	2022-10-05 22:04:39.012802	2022-10-05 22:04:39.012802	1298
655	draba-verna	SALV-A-07-Box2-60	minus-80	1	C	1	D	8	\N	\N	2022-10-05 22:04:39.017555	2022-10-05 22:04:39.017555	484
656	draba-verna	SAUB-B-02-Box2-61	minus-80	2	C	1	D	11	\N	\N	2022-10-05 22:04:39.023637	2022-10-05 22:04:39.023637	491
657	draba-verna	SAUB-B-03-Box2-62	minus-80	2	C	1	D	12	\N	\N	2022-10-05 22:04:39.029333	2022-10-05 22:04:39.029333	492
658	draba-verna	SAUB-B-04-Box2-63	minus-80	2	C	1	D	13	\N	\N	2022-10-05 22:04:39.034202	2022-10-05 22:04:39.034202	493
659	draba-verna	SAUB-B-05-Box2-64	minus-80	2	C	1	D	14	\N	\N	2022-10-05 22:04:39.03868	2022-10-05 22:04:39.03868	494
660	draba-verna	SAUB-B-06-Box2-65	minus-80	2	C	1	E	1	\N	\N	2022-10-05 22:04:39.044776	2022-10-05 22:04:39.044776	495
661	draba-verna	SAUB-B-07-Box2-66	minus-80	2	C	1	E	2	\N	\N	2022-10-05 22:04:39.051703	2022-10-05 22:04:39.051703	496
662	draba-verna	SAUB-B-08-Box2-67	minus-80	2	C	1	E	3	\N	\N	2022-10-05 22:04:39.057079	2022-10-05 22:04:39.057079	497
663	draba-verna	SAUB-B-09-Box2-68	minus-80	2	C	1	E	4	\N	\N	2022-10-05 22:04:39.06273	2022-10-05 22:04:39.06273	498
664	draba-verna	SAUB-B-11-Box2-69	minus-80	2	C	1	E	5	\N	\N	2022-10-05 22:04:39.067607	2022-10-05 22:04:39.067607	1941
665	draba-verna	SIMO-A-02-Box2-70	minus-80	2	C	1	E	7	\N	\N	2022-10-05 22:04:39.074167	2022-10-05 22:04:39.074167	500
666	draba-verna	SIMO-A-04-Box2-71	minus-80	2	C	1	E	10	\N	\N	2022-10-05 22:04:39.091224	2022-10-05 22:04:39.091224	502
667	draba-verna	SIMO-A-05-Box2-72	minus-80	2	C	1	E	11	\N	\N	2022-10-05 22:04:39.097197	2022-10-05 22:04:39.097197	503
668	draba-verna	SIMO-A-06-Box2-73	minus-80	2	C	1	E	12	\N	\N	2022-10-05 22:04:39.102521	2022-10-05 22:04:39.102521	504
669	draba-verna	SIMO-A-07-Box2-74	minus-80	2	C	1	E	13	\N	\N	2022-10-05 22:04:39.108133	2022-10-05 22:04:39.108133	505
670	draba-verna	SIMO-A-08-Box2-75	minus-80	2	C	1	E	14	\N	\N	2022-10-05 22:04:39.11372	2022-10-05 22:04:39.11372	506
671	draba-verna	THOM-A-01-Box2-76	minus-80	2	C	1	F	1	\N	\N	2022-10-05 22:04:39.118906	2022-10-05 22:04:39.118906	509
672	draba-verna	THOM-A-04-Box2-77	minus-80	2	C	1	F	2	\N	\N	2022-10-05 22:04:39.125874	2022-10-05 22:04:39.125874	511
673	draba-verna	THOM-A-07-Box2-78	minus-80	1	C	1	F	3	\N	\N	2022-10-05 22:04:39.13229	2022-10-05 22:04:39.13229	513
674	draba-verna	THOM-A-08-Box2-79	minus-80	2	C	1	F	4	\N	\N	2022-10-05 22:04:39.137354	2022-10-05 22:04:39.137354	514
675	draba-verna	THOM-A-09-Box2-80	minus-80	1	C	1	F	5	\N	\N	2022-10-05 22:04:39.149483	2022-10-05 22:04:39.149483	515
676	draba-verna	THOM-A-12-Box2-81	minus-80	2	C	1	F	7	\N	\N	2022-10-05 22:04:39.155077	2022-10-05 22:04:39.155077	1960
677	draba-verna	VILLE-A-01-Box2-82	minus-80	2	C	1	F	8	\N	\N	2022-10-05 22:04:39.161737	2022-10-05 22:04:39.161737	546
678	draba-verna	VILLE-A-02-Box2-83	minus-80	2	C	1	F	9	\N	\N	2022-10-05 22:04:39.168199	2022-10-05 22:04:39.168199	547
679	draba-verna	VILLE-A-04-Box2-84	minus-80	2	C	1	F	11	\N	\N	2022-10-05 22:04:39.174798	2022-10-05 22:04:39.174798	549
680	draba-verna	VILLE-A-06-Box2-85	minus-80	2	C	1	F	12	\N	\N	2022-10-05 22:04:39.195428	2022-10-05 22:04:39.195428	551
681	draba-verna	VILLE-A-07-Box2-86	minus-80	2	C	1	F	13	\N	\N	2022-10-05 22:04:39.202979	2022-10-05 22:04:39.202979	552
682	draba-verna	VILLE-A-09-Box2-87	minus-80	2	C	1	G	1	\N	\N	2022-10-05 22:04:39.211257	2022-10-05 22:04:39.211257	554
683	draba-verna	VILLE-A-12-Box2-88	minus-80	2	C	1	G	2	\N	\N	2022-10-05 22:04:39.218636	2022-10-05 22:04:39.218636	1972
684	draba-verna	VILLE-B-05-Box2-89	minus-80	2	C	1	G	7	\N	\N	2022-10-05 22:04:39.228873	2022-10-05 22:04:39.228873	560
685	draba-verna	VILLE-B-06-Box2-90	minus-80	1	C	1	G	8	\N	\N	2022-10-05 22:04:39.236786	2022-10-05 22:04:39.236786	561
686	draba-verna	BELL-A-10-Box2-91	minus-80	1	D	1	A	4	\N	\N	2022-10-05 22:04:39.245981	2022-10-05 22:04:39.245981	65
687	draba-verna	CASS-A-03-Box2-92	minus-80	1	D	1	A	8	\N	\N	2022-10-05 22:04:39.254462	2022-10-05 22:04:39.254462	102
688	draba-verna	CASS-A-04-Box2-93	minus-80	2	D	1	A	9	\N	\N	2022-10-05 22:04:39.262914	2022-10-05 22:04:39.262914	103
689	draba-verna	CASS-A-05-Box2-94	minus-80	2	D	1	A	10	\N	\N	2022-10-05 22:04:39.269561	2022-10-05 22:04:39.269561	1391
690	draba-verna	CASS-A-07-Box2-95	minus-80	2	D	1	A	12	\N	\N	2022-10-05 22:04:39.276477	2022-10-05 22:04:39.276477	105
691	draba-verna	CINT-A-02-Box2-96	minus-80	2	D	1	A	14	\N	\N	2022-10-05 22:04:39.284961	2022-10-05 22:04:39.284961	146
692	draba-verna	CINT-A-03-Box2-97	minus-80	2	D	1	B	1	\N	\N	2022-10-05 22:04:39.292384	2022-10-05 22:04:39.292384	147
693	draba-verna	CINT-A-04-Box2-98	minus-80	2	D	1	B	2	\N	\N	2022-10-05 22:04:39.300238	2022-10-05 22:04:39.300238	1677
694	draba-verna	CINT-A-05-Box2-99	minus-80	2	D	1	B	3	\N	\N	2022-10-05 22:04:39.305878	2022-10-05 22:04:39.305878	148
695	draba-verna	CINT-A-06-Box2-100	minus-80	2	D	1	B	4	\N	\N	2022-10-05 22:04:39.31299	2022-10-05 22:04:39.31299	149
696	draba-verna	CINT-A-07-Box3-1	minus-80	1	D	1	B	5	\N	\N	2022-10-05 22:04:39.319514	2022-10-05 22:04:39.319514	1680
697	draba-verna	CINT-A-09-Box3-2	minus-80	1	D	1	B	7	\N	\N	2022-10-05 22:04:39.326058	2022-10-05 22:04:39.326058	151
698	draba-verna	CINT-A-10-Box3-3	minus-80	1	D	1	B	8	\N	\N	2022-10-05 22:04:39.334051	2022-10-05 22:04:39.334051	152
699	draba-verna	CINT-B-05-Box3-4	minus-80	1	D	1	B	12	\N	\N	2022-10-05 22:04:39.34434	2022-10-05 22:04:39.34434	158
700	draba-verna	CINT-B-09-Box3-5	minus-80	2	D	1	B	14	\N	\N	2022-10-05 22:04:39.35084	2022-10-05 22:04:39.35084	162
701	draba-verna	LANT-B-03-Box3-6	minus-80	2	D	1	C	3	\N	\N	2022-10-05 22:04:39.356145	2022-10-05 22:04:39.356145	1796
702	draba-verna	LANT-B-06-Box3-7	minus-80	2	D	1	C	6	\N	\N	2022-10-05 22:04:39.361597	2022-10-05 22:04:39.361597	1799
703	draba-verna	LANT-B-07-Box3-8	minus-80	2	D	1	C	7	\N	\N	2022-10-05 22:04:39.366393	2022-10-05 22:04:39.366393	1800
704	draba-verna	LANT-B-08-Box3-9	minus-80	2	D	1	C	8	\N	\N	2022-10-05 22:04:39.371155	2022-10-05 22:04:39.371155	1801
705	draba-verna	LANT-B-09-Box3-10	minus-80	2	D	1	C	9	\N	\N	2022-10-05 22:04:39.376855	2022-10-05 22:04:39.376855	1802
706	draba-verna	LANT-B-10-Box3-11	minus-80	2	D	1	C	10	\N	\N	2022-10-05 22:04:39.382197	2022-10-05 22:04:39.382197	1803
707	draba-verna	LANT-D-05-Box3-12	minus-80	2	D	1	C	13	\N	\N	2022-10-05 22:04:39.386811	2022-10-05 22:04:39.386811	307
708	draba-verna	LAUZ-A-04-Box3-13	minus-80	2	D	1	D	5	\N	\N	2022-10-05 22:04:39.393059	2022-10-05 22:04:39.393059	1150
709	draba-verna	LAUZ-A-05-Box3-14	minus-80	1	D	1	D	6	\N	\N	2022-10-05 22:04:39.397522	2022-10-05 22:04:39.397522	1151
710	draba-verna	LAUZ-A-10-Box3-15	minus-80	2	D	1	D	10	\N	\N	2022-10-05 22:04:39.401954	2022-10-05 22:04:39.401954	1154
711	draba-verna	LECT-A-10-Box3-16	minus-80	2	D	1	D	12	\N	\N	2022-10-05 22:04:39.407327	2022-10-05 22:04:39.407327	321
712	draba-verna	LECT-A-11-Box3-17	minus-80	2	D	1	D	13	\N	\N	2022-10-05 22:04:39.411879	2022-10-05 22:04:39.411879	322
713	draba-verna	LECT-A-12-Box3-18	minus-80	2	D	1	D	14	\N	\N	2022-10-05 22:04:39.416643	2022-10-05 22:04:39.416643	323
714	draba-verna	LUNA-A-01-Box3-19	minus-80	2	D	1	E	1	\N	\N	2022-10-05 22:04:39.42104	2022-10-05 22:04:39.42104	334
715	draba-verna	LUNA-A-02-Box3-20	minus-80	2	D	1	E	2	\N	\N	2022-10-05 22:04:39.427864	2022-10-05 22:04:39.427864	335
716	draba-verna	LUNA-A-03-Box3-21	minus-80	2	D	1	E	3	\N	\N	2022-10-05 22:04:39.433646	2022-10-05 22:04:39.433646	336
717	draba-verna	LUNA-A-05-Box3-22	minus-80	2	D	1	E	4	\N	\N	2022-10-05 22:04:39.438226	2022-10-05 22:04:39.438226	337
718	draba-verna	LUNA-A-06-Box3-23	minus-80	2	D	1	E	5	\N	\N	2022-10-05 22:04:39.443374	2022-10-05 22:04:39.443374	338
719	draba-verna	LUNA-A-07-Box3-24	minus-80	2	D	1	E	6	\N	\N	2022-10-05 22:04:39.448163	2022-10-05 22:04:39.448163	339
720	draba-verna	LUNA-A-08-Box3-25	minus-80	2	D	1	E	7	\N	\N	2022-10-05 22:04:39.453895	2022-10-05 22:04:39.453895	340
721	draba-verna	LUNA-A-09-Box3-26	minus-80	2	D	1	E	8	\N	\N	2022-10-05 22:04:39.457937	2022-10-05 22:04:39.457937	341
722	draba-verna	LUNA-A-10-Box3-27	minus-80	2	D	1	E	9	\N	\N	2022-10-05 22:04:39.463475	2022-10-05 22:04:39.463475	342
723	draba-verna	LUNA-A-12-Box3-28	minus-80	2	D	1	E	10	\N	\N	2022-10-05 22:04:39.468213	2022-10-05 22:04:39.468213	1838
724	draba-verna	VILLE-C-06-Box3-29	minus-80	1	E	1	A	4	\N	\N	2022-10-05 22:04:39.473282	2022-10-05 22:04:39.473282	568
725	draba-verna	VILLE-C-07-Box3-30	minus-80	1	E	1	C	1	\N	\N	2022-10-05 22:04:39.479784	2022-10-05 22:04:39.479784	1991
726	draba-verna	AMBR-A-11-Box3-41	minus-80	1	A	2	A	2	\N	\N	2022-10-05 22:04:39.485121	2022-10-05 22:04:39.485121	1566
727	draba-verna	ANGE-A-01-Box3-42	minus-80	2	A	2	A	3	\N	\N	2022-10-05 22:04:39.49114	2022-10-05 22:04:39.49114	11
728	draba-verna	ANGE-A-02-Box3-43	minus-80	2	A	2	A	4	\N	\N	2022-10-05 22:04:39.499215	2022-10-05 22:04:39.499215	12
729	draba-verna	ANGE-A-03-Box3-44	minus-80	2	A	2	A	5	\N	\N	2022-10-05 22:04:39.504349	2022-10-05 22:04:39.504349	13
730	draba-verna	ANGE-A-08-Box3-45	minus-80	1	A	2	A	10	\N	\N	2022-10-05 22:04:39.510948	2022-10-05 22:04:39.510948	901
731	draba-verna	ANGE-B-01-Box3-46	minus-80	1	A	2	A	12	\N	\N	2022-10-05 22:04:39.516702	2022-10-05 22:04:39.516702	904
732	draba-verna	ANGE-B-02-Box3-47	minus-80	2	A	2	A	13	\N	\N	2022-10-05 22:04:39.521737	2022-10-05 22:04:39.521737	19
733	draba-verna	ANGE-B-03-Box3-48	minus-80	1	A	2	A	14	\N	\N	2022-10-05 22:04:39.527638	2022-10-05 22:04:39.527638	906
734	draba-verna	ANGE-B-04-Box3-49	minus-80	2	A	2	B	1	\N	\N	2022-10-05 22:04:39.532978	2022-10-05 22:04:39.532978	20
735	draba-verna	ANGE-B-05-Box3-50	minus-80	2	A	2	B	2	\N	\N	2022-10-05 22:04:39.537967	2022-10-05 22:04:39.537967	21
736	draba-verna	ANGE-B-08-Box3-51	minus-80	2	A	2	B	3	\N	\N	2022-10-05 22:04:39.543445	2022-10-05 22:04:39.543445	23
737	draba-verna	ANGE-B-10-Box3-52	minus-80	2	A	2	B	5	\N	\N	2022-10-05 22:04:39.549233	2022-10-05 22:04:39.549233	25
738	draba-verna	ANGE-B-11-Box3-53	minus-80	2	A	2	B	6	\N	\N	2022-10-05 22:04:39.554515	2022-10-05 22:04:39.554515	26
739	draba-verna	AUZE-A-05-Box3-54	minus-80	2	A	2	B	8	\N	\N	2022-10-05 22:04:39.559753	2022-10-05 22:04:39.559753	31
740	draba-verna	AUZE-A-08-Box3-55	minus-80	2	A	2	B	9	\N	\N	2022-10-05 22:04:39.564966	2022-10-05 22:04:39.564966	34
741	draba-verna	AUZE-A-09-Box3-56	minus-80	2	A	2	B	10	\N	\N	2022-10-05 22:04:39.569305	2022-10-05 22:04:39.569305	35
742	draba-verna	AUZE-A-12-Box3-57	minus-80	1	A	2	B	12	\N	\N	2022-10-05 22:04:39.575067	2022-10-05 22:04:39.575067	1594
743	draba-verna	AUZE-A-14-Box3-58	minus-80	2	A	2	B	13	\N	\N	2022-10-05 22:04:39.57976	2022-10-05 22:04:39.57976	1595
744	draba-verna	BARA-C-02-Box3-59	minus-80	1	A	2	C	1	\N	\N	2022-10-05 22:04:39.584543	2022-10-05 22:04:39.584543	37
745	draba-verna	BARA-C-03-Box3-60	minus-80	2	A	2	C	2	\N	\N	2022-10-05 22:04:39.589584	2022-10-05 22:04:39.589584	38
746	draba-verna	BARA-C-04-Box3-61	minus-80	1	A	2	C	3	\N	\N	2022-10-05 22:04:39.59561	2022-10-05 22:04:39.59561	39
747	draba-verna	BARA-C-07-Box3-62	minus-80	2	A	2	C	6	\N	\N	2022-10-05 22:04:39.600809	2022-10-05 22:04:39.600809	1602
748	draba-verna	CAMA-C-01-Box3-63	minus-80	1	A	2	C	13	\N	\N	2022-10-05 22:04:39.605701	2022-10-05 22:04:39.605701	77
749	draba-verna	CAMA-C-04-Box3-64	minus-80	1	A	2	D	2	\N	\N	2022-10-05 22:04:39.610197	2022-10-05 22:04:39.610197	1628
750	draba-verna	CAMA-D-02-Box3-65	minus-80	2	A	2	D	3	\N	\N	2022-10-05 22:04:39.615342	2022-10-05 22:04:39.615342	81
751	draba-verna	CAMA-D-04-Box3-66	minus-80	2	A	2	D	4	\N	\N	2022-10-05 22:04:39.62013	2022-10-05 22:04:39.62013	83
752	draba-verna	CAMA-E-01-Box3-67	minus-80	2	A	2	D	5	\N	\N	2022-10-05 22:04:39.625358	2022-10-05 22:04:39.625358	88
753	draba-verna	CAMA-E-03-Box3-68	minus-80	2	A	2	D	7	\N	\N	2022-10-05 22:04:39.631024	2022-10-05 22:04:39.631024	1634
754	draba-verna	CAMA-E-10-Box3-69	minus-80	2	A	2	D	13	\N	\N	2022-10-05 22:04:39.63658	2022-10-05 22:04:39.63658	959
755	draba-verna	CARL-A-01-Box3-70	minus-80	2	A	2	E	2	\N	\N	2022-10-05 22:04:39.643248	2022-10-05 22:04:39.643248	92
756	draba-verna	CARL-A-04-Box3-71	minus-80	1	A	2	E	5	\N	\N	2022-10-05 22:04:39.648296	2022-10-05 22:04:39.648296	95
757	draba-verna	CERN-A-03-Box3-72	minus-80	2	A	2	E	7	\N	\N	2022-10-05 22:04:39.65345	2022-10-05 22:04:39.65345	123
758	draba-verna	CERN-A-04-Box3-73	minus-80	2	A	2	E	8	\N	\N	2022-10-05 22:04:39.658056	2022-10-05 22:04:39.658056	1392
759	draba-verna	CERN-B-04-Box3-74	minus-80	1	A	2	E	9	\N	\N	2022-10-05 22:04:39.662763	2022-10-05 22:04:39.662763	128
760	draba-verna	CERN-B-07-Box3-75	minus-80	2	A	2	E	11	\N	\N	2022-10-05 22:04:39.667366	2022-10-05 22:04:39.667366	131
761	draba-verna	CERN-B-08-Box3-76	minus-80	2	A	2	E	12	\N	\N	2022-10-05 22:04:39.672352	2022-10-05 22:04:39.672352	132
762	draba-verna	CERN-B-09-Box3-77	minus-80	2	A	2	E	13	\N	\N	2022-10-05 22:04:39.677132	2022-10-05 22:04:39.677132	1661
763	draba-verna	CIER-A-01-Box3-78	minus-80	2	A	2	F	1	\N	\N	2022-10-05 22:04:39.682086	2022-10-05 22:04:39.682086	997
764	draba-verna	CIER-A-02-Box3-79	minus-80	2	A	2	F	2	\N	\N	2022-10-05 22:04:39.686778	2022-10-05 22:04:39.686778	136
765	draba-verna	CIER-A-03-Box3-80	minus-80	2	A	2	F	3	\N	\N	2022-10-05 22:04:39.692135	2022-10-05 22:04:39.692135	137
766	draba-verna	CIER-A-05-Box3-81	minus-80	2	A	2	F	5	\N	\N	2022-10-05 22:04:39.69699	2022-10-05 22:04:39.69699	1001
767	draba-verna	CIER-A-07-Box3-82	minus-80	2	A	2	F	7	\N	\N	2022-10-05 22:04:39.703342	2022-10-05 22:04:39.703342	1003
768	draba-verna	CIER-A-08-Box3-83	minus-80	2	A	2	F	8	\N	\N	2022-10-05 22:04:39.708959	2022-10-05 22:04:39.708959	1004
769	draba-verna	CIER-A-09-Box3-84	minus-80	2	A	2	F	9	\N	\N	2022-10-05 22:04:39.714122	2022-10-05 22:04:39.714122	140
770	draba-verna	CLAR-B-01-Box3-85	minus-80	2	A	2	F	12	\N	\N	2022-10-05 22:04:39.718595	2022-10-05 22:04:39.718595	164
771	draba-verna	CLAR-B-05-Box3-86	minus-80	2	A	2	G	1	\N	\N	2022-10-05 22:04:39.723162	2022-10-05 22:04:39.723162	168
772	draba-verna	CLAR-C-01-Box3-87	minus-80	1	A	2	G	3	\N	\N	2022-10-05 22:04:39.728905	2022-10-05 22:04:39.728905	173
773	draba-verna	CLAR-C-08-Box3-88	minus-80	2	A	2	G	7	\N	\N	2022-10-05 22:04:39.734439	2022-10-05 22:04:39.734439	180
774	draba-verna	COLO-B-02-Box3-89	minus-80	2	A	2	G	9	\N	\N	2022-10-05 22:04:39.74045	2022-10-05 22:04:39.74045	184
775	draba-verna	COLO-B-04-Box3-90	minus-80	1	A	2	G	11	\N	\N	2022-10-05 22:04:39.745705	2022-10-05 22:04:39.745705	186
776	draba-verna	DAMI-C-04-Box3-91	minus-80	2	A	2	G	13	\N	\N	2022-10-05 22:04:39.751319	2022-10-05 22:04:39.751319	1707
777	draba-verna	DAMI-C-05-Box3-92	minus-80	2	A	2	G	14	\N	\N	2022-10-05 22:04:39.75615	2022-10-05 22:04:39.75615	1708
778	draba-verna	DECA-A-01-Box3-93	minus-80	2	B	2	A	1	\N	\N	2022-10-05 22:04:39.762908	2022-10-05 22:04:39.762908	191
779	draba-verna	DECA-A-02-Box3-94	minus-80	2	B	2	A	2	\N	\N	2022-10-05 22:04:39.769115	2022-10-05 22:04:39.769115	1044
780	draba-verna	DECA-A-03-Box3-95	minus-80	2	B	2	A	3	\N	\N	2022-10-05 22:04:39.774615	2022-10-05 22:04:39.774615	192
781	draba-verna	DECA-A-04-Box3-96	minus-80	2	B	2	A	4	\N	\N	2022-10-05 22:04:39.780507	2022-10-05 22:04:39.780507	193
782	draba-verna	DECA-A-05-Box3-97	minus-80	2	B	2	A	5	\N	\N	2022-10-05 22:04:39.786142	2022-10-05 22:04:39.786142	194
783	draba-verna	DECA-A-06-Box3-98	minus-80	2	B	2	A	6	\N	\N	2022-10-05 22:04:39.791614	2022-10-05 22:04:39.791614	195
784	draba-verna	DECA-A-07-Box3-99	minus-80	2	B	2	A	7	\N	\N	2022-10-05 22:04:39.798044	2022-10-05 22:04:39.798044	196
785	draba-verna	DECA-A-08-Box3-100	minus-80	2	B	2	A	8	\N	\N	2022-10-05 22:04:39.803789	2022-10-05 22:04:39.803789	197
786	draba-verna	DECA-A-09-Box4-1	minus-80	2	B	2	A	9	\N	\N	2022-10-05 22:04:39.809223	2022-10-05 22:04:39.809223	198
787	draba-verna	DECA-A-11-Box4-2	minus-80	2	B	2	A	11	\N	\N	2022-10-05 22:04:39.814891	2022-10-05 22:04:39.814891	200
788	draba-verna	DECA-A-12-Box4-3	minus-80	2	B	2	A	12	\N	\N	2022-10-05 22:04:39.820892	2022-10-05 22:04:39.820892	1720
789	draba-verna	ESPE-B-02-Box4-4	minus-80	1	B	2	A	13	\N	\N	2022-10-05 22:04:39.826206	2022-10-05 22:04:39.826206	202
790	draba-verna	ESPE-B-06-Box4-5	minus-80	1	B	2	B	1	\N	\N	2022-10-05 22:04:39.833181	2022-10-05 22:04:39.833181	1057
791	draba-verna	ESPE-B-10-Box4-6	minus-80	1	B	2	B	3	\N	\N	2022-10-05 22:04:39.837889	2022-10-05 22:04:39.837889	208
792	draba-verna	FERR-A-02-Box4-7	minus-80	1	B	2	B	5	\N	\N	2022-10-05 22:04:39.842949	2022-10-05 22:04:39.842949	212
793	draba-verna	FERR-A-03-Box4-8	minus-80	1	B	2	B	6	\N	\N	2022-10-05 22:04:39.848077	2022-10-05 22:04:39.848077	213
794	draba-verna	FERR-A-04-Box4-9	minus-80	1	B	2	B	7	\N	\N	2022-10-05 22:04:39.852725	2022-10-05 22:04:39.852725	214
795	draba-verna	GAIL-A-01-Box4-10	minus-80	2	B	2	B	8	\N	\N	2022-10-05 22:04:39.857023	2022-10-05 22:04:39.857023	1071
796	draba-verna	GAIL-A-03-Box4-11	minus-80	2	B	2	B	9	\N	\N	2022-10-05 22:04:39.86207	2022-10-05 22:04:39.86207	222
797	draba-verna	GAIL-A-04-Box4-12	minus-80	2	B	2	B	10	\N	\N	2022-10-05 22:04:39.866885	2022-10-05 22:04:39.866885	1074
798	draba-verna	GAIL-A-06-Box4-13	minus-80	2	B	2	B	11	\N	\N	2022-10-05 22:04:39.871315	2022-10-05 22:04:39.871315	223
799	draba-verna	GAIL-A-07-Box4-14	minus-80	2	B	2	B	12	\N	\N	2022-10-05 22:04:39.876619	2022-10-05 22:04:39.876619	1077
800	draba-verna	GAIL-A-08-Box4-15	minus-80	2	B	2	B	13	\N	\N	2022-10-05 22:04:39.883718	2022-10-05 22:04:39.883718	1078
801	draba-verna	GAIL-A-09-Box4-16	minus-80	2	B	2	B	14	\N	\N	2022-10-05 22:04:39.889071	2022-10-05 22:04:39.889071	1079
802	draba-verna	GAIL-B-01-Box4-17	minus-80	2	B	2	C	1	\N	\N	2022-10-05 22:04:39.894894	2022-10-05 22:04:39.894894	226
803	draba-verna	GAIL-B-02-Box4-18	minus-80	2	B	2	C	2	\N	\N	2022-10-05 22:04:39.900133	2022-10-05 22:04:39.900133	227
804	draba-verna	GAIL-B-04-Box4-19	minus-80	2	B	2	C	3	\N	\N	2022-10-05 22:04:39.905337	2022-10-05 22:04:39.905337	1084
805	draba-verna	GAIL-B-08-Box4-20	minus-80	2	B	2	C	6	\N	\N	2022-10-05 22:04:39.910598	2022-10-05 22:04:39.910598	232
806	draba-verna	GAIL-B-10-Box4-21	minus-80	2	B	2	C	8	\N	\N	2022-10-05 22:04:39.915972	2022-10-05 22:04:39.915972	234
807	draba-verna	GAIL-B-11-Box4-22	minus-80	2	B	2	C	9	\N	\N	2022-10-05 22:04:39.920614	2022-10-05 22:04:39.920614	1748
808	draba-verna	GREZ-A-01-Box4-23	minus-80	1	B	2	C	10	\N	\N	2022-10-05 22:04:39.926001	2022-10-05 22:04:39.926001	1087
809	draba-verna	GREZ-A-02-Box4-24	minus-80	2	B	2	C	11	\N	\N	2022-10-05 22:04:39.931807	2022-10-05 22:04:39.931807	235
810	draba-verna	GREZ-A-03-Box4-25	minus-80	2	B	2	C	12	\N	\N	2022-10-05 22:04:39.937486	2022-10-05 22:04:39.937486	1089
811	draba-verna	JUZE-A-04-Box4-26	minus-80	2	B	2	D	1	\N	\N	2022-10-05 22:04:39.942547	2022-10-05 22:04:39.942547	244
812	draba-verna	JUZE-A-05-Box4-27	minus-80	2	B	2	D	2	\N	\N	2022-10-05 22:04:39.947836	2022-10-05 22:04:39.947836	245
813	draba-verna	JUZE-A-06-Box4-28	minus-80	2	B	2	D	3	\N	\N	2022-10-05 22:04:39.952952	2022-10-05 22:04:39.952952	246
814	draba-verna	JUZE-A-07-Box4-29	minus-80	1	B	2	D	4	\N	\N	2022-10-05 22:04:39.958971	2022-10-05 22:04:39.958971	247
815	draba-verna	JUZE-A-08-Box4-30	minus-80	2	B	2	D	5	\N	\N	2022-10-05 22:04:39.964715	2022-10-05 22:04:39.964715	248
816	draba-verna	JUZE-A-11-Box4-31	minus-80	2	B	2	D	6	\N	\N	2022-10-05 22:04:39.969686	2022-10-05 22:04:39.969686	1762
817	draba-verna	JUZE-A-14-Box4-32	minus-80	2	B	2	D	9	\N	\N	2022-10-05 22:04:39.97584	2022-10-05 22:04:39.97584	1765
818	draba-verna	JUZE-A-15-Box4-33	minus-80	2	B	2	D	10	\N	\N	2022-10-05 22:04:39.981167	2022-10-05 22:04:39.981167	251
819	draba-verna	JUZET-A-01-Box4-34	minus-80	1	B	2	D	11	\N	\N	2022-10-05 22:04:39.986641	2022-10-05 22:04:39.986641	252
820	draba-verna	JUZET-A-03-Box4-35	minus-80	2	B	2	D	13	\N	\N	2022-10-05 22:04:39.992311	2022-10-05 22:04:39.992311	254
821	draba-verna	JUZET-C-01-Box4-36	minus-80	1	B	2	D	14	\N	\N	2022-10-05 22:04:39.997822	2022-10-05 22:04:39.997822	262
822	draba-verna	JUZET-C-03-Box4-37	minus-80	2	B	2	E	2	\N	\N	2022-10-05 22:04:40.00391	2022-10-05 22:04:40.00391	264
823	draba-verna	JUZET-C-05-Box4-38	minus-80	2	B	2	E	3	\N	\N	2022-10-05 22:04:40.009119	2022-10-05 22:04:40.009119	266
824	draba-verna	LABA-A-01-Box4-39	minus-80	2	B	2	E	4	\N	\N	2022-10-05 22:04:40.01542	2022-10-05 22:04:40.01542	273
825	draba-verna	LABA-A-02-Box4-40	minus-80	2	B	2	E	5	\N	\N	2022-10-05 22:04:40.020276	2022-10-05 22:04:40.020276	274
826	draba-verna	LABA-A-03-Box4-41	minus-80	2	B	2	E	6	\N	\N	2022-10-05 22:04:40.026045	2022-10-05 22:04:40.026045	275
827	draba-verna	LABA-A-04-Box4-42	minus-80	2	B	2	E	7	\N	\N	2022-10-05 22:04:40.03164	2022-10-05 22:04:40.03164	276
828	draba-verna	LABA-A-07-Box4-43	minus-80	2	B	2	E	10	\N	\N	2022-10-05 22:04:40.037512	2022-10-05 22:04:40.037512	279
829	draba-verna	LABA-A-09-Box4-44	minus-80	2	B	2	E	11	\N	\N	2022-10-05 22:04:40.043007	2022-10-05 22:04:40.043007	281
830	draba-verna	LABA-A-10-Box4-45	minus-80	1	B	2	E	12	\N	\N	2022-10-05 22:04:40.048781	2022-10-05 22:04:40.048781	282
831	draba-verna	LABA-A-11-Box4-46	minus-80	2	B	2	E	13	\N	\N	2022-10-05 22:04:40.054372	2022-10-05 22:04:40.054372	1783
832	draba-verna	LABA-A-12-Box4-47	minus-80	1	B	2	E	14	\N	\N	2022-10-05 22:04:40.061443	2022-10-05 22:04:40.061443	1784
833	draba-verna	LABA-A-13-Box4-48	minus-80	2	B	2	F	1	\N	\N	2022-10-05 22:04:40.066688	2022-10-05 22:04:40.066688	1785
834	draba-verna	LABA-A-14-Box4-49	minus-80	2	B	2	F	2	\N	\N	2022-10-05 22:04:40.072823	2022-10-05 22:04:40.072823	1786
835	draba-verna	LABA-A-15-Box4-50	minus-80	1	B	2	F	3	\N	\N	2022-10-05 22:04:40.081237	2022-10-05 22:04:40.081237	1787
836	draba-verna	LABAS-A-04-Box4-51	minus-80	1	B	2	F	4	\N	\N	2022-10-05 22:04:40.087685	2022-10-05 22:04:40.087685	286
837	draba-verna	MARS-C-01-Box4-52	minus-80	2	B	2	F	6	\N	\N	2022-10-05 22:04:40.094978	2022-10-05 22:04:40.094978	1839
838	draba-verna	MARS-C-02-Box4-53	minus-80	2	B	2	F	7	\N	\N	2022-10-05 22:04:40.109816	2022-10-05 22:04:40.109816	1840
839	draba-verna	MARS-C-03-Box4-54	minus-80	2	B	2	F	8	\N	\N	2022-10-05 22:04:40.11931	2022-10-05 22:04:40.11931	1841
840	draba-verna	MARS-C-05-Box4-55	minus-80	2	B	2	F	9	\N	\N	2022-10-05 22:04:40.127368	2022-10-05 22:04:40.127368	1843
841	draba-verna	MARS-C-06-Box4-56	minus-80	2	B	2	F	10	\N	\N	2022-10-05 22:04:40.137232	2022-10-05 22:04:40.137232	1844
842	draba-verna	MARS-C-07-Box4-57	minus-80	2	B	2	F	11	\N	\N	2022-10-05 22:04:40.149794	2022-10-05 22:04:40.149794	1845
843	draba-verna	MARS-C-08-Box4-58	minus-80	2	B	2	F	12	\N	\N	2022-10-05 22:04:40.156584	2022-10-05 22:04:40.156584	1846
844	draba-verna	MONB-A-01-Box4-59	minus-80	2	B	2	F	13	\N	\N	2022-10-05 22:04:40.163822	2022-10-05 22:04:40.163822	373
845	draba-verna	MONB-A-02-Box4-60	minus-80	1	B	2	F	14	\N	\N	2022-10-05 22:04:40.170389	2022-10-05 22:04:40.170389	374
846	draba-verna	MONB-A-04-Box4-61	minus-80	2	B	2	G	1	\N	\N	2022-10-05 22:04:40.176224	2022-10-05 22:04:40.176224	376
847	draba-verna	MONB-A-06-Box4-62	minus-80	2	B	2	G	2	\N	\N	2022-10-05 22:04:40.182319	2022-10-05 22:04:40.182319	378
848	draba-verna	MONB-A-08-Box4-63	minus-80	2	B	2	G	3	\N	\N	2022-10-05 22:04:40.187571	2022-10-05 22:04:40.187571	1212
849	draba-verna	MONB-A-12-Box4-64	minus-80	2	B	2	G	7	\N	\N	2022-10-05 22:04:40.193982	2022-10-05 22:04:40.193982	1858
850	draba-verna	MONF-A-01-Box4-65	minus-80	2	B	2	G	9	\N	\N	2022-10-05 22:04:40.199551	2022-10-05 22:04:40.199551	392
851	draba-verna	MONF-A-04-Box4-66	minus-80	2	B	2	G	10	\N	\N	2022-10-05 22:04:40.204839	2022-10-05 22:04:40.204839	395
852	draba-verna	MONF-A-05-Box4-67	minus-80	2	B	2	G	11	\N	\N	2022-10-05 22:04:40.210407	2022-10-05 22:04:40.210407	396
853	draba-verna	MONF-A-09-Box4-68	minus-80	1	C	2	A	1	\N	\N	2022-10-05 22:04:40.216237	2022-10-05 22:04:40.216237	400
854	draba-verna	MONF-A-10-Box4-69	minus-80	2	C	2	A	2	\N	\N	2022-10-05 22:04:40.221216	2022-10-05 22:04:40.221216	401
855	draba-verna	MONF-A-11-Box4-70	minus-80	2	C	2	A	3	\N	\N	2022-10-05 22:04:40.226927	2022-10-05 22:04:40.226927	1869
856	draba-verna	MONF-A-12-Box4-71	minus-80	2	C	2	A	4	\N	\N	2022-10-05 22:04:40.231915	2022-10-05 22:04:40.231915	1870
857	draba-verna	MONTI-B-01-Box4-72	minus-80	1	C	2	A	5	\N	\N	2022-10-05 22:04:40.23678	2022-10-05 22:04:40.23678	1237
858	draba-verna	MONTI-B-02-Box4-73	minus-80	2	C	2	A	6	\N	\N	2022-10-05 22:04:40.241623	2022-10-05 22:04:40.241623	1238
859	draba-verna	MONTI-B-03-Box4-74	minus-80	1	C	2	A	7	\N	\N	2022-10-05 22:04:40.247306	2022-10-05 22:04:40.247306	1239
860	draba-verna	MONTI-B-05-Box4-75	minus-80	2	C	2	A	9	\N	\N	2022-10-05 22:04:40.253076	2022-10-05 22:04:40.253076	1875
861	draba-verna	MONTI-B-06-Box4-76	minus-80	2	C	2	A	10	\N	\N	2022-10-05 22:04:40.264814	2022-10-05 22:04:40.264814	1241
862	draba-verna	MONTI-B-07-Box4-77	minus-80	1	C	2	A	11	\N	\N	2022-10-05 22:04:40.270449	2022-10-05 22:04:40.270449	1242
863	draba-verna	MONTM-A-02-Box4-78	minus-80	2	C	2	A	13	\N	\N	2022-10-05 22:04:40.280562	2022-10-05 22:04:40.280562	426
864	draba-verna	MONTM-A-04-Box4-79	minus-80	2	C	2	A	14	\N	\N	2022-10-05 22:04:40.286233	2022-10-05 22:04:40.286233	428
865	draba-verna	MONTM-A-05-Box4-80	minus-80	2	C	2	B	1	\N	\N	2022-10-05 22:04:40.291678	2022-10-05 22:04:40.291678	429
866	draba-verna	MONTM-A-09-Box4-81	minus-80	2	C	2	B	5	\N	\N	2022-10-05 22:04:40.298397	2022-10-05 22:04:40.298397	433
867	draba-verna	NAZA-A-03-Box4-82	minus-80	2	C	2	B	7	\N	\N	2022-10-05 22:04:40.303165	2022-10-05 22:04:40.303165	436
868	draba-verna	NAZA-A-05-Box4-83	minus-80	2	C	2	B	8	\N	\N	2022-10-05 22:04:40.308986	2022-10-05 22:04:40.308986	1257
869	draba-verna	NAZA-A-06-Box4-84	minus-80	2	C	2	B	9	\N	\N	2022-10-05 22:04:40.314927	2022-10-05 22:04:40.314927	438
870	draba-verna	NAZA-A-07-Box4-85	minus-80	2	C	2	B	10	\N	\N	2022-10-05 22:04:40.32006	2022-10-05 22:04:40.32006	1259
871	draba-verna	PUYM-B-08-Box4-86	minus-80	2	C	2	C	2	\N	\N	2022-10-05 22:04:40.325547	2022-10-05 22:04:40.325547	449
872	draba-verna	RAYR-A-01-Box4-87	minus-80	1	C	2	C	5	\N	\N	2022-10-05 22:04:40.331253	2022-10-05 22:04:40.331253	450
873	draba-verna	RAYR-A-02-Box4-88	minus-80	2	C	2	C	6	\N	\N	2022-10-05 22:04:40.336831	2022-10-05 22:04:40.336831	451
874	draba-verna	RAYR-A-05-Box4-89	minus-80	2	C	2	C	9	\N	\N	2022-10-05 22:04:40.34196	2022-10-05 22:04:40.34196	453
875	draba-verna	SALE-A-01-Box4-90	minus-80	2	C	2	D	1	\N	\N	2022-10-05 22:04:40.346863	2022-10-05 22:04:40.346863	470
876	draba-verna	SALV-A-05-Box4-91	minus-80	2	C	2	D	6	\N	\N	2022-10-05 22:04:40.35339	2022-10-05 22:04:40.35339	483
877	draba-verna	SALV-A-06-Box4-92	minus-80	2	C	2	D	7	\N	\N	2022-10-05 22:04:40.358012	2022-10-05 22:04:40.358012	1298
878	draba-verna	SALV-A-10-Box4-93	minus-80	1	C	2	D	10	\N	\N	2022-10-05 22:04:40.361679	2022-10-05 22:04:40.361679	1302
879	draba-verna	SAUB-B-02-Box4-94	minus-80	2	C	2	D	11	\N	\N	2022-10-05 22:04:40.366378	2022-10-05 22:04:40.366378	491
880	draba-verna	SAUB-B-03-Box4-95	minus-80	2	C	2	D	12	\N	\N	2022-10-05 22:04:40.370415	2022-10-05 22:04:40.370415	492
881	draba-verna	SAUB-B-04-Box4-96	minus-80	2	C	2	D	13	\N	\N	2022-10-05 22:04:40.375902	2022-10-05 22:04:40.375902	493
882	draba-verna	SAUB-B-05-Box4-97	minus-80	2	C	2	D	14	\N	\N	2022-10-05 22:04:40.379865	2022-10-05 22:04:40.379865	494
883	draba-verna	SAUB-B-06-Box4-98	minus-80	2	C	2	E	1	\N	\N	2022-10-05 22:04:40.38413	2022-10-05 22:04:40.38413	495
884	draba-verna	SAUB-B-07-Box4-99	minus-80	2	C	2	E	2	\N	\N	2022-10-05 22:04:40.38801	2022-10-05 22:04:40.38801	496
885	draba-verna	SAUB-B-08-Box4-100	minus-80	2	C	2	E	3	\N	\N	2022-10-05 22:04:40.393294	2022-10-05 22:04:40.393294	497
886	draba-verna	SAUB-B-09-Box5-1	minus-80	2	C	2	E	4	\N	\N	2022-10-05 22:04:40.397784	2022-10-05 22:04:40.397784	498
887	draba-verna	SAUB-B-11-Box5-2	minus-80	2	C	2	E	5	\N	\N	2022-10-05 22:04:40.401401	2022-10-05 22:04:40.401401	1941
888	draba-verna	SIMO-A-01-Box5-3	minus-80	1	C	2	E	6	\N	\N	2022-10-05 22:04:40.405036	2022-10-05 22:04:40.405036	1313
889	draba-verna	SIMO-A-02-Box5-4	minus-80	2	C	2	E	7	\N	\N	2022-10-05 22:04:40.410544	2022-10-05 22:04:40.410544	500
890	draba-verna	SIMO-A-04-Box5-5	minus-80	2	C	2	E	10	\N	\N	2022-10-05 22:04:40.415021	2022-10-05 22:04:40.415021	502
891	draba-verna	SIMO-A-05-Box5-6	minus-80	2	C	2	E	11	\N	\N	2022-10-05 22:04:40.418643	2022-10-05 22:04:40.418643	503
892	draba-verna	SIMO-A-06-Box5-7	minus-80	2	C	2	E	12	\N	\N	2022-10-05 22:04:40.422173	2022-10-05 22:04:40.422173	504
893	draba-verna	SIMO-A-07-Box5-8	minus-80	2	C	2	E	13	\N	\N	2022-10-05 22:04:40.426281	2022-10-05 22:04:40.426281	505
894	draba-verna	SIMO-A-08-Box5-9	minus-80	2	C	2	E	14	\N	\N	2022-10-05 22:04:40.430867	2022-10-05 22:04:40.430867	506
895	draba-verna	THOM-A-01-Box5-10	minus-80	2	C	2	F	1	\N	\N	2022-10-05 22:04:40.434606	2022-10-05 22:04:40.434606	509
896	draba-verna	THOM-A-04-Box5-11	minus-80	2	C	2	F	2	\N	\N	2022-10-05 22:04:40.438186	2022-10-05 22:04:40.438186	511
897	draba-verna	THOM-A-08-Box5-12	minus-80	2	C	2	F	4	\N	\N	2022-10-05 22:04:40.442241	2022-10-05 22:04:40.442241	514
898	draba-verna	THOM-A-12-Box5-13	minus-80	2	C	2	F	7	\N	\N	2022-10-05 22:04:40.446111	2022-10-05 22:04:40.446111	1960
899	draba-verna	VILLE-A-01-Box5-14	minus-80	2	C	2	F	8	\N	\N	2022-10-05 22:04:40.450753	2022-10-05 22:04:40.450753	546
900	draba-verna	VILLE-A-02-Box5-15	minus-80	2	C	2	F	9	\N	\N	2022-10-05 22:04:40.454988	2022-10-05 22:04:40.454988	547
901	draba-verna	VILLE-A-04-Box5-16	minus-80	2	C	2	F	11	\N	\N	2022-10-05 22:04:40.460721	2022-10-05 22:04:40.460721	549
902	draba-verna	VILLE-A-06-Box5-17	minus-80	2	C	2	F	12	\N	\N	2022-10-05 22:04:40.465814	2022-10-05 22:04:40.465814	551
903	draba-verna	VILLE-A-07-Box5-18	minus-80	2	C	2	F	13	\N	\N	2022-10-05 22:04:40.47027	2022-10-05 22:04:40.47027	552
904	draba-verna	VILLE-A-08-Box5-19	minus-80	1	C	2	F	14	\N	\N	2022-10-05 22:04:40.474877	2022-10-05 22:04:40.474877	553
905	draba-verna	VILLE-A-09-Box5-20	minus-80	2	C	2	G	1	\N	\N	2022-10-05 22:04:40.479288	2022-10-05 22:04:40.479288	554
906	draba-verna	VILLE-A-12-Box5-21	minus-80	2	C	2	G	2	\N	\N	2022-10-05 22:04:40.483205	2022-10-05 22:04:40.483205	1972
907	draba-verna	VILLE-B-03-Box5-22	minus-80	1	C	2	G	6	\N	\N	2022-10-05 22:04:40.487667	2022-10-05 22:04:40.487667	558
908	draba-verna	VILLE-B-05-Box5-23	minus-80	2	C	2	G	7	\N	\N	2022-10-05 22:04:40.49239	2022-10-05 22:04:40.49239	560
909	draba-verna	VILLE-B-10-Box5-24	minus-80	1	C	2	G	9	\N	\N	2022-10-05 22:04:40.496581	2022-10-05 22:04:40.496581	564
910	draba-verna	VILLE-B-11-Box5-25	minus-80	1	C	2	G	10	\N	\N	2022-10-05 22:04:40.500987	2022-10-05 22:04:40.500987	565
911	draba-verna	VILLE-C-02-Box5-26	minus-80	1	C	2	G	13	\N	\N	2022-10-05 22:04:40.504856	2022-10-05 22:04:40.504856	566
912	draba-verna	BELL-A-07-Box5-27	minus-80	1	D	2	A	2	\N	\N	2022-10-05 22:04:40.512059	2022-10-05 22:04:40.512059	62
913	draba-verna	BELL-A-11-Box5-28	minus-80	1	D	2	A	5	\N	\N	2022-10-05 22:04:40.516697	2022-10-05 22:04:40.516697	66
914	draba-verna	CASS-A-04-Box5-29	minus-80	2	D	2	A	9	\N	\N	2022-10-05 22:04:40.520247	2022-10-05 22:04:40.520247	103
915	draba-verna	CASS-A-05-Box5-30	minus-80	2	D	2	A	10	\N	\N	2022-10-05 22:04:40.524312	2022-10-05 22:04:40.524312	1391
916	draba-verna	CASS-A-06-Box5-31	minus-80	1	D	2	A	11	\N	\N	2022-10-05 22:04:40.530379	2022-10-05 22:04:40.530379	104
917	draba-verna	CASS-A-07-Box5-32	minus-80	2	D	2	A	12	\N	\N	2022-10-05 22:04:40.535623	2022-10-05 22:04:40.535623	105
918	draba-verna	CASS-A-09-Box5-33	minus-80	1	D	2	A	13	\N	\N	2022-10-05 22:04:40.540096	2022-10-05 22:04:40.540096	107
919	draba-verna	CINT-A-02-Box5-34	minus-80	2	D	2	A	14	\N	\N	2022-10-05 22:04:40.54488	2022-10-05 22:04:40.54488	146
920	draba-verna	CINT-A-03-Box5-35	minus-80	2	D	2	B	1	\N	\N	2022-10-05 22:04:40.549226	2022-10-05 22:04:40.549226	147
921	draba-verna	CINT-A-04-Box5-36	minus-80	2	D	2	B	2	\N	\N	2022-10-05 22:04:40.553535	2022-10-05 22:04:40.553535	1677
922	draba-verna	CINT-A-05-Box5-37	minus-80	2	D	2	B	3	\N	\N	2022-10-05 22:04:40.557909	2022-10-05 22:04:40.557909	148
923	draba-verna	CINT-A-06-Box5-38	minus-80	2	D	2	B	4	\N	\N	2022-10-05 22:04:40.562579	2022-10-05 22:04:40.562579	149
924	draba-verna	CINT-B-08-Box5-39	minus-80	1	D	2	B	13	\N	\N	2022-10-05 22:04:40.566769	2022-10-05 22:04:40.566769	161
925	draba-verna	CINT-B-09-Box5-40	minus-80	2	D	2	B	14	\N	\N	2022-10-05 22:04:40.571495	2022-10-05 22:04:40.571495	162
926	draba-verna	LANT-B-01-Box5-41	minus-80	1	D	2	C	2	\N	\N	2022-10-05 22:04:40.576558	2022-10-05 22:04:40.576558	1794
927	draba-verna	LANT-B-03-Box5-42	minus-80	2	D	2	C	3	\N	\N	2022-10-05 22:04:40.581399	2022-10-05 22:04:40.581399	1796
928	draba-verna	LANT-B-05-Box5-43	minus-80	1	D	2	C	5	\N	\N	2022-10-05 22:04:40.585434	2022-10-05 22:04:40.585434	1798
929	draba-verna	LANT-B-06-Box5-44	minus-80	2	D	2	C	6	\N	\N	2022-10-05 22:04:40.588966	2022-10-05 22:04:40.588966	1799
930	draba-verna	LANT-B-07-Box5-45	minus-80	2	D	2	C	7	\N	\N	2022-10-05 22:04:40.593212	2022-10-05 22:04:40.593212	1800
931	draba-verna	LANT-B-08-Box5-46	minus-80	2	D	2	C	8	\N	\N	2022-10-05 22:04:40.59789	2022-10-05 22:04:40.59789	1801
932	draba-verna	LANT-B-09-Box5-47	minus-80	2	D	2	C	9	\N	\N	2022-10-05 22:04:40.602046	2022-10-05 22:04:40.602046	1802
933	draba-verna	LANT-B-10-Box5-48	minus-80	2	D	2	C	10	\N	\N	2022-10-05 22:04:40.605542	2022-10-05 22:04:40.605542	1803
934	draba-verna	LANT-D-01-Box5-49	minus-80	1	D	2	C	11	\N	\N	2022-10-05 22:04:40.610128	2022-10-05 22:04:40.610128	303
935	draba-verna	LANT-D-05-Box5-50	minus-80	2	D	2	C	13	\N	\N	2022-10-05 22:04:40.614594	2022-10-05 22:04:40.614594	307
936	draba-verna	LAUZ-A-01-Box5-51	minus-80	1	D	2	D	3	\N	\N	2022-10-05 22:04:40.618564	2022-10-05 22:04:40.618564	1147
937	draba-verna	LAUZ-A-04-Box5-52	minus-80	2	D	2	D	5	\N	\N	2022-10-05 22:04:40.62217	2022-10-05 22:04:40.62217	1150
938	draba-verna	LAUZ-A-10-Box5-53	minus-80	2	D	2	D	10	\N	\N	2022-10-05 22:04:40.626166	2022-10-05 22:04:40.626166	1154
939	draba-verna	LECT-A-10-Box5-54	minus-80	2	D	2	D	12	\N	\N	2022-10-05 22:04:40.631886	2022-10-05 22:04:40.631886	321
940	draba-verna	LECT-A-11-Box5-55	minus-80	2	D	2	D	13	\N	\N	2022-10-05 22:04:40.635864	2022-10-05 22:04:40.635864	322
941	draba-verna	LECT-A-12-Box5-56	minus-80	2	D	2	D	14	\N	\N	2022-10-05 22:04:40.639998	2022-10-05 22:04:40.639998	323
942	draba-verna	LUNA-A-01-Box5-57	minus-80	2	D	2	E	1	\N	\N	2022-10-05 22:04:40.645345	2022-10-05 22:04:40.645345	334
943	draba-verna	LUNA-A-02-Box5-58	minus-80	2	D	2	E	2	\N	\N	2022-10-05 22:04:40.650528	2022-10-05 22:04:40.650528	335
944	draba-verna	LUNA-A-03-Box5-59	minus-80	2	D	2	E	3	\N	\N	2022-10-05 22:04:40.654292	2022-10-05 22:04:40.654292	336
945	draba-verna	LUNA-A-05-Box5-60	minus-80	2	D	2	E	4	\N	\N	2022-10-05 22:04:40.658316	2022-10-05 22:04:40.658316	337
946	draba-verna	LUNA-A-06-Box5-61	minus-80	2	D	2	E	5	\N	\N	2022-10-05 22:04:40.663833	2022-10-05 22:04:40.663833	338
947	draba-verna	LUNA-A-07-Box5-62	minus-80	2	D	2	E	6	\N	\N	2022-10-05 22:04:40.667668	2022-10-05 22:04:40.667668	339
948	draba-verna	LUNA-A-08-Box5-63	minus-80	2	D	2	E	7	\N	\N	2022-10-05 22:04:40.67161	2022-10-05 22:04:40.67161	340
949	draba-verna	LUNA-A-09-Box5-64	minus-80	2	D	2	E	8	\N	\N	2022-10-05 22:04:40.676735	2022-10-05 22:04:40.676735	341
950	draba-verna	LUNA-A-10-Box5-65	minus-80	2	D	2	E	9	\N	\N	2022-10-05 22:04:40.68161	2022-10-05 22:04:40.68161	342
951	draba-verna	LUNA-A-12-Box5-66	minus-80	2	D	2	E	10	\N	\N	2022-10-05 22:04:40.685824	2022-10-05 22:04:40.685824	1838
952	draba-verna	AMBR-A-05-P01-2	silica	2	A	3	A	1	\N	\N	2022-10-05 22:04:40.690219	2022-10-05 22:04:40.690219	5
953	draba-verna	AMBR-A-05-P02-2	silica	0	A	3	A	1	\N	\N	2022-10-05 22:04:40.696092	2022-10-05 22:04:40.696092	5
954	draba-verna	AMBR-A-11-P01-1	silica	2	A	1	A	2	\N	\N	2022-10-05 22:04:40.702913	2022-10-05 22:04:40.702913	1566
955	draba-verna	AMBR-A-11-P02-1	silica	0	A	3	A	2	\N	\N	2022-10-05 22:04:40.707925	2022-10-05 22:04:40.707925	1566
956	draba-verna	ANGE-A-01-P01-1	silica	2	A	1	A	3	\N	\N	2022-10-05 22:04:40.7127	2022-10-05 22:04:40.7127	11
957	draba-verna	ANGE-A-01-P02-1	silica	2	A	3	A	3	\N	\N	2022-10-05 22:04:40.71777	2022-10-05 22:04:40.71777	11
958	draba-verna	ANGE-A-02-P01-1	silica	2	A	1	A	4	\N	\N	2022-10-05 22:04:40.722164	2022-10-05 22:04:40.722164	12
959	draba-verna	ANGE-A-02-P02-1	silica	1	A	3	A	4	\N	\N	2022-10-05 22:04:40.72663	2022-10-05 22:04:40.72663	12
960	draba-verna	ANGE-A-03-P01-2	silica	2	A	3	A	5	\N	\N	2022-10-05 22:04:40.731693	2022-10-05 22:04:40.731693	13
961	draba-verna	ANGE-A-03-P02-2	silica	2	A	3	A	5	\N	\N	2022-10-05 22:04:40.736039	2022-10-05 22:04:40.736039	13
962	draba-verna	ANGE-A-04-P01-1	silica	2	A	1	A	6	\N	\N	2022-10-05 22:04:40.740173	2022-10-05 22:04:40.740173	14
963	draba-verna	ANGE-A-04-P02-1	silica	0	A	3	A	6	\N	\N	2022-10-05 22:04:40.744883	2022-10-05 22:04:40.744883	14
964	draba-verna	ANGE-A-05-P01-1	silica	2	A	1	A	7	\N	\N	2022-10-05 22:04:40.749471	2022-10-05 22:04:40.749471	898
965	draba-verna	ANGE-A-05-P02-1	silica	1	A	3	A	7	\N	\N	2022-10-05 22:04:40.753777	2022-10-05 22:04:40.753777	898
966	draba-verna	ANGE-A-06-P01-1	silica	2	A	1	A	8	\N	\N	2022-10-05 22:04:40.758497	2022-10-05 22:04:40.758497	15
967	draba-verna	ANGE-A-06-P02-1	silica	1	A	3	A	8	\N	\N	2022-10-05 22:04:40.763066	2022-10-05 22:04:40.763066	15
968	draba-verna	ANGE-A-07-P01-1	silica	2	A	1	A	9	\N	\N	2022-10-05 22:04:40.767767	2022-10-05 22:04:40.767767	900
969	draba-verna	ANGE-A-07-P02-1	silica	1	A	3	A	9	\N	\N	2022-10-05 22:04:40.77227	2022-10-05 22:04:40.77227	900
970	draba-verna	ANGE-A-08-P01-1	silica	2	A	1	A	10	\N	\N	2022-10-05 22:04:40.776847	2022-10-05 22:04:40.776847	901
971	draba-verna	ANGE-A-08-P02-1	silica	2	A	3	A	10	\N	\N	2022-10-05 22:04:40.783261	2022-10-05 22:04:40.783261	901
972	draba-verna	ANGE-B-01-P01-2	silica	2	A	3	A	11	\N	\N	2022-10-05 22:04:40.788028	2022-10-05 22:04:40.788028	904
973	draba-verna	ANGE-B-01-P02-2	silica	2	A	3	A	11	\N	\N	2022-10-05 22:04:40.79289	2022-10-05 22:04:40.79289	904
974	draba-verna	ANGE-B-02-P01-1	silica	2	A	2	A	12	\N	\N	2022-10-05 22:04:40.797869	2022-10-05 22:04:40.797869	19
975	draba-verna	ANGE-B-02-P02-1	silica	2	A	3	A	12	\N	\N	2022-10-05 22:04:40.802319	2022-10-05 22:04:40.802319	19
976	draba-verna	ANGE-B-03-P01-1	silica	2	A	2	B	1	\N	\N	2022-10-05 22:04:40.808538	2022-10-05 22:04:40.808538	906
977	draba-verna	ANGE-B-03-P02-1	silica	1	A	3	B	1	\N	\N	2022-10-05 22:04:40.813618	2022-10-05 22:04:40.813618	906
978	draba-verna	ANGE-B-04-P01-1	silica	2	A	2	B	2	\N	\N	2022-10-05 22:04:40.818016	2022-10-05 22:04:40.818016	20
979	draba-verna	ANGE-B-04-P02-1	silica	2	A	3	B	2	\N	\N	2022-10-05 22:04:40.822764	2022-10-05 22:04:40.822764	20
980	draba-verna	ANGE-B-05-P01-1	silica	2	A	2	B	3	\N	\N	2022-10-05 22:04:40.828389	2022-10-05 22:04:40.828389	21
981	draba-verna	ANGE-B-05-P02-1	silica	2	A	3	B	3	\N	\N	2022-10-05 22:04:40.836832	2022-10-05 22:04:40.836832	21
982	draba-verna	ANGE-B-08-P01-1	silica	2	A	1	B	4	\N	\N	2022-10-05 22:04:40.841179	2022-10-05 22:04:40.841179	23
983	draba-verna	ANGE-B-08-P02-1	silica	2	A	2	B	4	\N	\N	2022-10-05 22:04:40.846018	2022-10-05 22:04:40.846018	23
984	draba-verna	ANGE-B-09-P01-1	silica	2	A	2	B	5	\N	\N	2022-10-05 22:04:40.851117	2022-10-05 22:04:40.851117	24
985	draba-verna	ANGE-B-09-P02-1	silica	2	A	3	B	5	\N	\N	2022-10-05 22:04:40.856022	2022-10-05 22:04:40.856022	24
986	draba-verna	ANGE-B-10-P01-1	silica	2	A	1	B	6	\N	\N	2022-10-05 22:04:40.86031	2022-10-05 22:04:40.86031	25
987	draba-verna	ANGE-B-10-P02-1	silica	2	A	3	B	6	\N	\N	2022-10-05 22:04:40.865448	2022-10-05 22:04:40.865448	25
988	draba-verna	ANGE-B-11-P01-1	silica	2	A	1	B	7	\N	\N	2022-10-05 22:04:40.869549	2022-10-05 22:04:40.869549	26
989	draba-verna	ANGE-B-11-P02-1	silica	0	A	2	B	7	\N	\N	2022-10-05 22:04:40.873192	2022-10-05 22:04:40.873192	26
990	draba-verna	AUZE-A-05-P01-1	silica	2	A	1	B	8	\N	\N	2022-10-05 22:04:40.876941	2022-10-05 22:04:40.876941	31
991	draba-verna	AUZE-A-05-P02-1	silica	2	A	3	B	8	\N	\N	2022-10-05 22:04:40.881385	2022-10-05 22:04:40.881385	31
992	draba-verna	AUZE-A-08-P01-1	silica	2	A	2	B	9	\N	\N	2022-10-05 22:04:40.885616	2022-10-05 22:04:40.885616	34
993	draba-verna	AUZE-A-08-P02-1	silica	2	A	3	B	9	\N	\N	2022-10-05 22:04:40.88943	2022-10-05 22:04:40.88943	34
994	draba-verna	AUZE-A-09-P01-1	silica	2	A	2	B	10	\N	\N	2022-10-05 22:04:40.893539	2022-10-05 22:04:40.893539	35
995	draba-verna	AUZE-A-09-P02-1	silica	2	A	3	B	10	\N	\N	2022-10-05 22:04:40.898397	2022-10-05 22:04:40.898397	35
996	draba-verna	AUZE-A-11-P01-1	silica	2	A	1	B	11	\N	\N	2022-10-05 22:04:40.902648	2022-10-05 22:04:40.902648	1593
997	draba-verna	AUZE-A-11-P02-1	silica	2	A	2	B	11	\N	\N	2022-10-05 22:04:40.907571	2022-10-05 22:04:40.907571	1593
998	draba-verna	AUZE-A-12-P01-1	silica	2	A	1	B	12	\N	\N	2022-10-05 22:04:40.91164	2022-10-05 22:04:40.91164	1594
999	draba-verna	AUZE-A-12-P02-1	silica	1	A	3	B	12	\N	\N	2022-10-05 22:04:40.915736	2022-10-05 22:04:40.915736	1594
1000	draba-verna	AUZE-A-14-P01-1	silica	2	A	2	C	1	\N	\N	2022-10-05 22:04:40.919785	2022-10-05 22:04:40.919785	1595
1001	draba-verna	AUZE-A-14-P02-1	silica	0	A	3	C	1	\N	\N	2022-10-05 22:04:40.924367	2022-10-05 22:04:40.924367	1595
1002	draba-verna	BARA-C-01-P01-1	silica	2	A	1	C	2	\N	\N	2022-10-05 22:04:40.92828	2022-10-05 22:04:40.92828	1596
1003	draba-verna	BARA-C-01-P02-1	silica	2	A	3	C	2	\N	\N	2022-10-05 22:04:40.933559	2022-10-05 22:04:40.933559	1596
1004	draba-verna	BARA-C-02-P01-1	silica	2	A	1	C	3	\N	\N	2022-10-05 22:04:40.937734	2022-10-05 22:04:40.937734	37
1005	draba-verna	BARA-C-02-P02-1	silica	1	A	2	C	3	\N	\N	2022-10-05 22:04:40.942215	2022-10-05 22:04:40.942215	37
1006	draba-verna	BARA-C-03-P01-1	silica	2	A	2	C	4	\N	\N	2022-10-05 22:04:40.947626	2022-10-05 22:04:40.947626	38
1007	draba-verna	BARA-C-03-P02-1	silica	2	A	3	C	4	\N	\N	2022-10-05 22:04:40.952446	2022-10-05 22:04:40.952446	38
1008	draba-verna	BARA-C-04-P01-1	silica	2	A	1	C	5	\N	\N	2022-10-05 22:04:40.957388	2022-10-05 22:04:40.957388	39
1009	draba-verna	BARA-C-04-P02-1	silica	2	A	2	C	5	\N	\N	2022-10-05 22:04:40.962155	2022-10-05 22:04:40.962155	39
1010	draba-verna	BARA-C-05-P01-1	silica	2	A	1	C	6	\N	\N	2022-10-05 22:04:40.968152	2022-10-05 22:04:40.968152	40
1011	draba-verna	BARA-C-05-P02-1	silica	2	A	2	C	6	\N	\N	2022-10-05 22:04:40.972773	2022-10-05 22:04:40.972773	40
1012	draba-verna	BARA-C-06-P01-1	silica	2	A	1	C	7	\N	\N	2022-10-05 22:04:40.979487	2022-10-05 22:04:40.979487	1601
1013	draba-verna	BARA-C-06-P02-1	silica	2	A	2	C	7	\N	\N	2022-10-05 22:04:40.984169	2022-10-05 22:04:40.984169	1601
1014	draba-verna	BARA-C-07-P01-1	silica	2	A	1	C	8	\N	\N	2022-10-05 22:04:40.988671	2022-10-05 22:04:40.988671	1602
1015	draba-verna	BARA-C-07-P02-1	silica	1	A	3	C	8	\N	\N	2022-10-05 22:04:40.99486	2022-10-05 22:04:40.99486	1602
1016	draba-verna	BARA-C-08-P01-1	silica	2	A	2	C	9	\N	\N	2022-10-05 22:04:40.999673	2022-10-05 22:04:40.999673	41
1017	draba-verna	BARA-C-08-P02-1	silica	2	A	3	C	9	\N	\N	2022-10-05 22:04:41.003831	2022-10-05 22:04:41.003831	41
1018	draba-verna	BARA-C-10-P01-1	silica	2	A	1	C	10	\N	\N	2022-10-05 22:04:41.009547	2022-10-05 22:04:41.009547	1605
1019	draba-verna	BARA-C-10-P02-1	silica	2	A	3	C	10	\N	\N	2022-10-05 22:04:41.014346	2022-10-05 22:04:41.014346	1605
1020	draba-verna	BARA-C-11-P01-1	silica	2	A	1	C	11	\N	\N	2022-10-05 22:04:41.01835	2022-10-05 22:04:41.01835	1606
1021	draba-verna	BARA-C-11-P02-1	silica	2	A	2	C	11	\N	\N	2022-10-05 22:04:41.02223	2022-10-05 22:04:41.02223	1606
1022	draba-verna	BARR-A-01-P01-1	silica	2	A	1	C	12	\N	\N	2022-10-05 22:04:41.027621	2022-10-05 22:04:41.027621	46
1023	draba-verna	BARR-A-01-P02-1	silica	0	A	2	C	12	\N	\N	2022-10-05 22:04:41.03258	2022-10-05 22:04:41.03258	46
1024	draba-verna	BARR-A-05-P01-1	silica	2	A	1	D	1	\N	\N	2022-10-05 22:04:41.036711	2022-10-05 22:04:41.036711	50
1025	draba-verna	BARR-A-05-P02-1	silica	2	A	2	D	1	\N	\N	2022-10-05 22:04:41.042002	2022-10-05 22:04:41.042002	50
1026	draba-verna	BARR-A-07-P01-1	silica	2	A	1	D	2	\N	\N	2022-10-05 22:04:41.046991	2022-10-05 22:04:41.046991	52
1027	draba-verna	BARR-A-07-P02-1	silica	2	A	3	D	2	\N	\N	2022-10-05 22:04:41.051939	2022-10-05 22:04:41.051939	52
1028	draba-verna	BARR-A-09-P01-1	silica	2	A	1	D	3	\N	\N	2022-10-05 22:04:41.05617	2022-10-05 22:04:41.05617	54
1029	draba-verna	BARR-A-09-P02-1	silica	0	A	2	D	3	\N	\N	2022-10-05 22:04:41.062301	2022-10-05 22:04:41.062301	54
1030	draba-verna	BELL-A-02-P01-2	silica	2	A	1	D	4	\N	\N	2022-10-05 22:04:41.06788	2022-10-05 22:04:41.06788	57
1031	draba-verna	BELL-A-02-P02-2	silica	0	A	1	D	4	\N	\N	2022-10-05 22:04:41.071463	2022-10-05 22:04:41.071463	57
1032	draba-verna	BELL-A-03-P01-1	silica	2	A	2	D	5	\N	\N	2022-10-05 22:04:41.075833	2022-10-05 22:04:41.075833	58
1033	draba-verna	BELL-A-03-P02-1	silica	2	A	3	D	5	\N	\N	2022-10-05 22:04:41.080945	2022-10-05 22:04:41.080945	58
1034	draba-verna	BELL-A-04-P01-2	silica	2	A	3	D	6	\N	\N	2022-10-05 22:04:41.085247	2022-10-05 22:04:41.085247	59
1035	draba-verna	BELL-A-04-P02-2	silica	0	A	3	D	6	\N	\N	2022-10-05 22:04:41.089765	2022-10-05 22:04:41.089765	59
1036	draba-verna	BELL-A-05-P01-1	silica	2	A	2	D	7	\N	\N	2022-10-05 22:04:41.09459	2022-10-05 22:04:41.09459	60
1037	draba-verna	BELL-A-05-P02-1	silica	2	A	3	D	7	\N	\N	2022-10-05 22:04:41.09884	2022-10-05 22:04:41.09884	60
1038	draba-verna	BELL-A-07-P01-1	silica	0	A	1	D	8	\N	\N	2022-10-05 22:04:41.103255	2022-10-05 22:04:41.103255	62
1039	draba-verna	BELL-A-07-P02-1	silica	2	A	3	D	8	\N	\N	2022-10-05 22:04:41.106923	2022-10-05 22:04:41.106923	62
1040	draba-verna	BELL-A-09-P01-1	silica	1	A	2	D	9	\N	\N	2022-10-05 22:04:41.110815	2022-10-05 22:04:41.110815	64
1041	draba-verna	BELL-A-09-P02-1	silica	2	A	3	D	9	\N	\N	2022-10-05 22:04:41.115681	2022-10-05 22:04:41.115681	64
1042	draba-verna	BELL-A-11-P01-1	silica	1	A	1	D	10	\N	\N	2022-10-05 22:04:41.120002	2022-10-05 22:04:41.120002	66
1043	draba-verna	BELL-A-11-P02-1	silica	1	A	3	D	10	\N	\N	2022-10-05 22:04:41.124699	2022-10-05 22:04:41.124699	66
1044	draba-verna	CAMA-C-01-P01-1	silica	0	A	1	D	11	\N	\N	2022-10-05 22:04:41.128758	2022-10-05 22:04:41.128758	77
1045	draba-verna	CAMA-C-01-P02-1	silica	2	A	2	D	11	\N	\N	2022-10-05 22:04:41.133104	2022-10-05 22:04:41.133104	77
1046	draba-verna	CAMA-C-02-P01-1	silica	0	A	1	D	12	\N	\N	2022-10-05 22:04:41.136712	2022-10-05 22:04:41.136712	1626
1047	draba-verna	CAMA-C-02-P02-1	silica	2	A	3	D	12	\N	\N	2022-10-05 22:04:41.144485	2022-10-05 22:04:41.144485	1626
1048	draba-verna	CAMA-C-03-P01-1	silica	2	A	2	E	1	\N	\N	2022-10-05 22:04:41.150468	2022-10-05 22:04:41.150468	1627
1049	draba-verna	CAMA-C-03-P02-1	silica	2	A	3	E	1	\N	\N	2022-10-05 22:04:41.154554	2022-10-05 22:04:41.154554	1627
1050	draba-verna	CAMA-C-04-P01-1	silica	0	A	1	E	2	\N	\N	2022-10-05 22:04:41.159641	2022-10-05 22:04:41.159641	1628
1051	draba-verna	CAMA-C-04-P02-1	silica	2	A	2	E	2	\N	\N	2022-10-05 22:04:41.164745	2022-10-05 22:04:41.164745	1628
1052	draba-verna	CAMA-D-02-P01-1	silica	0	A	1	E	3	\N	\N	2022-10-05 22:04:41.169554	2022-10-05 22:04:41.169554	81
1053	draba-verna	CAMA-D-02-P02-1	silica	0	A	2	E	3	\N	\N	2022-10-05 22:04:41.174365	2022-10-05 22:04:41.174365	81
1054	draba-verna	CAMA-D-04-P01-1	silica	0	A	1	E	4	\N	\N	2022-10-05 22:04:41.180508	2022-10-05 22:04:41.180508	83
1055	draba-verna	CAMA-D-04-P02-1	silica	2	A	2	E	4	\N	\N	2022-10-05 22:04:41.18574	2022-10-05 22:04:41.18574	83
1056	draba-verna	CAMA-E-01-P01-1	silica	2	A	2	E	5	\N	\N	2022-10-05 22:04:41.190058	2022-10-05 22:04:41.190058	88
1057	draba-verna	CAMA-E-01-P02-1	silica	2	A	3	E	5	\N	\N	2022-10-05 22:04:41.194872	2022-10-05 22:04:41.194872	88
1058	draba-verna	CAMA-E-02-P01-1	silica	0	A	1	E	6	\N	\N	2022-10-05 22:04:41.199181	2022-10-05 22:04:41.199181	89
1059	draba-verna	CAMA-E-02-P02-1	silica	2	A	2	E	6	\N	\N	2022-10-05 22:04:41.20293	2022-10-05 22:04:41.20293	89
1060	draba-verna	CAMA-E-03-P01-1	silica	2	A	1	E	7	\N	\N	2022-10-05 22:04:41.206923	2022-10-05 22:04:41.206923	1634
1061	draba-verna	CAMA-E-03-P02-1	silica	2	A	2	E	7	\N	\N	2022-10-05 22:04:41.211729	2022-10-05 22:04:41.211729	1634
1062	draba-verna	CAMA-E-04-P01-1	silica	2	A	2	E	8	\N	\N	2022-10-05 22:04:41.216589	2022-10-05 22:04:41.216589	1635
1063	draba-verna	CAMA-E-04-P02-1	silica	2	A	3	E	8	\N	\N	2022-10-05 22:04:41.220721	2022-10-05 22:04:41.220721	1635
1064	draba-verna	CAMA-E-05-P01-1	silica	1	A	1	E	9	\N	\N	2022-10-05 22:04:41.225592	2022-10-05 22:04:41.225592	956
1065	draba-verna	CAMA-E-05-P02-1	silica	2	A	3	E	9	\N	\N	2022-10-05 22:04:41.230144	2022-10-05 22:04:41.230144	956
1066	draba-verna	CAMA-E-06-P01-1	silica	1	A	1	E	10	\N	\N	2022-10-05 22:04:41.234332	2022-10-05 22:04:41.234332	957
1067	draba-verna	CAMA-E-06-P02-1	silica	0	A	3	E	10	\N	\N	2022-10-05 22:04:41.237985	2022-10-05 22:04:41.237985	957
1068	draba-verna	CAMA-E-08-P01-1	silica	2	A	1	E	11	\N	\N	2022-10-05 22:04:41.242006	2022-10-05 22:04:41.242006	1638
1069	draba-verna	CAMA-E-08-P02-1	silica	2	A	2	E	11	\N	\N	2022-10-05 22:04:41.246202	2022-10-05 22:04:41.246202	1638
1070	draba-verna	CAMA-E-09-P01-1	silica	0	A	1	E	12	\N	\N	2022-10-05 22:04:41.25144	2022-10-05 22:04:41.25144	91
1071	draba-verna	CAMA-E-09-P02-1	silica	2	A	2	E	12	\N	\N	2022-10-05 22:04:41.256033	2022-10-05 22:04:41.256033	91
1072	draba-verna	CAMA-E-10-P01-1	silica	2	A	1	F	1	\N	\N	2022-10-05 22:04:41.260044	2022-10-05 22:04:41.260044	959
1073	draba-verna	CAMA-E-10-P02-1	silica	1	A	2	F	1	\N	\N	2022-10-05 22:04:41.26417	2022-10-05 22:04:41.26417	959
1074	draba-verna	CAMA-E-11-P01-1	silica	1	A	1	F	2	\N	\N	2022-10-05 22:04:41.268615	2022-10-05 22:04:41.268615	1641
1075	draba-verna	CAMA-E-11-P02-1	silica	2	A	3	F	2	\N	\N	2022-10-05 22:04:41.272628	2022-10-05 22:04:41.272628	1641
1076	draba-verna	CAMA-E-12-P01-1	silica	0	A	1	F	3	\N	\N	2022-10-05 22:04:41.277626	2022-10-05 22:04:41.277626	1642
1077	draba-verna	CAMA-E-12-P02-1	silica	2	A	2	F	3	\N	\N	2022-10-05 22:04:41.282096	2022-10-05 22:04:41.282096	1642
1078	draba-verna	CARL-A-01-P01-1	silica	2	A	1	F	4	\N	\N	2022-10-05 22:04:41.286119	2022-10-05 22:04:41.286119	92
1079	draba-verna	CARL-A-01-P02-1	silica	2	A	3	F	4	\N	\N	2022-10-05 22:04:41.290104	2022-10-05 22:04:41.290104	92
1080	draba-verna	CARL-A-02-P01-1	silica	0	A	1	F	5	\N	\N	2022-10-05 22:04:41.294479	2022-10-05 22:04:41.294479	93
1081	draba-verna	CARL-A-02-P02-1	silica	2	A	3	F	5	\N	\N	2022-10-05 22:04:41.298624	2022-10-05 22:04:41.298624	93
1082	draba-verna	CARL-A-03-P01-1	silica	0	A	2	F	6	\N	\N	2022-10-05 22:04:41.303291	2022-10-05 22:04:41.303291	94
1083	draba-verna	CARL-A-03-P02-1	silica	2	A	3	F	6	\N	\N	2022-10-05 22:04:41.308182	2022-10-05 22:04:41.308182	94
1084	draba-verna	CARL-A-04-P01-1	silica	2	A	2	F	7	\N	\N	2022-10-05 22:04:41.312485	2022-10-05 22:04:41.312485	95
1085	draba-verna	CARL-A-04-P02-1	silica	2	A	3	F	7	\N	\N	2022-10-05 22:04:41.316659	2022-10-05 22:04:41.316659	95
1086	draba-verna	CASS-A-02-P01-1	silica	2	A	2	F	8	\N	\N	2022-10-05 22:04:41.320719	2022-10-05 22:04:41.320719	971
1087	draba-verna	CASS-A-02-P02-1	silica	2	A	3	F	8	\N	\N	2022-10-05 22:04:41.325776	2022-10-05 22:04:41.325776	971
1088	draba-verna	CASS-A-03-P01-1	silica	2	A	2	F	9	\N	\N	2022-10-05 22:04:41.330184	2022-10-05 22:04:41.330184	102
1089	draba-verna	CASS-A-03-P02-1	silica	2	A	3	F	9	\N	\N	2022-10-05 22:04:41.33473	2022-10-05 22:04:41.33473	102
1090	draba-verna	CASS-A-04-P01-1	silica	2	A	2	F	10	\N	\N	2022-10-05 22:04:41.338545	2022-10-05 22:04:41.338545	103
1091	draba-verna	CASS-A-04-P02-1	silica	2	A	3	F	10	\N	\N	2022-10-05 22:04:41.342636	2022-10-05 22:04:41.342636	103
1092	draba-verna	CASS-A-05-P01-1	silica	1	A	2	F	11	\N	\N	2022-10-05 22:04:41.347047	2022-10-05 22:04:41.347047	1391
1093	draba-verna	CASS-A-05-P02-1	silica	2	A	3	F	11	\N	\N	2022-10-05 22:04:41.351478	2022-10-05 22:04:41.351478	1391
1094	draba-verna	CASS-A-06-P01-2	silica	1	A	2	F	12	\N	\N	2022-10-05 22:04:41.3561	2022-10-05 22:04:41.3561	104
1095	draba-verna	CASS-A-06-P02-2	silica	0	A	2	F	12	\N	\N	2022-10-05 22:04:41.360439	2022-10-05 22:04:41.360439	104
1096	draba-verna	CASS-A-07-P01-1	silica	2	A	2	G	1	\N	\N	2022-10-05 22:04:41.364803	2022-10-05 22:04:41.364803	105
1097	draba-verna	CASS-A-07-P02-1	silica	1	A	3	G	1	\N	\N	2022-10-05 22:04:41.368452	2022-10-05 22:04:41.368452	105
1098	draba-verna	CASS-A-09-P01-1	silica	2	A	2	G	2	\N	\N	2022-10-05 22:04:41.372099	2022-10-05 22:04:41.372099	107
1099	draba-verna	CASS-A-09-P02-1	silica	1	A	3	G	2	\N	\N	2022-10-05 22:04:41.37629	2022-10-05 22:04:41.37629	107
1100	draba-verna	CERN-A-01-P01-1	silica	2	A	1	G	3	\N	\N	2022-10-05 22:04:41.380936	2022-10-05 22:04:41.380936	121
1101	draba-verna	CERN-A-01-P02-1	silica	2	A	3	G	3	\N	\N	2022-10-05 22:04:41.385068	2022-10-05 22:04:41.385068	121
1102	draba-verna	CERN-A-03-P01-1	silica	2	A	2	G	4	\N	\N	2022-10-05 22:04:41.389077	2022-10-05 22:04:41.389077	123
1103	draba-verna	CERN-A-03-P02-1	silica	2	A	3	G	4	\N	\N	2022-10-05 22:04:41.393191	2022-10-05 22:04:41.393191	123
1104	draba-verna	CERN-A-04-P01-1	silica	2	A	1	G	5	\N	\N	2022-10-05 22:04:41.397556	2022-10-05 22:04:41.397556	1392
1105	draba-verna	CERN-A-04-P02-1	silica	2	A	2	G	5	\N	\N	2022-10-05 22:04:41.401338	2022-10-05 22:04:41.401338	1392
1106	draba-verna	CERN-B-01-P01-1	silica	2	A	3	G	6	\N	\N	2022-10-05 22:04:41.405018	2022-10-05 22:04:41.405018	126
1107	draba-verna	CERN-B-01-Placeholder-NA	silica	2	A	\N	\N	\N	\N	\N	2022-10-05 22:04:41.40922	2022-10-05 22:04:41.40922	126
1108	draba-verna	CERN-B-02-P01-1	silica	2	A	1	G	7	\N	\N	2022-10-05 22:04:41.413587	2022-10-05 22:04:41.413587	127
1109	draba-verna	CERN-B-02-P02-1	silica	2	A	3	G	7	\N	\N	2022-10-05 22:04:41.418578	2022-10-05 22:04:41.418578	127
1110	draba-verna	CERN-B-03-P01-1	silica	2	A	1	G	8	\N	\N	2022-10-05 22:04:41.423053	2022-10-05 22:04:41.423053	991
1111	draba-verna	CERN-B-03-P02-1	silica	2	A	2	G	8	\N	\N	2022-10-05 22:04:41.428445	2022-10-05 22:04:41.428445	991
1112	draba-verna	CERN-B-04-P01-1	silica	2	A	2	G	9	\N	\N	2022-10-05 22:04:41.433986	2022-10-05 22:04:41.433986	128
1113	draba-verna	CERN-B-04-P02-1	silica	2	A	3	G	9	\N	\N	2022-10-05 22:04:41.438418	2022-10-05 22:04:41.438418	128
1114	draba-verna	CERN-B-05-P01-1	silica	2	A	2	G	10	\N	\N	2022-10-05 22:04:41.443435	2022-10-05 22:04:41.443435	129
1115	draba-verna	CERN-B-05-P02-1	silica	2	A	3	G	10	\N	\N	2022-10-05 22:04:41.449224	2022-10-05 22:04:41.449224	129
1116	draba-verna	CERN-B-06-P01-1	silica	2	A	2	G	11	\N	\N	2022-10-05 22:04:41.454141	2022-10-05 22:04:41.454141	130
1117	draba-verna	CERN-B-06-P02-1	silica	2	A	3	G	11	\N	\N	2022-10-05 22:04:41.459196	2022-10-05 22:04:41.459196	130
1118	draba-verna	CERN-B-07-P01-1	silica	2	A	2	G	12	\N	\N	2022-10-05 22:04:41.463258	2022-10-05 22:04:41.463258	131
1119	draba-verna	CERN-B-07-P02-1	silica	2	A	3	G	12	\N	\N	2022-10-05 22:04:41.467833	2022-10-05 22:04:41.467833	131
1120	draba-verna	CERN-B-08-P01-1	silica	2	A	2	H	1	\N	\N	2022-10-05 22:04:41.472254	2022-10-05 22:04:41.472254	132
1121	draba-verna	CERN-B-08-P02-1	silica	2	A	3	H	1	\N	\N	2022-10-05 22:04:41.483915	2022-10-05 22:04:41.483915	132
1122	draba-verna	CERN-B-09-P01-1	silica	2	A	2	H	2	\N	\N	2022-10-05 22:04:41.487479	2022-10-05 22:04:41.487479	1661
1123	draba-verna	CERN-B-09-P02-1	silica	2	A	3	H	2	\N	\N	2022-10-05 22:04:41.491734	2022-10-05 22:04:41.491734	1661
1124	draba-verna	CERN-B-10-P01-1	silica	2	A	2	H	3	\N	\N	2022-10-05 22:04:41.495683	2022-10-05 22:04:41.495683	133
1125	draba-verna	CERN-B-10-P02-1	silica	2	A	3	H	3	\N	\N	2022-10-05 22:04:41.500397	2022-10-05 22:04:41.500397	133
1126	draba-verna	CERN-B-11-P01-1	silica	2	A	2	H	4	\N	\N	2022-10-05 22:04:41.505035	2022-10-05 22:04:41.505035	134
1127	draba-verna	CERN-B-11-P02-1	silica	2	A	3	H	4	\N	\N	2022-10-05 22:04:41.509675	2022-10-05 22:04:41.509675	134
1128	draba-verna	CIER-A-01-P01-1	silica	2	A	1	H	5	\N	\N	2022-10-05 22:04:41.51386	2022-10-05 22:04:41.51386	997
1129	draba-verna	CIER-A-01-P02-1	silica	1	A	3	H	5	\N	\N	2022-10-05 22:04:41.518206	2022-10-05 22:04:41.518206	997
1130	draba-verna	CIER-A-02-P01-1	silica	2	A	2	H	6	\N	\N	2022-10-05 22:04:41.522465	2022-10-05 22:04:41.522465	136
1131	draba-verna	CIER-A-02-P02-1	silica	1	A	3	H	6	\N	\N	2022-10-05 22:04:41.527546	2022-10-05 22:04:41.527546	136
1132	draba-verna	CIER-A-03-P01-1	silica	2	A	2	H	7	\N	\N	2022-10-05 22:04:41.532236	2022-10-05 22:04:41.532236	137
1133	draba-verna	CIER-A-03-P02-1	silica	0	A	3	H	7	\N	\N	2022-10-05 22:04:41.536874	2022-10-05 22:04:41.536874	137
1134	draba-verna	CIER-A-04-P01-1	silica	0	A	2	H	8	\N	\N	2022-10-05 22:04:41.541632	2022-10-05 22:04:41.541632	138
1135	draba-verna	CIER-A-04-P02-1	silica	0	A	3	H	8	\N	\N	2022-10-05 22:04:41.547382	2022-10-05 22:04:41.547382	138
1136	draba-verna	CIER-A-05-P01-1	silica	2	A	1	H	9	\N	\N	2022-10-05 22:04:41.552978	2022-10-05 22:04:41.552978	1001
1137	draba-verna	CIER-A-05-P02-1	silica	0	A	3	H	9	\N	\N	2022-10-05 22:04:41.564649	2022-10-05 22:04:41.564649	1001
1138	draba-verna	CIER-A-06-P01-1	silica	2	A	2	H	10	\N	\N	2022-10-05 22:04:41.569147	2022-10-05 22:04:41.569147	139
1139	draba-verna	CIER-A-06-P02-1	silica	0	A	3	H	10	\N	\N	2022-10-05 22:04:41.573141	2022-10-05 22:04:41.573141	139
1140	draba-verna	CIER-A-07-P03-1	silica	2	B	1	A	1	\N	\N	2022-10-05 22:04:41.577692	2022-10-05 22:04:41.577692	1003
1141	draba-verna	CIER-A-07-P04-1	silica	1	B	2	A	1	\N	\N	2022-10-05 22:04:41.582686	2022-10-05 22:04:41.582686	1003
1142	draba-verna	CIER-A-08-P03-2	silica	0	B	1	A	2	\N	\N	2022-10-05 22:04:41.588242	2022-10-05 22:04:41.588242	1004
1143	draba-verna	CIER-A-08-P04-2	silica	0	B	1	A	2	\N	\N	2022-10-05 22:04:41.592967	2022-10-05 22:04:41.592967	1004
1144	draba-verna	CIER-A-09-P03-1	silica	2	B	1	A	3	\N	\N	2022-10-05 22:04:41.597302	2022-10-05 22:04:41.597302	140
1145	draba-verna	CIER-A-09-P04-1	silica	0	B	2	A	3	\N	\N	2022-10-05 22:04:41.601542	2022-10-05 22:04:41.601542	140
1146	draba-verna	CIER-A-10-P03-1	silica	2	B	1	A	4	\N	\N	2022-10-05 22:04:41.605017	2022-10-05 22:04:41.605017	141
1147	draba-verna	CIER-A-10-P04-1	silica	0	B	3	A	4	\N	\N	2022-10-05 22:04:41.608781	2022-10-05 22:04:41.608781	141
1148	draba-verna	CIER-A-11-P03-1	silica	0	B	1	A	5	\N	\N	2022-10-05 22:04:41.612487	2022-10-05 22:04:41.612487	142
1149	draba-verna	CIER-A-11-Placeholder-NA	silica	2	B	\N	\N	\N	\N	\N	2022-10-05 22:04:41.616169	2022-10-05 22:04:41.616169	142
1150	draba-verna	CINT-A-02-P03-1	silica	2	B	1	A	6	\N	\N	2022-10-05 22:04:41.619808	2022-10-05 22:04:41.619808	146
1151	draba-verna	CINT-A-02-P04-1	silica	2	B	2	A	6	\N	\N	2022-10-05 22:04:41.623348	2022-10-05 22:04:41.623348	146
1152	draba-verna	CINT-A-03-P03-1	silica	2	B	2	A	7	\N	\N	2022-10-05 22:04:41.627231	2022-10-05 22:04:41.627231	147
1153	draba-verna	CINT-A-03-P04-1	silica	2	B	3	A	7	\N	\N	2022-10-05 22:04:41.631219	2022-10-05 22:04:41.631219	147
1154	draba-verna	CINT-A-04-P03-1	silica	2	B	1	A	8	\N	\N	2022-10-05 22:04:41.635086	2022-10-05 22:04:41.635086	1677
1155	draba-verna	CINT-A-04-P04-1	silica	2	B	2	A	8	\N	\N	2022-10-05 22:04:41.638642	2022-10-05 22:04:41.638642	1677
1156	draba-verna	CINT-A-05-P03-1	silica	2	B	1	A	9	\N	\N	2022-10-05 22:04:41.64376	2022-10-05 22:04:41.64376	148
1157	draba-verna	CINT-A-05-P04-1	silica	2	B	2	A	9	\N	\N	2022-10-05 22:04:41.648504	2022-10-05 22:04:41.648504	148
1158	draba-verna	CINT-A-06-P03-1	silica	2	B	1	A	10	\N	\N	2022-10-05 22:04:41.652148	2022-10-05 22:04:41.652148	149
1159	draba-verna	CINT-A-06-P04-1	silica	2	B	2	A	10	\N	\N	2022-10-05 22:04:41.655993	2022-10-05 22:04:41.655993	149
1160	draba-verna	CINT-A-07-P03-1	silica	1	B	3	A	11	\N	\N	2022-10-05 22:04:41.661401	2022-10-05 22:04:41.661401	1680
1161	draba-verna	CINT-A-07-Placeholder-NA	silica	2	B	\N	\N	\N	\N	\N	2022-10-05 22:04:41.667125	2022-10-05 22:04:41.667125	1680
1162	draba-verna	CINT-A-08-P03-1	silica	2	B	1	A	12	\N	\N	2022-10-05 22:04:41.671239	2022-10-05 22:04:41.671239	150
1163	draba-verna	CINT-A-08-P04-1	silica	2	B	2	A	12	\N	\N	2022-10-05 22:04:41.67512	2022-10-05 22:04:41.67512	150
1164	draba-verna	CINT-A-09-P03-1	silica	1	B	1	B	1	\N	\N	2022-10-05 22:04:41.680126	2022-10-05 22:04:41.680126	151
1165	draba-verna	CINT-A-09-P04-1	silica	2	B	2	B	1	\N	\N	2022-10-05 22:04:41.684138	2022-10-05 22:04:41.684138	151
1166	draba-verna	CINT-A-10-P03-1	silica	2	B	1	B	2	\N	\N	2022-10-05 22:04:41.687633	2022-10-05 22:04:41.687633	152
1167	draba-verna	CINT-A-10-P04-1	silica	2	B	2	B	2	\N	\N	2022-10-05 22:04:41.691444	2022-10-05 22:04:41.691444	152
1168	draba-verna	CINT-A-11-P03-1	silica	2	B	1	B	3	\N	\N	2022-10-05 22:04:41.695588	2022-10-05 22:04:41.695588	153
1169	draba-verna	CINT-A-11-P04-1	silica	2	B	2	B	3	\N	\N	2022-10-05 22:04:41.699583	2022-10-05 22:04:41.699583	153
1170	draba-verna	CINT-B-02-P03-1	silica	2	B	1	B	4	\N	\N	2022-10-05 22:04:41.703393	2022-10-05 22:04:41.703393	155
1171	draba-verna	CINT-B-02-P04-1	silica	2	B	2	B	4	\N	\N	2022-10-05 22:04:41.707443	2022-10-05 22:04:41.707443	155
1172	draba-verna	CINT-B-03-P03-1	silica	0	B	1	B	5	\N	\N	2022-10-05 22:04:41.711784	2022-10-05 22:04:41.711784	156
1173	draba-verna	CINT-B-03-P04-1	silica	2	B	3	B	5	\N	\N	2022-10-05 22:04:41.716655	2022-10-05 22:04:41.716655	156
1174	draba-verna	CINT-B-06-P03-1	silica	2	B	1	B	6	\N	\N	2022-10-05 22:04:41.72106	2022-10-05 22:04:41.72106	159
1175	draba-verna	CINT-B-06-P04-1	silica	2	B	2	B	6	\N	\N	2022-10-05 22:04:41.725199	2022-10-05 22:04:41.725199	159
1176	draba-verna	CINT-B-07-P03-1	silica	2	B	1	B	7	\N	\N	2022-10-05 22:04:41.729246	2022-10-05 22:04:41.729246	160
1177	draba-verna	CINT-B-07-P04-1	silica	2	B	2	B	7	\N	\N	2022-10-05 22:04:41.734794	2022-10-05 22:04:41.734794	160
1178	draba-verna	CINT-B-08-P03-1	silica	1	B	1	B	8	\N	\N	2022-10-05 22:04:41.739152	2022-10-05 22:04:41.739152	161
1179	draba-verna	CINT-B-08-P04-1	silica	2	B	3	B	8	\N	\N	2022-10-05 22:04:41.744046	2022-10-05 22:04:41.744046	161
1180	draba-verna	CINT-B-09-P03-1	silica	2	B	1	B	9	\N	\N	2022-10-05 22:04:41.748805	2022-10-05 22:04:41.748805	162
1181	draba-verna	CINT-B-09-P04-1	silica	2	B	2	B	9	\N	\N	2022-10-05 22:04:41.754316	2022-10-05 22:04:41.754316	162
1182	draba-verna	CINT-B-10-P03-1	silica	2	B	1	B	10	\N	\N	2022-10-05 22:04:41.758849	2022-10-05 22:04:41.758849	163
1183	draba-verna	CINT-B-10-P04-1	silica	2	B	2	B	10	\N	\N	2022-10-05 22:04:41.762598	2022-10-05 22:04:41.762598	163
1184	draba-verna	CINT-B-11-P03-1	silica	2	B	1	B	11	\N	\N	2022-10-05 22:04:41.767778	2022-10-05 22:04:41.767778	1690
1185	draba-verna	CINT-B-11-P04-1	silica	2	B	2	B	11	\N	\N	2022-10-05 22:04:41.771883	2022-10-05 22:04:41.771883	1690
1186	draba-verna	CLAR-B-01-P03-1	silica	1	B	1	B	12	\N	\N	2022-10-05 22:04:41.77672	2022-10-05 22:04:41.77672	164
1187	draba-verna	CLAR-B-01-P04-1	silica	2	B	3	B	12	\N	\N	2022-10-05 22:04:41.782008	2022-10-05 22:04:41.782008	164
1188	draba-verna	CLAR-B-03-P03-1	silica	1	B	1	C	1	\N	\N	2022-10-05 22:04:41.785781	2022-10-05 22:04:41.785781	166
1189	draba-verna	CLAR-B-03-P04-1	silica	2	B	3	C	1	\N	\N	2022-10-05 22:04:41.789554	2022-10-05 22:04:41.789554	166
1190	draba-verna	CLAR-B-04-P03-1	silica	2	B	1	C	2	\N	\N	2022-10-05 22:04:41.806198	2022-10-05 22:04:41.806198	167
1191	draba-verna	CLAR-B-04-P04-1	silica	2	B	2	C	2	\N	\N	2022-10-05 22:04:41.811187	2022-10-05 22:04:41.811187	167
1192	draba-verna	CLAR-B-05-P03-1	silica	1	B	1	C	3	\N	\N	2022-10-05 22:04:41.81553	2022-10-05 22:04:41.81553	168
1193	draba-verna	CLAR-B-05-P04-1	silica	2	B	2	C	3	\N	\N	2022-10-05 22:04:41.819197	2022-10-05 22:04:41.819197	168
1194	draba-verna	CLAR-B-06-P03-1	silica	2	B	1	C	4	\N	\N	2022-10-05 22:04:41.823117	2022-10-05 22:04:41.823117	169
1195	draba-verna	CLAR-B-06-P04-1	silica	2	B	2	C	4	\N	\N	2022-10-05 22:04:41.82734	2022-10-05 22:04:41.82734	169
1196	draba-verna	CLAR-C-01-P03-1	silica	2	B	1	C	5	\N	\N	2022-10-05 22:04:41.83132	2022-10-05 22:04:41.83132	173
1197	draba-verna	CLAR-C-01-P04-1	silica	2	B	2	C	5	\N	\N	2022-10-05 22:04:41.836198	2022-10-05 22:04:41.836198	173
1198	draba-verna	CLAR-C-02-P03-1	silica	2	B	1	C	6	\N	\N	2022-10-05 22:04:41.840526	2022-10-05 22:04:41.840526	174
1199	draba-verna	CLAR-C-02-P04-1	silica	2	B	2	C	6	\N	\N	2022-10-05 22:04:41.845052	2022-10-05 22:04:41.845052	174
1200	draba-verna	CLAR-C-04-P03-1	silica	1	B	1	C	7	\N	\N	2022-10-05 22:04:41.849992	2022-10-05 22:04:41.849992	176
1201	draba-verna	CLAR-C-04-P04-1	silica	2	B	2	C	7	\N	\N	2022-10-05 22:04:41.855687	2022-10-05 22:04:41.855687	176
1202	draba-verna	CLAR-C-08-P03-1	silica	1	B	1	C	8	\N	\N	2022-10-05 22:04:41.860199	2022-10-05 22:04:41.860199	180
1203	draba-verna	CLAR-C-08-P04-1	silica	2	B	2	C	8	\N	\N	2022-10-05 22:04:41.865353	2022-10-05 22:04:41.865353	180
1204	draba-verna	COLO-B-01-P03-1	silica	2	B	1	C	9	\N	\N	2022-10-05 22:04:41.873073	2022-10-05 22:04:41.873073	183
1205	draba-verna	COLO-B-01-P04-1	silica	2	B	2	C	9	\N	\N	2022-10-05 22:04:41.87791	2022-10-05 22:04:41.87791	183
1206	draba-verna	COLO-B-02-P03-1	silica	2	B	1	C	10	\N	\N	2022-10-05 22:04:41.882034	2022-10-05 22:04:41.882034	184
1207	draba-verna	COLO-B-02-P04-1	silica	2	B	2	C	10	\N	\N	2022-10-05 22:04:41.885702	2022-10-05 22:04:41.885702	184
1208	draba-verna	COLO-B-04-P03-1	silica	2	B	1	C	11	\N	\N	2022-10-05 22:04:41.889474	2022-10-05 22:04:41.889474	186
1209	draba-verna	COLO-B-04-P04-1	silica	2	B	3	C	11	\N	\N	2022-10-05 22:04:41.897222	2022-10-05 22:04:41.897222	186
1210	draba-verna	COLO-B-05-P03-1	silica	2	B	1	C	12	\N	\N	2022-10-05 22:04:41.901726	2022-10-05 22:04:41.901726	1377
1211	draba-verna	COLO-B-05-P04-1	silica	2	B	2	C	12	\N	\N	2022-10-05 22:04:41.906082	2022-10-05 22:04:41.906082	1377
1212	draba-verna	DAMI-C-04-P03-1	silica	2	B	1	D	1	\N	\N	2022-10-05 22:04:41.911764	2022-10-05 22:04:41.911764	1707
1213	draba-verna	DAMI-C-04-P04-1	silica	2	B	2	D	1	\N	\N	2022-10-05 22:04:41.916322	2022-10-05 22:04:41.916322	1707
1214	draba-verna	DAMI-C-05-P03-1	silica	2	B	1	D	2	\N	\N	2022-10-05 22:04:41.921053	2022-10-05 22:04:41.921053	1708
1215	draba-verna	DAMI-C-05-P04-1	silica	1	B	2	D	2	\N	\N	2022-10-05 22:04:41.927202	2022-10-05 22:04:41.927202	1708
1216	draba-verna	DECA-A-01-P03-1	silica	1	B	1	D	3	\N	\N	2022-10-05 22:04:41.93283	2022-10-05 22:04:41.93283	191
1217	draba-verna	DECA-A-01-P04-1	silica	1	B	2	D	3	\N	\N	2022-10-05 22:04:41.936526	2022-10-05 22:04:41.936526	191
1218	draba-verna	DECA-A-02-P03-1	silica	2	B	1	D	4	\N	\N	2022-10-05 22:04:41.942108	2022-10-05 22:04:41.942108	1044
1219	draba-verna	DECA-A-02-P04-1	silica	2	B	2	D	4	\N	\N	2022-10-05 22:04:41.946462	2022-10-05 22:04:41.946462	1044
1220	draba-verna	DECA-A-03-P03-1	silica	2	B	1	D	5	\N	\N	2022-10-05 22:04:41.950167	2022-10-05 22:04:41.950167	192
1221	draba-verna	DECA-A-03-P04-1	silica	2	B	2	D	5	\N	\N	2022-10-05 22:04:41.95444	2022-10-05 22:04:41.95444	192
1222	draba-verna	DECA-A-04-P03-1	silica	1	B	1	D	6	\N	\N	2022-10-05 22:04:41.959026	2022-10-05 22:04:41.959026	193
1223	draba-verna	DECA-A-04-P04-1	silica	2	B	2	D	6	\N	\N	2022-10-05 22:04:41.963605	2022-10-05 22:04:41.963605	193
1224	draba-verna	DECA-A-05-P03-1	silica	1	B	1	D	7	\N	\N	2022-10-05 22:04:41.967809	2022-10-05 22:04:41.967809	194
1225	draba-verna	DECA-A-05-P04-1	silica	2	B	2	D	7	\N	\N	2022-10-05 22:04:41.971349	2022-10-05 22:04:41.971349	194
1226	draba-verna	DECA-A-06-P03-1	silica	2	B	1	D	8	\N	\N	2022-10-05 22:04:41.975137	2022-10-05 22:04:41.975137	195
1227	draba-verna	DECA-A-06-P04-1	silica	2	B	2	D	8	\N	\N	2022-10-05 22:04:41.980548	2022-10-05 22:04:41.980548	195
1228	draba-verna	DECA-A-07-P03-1	silica	2	B	1	D	9	\N	\N	2022-10-05 22:04:41.985169	2022-10-05 22:04:41.985169	196
1229	draba-verna	DECA-A-07-P04-1	silica	2	B	2	D	9	\N	\N	2022-10-05 22:04:41.989341	2022-10-05 22:04:41.989341	196
1230	draba-verna	DECA-A-08-P03-1	silica	2	B	1	D	10	\N	\N	2022-10-05 22:04:41.994446	2022-10-05 22:04:41.994446	197
1231	draba-verna	DECA-A-08-P04-1	silica	2	B	2	D	10	\N	\N	2022-10-05 22:04:41.998791	2022-10-05 22:04:41.998791	197
1232	draba-verna	DECA-A-09-P03-1	silica	2	B	1	D	11	\N	\N	2022-10-05 22:04:42.002536	2022-10-05 22:04:42.002536	198
1233	draba-verna	DECA-A-09-P04-1	silica	2	B	2	D	11	\N	\N	2022-10-05 22:04:42.006218	2022-10-05 22:04:42.006218	198
1234	draba-verna	DECA-A-10-P03-1	silica	1	B	1	D	12	\N	\N	2022-10-05 22:04:42.011013	2022-10-05 22:04:42.011013	199
1235	draba-verna	DECA-A-10-P04-1	silica	2	B	2	D	12	\N	\N	2022-10-05 22:04:42.015357	2022-10-05 22:04:42.015357	199
1236	draba-verna	DECA-A-11-P03-1	silica	2	B	1	E	1	\N	\N	2022-10-05 22:04:42.018998	2022-10-05 22:04:42.018998	200
1237	draba-verna	DECA-A-11-P04-1	silica	2	B	2	E	1	\N	\N	2022-10-05 22:04:42.023613	2022-10-05 22:04:42.023613	200
1238	draba-verna	DECA-A-12-P03-1	silica	2	B	1	E	2	\N	\N	2022-10-05 22:04:42.028128	2022-10-05 22:04:42.028128	1720
1239	draba-verna	DECA-A-12-P04-1	silica	2	B	2	E	2	\N	\N	2022-10-05 22:04:42.032128	2022-10-05 22:04:42.032128	1720
1240	draba-verna	ESPE-B-02-P03-1	silica	1	B	2	E	3	\N	\N	2022-10-05 22:04:42.03589	2022-10-05 22:04:42.03589	202
1241	draba-verna	ESPE-B-02-Placeholder-NA	silica	2	B	\N	\N	\N	\N	\N	2022-10-05 22:04:42.040086	2022-10-05 22:04:42.040086	202
1242	draba-verna	ESPE-B-06-P03-1	silica	0	B	2	E	4	\N	\N	2022-10-05 22:04:42.044381	2022-10-05 22:04:42.044381	1057
1243	draba-verna	ESPE-B-06-P04-1	silica	2	B	3	E	4	\N	\N	2022-10-05 22:04:42.048548	2022-10-05 22:04:42.048548	1057
1244	draba-verna	ESPE-B-07-P03-2	silica	0	B	1	E	5	\N	\N	2022-10-05 22:04:42.052448	2022-10-05 22:04:42.052448	205
1245	draba-verna	ESPE-B-07-P04-2	silica	2	B	1	E	5	\N	\N	2022-10-05 22:04:42.056502	2022-10-05 22:04:42.056502	205
1246	draba-verna	ESPE-B-10-P03-1	silica	1	B	2	E	6	\N	\N	2022-10-05 22:04:42.06178	2022-10-05 22:04:42.06178	208
1247	draba-verna	ESPE-B-10-P04-1	silica	1	B	3	E	6	\N	\N	2022-10-05 22:04:42.065717	2022-10-05 22:04:42.065717	208
1248	draba-verna	FERR-A-01-P03-1	silica	1	B	2	E	7	\N	\N	2022-10-05 22:04:42.06959	2022-10-05 22:04:42.06959	211
1249	draba-verna	FERR-A-01-P04-1	silica	2	B	3	E	7	\N	\N	2022-10-05 22:04:42.075507	2022-10-05 22:04:42.075507	211
1250	draba-verna	FERR-A-02-P03-1	silica	2	B	1	E	8	\N	\N	2022-10-05 22:04:42.080194	2022-10-05 22:04:42.080194	212
1251	draba-verna	FERR-A-02-P04-1	silica	2	B	3	E	8	\N	\N	2022-10-05 22:04:42.084664	2022-10-05 22:04:42.084664	212
1252	draba-verna	FERR-A-03-P03-1	silica	2	B	1	E	9	\N	\N	2022-10-05 22:04:42.088391	2022-10-05 22:04:42.088391	213
1253	draba-verna	FERR-A-03-P04-1	silica	2	B	2	E	9	\N	\N	2022-10-05 22:04:42.092376	2022-10-05 22:04:42.092376	213
1254	draba-verna	FERR-A-04-P03-1	silica	2	B	2	E	10	\N	\N	2022-10-05 22:04:42.096823	2022-10-05 22:04:42.096823	214
1255	draba-verna	FERR-A-04-P04-1	silica	2	B	3	E	10	\N	\N	2022-10-05 22:04:42.100807	2022-10-05 22:04:42.100807	214
1256	draba-verna	GAIL-A-01-P03-1	silica	2	B	1	E	11	\N	\N	2022-10-05 22:04:42.104884	2022-10-05 22:04:42.104884	1071
1257	draba-verna	GAIL-A-01-P04-1	silica	1	B	2	E	11	\N	\N	2022-10-05 22:04:42.109664	2022-10-05 22:04:42.109664	1071
1258	draba-verna	GAIL-A-03-P03-1	silica	2	B	1	E	12	\N	\N	2022-10-05 22:04:42.114313	2022-10-05 22:04:42.114313	222
1259	draba-verna	GAIL-A-03-P04-1	silica	1	B	2	E	12	\N	\N	2022-10-05 22:04:42.118016	2022-10-05 22:04:42.118016	222
1260	draba-verna	GAIL-A-04-P03-1	silica	1	B	1	F	1	\N	\N	2022-10-05 22:04:42.121699	2022-10-05 22:04:42.121699	1074
1261	draba-verna	GAIL-A-04-P04-1	silica	0	B	2	F	1	\N	\N	2022-10-05 22:04:42.127103	2022-10-05 22:04:42.127103	1074
1262	draba-verna	GAIL-A-06-P03-1	silica	2	B	2	F	2	\N	\N	2022-10-05 22:04:42.131278	2022-10-05 22:04:42.131278	223
1263	draba-verna	GAIL-A-06-P04-1	silica	0	B	3	F	2	\N	\N	2022-10-05 22:04:42.135794	2022-10-05 22:04:42.135794	223
1264	draba-verna	GAIL-A-07-P03-1	silica	2	B	1	F	3	\N	\N	2022-10-05 22:04:42.151121	2022-10-05 22:04:42.151121	1077
1265	draba-verna	GAIL-A-07-P04-1	silica	2	B	2	F	3	\N	\N	2022-10-05 22:04:42.155274	2022-10-05 22:04:42.155274	1077
1266	draba-verna	GAIL-A-08-P03-1	silica	2	B	1	F	4	\N	\N	2022-10-05 22:04:42.159216	2022-10-05 22:04:42.159216	1078
1267	draba-verna	GAIL-A-08-P04-1	silica	0	B	2	F	4	\N	\N	2022-10-05 22:04:42.163304	2022-10-05 22:04:42.163304	1078
1268	draba-verna	GAIL-A-09-P03-1	silica	2	B	1	F	5	\N	\N	2022-10-05 22:04:42.168208	2022-10-05 22:04:42.168208	1079
1269	draba-verna	GAIL-A-09-P04-1	silica	2	B	2	F	5	\N	\N	2022-10-05 22:04:42.172496	2022-10-05 22:04:42.172496	1079
1270	draba-verna	GAIL-B-01-P03-1	silica	2	B	1	F	6	\N	\N	2022-10-05 22:04:42.178375	2022-10-05 22:04:42.178375	226
1271	draba-verna	GAIL-B-01-P04-1	silica	2	B	3	F	6	\N	\N	2022-10-05 22:04:42.183909	2022-10-05 22:04:42.183909	226
1272	draba-verna	GAIL-B-02-P03-1	silica	2	B	1	F	7	\N	\N	2022-10-05 22:04:42.188314	2022-10-05 22:04:42.188314	227
1273	draba-verna	GAIL-B-02-P04-1	silica	2	B	2	F	7	\N	\N	2022-10-05 22:04:42.194593	2022-10-05 22:04:42.194593	227
1274	draba-verna	GAIL-B-04-P03-1	silica	2	B	1	F	8	\N	\N	2022-10-05 22:04:42.200585	2022-10-05 22:04:42.200585	1084
1275	draba-verna	GAIL-B-04-P04-1	silica	2	B	2	F	8	\N	\N	2022-10-05 22:04:42.204942	2022-10-05 22:04:42.204942	1084
1276	draba-verna	GAIL-B-06-P03-1	silica	0	B	1	F	9	\N	\N	2022-10-05 22:04:42.210904	2022-10-05 22:04:42.210904	230
1277	draba-verna	GAIL-B-06-P04-1	silica	2	B	2	F	9	\N	\N	2022-10-05 22:04:42.215296	2022-10-05 22:04:42.215296	230
1278	draba-verna	GAIL-B-07-P03-1	silica	2	B	2	F	10	\N	\N	2022-10-05 22:04:42.219541	2022-10-05 22:04:42.219541	231
1279	draba-verna	GAIL-B-07-P04-1	silica	2	B	3	F	10	\N	\N	2022-10-05 22:04:42.225222	2022-10-05 22:04:42.225222	231
1280	draba-verna	GAIL-B-08-P03-1	silica	2	B	2	F	11	\N	\N	2022-10-05 22:04:42.22983	2022-10-05 22:04:42.22983	232
1281	draba-verna	GAIL-B-08-P04-1	silica	2	B	3	F	11	\N	\N	2022-10-05 22:04:42.233917	2022-10-05 22:04:42.233917	232
1282	draba-verna	GAIL-B-09-P03-1	silica	2	B	2	F	12	\N	\N	2022-10-05 22:04:42.237627	2022-10-05 22:04:42.237627	233
1283	draba-verna	GAIL-B-09-P04-1	silica	2	B	3	F	12	\N	\N	2022-10-05 22:04:42.242285	2022-10-05 22:04:42.242285	233
1284	draba-verna	GAIL-B-10-P03-1	silica	2	B	1	G	1	\N	\N	2022-10-05 22:04:42.24762	2022-10-05 22:04:42.24762	234
1285	draba-verna	GAIL-B-10-P04-1	silica	2	B	2	G	1	\N	\N	2022-10-05 22:04:42.252599	2022-10-05 22:04:42.252599	234
1286	draba-verna	GAIL-B-11-P03-1	silica	0	B	1	G	2	\N	\N	2022-10-05 22:04:42.256411	2022-10-05 22:04:42.256411	1748
1287	draba-verna	GAIL-B-11-P04-1	silica	2	B	3	G	2	\N	\N	2022-10-05 22:04:42.260373	2022-10-05 22:04:42.260373	1748
1288	draba-verna	GREZ-A-01-P03-1	silica	2	B	1	G	3	\N	\N	2022-10-05 22:04:42.265181	2022-10-05 22:04:42.265181	1087
1289	draba-verna	GREZ-A-01-P04-1	silica	2	B	3	G	3	\N	\N	2022-10-05 22:04:42.269171	2022-10-05 22:04:42.269171	1087
1290	draba-verna	GREZ-A-02-P03-1	silica	2	B	2	G	4	\N	\N	2022-10-05 22:04:42.275489	2022-10-05 22:04:42.275489	235
1291	draba-verna	GREZ-A-02-P04-1	silica	2	B	3	G	4	\N	\N	2022-10-05 22:04:42.279291	2022-10-05 22:04:42.279291	235
1292	draba-verna	GREZ-A-03-P03-1	silica	0	B	1	G	5	\N	\N	2022-10-05 22:04:42.283479	2022-10-05 22:04:42.283479	1089
1293	draba-verna	GREZ-A-03-P04-1	silica	2	B	2	G	5	\N	\N	2022-10-05 22:04:42.287122	2022-10-05 22:04:42.287122	1089
1294	draba-verna	GREZ-A-04-P03-1	silica	2	B	1	G	6	\N	\N	2022-10-05 22:04:42.291324	2022-10-05 22:04:42.291324	236
1295	draba-verna	GREZ-A-04-P04-1	silica	2	B	2	G	6	\N	\N	2022-10-05 22:04:42.295617	2022-10-05 22:04:42.295617	236
1296	draba-verna	JUZE-A-02-P03-1	silica	1	B	1	G	7	\N	\N	2022-10-05 22:04:42.299651	2022-10-05 22:04:42.299651	242
1297	draba-verna	JUZE-A-02-P04-1	silica	2	B	2	G	7	\N	\N	2022-10-05 22:04:42.303696	2022-10-05 22:04:42.303696	242
1298	draba-verna	JUZE-A-04-P03-1	silica	1	B	1	G	8	\N	\N	2022-10-05 22:04:42.308446	2022-10-05 22:04:42.308446	244
1299	draba-verna	JUZE-A-04-P04-1	silica	2	B	2	G	8	\N	\N	2022-10-05 22:04:42.312507	2022-10-05 22:04:42.312507	244
1300	draba-verna	JUZE-A-05-P03-1	silica	0	B	1	G	9	\N	\N	2022-10-05 22:04:42.316989	2022-10-05 22:04:42.316989	245
1301	draba-verna	JUZE-A-05-P04-1	silica	2	B	2	G	9	\N	\N	2022-10-05 22:04:42.321927	2022-10-05 22:04:42.321927	245
1302	draba-verna	JUZE-A-06-P03-1	silica	1	B	1	G	10	\N	\N	2022-10-05 22:04:42.327083	2022-10-05 22:04:42.327083	246
1303	draba-verna	JUZE-A-06-P04-1	silica	2	B	2	G	10	\N	\N	2022-10-05 22:04:42.333487	2022-10-05 22:04:42.333487	246
1304	draba-verna	JUZE-A-07-P03-1	silica	1	B	1	G	11	\N	\N	2022-10-05 22:04:42.339216	2022-10-05 22:04:42.339216	247
1305	draba-verna	JUZE-A-07-P04-1	silica	2	B	3	G	11	\N	\N	2022-10-05 22:04:42.344615	2022-10-05 22:04:42.344615	247
1306	draba-verna	JUZE-A-08-P03-1	silica	0	B	1	G	12	\N	\N	2022-10-05 22:04:42.349655	2022-10-05 22:04:42.349655	248
1307	draba-verna	JUZE-A-08-P04-1	silica	2	B	2	G	12	\N	\N	2022-10-05 22:04:42.354447	2022-10-05 22:04:42.354447	248
1308	draba-verna	JUZE-A-11-P03-1	silica	1	B	1	H	1	\N	\N	2022-10-05 22:04:42.358423	2022-10-05 22:04:42.358423	1762
1309	draba-verna	JUZE-A-11-P04-1	silica	2	B	2	H	1	\N	\N	2022-10-05 22:04:42.362149	2022-10-05 22:04:42.362149	1762
1310	draba-verna	JUZE-A-12-P03-1	silica	0	B	1	H	2	\N	\N	2022-10-05 22:04:42.366677	2022-10-05 22:04:42.366677	1763
1311	draba-verna	JUZE-A-12-P04-1	silica	2	B	2	H	2	\N	\N	2022-10-05 22:04:42.370513	2022-10-05 22:04:42.370513	1763
1312	draba-verna	JUZE-A-13-P03-1	silica	2	B	1	H	3	\N	\N	2022-10-05 22:04:42.374387	2022-10-05 22:04:42.374387	1764
1313	draba-verna	JUZE-A-13-P04-1	silica	2	B	2	H	3	\N	\N	2022-10-05 22:04:42.378904	2022-10-05 22:04:42.378904	1764
1314	draba-verna	JUZE-A-14-P03-1	silica	1	B	1	H	4	\N	\N	2022-10-05 22:04:42.385088	2022-10-05 22:04:42.385088	1765
1315	draba-verna	JUZE-A-14-P04-1	silica	2	B	2	H	4	\N	\N	2022-10-05 22:04:42.388904	2022-10-05 22:04:42.388904	1765
1316	draba-verna	JUZE-A-15-P03-1	silica	1	B	1	H	5	\N	\N	2022-10-05 22:04:42.393558	2022-10-05 22:04:42.393558	251
1317	draba-verna	JUZE-A-15-P04-1	silica	2	B	2	H	5	\N	\N	2022-10-05 22:04:42.398018	2022-10-05 22:04:42.398018	251
1318	draba-verna	JUZET-A-01-P03-1	silica	0	B	1	H	6	\N	\N	2022-10-05 22:04:42.402333	2022-10-05 22:04:42.402333	252
1319	draba-verna	JUZET-A-01-P04-1	silica	2	B	2	H	6	\N	\N	2022-10-05 22:04:42.407156	2022-10-05 22:04:42.407156	252
1320	draba-verna	JUZET-A-02-P03-1	silica	0	B	1	H	7	\N	\N	2022-10-05 22:04:42.411716	2022-10-05 22:04:42.411716	253
1321	draba-verna	JUZET-A-02-P04-1	silica	2	B	2	H	7	\N	\N	2022-10-05 22:04:42.416721	2022-10-05 22:04:42.416721	253
1322	draba-verna	JUZET-A-03-P03-1	silica	0	B	1	H	8	\N	\N	2022-10-05 22:04:42.420969	2022-10-05 22:04:42.420969	254
1323	draba-verna	JUZET-A-03-P04-1	silica	2	B	2	H	8	\N	\N	2022-10-05 22:04:42.425219	2022-10-05 22:04:42.425219	254
1324	draba-verna	JUZET-C-01-P03-1	silica	1	B	1	H	9	\N	\N	2022-10-05 22:04:42.42936	2022-10-05 22:04:42.42936	262
1325	draba-verna	JUZET-C-01-P04-1	silica	2	B	2	H	9	\N	\N	2022-10-05 22:04:42.434472	2022-10-05 22:04:42.434472	262
1326	draba-verna	JUZET-C-02-P05-1	silica	0	C	1	A	1	\N	\N	2022-10-05 22:04:42.439566	2022-10-05 22:04:42.439566	263
1327	draba-verna	JUZET-C-02-P06-1	silica	2	C	3	A	1	\N	\N	2022-10-05 22:04:42.444534	2022-10-05 22:04:42.444534	263
1328	draba-verna	JUZET-C-03-P05-1	silica	1	C	2	A	2	\N	\N	2022-10-05 22:04:42.449538	2022-10-05 22:04:42.449538	264
1329	draba-verna	JUZET-C-03-P06-1	silica	2	C	3	A	2	\N	\N	2022-10-05 22:04:42.453688	2022-10-05 22:04:42.453688	264
1330	draba-verna	JUZET-C-05-P05-1	silica	2	C	1	A	3	\N	\N	2022-10-05 22:04:42.458975	2022-10-05 22:04:42.458975	266
1331	draba-verna	JUZET-C-05-P06-1	silica	2	C	3	A	3	\N	\N	2022-10-05 22:04:42.463882	2022-10-05 22:04:42.463882	266
1332	draba-verna	LABA-A-01-P05-1	silica	1	C	2	A	4	\N	\N	2022-10-05 22:04:42.468997	2022-10-05 22:04:42.468997	273
1333	draba-verna	LABA-A-01-P06-1	silica	2	C	3	A	4	\N	\N	2022-10-05 22:04:42.472982	2022-10-05 22:04:42.472982	273
1334	draba-verna	LABA-A-02-P05-1	silica	2	C	2	A	5	\N	\N	2022-10-05 22:04:42.478882	2022-10-05 22:04:42.478882	274
1335	draba-verna	LABA-A-02-P06-1	silica	2	C	3	A	5	\N	\N	2022-10-05 22:04:42.482959	2022-10-05 22:04:42.482959	274
1336	draba-verna	LABA-A-03-P05-1	silica	2	C	1	A	6	\N	\N	2022-10-05 22:04:42.486726	2022-10-05 22:04:42.486726	275
1337	draba-verna	LABA-A-03-P06-1	silica	2	C	3	A	6	\N	\N	2022-10-05 22:04:42.492161	2022-10-05 22:04:42.492161	275
1338	draba-verna	LABA-A-04-P05-1	silica	0	C	2	A	7	\N	\N	2022-10-05 22:04:42.496192	2022-10-05 22:04:42.496192	276
1339	draba-verna	LABA-A-04-P06-1	silica	2	C	3	A	7	\N	\N	2022-10-05 22:04:42.500545	2022-10-05 22:04:42.500545	276
1340	draba-verna	LABA-A-05-P05-1	silica	2	C	2	A	8	\N	\N	2022-10-05 22:04:42.504142	2022-10-05 22:04:42.504142	277
1341	draba-verna	LABA-A-05-P06-1	silica	1	C	3	A	8	\N	\N	2022-10-05 22:04:42.508473	2022-10-05 22:04:42.508473	277
1342	draba-verna	LABA-A-06-P05-1	silica	2	C	2	A	9	\N	\N	2022-10-05 22:04:42.512423	2022-10-05 22:04:42.512423	278
1343	draba-verna	LABA-A-06-P06-1	silica	2	C	3	A	9	\N	\N	2022-10-05 22:04:42.516835	2022-10-05 22:04:42.516835	278
1344	draba-verna	LABA-A-07-P05-1	silica	1	C	1	A	10	\N	\N	2022-10-05 22:04:42.520592	2022-10-05 22:04:42.520592	279
1345	draba-verna	LABA-A-07-P06-1	silica	2	C	3	A	10	\N	\N	2022-10-05 22:04:42.525227	2022-10-05 22:04:42.525227	279
1346	draba-verna	LABA-A-09-P05-1	silica	2	C	2	A	11	\N	\N	2022-10-05 22:04:42.529692	2022-10-05 22:04:42.529692	281
1347	draba-verna	LABA-A-09-P06-1	silica	2	C	3	A	11	\N	\N	2022-10-05 22:04:42.533693	2022-10-05 22:04:42.533693	281
1348	draba-verna	LABA-A-10-P05-1	silica	1	C	2	A	12	\N	\N	2022-10-05 22:04:42.53743	2022-10-05 22:04:42.53743	282
1349	draba-verna	LABA-A-10-P06-1	silica	2	C	3	A	12	\N	\N	2022-10-05 22:04:42.543668	2022-10-05 22:04:42.543668	282
1350	draba-verna	LABA-A-11-P05-1	silica	0	C	1	B	1	\N	\N	2022-10-05 22:04:42.547934	2022-10-05 22:04:42.547934	1783
1351	draba-verna	LABA-A-11-P06-1	silica	2	C	3	B	1	\N	\N	2022-10-05 22:04:42.551941	2022-10-05 22:04:42.551941	1783
1352	draba-verna	LABA-A-12-P05-1	silica	1	C	2	B	2	\N	\N	2022-10-05 22:04:42.555801	2022-10-05 22:04:42.555801	1784
1353	draba-verna	LABA-A-12-P06-1	silica	2	C	3	B	2	\N	\N	2022-10-05 22:04:42.559926	2022-10-05 22:04:42.559926	1784
1354	draba-verna	LABA-A-13-P05-1	silica	2	C	2	B	3	\N	\N	2022-10-05 22:04:42.564133	2022-10-05 22:04:42.564133	1785
1355	draba-verna	LABA-A-13-P06-1	silica	2	C	3	B	3	\N	\N	2022-10-05 22:04:42.568525	2022-10-05 22:04:42.568525	1785
1356	draba-verna	LABA-A-14-P05-1	silica	2	C	1	B	4	\N	\N	2022-10-05 22:04:42.572902	2022-10-05 22:04:42.572902	1786
1357	draba-verna	LABA-A-14-P06-1	silica	2	C	3	B	4	\N	\N	2022-10-05 22:04:42.578645	2022-10-05 22:04:42.578645	1786
1358	draba-verna	LABA-A-15-P05-1	silica	0	C	3	B	5	\N	\N	2022-10-05 22:04:42.583328	2022-10-05 22:04:42.583328	1787
1359	draba-verna	LABA-A-15-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-10-05 22:04:42.587152	2022-10-05 22:04:42.587152	1787
1360	draba-verna	LABAS-A-04-P05-1	silica	2	C	1	B	6	\N	\N	2022-10-05 22:04:42.591624	2022-10-05 22:04:42.591624	286
1361	draba-verna	LABAS-A-04-P06-1	silica	2	C	2	B	6	\N	\N	2022-10-05 22:04:42.596251	2022-10-05 22:04:42.596251	286
1362	draba-verna	LAMA-A-03-P05-1	silica	1	C	2	B	7	\N	\N	2022-10-05 22:04:42.600293	2022-10-05 22:04:42.600293	295
1363	draba-verna	LAMA-A-03-P06-1	silica	2	C	3	B	7	\N	\N	2022-10-05 22:04:42.604319	2022-10-05 22:04:42.604319	295
1364	draba-verna	LAMA-A-04-P05-1	silica	0	C	2	B	8	\N	\N	2022-10-05 22:04:42.611695	2022-10-05 22:04:42.611695	296
1365	draba-verna	LAMA-A-04-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-10-05 22:04:42.616673	2022-10-05 22:04:42.616673	296
1366	draba-verna	LANT-B-01-P05-1	silica	1	C	1	B	9	\N	\N	2022-10-05 22:04:42.621105	2022-10-05 22:04:42.621105	1794
1367	draba-verna	LANT-B-01-P06-1	silica	2	C	3	B	9	\N	\N	2022-10-05 22:04:42.627479	2022-10-05 22:04:42.627479	1794
1368	draba-verna	LANT-B-03-P05-1	silica	2	C	1	B	10	\N	\N	2022-10-05 22:04:42.631679	2022-10-05 22:04:42.631679	1796
1369	draba-verna	LANT-B-03-P06-1	silica	2	C	3	B	10	\N	\N	2022-10-05 22:04:42.635622	2022-10-05 22:04:42.635622	1796
1370	draba-verna	LANT-B-05-P05-1	silica	2	C	1	B	11	\N	\N	2022-10-05 22:04:42.639867	2022-10-05 22:04:42.639867	1798
1371	draba-verna	LANT-B-05-P06-1	silica	2	C	3	B	11	\N	\N	2022-10-05 22:04:42.647745	2022-10-05 22:04:42.647745	1798
1372	draba-verna	LANT-B-06-P05-1	silica	2	C	1	B	12	\N	\N	2022-10-05 22:04:42.65191	2022-10-05 22:04:42.65191	1799
1373	draba-verna	LANT-B-06-P06-1	silica	2	C	3	B	12	\N	\N	2022-10-05 22:04:42.656288	2022-10-05 22:04:42.656288	1799
1374	draba-verna	LANT-B-07-P05-1	silica	2	C	1	C	1	\N	\N	2022-10-05 22:04:42.660974	2022-10-05 22:04:42.660974	1800
1375	draba-verna	LANT-B-07-P06-1	silica	2	C	2	C	1	\N	\N	2022-10-05 22:04:42.668067	2022-10-05 22:04:42.668067	1800
1376	draba-verna	LANT-B-08-P05-1	silica	2	C	1	C	2	\N	\N	2022-10-05 22:04:42.671795	2022-10-05 22:04:42.671795	1801
1377	draba-verna	LANT-B-08-P06-1	silica	2	C	2	C	2	\N	\N	2022-10-05 22:04:42.677435	2022-10-05 22:04:42.677435	1801
1378	draba-verna	LANT-B-09-P05-1	silica	2	C	1	C	3	\N	\N	2022-10-05 22:04:42.682414	2022-10-05 22:04:42.682414	1802
1379	draba-verna	LANT-B-09-P06-1	silica	2	C	3	C	3	\N	\N	2022-10-05 22:04:42.685976	2022-10-05 22:04:42.685976	1802
1380	draba-verna	LANT-B-10-P05-1	silica	2	C	1	C	4	\N	\N	2022-10-05 22:04:42.689636	2022-10-05 22:04:42.689636	1803
1381	draba-verna	LANT-B-10-P06-1	silica	2	C	3	C	4	\N	\N	2022-10-05 22:04:42.694306	2022-10-05 22:04:42.694306	1803
1382	draba-verna	LANT-D-02-P05-1	silica	0	C	1	C	5	\N	\N	2022-10-05 22:04:42.698645	2022-10-05 22:04:42.698645	304
1383	draba-verna	LANT-D-02-P06-1	silica	2	C	2	C	5	\N	\N	2022-10-05 22:04:42.70298	2022-10-05 22:04:42.70298	304
1384	draba-verna	LANT-D-03-P05-1	silica	2	C	1	C	6	\N	\N	2022-10-05 22:04:42.708193	2022-10-05 22:04:42.708193	305
1385	draba-verna	LANT-D-03-P06-1	silica	2	C	3	C	6	\N	\N	2022-10-05 22:04:42.716458	2022-10-05 22:04:42.716458	305
1386	draba-verna	LANT-D-04-P05-1	silica	0	C	2	C	7	\N	\N	2022-10-05 22:04:42.722046	2022-10-05 22:04:42.722046	306
1387	draba-verna	LANT-D-04-P06-1	silica	2	C	3	C	7	\N	\N	2022-10-05 22:04:42.72836	2022-10-05 22:04:42.72836	306
1388	draba-verna	LANT-D-05-P05-1	silica	1	C	2	C	8	\N	\N	2022-10-05 22:04:42.733242	2022-10-05 22:04:42.733242	307
1389	draba-verna	LANT-D-05-P06-1	silica	0	C	3	C	8	\N	\N	2022-10-05 22:04:42.736963	2022-10-05 22:04:42.736963	307
1390	draba-verna	LANT-D-07-P05-1	silica	2	C	1	C	9	\N	\N	2022-10-05 22:04:42.741414	2022-10-05 22:04:42.741414	309
1391	draba-verna	LANT-D-07-P06-1	silica	2	C	3	C	9	\N	\N	2022-10-05 22:04:42.746255	2022-10-05 22:04:42.746255	309
1392	draba-verna	LANT-D-08-P05-1	silica	2	C	1	C	10	\N	\N	2022-10-05 22:04:42.75099	2022-10-05 22:04:42.75099	310
1393	draba-verna	LANT-D-08-P06-1	silica	2	C	3	C	10	\N	\N	2022-10-05 22:04:42.754982	2022-10-05 22:04:42.754982	310
1394	draba-verna	LANT-D-09-P05-1	silica	2	C	1	C	11	\N	\N	2022-10-05 22:04:42.760803	2022-10-05 22:04:42.760803	311
1395	draba-verna	LANT-D-09-P06-1	silica	2	C	2	C	11	\N	\N	2022-10-05 22:04:42.765466	2022-10-05 22:04:42.765466	311
1396	draba-verna	LANT-D-14-P05-1	silica	2	C	1	C	12	\N	\N	2022-10-05 22:04:42.769938	2022-10-05 22:04:42.769938	1812
1397	draba-verna	LANT-D-14-P06-1	silica	2	C	3	C	12	\N	\N	2022-10-05 22:04:42.778249	2022-10-05 22:04:42.778249	1812
1398	draba-verna	LANT-D-15-P05-1	silica	0	C	3	D	1	\N	\N	2022-10-05 22:04:42.783543	2022-10-05 22:04:42.783543	1813
1399	draba-verna	LANT-D-15-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-10-05 22:04:42.787338	2022-10-05 22:04:42.787338	1813
1400	draba-verna	LAUZ-A-01-P05-1	silica	1	C	1	D	2	\N	\N	2022-10-05 22:04:42.792411	2022-10-05 22:04:42.792411	1147
1401	draba-verna	LAUZ-A-01-P06-1	silica	2	C	2	D	2	\N	\N	2022-10-05 22:04:42.796739	2022-10-05 22:04:42.796739	1147
1402	draba-verna	LAUZ-A-02-P05-1	silica	1	C	1	D	3	\N	\N	2022-10-05 22:04:42.801802	2022-10-05 22:04:42.801802	1148
1403	draba-verna	LAUZ-A-02-P06-1	silica	0	C	3	D	3	\N	\N	2022-10-05 22:04:42.806078	2022-10-05 22:04:42.806078	1148
1404	draba-verna	LAUZ-A-05-P05-1	silica	0	C	1	D	4	\N	\N	2022-10-05 22:04:42.810624	2022-10-05 22:04:42.810624	1151
1405	draba-verna	LAUZ-A-05-P06-1	silica	2	C	2	D	4	\N	\N	2022-10-05 22:04:42.815861	2022-10-05 22:04:42.815861	1151
1406	draba-verna	LAUZ-A-06-P05-2	silica	0	C	3	D	5	\N	\N	2022-10-05 22:04:42.819519	2022-10-05 22:04:42.819519	1152
1407	draba-verna	LAUZ-A-06-P06-2	silica	2	C	3	D	5	\N	\N	2022-10-05 22:04:42.834727	2022-10-05 22:04:42.834727	1152
1408	draba-verna	LAUZ-A-08-P05-1	silica	0	C	1	D	6	\N	\N	2022-10-05 22:04:42.838554	2022-10-05 22:04:42.838554	313
1409	draba-verna	LAUZ-A-08-P06-1	silica	2	C	2	D	6	\N	\N	2022-10-05 22:04:42.842901	2022-10-05 22:04:42.842901	313
1410	draba-verna	LAUZ-A-09-P05-1	silica	0	C	2	D	7	\N	\N	2022-10-05 22:04:42.847502	2022-10-05 22:04:42.847502	1821
1411	draba-verna	LAUZ-A-09-P06-1	silica	2	C	3	D	7	\N	\N	2022-10-05 22:04:42.852215	2022-10-05 22:04:42.852215	1821
1412	draba-verna	LAUZ-A-10-P05-1	silica	2	C	1	D	8	\N	\N	2022-10-05 22:04:42.85597	2022-10-05 22:04:42.85597	1154
1413	draba-verna	LAUZ-A-10-P06-1	silica	2	C	2	D	8	\N	\N	2022-10-05 22:04:42.861602	2022-10-05 22:04:42.861602	1154
1414	draba-verna	LECT-A-01-P05-1	silica	2	C	1	D	9	\N	\N	2022-10-05 22:04:42.866598	2022-10-05 22:04:42.866598	314
1415	draba-verna	LECT-A-01-P06-1	silica	2	C	3	D	9	\N	\N	2022-10-05 22:04:42.871005	2022-10-05 22:04:42.871005	314
1416	draba-verna	LECT-A-03-P05-1	silica	2	C	1	D	10	\N	\N	2022-10-05 22:04:42.875439	2022-10-05 22:04:42.875439	1157
1417	draba-verna	LECT-A-03-P06-1	silica	2	C	3	D	10	\N	\N	2022-10-05 22:04:42.882498	2022-10-05 22:04:42.882498	1157
1418	draba-verna	LECT-A-04-P05-1	silica	2	C	1	D	11	\N	\N	2022-10-05 22:04:42.887079	2022-10-05 22:04:42.887079	315
1419	draba-verna	LECT-A-04-P06-1	silica	2	C	3	D	11	\N	\N	2022-10-05 22:04:42.892038	2022-10-05 22:04:42.892038	315
1420	draba-verna	LECT-A-06-P05-1	silica	2	C	1	D	12	\N	\N	2022-10-05 22:04:42.897572	2022-10-05 22:04:42.897572	317
1421	draba-verna	LECT-A-06-P06-1	silica	2	C	3	D	12	\N	\N	2022-10-05 22:04:42.902511	2022-10-05 22:04:42.902511	317
1422	draba-verna	LECT-A-07-P05-1	silica	2	C	1	E	1	\N	\N	2022-10-05 22:04:42.910188	2022-10-05 22:04:42.910188	318
1423	draba-verna	LECT-A-07-P06-1	silica	2	C	3	E	1	\N	\N	2022-10-05 22:04:42.916164	2022-10-05 22:04:42.916164	318
1424	draba-verna	LECT-A-08-P05-1	silica	2	C	1	E	2	\N	\N	2022-10-05 22:04:42.921326	2022-10-05 22:04:42.921326	319
1425	draba-verna	LECT-A-08-P06-1	silica	2	C	3	E	2	\N	\N	2022-10-05 22:04:42.92667	2022-10-05 22:04:42.92667	319
1426	draba-verna	LECT-A-10-P05-1	silica	2	C	1	E	3	\N	\N	2022-10-05 22:04:42.932464	2022-10-05 22:04:42.932464	321
1427	draba-verna	LECT-A-10-P06-1	silica	2	C	2	E	3	\N	\N	2022-10-05 22:04:42.937053	2022-10-05 22:04:42.937053	321
1428	draba-verna	LECT-A-11-P05-1	silica	2	C	1	E	4	\N	\N	2022-10-05 22:04:42.941844	2022-10-05 22:04:42.941844	322
1429	draba-verna	LECT-A-11-P06-1	silica	2	C	3	E	4	\N	\N	2022-10-05 22:04:42.945927	2022-10-05 22:04:42.945927	322
1430	draba-verna	LECT-A-12-P05-1	silica	2	C	1	E	5	\N	\N	2022-10-05 22:04:42.95067	2022-10-05 22:04:42.95067	323
1431	draba-verna	LECT-A-12-P06-1	silica	2	C	3	E	5	\N	\N	2022-10-05 22:04:42.954773	2022-10-05 22:04:42.954773	323
1432	draba-verna	LUNA-A-01-P05-1	silica	1	C	1	E	6	\N	\N	2022-10-05 22:04:42.959709	2022-10-05 22:04:42.959709	334
1433	draba-verna	LUNA-A-01-P06-1	silica	2	C	3	E	6	\N	\N	2022-10-05 22:04:42.964607	2022-10-05 22:04:42.964607	334
1434	draba-verna	LUNA-A-02-P05-1	silica	0	C	1	E	7	\N	\N	2022-10-05 22:04:42.96896	2022-10-05 22:04:42.96896	335
1435	draba-verna	LUNA-A-02-P06-1	silica	2	C	3	E	7	\N	\N	2022-10-05 22:04:42.974125	2022-10-05 22:04:42.974125	335
1436	draba-verna	LUNA-A-03-P05-1	silica	1	C	1	E	8	\N	\N	2022-10-05 22:04:42.978294	2022-10-05 22:04:42.978294	336
1437	draba-verna	LUNA-A-03-P06-1	silica	2	C	3	E	8	\N	\N	2022-10-05 22:04:42.982419	2022-10-05 22:04:42.982419	336
1438	draba-verna	LUNA-A-05-P05-1	silica	0	C	1	E	9	\N	\N	2022-10-05 22:04:42.986409	2022-10-05 22:04:42.986409	337
1439	draba-verna	LUNA-A-05-P06-1	silica	0	C	2	E	9	\N	\N	2022-10-05 22:04:42.993133	2022-10-05 22:04:42.993133	337
1440	draba-verna	LUNA-A-06-P05-1	silica	2	C	1	E	10	\N	\N	2022-10-05 22:04:42.997554	2022-10-05 22:04:42.997554	338
1441	draba-verna	LUNA-A-06-P06-1	silica	2	C	3	E	10	\N	\N	2022-10-05 22:04:43.001486	2022-10-05 22:04:43.001486	338
1442	draba-verna	LUNA-A-07-P05-1	silica	1	C	1	E	11	\N	\N	2022-10-05 22:04:43.005426	2022-10-05 22:04:43.005426	339
1443	draba-verna	LUNA-A-07-P06-1	silica	2	C	3	E	11	\N	\N	2022-10-05 22:04:43.009561	2022-10-05 22:04:43.009561	339
1444	draba-verna	LUNA-A-08-P05-1	silica	2	C	1	E	12	\N	\N	2022-10-05 22:04:43.013876	2022-10-05 22:04:43.013876	340
1445	draba-verna	LUNA-A-08-P06-1	silica	2	C	3	E	12	\N	\N	2022-10-05 22:04:43.017872	2022-10-05 22:04:43.017872	340
1446	draba-verna	LUNA-A-09-P05-1	silica	2	C	1	F	1	\N	\N	2022-10-05 22:04:43.021384	2022-10-05 22:04:43.021384	341
1447	draba-verna	LUNA-A-09-P06-1	silica	2	C	3	F	1	\N	\N	2022-10-05 22:04:43.025507	2022-10-05 22:04:43.025507	341
1448	draba-verna	LUNA-A-10-P05-1	silica	0	C	1	F	2	\N	\N	2022-10-05 22:04:43.029698	2022-10-05 22:04:43.029698	342
1449	draba-verna	LUNA-A-10-P06-1	silica	1	C	3	F	2	\N	\N	2022-10-05 22:04:43.034271	2022-10-05 22:04:43.034271	342
1450	draba-verna	LUNA-A-12-P05-1	silica	2	C	1	F	3	\N	\N	2022-10-05 22:04:43.038296	2022-10-05 22:04:43.038296	1838
1451	draba-verna	LUNA-A-12-P06-1	silica	2	C	2	F	3	\N	\N	2022-10-05 22:04:43.042958	2022-10-05 22:04:43.042958	1838
1452	draba-verna	MARS-C-01-P05-1	silica	2	C	1	F	4	\N	\N	2022-10-05 22:04:43.047355	2022-10-05 22:04:43.047355	1839
1453	draba-verna	MARS-C-01-P06-1	silica	2	C	3	F	4	\N	\N	2022-10-05 22:04:43.05117	2022-10-05 22:04:43.05117	1839
1454	draba-verna	MARS-C-02-P05-1	silica	2	C	1	F	5	\N	\N	2022-10-05 22:04:43.055253	2022-10-05 22:04:43.055253	1840
1455	draba-verna	MARS-C-02-P06-1	silica	2	C	2	F	5	\N	\N	2022-10-05 22:04:43.060923	2022-10-05 22:04:43.060923	1840
1456	draba-verna	MARS-C-03-P05-1	silica	2	C	1	F	6	\N	\N	2022-10-05 22:04:43.065931	2022-10-05 22:04:43.065931	1841
1457	draba-verna	MARS-C-03-P06-1	silica	2	C	3	F	6	\N	\N	2022-10-05 22:04:43.06944	2022-10-05 22:04:43.06944	1841
1458	draba-verna	MARS-C-05-P05-1	silica	2	C	2	F	7	\N	\N	2022-10-05 22:04:43.073208	2022-10-05 22:04:43.073208	1843
1459	draba-verna	MARS-C-05-P06-1	silica	1	C	3	F	7	\N	\N	2022-10-05 22:04:43.07756	2022-10-05 22:04:43.07756	1843
1460	draba-verna	MARS-C-06-P05-1	silica	2	C	2	F	8	\N	\N	2022-10-05 22:04:43.082374	2022-10-05 22:04:43.082374	1844
1461	draba-verna	MARS-C-06-P06-1	silica	2	C	3	F	8	\N	\N	2022-10-05 22:04:43.086116	2022-10-05 22:04:43.086116	1844
1462	draba-verna	MARS-C-07-P05-1	silica	2	C	2	F	9	\N	\N	2022-10-05 22:04:43.089815	2022-10-05 22:04:43.089815	1845
1463	draba-verna	MARS-C-07-P06-1	silica	2	C	3	F	9	\N	\N	2022-10-05 22:04:43.094096	2022-10-05 22:04:43.094096	1845
1464	draba-verna	MARS-C-08-P05-1	silica	2	C	3	F	10	\N	\N	2022-10-05 22:04:43.098338	2022-10-05 22:04:43.098338	1846
1465	draba-verna	MARS-C-08-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-10-05 22:04:43.103927	2022-10-05 22:04:43.103927	1846
1466	draba-verna	MONB-A-01-P05-1	silica	2	C	1	F	11	\N	\N	2022-10-05 22:04:43.10813	2022-10-05 22:04:43.10813	373
1467	draba-verna	MONB-A-01-P06-1	silica	2	C	2	F	11	\N	\N	2022-10-05 22:04:43.112755	2022-10-05 22:04:43.112755	373
1468	draba-verna	MONB-A-02-P05-1	silica	2	C	2	F	12	\N	\N	2022-10-05 22:04:43.116716	2022-10-05 22:04:43.116716	374
1469	draba-verna	MONB-A-02-P06-1	silica	2	C	3	F	12	\N	\N	2022-10-05 22:04:43.120382	2022-10-05 22:04:43.120382	374
1470	draba-verna	MONB-A-04-P05-1	silica	2	C	2	G	1	\N	\N	2022-10-05 22:04:43.124579	2022-10-05 22:04:43.124579	376
1471	draba-verna	MONB-A-04-P06-1	silica	0	C	3	G	1	\N	\N	2022-10-05 22:04:43.130723	2022-10-05 22:04:43.130723	376
1472	draba-verna	MONB-A-06-P05-1	silica	2	C	2	G	2	\N	\N	2022-10-05 22:04:43.134738	2022-10-05 22:04:43.134738	378
1473	draba-verna	MONB-A-06-P06-1	silica	2	C	3	G	2	\N	\N	2022-10-05 22:04:43.144576	2022-10-05 22:04:43.144576	378
1474	draba-verna	MONB-A-08-P05-1	silica	2	C	2	G	3	\N	\N	2022-10-05 22:04:43.156079	2022-10-05 22:04:43.156079	1212
1475	draba-verna	MONB-A-08-P06-1	silica	2	C	3	G	3	\N	\N	2022-10-05 22:04:43.165022	2022-10-05 22:04:43.165022	1212
1476	draba-verna	MONB-A-09-P05-1	silica	2	C	2	G	4	\N	\N	2022-10-05 22:04:43.172566	2022-10-05 22:04:43.172566	380
1477	draba-verna	MONB-A-09-P06-1	silica	2	C	3	G	4	\N	\N	2022-10-05 22:04:43.181128	2022-10-05 22:04:43.181128	380
1478	draba-verna	MONB-A-10-P05-1	silica	2	C	1	G	5	\N	\N	2022-10-05 22:04:43.186171	2022-10-05 22:04:43.186171	381
1479	draba-verna	MONB-A-10-P06-1	silica	2	C	2	G	5	\N	\N	2022-10-05 22:04:43.191011	2022-10-05 22:04:43.191011	381
1480	draba-verna	MONB-A-12-P05-1	silica	2	C	1	G	6	\N	\N	2022-10-05 22:04:43.195606	2022-10-05 22:04:43.195606	1858
1481	draba-verna	MONB-A-12-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-10-05 22:04:43.201994	2022-10-05 22:04:43.201994	1858
1482	draba-verna	MONF-A-01-P05-1	silica	2	C	1	G	7	\N	\N	2022-10-05 22:04:43.20996	2022-10-05 22:04:43.20996	392
1483	draba-verna	MONF-A-01-P06-1	silica	2	C	3	G	7	\N	\N	2022-10-05 22:04:43.217515	2022-10-05 22:04:43.217515	392
1484	draba-verna	MONF-A-03-P05-1	silica	2	C	3	G	8	\N	\N	2022-10-05 22:04:43.225075	2022-10-05 22:04:43.225075	394
1485	draba-verna	MONF-A-03-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-10-05 22:04:43.232053	2022-10-05 22:04:43.232053	394
1486	draba-verna	MONF-A-04-P05-1	silica	2	C	1	G	9	\N	\N	2022-10-05 22:04:43.23747	2022-10-05 22:04:43.23747	395
1487	draba-verna	MONF-A-04-P06-1	silica	0	C	3	G	9	\N	\N	2022-10-05 22:04:43.245676	2022-10-05 22:04:43.245676	395
1488	draba-verna	MONF-A-05-P05-1	silica	2	C	1	G	10	\N	\N	2022-10-05 22:04:43.25422	2022-10-05 22:04:43.25422	396
1489	draba-verna	MONF-A-05-P06-1	silica	2	C	3	G	10	\N	\N	2022-10-05 22:04:43.260837	2022-10-05 22:04:43.260837	396
1490	draba-verna	MONF-A-06-P05-1	silica	2	C	2	G	11	\N	\N	2022-10-05 22:04:43.268225	2022-10-05 22:04:43.268225	397
1491	draba-verna	MONF-A-06-P06-1	silica	2	C	3	G	11	\N	\N	2022-10-05 22:04:43.276467	2022-10-05 22:04:43.276467	397
1492	draba-verna	MONF-A-07-P05-1	silica	2	C	1	G	12	\N	\N	2022-10-05 22:04:43.284065	2022-10-05 22:04:43.284065	398
1493	draba-verna	MONF-A-07-P06-1	silica	1	C	3	G	12	\N	\N	2022-10-05 22:04:43.289859	2022-10-05 22:04:43.289859	398
1494	draba-verna	MONF-A-08-P05-1	silica	2	C	1	H	1	\N	\N	2022-10-05 22:04:43.297304	2022-10-05 22:04:43.297304	399
1495	draba-verna	MONF-A-08-P06-1	silica	2	C	3	H	1	\N	\N	2022-10-05 22:04:43.302976	2022-10-05 22:04:43.302976	399
1496	draba-verna	MONF-A-09-P05-1	silica	2	C	1	H	2	\N	\N	2022-10-05 22:04:43.310438	2022-10-05 22:04:43.310438	400
1497	draba-verna	MONF-A-09-P06-1	silica	2	C	3	H	2	\N	\N	2022-10-05 22:04:43.317288	2022-10-05 22:04:43.317288	400
1498	draba-verna	MONF-A-10-P05-1	silica	2	C	2	H	3	\N	\N	2022-10-05 22:04:43.325848	2022-10-05 22:04:43.325848	401
1499	draba-verna	MONF-A-10-P06-1	silica	2	C	3	H	3	\N	\N	2022-10-05 22:04:43.334374	2022-10-05 22:04:43.334374	401
1500	draba-verna	MONF-A-11-P05-1	silica	2	C	1	H	4	\N	\N	2022-10-05 22:04:43.341067	2022-10-05 22:04:43.341067	1869
1501	draba-verna	MONF-A-11-P06-1	silica	2	C	2	H	4	\N	\N	2022-10-05 22:04:43.347644	2022-10-05 22:04:43.347644	1869
1502	draba-verna	MONF-A-12-P05-1	silica	2	C	2	H	5	\N	\N	2022-10-05 22:04:43.352487	2022-10-05 22:04:43.352487	1870
1503	draba-verna	MONF-A-12-P06-1	silica	2	C	3	H	5	\N	\N	2022-10-05 22:04:43.358115	2022-10-05 22:04:43.358115	1870
1504	draba-verna	MONTI-B-1-P05-1	silica	2	C	2	H	6	\N	\N	2022-10-05 22:04:43.363541	2022-10-05 22:04:43.363541	1237
1505	draba-verna	MONTI-B-1-P06-1	silica	2	C	3	H	6	\N	\N	2022-10-05 22:04:43.368589	2022-10-05 22:04:43.368589	1237
1506	draba-verna	MONTI-B-2-P05-1	silica	2	C	2	H	7	\N	\N	2022-10-05 22:04:43.373953	2022-10-05 22:04:43.373953	1238
1507	draba-verna	MONTI-B-2-P06-1	silica	2	C	3	H	7	\N	\N	2022-10-05 22:04:43.380208	2022-10-05 22:04:43.380208	1238
1508	draba-verna	MONTI-B-3-P05-1	silica	2	C	2	H	8	\N	\N	2022-10-05 22:04:43.385403	2022-10-05 22:04:43.385403	1239
1509	draba-verna	MONTI-B-3-P06-1	silica	1	C	3	H	8	\N	\N	2022-10-05 22:04:43.390561	2022-10-05 22:04:43.390561	1239
1510	draba-verna	LAUZ-A-04-P07-1	silica	2	D	1	A	1	\N	\N	2022-10-05 22:04:43.396637	2022-10-05 22:04:43.396637	1150
1511	draba-verna	LAUZ-A-04-P08-1	silica	2	D	2	A	1	\N	\N	2022-10-05 22:04:43.402101	2022-10-05 22:04:43.402101	1150
1512	draba-verna	MONTI-B-4-P07-1	silica	2	D	1	A	2	\N	\N	2022-10-05 22:04:43.407432	2022-10-05 22:04:43.407432	1240
1513	draba-verna	MONTI-B-4-P08-1	silica	2	D	2	A	2	\N	\N	2022-10-05 22:04:43.41521	2022-10-05 22:04:43.41521	1240
1514	draba-verna	MONTI-B-5-P07-1	silica	2	D	1	A	3	\N	\N	2022-10-05 22:04:43.420765	2022-10-05 22:04:43.420765	1875
1515	draba-verna	MONTI-B-5-P08-1	silica	2	D	2	A	3	\N	\N	2022-10-05 22:04:43.434612	2022-10-05 22:04:43.434612	1875
1516	draba-verna	MONTI-B-6-P07-1	silica	2	D	1	A	4	\N	\N	2022-10-05 22:04:43.441897	2022-10-05 22:04:43.441897	1241
1517	draba-verna	MONTI-B-6-P08-1	silica	2	D	2	A	4	\N	\N	2022-10-05 22:04:43.448873	2022-10-05 22:04:43.448873	1241
1518	draba-verna	MONTI-B-7-P07-1	silica	2	D	2	A	5	\N	\N	2022-10-05 22:04:43.454879	2022-10-05 22:04:43.454879	1242
1519	draba-verna	MONTI-B-7-P08-1	silica	2	D	3	A	5	\N	\N	2022-10-05 22:04:43.460928	2022-10-05 22:04:43.460928	1242
1520	draba-verna	MONTM-A-2-P07-1	silica	2	D	2	A	6	\N	\N	2022-10-05 22:04:43.46613	2022-10-05 22:04:43.46613	426
1521	draba-verna	MONTM-A-2-P08-1	silica	2	D	3	A	6	\N	\N	2022-10-05 22:04:43.475078	2022-10-05 22:04:43.475078	426
1522	draba-verna	MONTM-A-4-P07-1	silica	2	D	1	A	7	\N	\N	2022-10-05 22:04:43.484879	2022-10-05 22:04:43.484879	428
1523	draba-verna	MONTM-A-4-P08-1	silica	2	D	2	A	7	\N	\N	2022-10-05 22:04:43.491945	2022-10-05 22:04:43.491945	428
1524	draba-verna	MONTM-A-5-P07-1	silica	2	D	1	A	8	\N	\N	2022-10-05 22:04:43.501522	2022-10-05 22:04:43.501522	429
1525	draba-verna	MONTM-A-5-P08-1	silica	2	D	2	A	8	\N	\N	2022-10-05 22:04:43.517021	2022-10-05 22:04:43.517021	429
1526	draba-verna	MONTM-A-6-P07-1	silica	2	D	1	A	9	\N	\N	2022-10-05 22:04:43.525287	2022-10-05 22:04:43.525287	430
1527	draba-verna	MONTM-A-6-P08-1	silica	2	D	2	A	9	\N	\N	2022-10-05 22:04:43.532803	2022-10-05 22:04:43.532803	430
1528	draba-verna	MONTM-A-9-P07-1	silica	2	D	1	A	10	\N	\N	2022-10-05 22:04:43.538804	2022-10-05 22:04:43.538804	433
1529	draba-verna	MONTM-A-9-P08-1	silica	2	D	2	A	10	\N	\N	2022-10-05 22:04:43.551386	2022-10-05 22:04:43.551386	433
1530	draba-verna	NAZA-A-02-P07-1	silica	2	D	1	A	11	\N	\N	2022-10-05 22:04:43.559809	2022-10-05 22:04:43.559809	1254
1531	draba-verna	NAZA-A-02-P08-1	silica	2	D	2	A	11	\N	\N	2022-10-05 22:04:43.56703	2022-10-05 22:04:43.56703	1254
1532	draba-verna	NAZA-A-05-P07-1	silica	2	D	1	A	12	\N	\N	2022-10-05 22:04:43.573229	2022-10-05 22:04:43.573229	1257
1533	draba-verna	NAZA-A-05-P08-1	silica	2	D	2	A	12	\N	\N	2022-10-05 22:04:43.581974	2022-10-05 22:04:43.581974	1257
1534	draba-verna	NAZA-A-06-P07-1	silica	2	D	1	B	1	\N	\N	2022-10-05 22:04:43.588348	2022-10-05 22:04:43.588348	438
1535	draba-verna	NAZA-A-06-P08-1	silica	2	D	2	B	1	\N	\N	2022-10-05 22:04:43.598656	2022-10-05 22:04:43.598656	438
1536	draba-verna	NAZA-A-07-P07-1	silica	2	D	1	B	2	\N	\N	2022-10-05 22:04:43.61103	2022-10-05 22:04:43.61103	1259
1537	draba-verna	NAZA-A-07-P08-1	silica	1	D	2	B	2	\N	\N	2022-10-05 22:04:43.619783	2022-10-05 22:04:43.619783	1259
1538	draba-verna	NAZA-A-09-P07-1	silica	2	D	1	B	3	\N	\N	2022-10-05 22:04:43.627239	2022-10-05 22:04:43.627239	439
1539	draba-verna	NAZA-A-09-P08-1	silica	2	D	3	B	3	\N	\N	2022-10-05 22:04:43.64307	2022-10-05 22:04:43.64307	439
1540	draba-verna	NAZA-A-13-P07-1	silica	2	D	1	B	4	\N	\N	2022-10-05 22:04:43.650747	2022-10-05 22:04:43.650747	1896
1541	draba-verna	NAZA-A-13-P08-1	silica	2	D	2	B	4	\N	\N	2022-10-05 22:04:43.660108	2022-10-05 22:04:43.660108	1896
1542	draba-verna	PUYM-B-02-P07-1	silica	2	D	1	B	5	\N	\N	2022-10-05 22:04:43.667861	2022-10-05 22:04:43.667861	444
1543	draba-verna	PUYM-B-02-P08-1	silica	2	D	2	B	5	\N	\N	2022-10-05 22:04:43.674866	2022-10-05 22:04:43.674866	444
1544	draba-verna	PUYM-B-03-P07-1	silica	2	D	1	B	6	\N	\N	2022-10-05 22:04:43.681523	2022-10-05 22:04:43.681523	445
1545	draba-verna	PUYM-B-03-P08-1	silica	2	D	2	B	6	\N	\N	2022-10-05 22:04:43.688668	2022-10-05 22:04:43.688668	445
1546	draba-verna	PUYM-B-08-P07-1	silica	2	D	1	B	7	\N	\N	2022-10-05 22:04:43.695065	2022-10-05 22:04:43.695065	449
1547	draba-verna	PUYM-B-08-P08-1	silica	2	D	2	B	7	\N	\N	2022-10-05 22:04:43.701046	2022-10-05 22:04:43.701046	449
1548	draba-verna	PUYM-B-09-P07-1	silica	2	D	1	B	8	\N	\N	2022-10-05 22:04:43.706665	2022-10-05 22:04:43.706665	1270
1549	draba-verna	PUYM-B-09-P08-1	silica	0	D	2	B	8	\N	\N	2022-10-05 22:04:43.713576	2022-10-05 22:04:43.713576	1270
1550	draba-verna	PUYM-B-11-P07-1	silica	2	D	1	B	9	\N	\N	2022-10-05 22:04:43.721055	2022-10-05 22:04:43.721055	1906
1551	draba-verna	PUYM-B-11-P08-1	silica	2	D	2	B	9	\N	\N	2022-10-05 22:04:43.72874	2022-10-05 22:04:43.72874	1906
1552	draba-verna	RAYR-A-01-P07-1	silica	2	D	2	B	10	\N	\N	2022-10-05 22:04:43.736116	2022-10-05 22:04:43.736116	450
1553	draba-verna	RAYR-A-01-P08-1	silica	2	D	3	B	10	\N	\N	2022-10-05 22:04:43.742102	2022-10-05 22:04:43.742102	450
1554	draba-verna	RAYR-A-02-P07-1	silica	2	D	1	B	11	\N	\N	2022-10-05 22:04:43.748576	2022-10-05 22:04:43.748576	451
1555	draba-verna	RAYR-A-02-P08-1	silica	2	D	2	B	11	\N	\N	2022-10-05 22:04:43.753228	2022-10-05 22:04:43.753228	451
1556	draba-verna	RAYR-A-03-P07-1	silica	2	D	1	B	12	\N	\N	2022-10-05 22:04:43.758019	2022-10-05 22:04:43.758019	452
1557	draba-verna	RAYR-A-03-P08-1	silica	0	D	3	B	12	\N	\N	2022-10-05 22:04:43.762735	2022-10-05 22:04:43.762735	452
1558	draba-verna	RAYR-A-04-P07-1	silica	2	D	2	C	1	\N	\N	2022-10-05 22:04:43.767404	2022-10-05 22:04:43.767404	1274
1559	draba-verna	RAYR-A-04-P08-1	silica	0	D	3	C	1	\N	\N	2022-10-05 22:04:43.772267	2022-10-05 22:04:43.772267	1274
1560	draba-verna	RAYR-A-05-P07-2	silica	2	D	2	C	2	\N	\N	2022-10-05 22:04:43.777408	2022-10-05 22:04:43.777408	453
1561	draba-verna	RAYR-A-05-P08-2	silica	2	D	2	C	2	\N	\N	2022-10-05 22:04:43.782098	2022-10-05 22:04:43.782098	453
1562	draba-verna	RAYR-A-07-P07-1	silica	2	D	1	C	3	\N	\N	2022-10-05 22:04:43.7865	2022-10-05 22:04:43.7865	454
1563	draba-verna	RAYR-A-07-P08-1	silica	1	D	2	C	3	\N	\N	2022-10-05 22:04:43.791502	2022-10-05 22:04:43.791502	454
1564	draba-verna	RAYR-A-08-P07-1	silica	2	D	1	C	4	\N	\N	2022-10-05 22:04:43.796355	2022-10-05 22:04:43.796355	455
1565	draba-verna	RAYR-A-08-P08-1	silica	2	D	2	C	4	\N	\N	2022-10-05 22:04:43.801395	2022-10-05 22:04:43.801395	455
1566	draba-verna	RAYR-A-09-P07-1	silica	2	D	1	C	5	\N	\N	2022-10-05 22:04:43.806276	2022-10-05 22:04:43.806276	456
1567	draba-verna	RAYR-A-09-P08-1	silica	0	D	2	C	5	\N	\N	2022-10-05 22:04:43.811646	2022-10-05 22:04:43.811646	456
1568	draba-verna	RAYR-A-11-P07-1	silica	2	D	2	C	6	\N	\N	2022-10-05 22:04:43.817559	2022-10-05 22:04:43.817559	458
1569	draba-verna	RAYR-A-11-P08-1	silica	2	D	3	C	6	\N	\N	2022-10-05 22:04:43.822812	2022-10-05 22:04:43.822812	458
1570	draba-verna	SALE-A-01-P07-1	silica	2	D	1	C	7	\N	\N	2022-10-05 22:04:43.828228	2022-10-05 22:04:43.828228	470
1571	draba-verna	SALE-A-01-P08-1	silica	2	D	2	C	7	\N	\N	2022-10-05 22:04:43.833581	2022-10-05 22:04:43.833581	470
1572	draba-verna	SALV-A-01-P07-1	silica	2	D	1	C	8	\N	\N	2022-10-05 22:04:43.845958	2022-10-05 22:04:43.845958	480
1573	draba-verna	SALV-A-01-P08-1	silica	2	D	2	C	8	\N	\N	2022-10-05 22:04:43.85618	2022-10-05 22:04:43.85618	480
1574	draba-verna	SALV-A-02-P07-1	silica	2	D	1	C	9	\N	\N	2022-10-05 22:04:43.862236	2022-10-05 22:04:43.862236	481
1575	draba-verna	SALV-A-02-P08-1	silica	2	D	2	C	9	\N	\N	2022-10-05 22:04:43.868177	2022-10-05 22:04:43.868177	481
1576	draba-verna	SALV-A-03-P07-1	silica	2	D	1	C	10	\N	\N	2022-10-05 22:04:43.874423	2022-10-05 22:04:43.874423	482
1577	draba-verna	SALV-A-03-P08-1	silica	2	D	2	C	10	\N	\N	2022-10-05 22:04:43.880233	2022-10-05 22:04:43.880233	482
1578	draba-verna	SALV-A-04-P07-1	silica	2	D	2	C	11	\N	\N	2022-10-05 22:04:43.885565	2022-10-05 22:04:43.885565	1296
1579	draba-verna	SALV-A-04-P08-1	silica	2	D	3	C	11	\N	\N	2022-10-05 22:04:43.890618	2022-10-05 22:04:43.890618	1296
1580	draba-verna	SALV-A-05-P07-1	silica	2	D	1	C	12	\N	\N	2022-10-05 22:04:43.899564	2022-10-05 22:04:43.899564	483
1581	draba-verna	SALV-A-05-P08-1	silica	2	D	2	C	12	\N	\N	2022-10-05 22:04:43.903955	2022-10-05 22:04:43.903955	483
1582	draba-verna	SALV-A-06-P07-1	silica	2	D	1	D	1	\N	\N	2022-10-05 22:04:43.90896	2022-10-05 22:04:43.90896	1298
1583	draba-verna	SALV-A-06-P08-1	silica	2	D	2	D	1	\N	\N	2022-10-05 22:04:43.91391	2022-10-05 22:04:43.91391	1298
1584	draba-verna	SALV-A-07-P07-1	silica	2	D	1	D	2	\N	\N	2022-10-05 22:04:43.91882	2022-10-05 22:04:43.91882	484
1585	draba-verna	SALV-A-07-P08-1	silica	2	D	2	D	2	\N	\N	2022-10-05 22:04:43.924647	2022-10-05 22:04:43.924647	484
1586	draba-verna	SALV-A-08-P07-1	silica	2	D	1	D	3	\N	\N	2022-10-05 22:04:43.92995	2022-10-05 22:04:43.92995	485
1587	draba-verna	SALV-A-08-P08-1	silica	2	D	2	D	3	\N	\N	2022-10-05 22:04:43.934448	2022-10-05 22:04:43.934448	485
1588	draba-verna	SALV-A-10-P07-1	silica	2	D	1	D	4	\N	\N	2022-10-05 22:04:43.938948	2022-10-05 22:04:43.938948	1302
1589	draba-verna	SALV-A-10-P08-1	silica	2	D	2	D	4	\N	\N	2022-10-05 22:04:43.944231	2022-10-05 22:04:43.944231	1302
1590	draba-verna	SAUB-B-02-P07-1	silica	2	D	1	D	5	\N	\N	2022-10-05 22:04:43.949181	2022-10-05 22:04:43.949181	491
1591	draba-verna	SAUB-B-02-P08-1	silica	2	D	2	D	5	\N	\N	2022-10-05 22:04:43.953999	2022-10-05 22:04:43.953999	491
1592	draba-verna	SAUB-B-03-P07-1	silica	2	D	2	D	6	\N	\N	2022-10-05 22:04:43.959185	2022-10-05 22:04:43.959185	492
1593	draba-verna	SAUB-B-03-P08-1	silica	2	D	3	D	6	\N	\N	2022-10-05 22:04:43.9641	2022-10-05 22:04:43.9641	492
1594	draba-verna	SAUB-B-04-P07-1	silica	2	D	1	D	7	\N	\N	2022-10-05 22:04:43.968664	2022-10-05 22:04:43.968664	493
1595	draba-verna	SAUB-B-04-P08-1	silica	2	D	2	D	7	\N	\N	2022-10-05 22:04:43.973045	2022-10-05 22:04:43.973045	493
1596	draba-verna	SAUB-B-05-P07-1	silica	2	D	1	D	8	\N	\N	2022-10-05 22:04:43.977898	2022-10-05 22:04:43.977898	494
1597	draba-verna	SAUB-B-05-P08-1	silica	2	D	2	D	8	\N	\N	2022-10-05 22:04:43.983076	2022-10-05 22:04:43.983076	494
1598	draba-verna	SAUB-B-06-P07-1	silica	2	D	1	D	9	\N	\N	2022-10-05 22:04:43.987944	2022-10-05 22:04:43.987944	495
1599	draba-verna	SAUB-B-06-P08-1	silica	2	D	3	D	9	\N	\N	2022-10-05 22:04:43.993005	2022-10-05 22:04:43.993005	495
1600	draba-verna	SAUB-B-07-P07-1	silica	2	D	1	D	10	\N	\N	2022-10-05 22:04:43.998464	2022-10-05 22:04:43.998464	496
1601	draba-verna	SAUB-B-07-P08-1	silica	2	D	2	D	10	\N	\N	2022-10-05 22:04:44.003219	2022-10-05 22:04:44.003219	496
1602	draba-verna	SAUB-B-08-P07-1	silica	2	D	2	D	11	\N	\N	2022-10-05 22:04:44.008481	2022-10-05 22:04:44.008481	497
1603	draba-verna	SAUB-B-08-P08-1	silica	2	D	3	D	11	\N	\N	2022-10-05 22:04:44.014978	2022-10-05 22:04:44.014978	497
1604	draba-verna	SAUB-B-09-P07-1	silica	2	D	1	D	12	\N	\N	2022-10-05 22:04:44.019626	2022-10-05 22:04:44.019626	498
1605	draba-verna	SAUB-B-09-P08-1	silica	2	D	2	D	12	\N	\N	2022-10-05 22:04:44.024467	2022-10-05 22:04:44.024467	498
1606	draba-verna	SAUB-B-11-P07-1	silica	2	D	1	E	1	\N	\N	2022-10-05 22:04:44.028939	2022-10-05 22:04:44.028939	1941
1607	draba-verna	SAUB-B-11-P08-1	silica	2	D	2	E	1	\N	\N	2022-10-05 22:04:44.033483	2022-10-05 22:04:44.033483	1941
1608	draba-verna	SIMO-A-1-P07-1	silica	2	D	1	E	2	\N	\N	2022-10-05 22:04:44.037602	2022-10-05 22:04:44.037602	1313
1609	draba-verna	SIMO-A-1-P08-1	silica	2	D	2	E	2	\N	\N	2022-10-05 22:04:44.042587	2022-10-05 22:04:44.042587	1313
1610	draba-verna	SIMO-A-2-P07-1	silica	2	D	1	E	3	\N	\N	2022-10-05 22:04:44.047656	2022-10-05 22:04:44.047656	500
1611	draba-verna	SIMO-A-2-P08-1	silica	2	D	2	E	3	\N	\N	2022-10-05 22:04:44.052118	2022-10-05 22:04:44.052118	500
1612	draba-verna	SIMO-A-3-P07-1	silica	2	D	1	E	4	\N	\N	2022-10-05 22:04:44.056717	2022-10-05 22:04:44.056717	501
1613	draba-verna	SIMO-A-3-P08-1	silica	2	D	2	E	4	\N	\N	2022-10-05 22:04:44.061032	2022-10-05 22:04:44.061032	501
1614	draba-verna	SIMO-A-4-P07-1	silica	2	D	1	E	5	\N	\N	2022-10-05 22:04:44.065752	2022-10-05 22:04:44.065752	502
1615	draba-verna	SIMO-A-4-P08-1	silica	2	D	2	E	5	\N	\N	2022-10-05 22:04:44.06978	2022-10-05 22:04:44.06978	502
1616	draba-verna	SIMO-A-5-P07-1	silica	2	D	1	E	6	\N	\N	2022-10-05 22:04:44.074281	2022-10-05 22:04:44.074281	503
1617	draba-verna	SIMO-A-5-P08-1	silica	2	D	2	E	6	\N	\N	2022-10-05 22:04:44.078494	2022-10-05 22:04:44.078494	503
1618	draba-verna	SIMO-A-6-P07-1	silica	2	D	1	E	7	\N	\N	2022-10-05 22:04:44.083253	2022-10-05 22:04:44.083253	504
1619	draba-verna	SIMO-A-6-P08-1	silica	2	D	2	E	7	\N	\N	2022-10-05 22:04:44.087485	2022-10-05 22:04:44.087485	504
1620	draba-verna	SIMO-A-7-P07-1	silica	2	D	1	E	8	\N	\N	2022-10-05 22:04:44.091995	2022-10-05 22:04:44.091995	505
1621	draba-verna	SIMO-A-7-P08-1	silica	2	D	2	E	8	\N	\N	2022-10-05 22:04:44.096425	2022-10-05 22:04:44.096425	505
1622	draba-verna	SIMO-A-8-P07-1	silica	2	D	1	E	9	\N	\N	2022-10-05 22:04:44.10134	2022-10-05 22:04:44.10134	506
1623	draba-verna	SIMO-A-8-P08-1	silica	2	D	2	E	9	\N	\N	2022-10-05 22:04:44.105378	2022-10-05 22:04:44.105378	506
1624	draba-verna	THOM-A-01-P07-1	silica	2	D	1	E	10	\N	\N	2022-10-05 22:04:44.1099	2022-10-05 22:04:44.1099	509
1625	draba-verna	THOM-A-01-P08-1	silica	1	D	2	E	10	\N	\N	2022-10-05 22:04:44.114301	2022-10-05 22:04:44.114301	509
1626	draba-verna	THOM-A-04-P07-1	silica	2	D	2	E	11	\N	\N	2022-10-05 22:04:44.118742	2022-10-05 22:04:44.118742	511
1627	draba-verna	THOM-A-04-P08-1	silica	2	D	3	E	11	\N	\N	2022-10-05 22:04:44.123044	2022-10-05 22:04:44.123044	511
1628	draba-verna	THOM-A-07-P07-1	silica	2	D	2	E	12	\N	\N	2022-10-05 22:04:44.127589	2022-10-05 22:04:44.127589	513
1629	draba-verna	THOM-A-07-P08-1	silica	2	D	3	E	12	\N	\N	2022-10-05 22:04:44.132483	2022-10-05 22:04:44.132483	513
1630	draba-verna	THOM-A-08-P07-1	silica	2	D	1	F	1	\N	\N	2022-10-05 22:04:44.136828	2022-10-05 22:04:44.136828	514
1631	draba-verna	THOM-A-08-P08-1	silica	2	D	2	F	1	\N	\N	2022-10-05 22:04:44.143906	2022-10-05 22:04:44.143906	514
1632	draba-verna	THOM-A-09-P07-1	silica	2	D	1	F	2	\N	\N	2022-10-05 22:04:44.148493	2022-10-05 22:04:44.148493	515
1633	draba-verna	THOM-A-09-P08-1	silica	2	D	2	F	2	\N	\N	2022-10-05 22:04:44.152912	2022-10-05 22:04:44.152912	515
1634	draba-verna	THOM-A-12-P07-1	silica	2	D	2	F	3	\N	\N	2022-10-05 22:04:44.157546	2022-10-05 22:04:44.157546	1960
1635	draba-verna	THOM-A-12-P08-1	silica	2	D	3	F	3	\N	\N	2022-10-05 22:04:44.162523	2022-10-05 22:04:44.162523	1960
1636	draba-verna	VILLE-A-01-P07-1	silica	2	D	1	F	4	\N	\N	2022-10-05 22:04:44.167722	2022-10-05 22:04:44.167722	546
1637	draba-verna	VILLE-A-01-P08-1	silica	2	D	2	F	4	\N	\N	2022-10-05 22:04:44.175247	2022-10-05 22:04:44.175247	546
1638	draba-verna	VILLE-A-02-P07-1	silica	2	D	1	F	5	\N	\N	2022-10-05 22:04:44.182384	2022-10-05 22:04:44.182384	547
1639	draba-verna	VILLE-A-02-P08-1	silica	2	D	3	F	5	\N	\N	2022-10-05 22:04:44.187128	2022-10-05 22:04:44.187128	547
1640	draba-verna	VILLE-A-03-P07-1	silica	2	D	1	F	6	\N	\N	2022-10-05 22:04:44.192625	2022-10-05 22:04:44.192625	548
1641	draba-verna	VILLE-A-03-P08-1	silica	2	D	2	F	6	\N	\N	2022-10-05 22:04:44.198425	2022-10-05 22:04:44.198425	548
1642	draba-verna	VILLE-A-04-P07-1	silica	2	D	1	F	7	\N	\N	2022-10-05 22:04:44.203397	2022-10-05 22:04:44.203397	549
1643	draba-verna	VILLE-A-04-P08-1	silica	2	D	2	F	7	\N	\N	2022-10-05 22:04:44.210344	2022-10-05 22:04:44.210344	549
1644	draba-verna	VILLE-A-06-P07-1	silica	2	D	2	F	8	\N	\N	2022-10-05 22:04:44.216582	2022-10-05 22:04:44.216582	551
1645	draba-verna	VILLE-A-06-P08-1	silica	1	D	3	F	8	\N	\N	2022-10-05 22:04:44.22149	2022-10-05 22:04:44.22149	551
1646	draba-verna	VILLE-A-07-P07-1	silica	2	D	1	F	9	\N	\N	2022-10-05 22:04:44.227042	2022-10-05 22:04:44.227042	552
1647	draba-verna	VILLE-A-07-P08-1	silica	2	D	2	F	9	\N	\N	2022-10-05 22:04:44.232353	2022-10-05 22:04:44.232353	552
1648	draba-verna	VILLE-A-08-P07-1	silica	2	D	1	F	10	\N	\N	2022-10-05 22:04:44.237385	2022-10-05 22:04:44.237385	553
1649	draba-verna	VILLE-A-08-P08-1	silica	1	D	2	F	10	\N	\N	2022-10-05 22:04:44.242051	2022-10-05 22:04:44.242051	553
1650	draba-verna	VILLE-A-09-P07-1	silica	2	D	1	F	11	\N	\N	2022-10-05 22:04:44.24726	2022-10-05 22:04:44.24726	554
1651	draba-verna	VILLE-A-09-P08-1	silica	2	D	2	F	11	\N	\N	2022-10-05 22:04:44.252027	2022-10-05 22:04:44.252027	554
1652	draba-verna	VILLE-A-12-P07-1	silica	2	D	1	F	12	\N	\N	2022-10-05 22:04:44.256471	2022-10-05 22:04:44.256471	1972
1653	draba-verna	VILLE-A-12-P08-1	silica	2	D	2	F	12	\N	\N	2022-10-05 22:04:44.261953	2022-10-05 22:04:44.261953	1972
1654	draba-verna	VILLE-A-14-P07-1	silica	2	D	1	G	1	\N	\N	2022-10-05 22:04:44.267624	2022-10-05 22:04:44.267624	1974
1655	draba-verna	VILLE-A-14-P08-1	silica	1	D	3	G	1	\N	\N	2022-10-05 22:04:44.272076	2022-10-05 22:04:44.272076	1974
1656	draba-verna	VILLE-B-01-P07-1	silica	2	D	1	G	2	\N	\N	2022-10-05 22:04:44.277304	2022-10-05 22:04:44.277304	556
1657	draba-verna	VILLE-B-01-P08-1	silica	2	D	2	G	2	\N	\N	2022-10-05 22:04:44.283325	2022-10-05 22:04:44.283325	556
1658	draba-verna	VILLE-B-02-P07-1	silica	2	D	2	G	3	\N	\N	2022-10-05 22:04:44.289455	2022-10-05 22:04:44.289455	557
1659	draba-verna	VILLE-B-02-Placeholder-NA	silica	2	D	\N	\N	\N	\N	\N	2022-10-05 22:04:44.2951	2022-10-05 22:04:44.2951	557
1660	draba-verna	VILLE-B-03-P07-1	silica	2	D	1	G	4	\N	\N	2022-10-05 22:04:44.300672	2022-10-05 22:04:44.300672	558
1661	draba-verna	VILLE-B-03-P08-1	silica	2	D	2	G	4	\N	\N	2022-10-05 22:04:44.305221	2022-10-05 22:04:44.305221	558
1662	draba-verna	VILLE-B-05-P07-1	silica	2	D	1	G	5	\N	\N	2022-10-05 22:04:44.310376	2022-10-05 22:04:44.310376	560
1663	draba-verna	VILLE-B-05-P08-1	silica	2	D	2	G	5	\N	\N	2022-10-05 22:04:44.315372	2022-10-05 22:04:44.315372	560
1664	draba-verna	VILLE-B-06-P07-1	silica	2	D	1	G	6	\N	\N	2022-10-05 22:04:44.319807	2022-10-05 22:04:44.319807	561
1665	draba-verna	VILLE-B-06-P08-1	silica	2	D	2	G	6	\N	\N	2022-10-05 22:04:44.325333	2022-10-05 22:04:44.325333	561
1666	draba-verna	VILLE-B-10-P07-1	silica	2	D	2	G	7	\N	\N	2022-10-05 22:04:44.330994	2022-10-05 22:04:44.330994	564
1667	draba-verna	VILLE-B-10-P08-1	silica	2	D	3	G	7	\N	\N	2022-10-05 22:04:44.336569	2022-10-05 22:04:44.336569	564
1668	draba-verna	VILLE-B-11-P07-1	silica	2	D	1	G	8	\N	\N	2022-10-05 22:04:44.341692	2022-10-05 22:04:44.341692	565
1669	draba-verna	VILLE-B-11-P08-1	silica	2	D	2	G	8	\N	\N	2022-10-05 22:04:44.346555	2022-10-05 22:04:44.346555	565
1670	draba-verna	VILLE-B-14-P07-1	silica	2	D	1	G	9	\N	\N	2022-10-05 22:04:44.351743	2022-10-05 22:04:44.351743	1985
1671	draba-verna	VILLE-B-14-P08-1	silica	2	D	2	G	9	\N	\N	2022-10-05 22:04:44.357255	2022-10-05 22:04:44.357255	1985
1672	draba-verna	VILLE-C-1-P07-1	silica	2	D	2	G	10	\N	\N	2022-10-05 22:04:44.363196	2022-10-05 22:04:44.363196	1986
1673	draba-verna	VILLE-C-1-P08-1	silica	1	D	3	G	10	\N	\N	2022-10-05 22:04:44.368863	2022-10-05 22:04:44.368863	1986
1674	draba-verna	VILLE-C-2-P07-1	silica	2	D	1	G	11	\N	\N	2022-10-05 22:04:44.374829	2022-10-05 22:04:44.374829	566
1675	draba-verna	VILLE-C-2-P08-1	silica	2	D	2	G	11	\N	\N	2022-10-05 22:04:44.380608	2022-10-05 22:04:44.380608	566
1676	draba-verna	VILLE-C-3-P07-1	silica	2	D	1	G	12	\N	\N	2022-10-05 22:04:44.385995	2022-10-05 22:04:44.385995	1988
1677	draba-verna	VILLE-C-3-P08-1	silica	2	D	2	G	12	\N	\N	2022-10-05 22:04:44.391395	2022-10-05 22:04:44.391395	1988
1678	draba-verna	VILLE-C-6-P07-1	silica	2	D	1	H	1	\N	\N	2022-10-05 22:04:44.397283	2022-10-05 22:04:44.397283	568
1679	draba-verna	VILLE-C-6-P08-1	silica	2	D	2	H	1	\N	\N	2022-10-05 22:04:44.403654	2022-10-05 22:04:44.403654	568
1680	draba-verna	VILLE-C-7-P07-1	silica	2	D	1	H	2	\N	\N	2022-10-05 22:04:44.409209	2022-10-05 22:04:44.409209	1991
1681	draba-verna	VILLE-C-7-P08-1	silica	2	D	2	H	2	\N	\N	2022-10-05 22:04:44.414942	2022-10-05 22:04:44.414942	1991
\.


--
-- Data for Name: populations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.populations (id, population_name, created_at, updated_at, subpopulation) FROM stdin;
1	AMBR	2022-10-05 22:04:16.751944	2022-10-05 22:04:16.751944	A
11	ANGE	2022-10-05 22:04:16.872646	2022-10-05 22:04:16.872646	A
19	ANGE	2022-10-05 22:04:16.93101	2022-10-05 22:04:16.93101	B
27	AUZE	2022-10-05 22:04:16.986844	2022-10-05 22:04:16.986844	A
37	BARA	2022-10-05 22:04:17.04838	2022-10-05 22:04:17.04838	C
46	BARR	2022-10-05 22:04:17.105178	2022-10-05 22:04:17.105178	A
56	BELL	2022-10-05 22:04:17.169262	2022-10-05 22:04:17.169262	A
67	BROU	2022-10-05 22:04:17.234718	2022-10-05 22:04:17.234718	A
77	CAMA	2022-10-05 22:04:17.299351	2022-10-05 22:04:17.299351	C
80	CAMA	2022-10-05 22:04:17.317701	2022-10-05 22:04:17.317701	D
88	CAMA	2022-10-05 22:04:17.372468	2022-10-05 22:04:17.372468	E
92	CARL	2022-10-05 22:04:17.39822	2022-10-05 22:04:17.39822	A
102	CASS	2022-10-05 22:04:17.460955	2022-10-05 22:04:17.460955	A
111	CAST	2022-10-05 22:04:17.521382	2022-10-05 22:04:17.521382	A
121	CERN	2022-10-05 22:04:17.601466	2022-10-05 22:04:17.601466	A
126	CERN	2022-10-05 22:04:17.642567	2022-10-05 22:04:17.642567	B
136	CIER	2022-10-05 22:04:17.708396	2022-10-05 22:04:17.708396	A
145	CINT	2022-10-05 22:04:17.767327	2022-10-05 22:04:17.767327	A
154	CINT	2022-10-05 22:04:17.839681	2022-10-05 22:04:17.839681	B
164	CLAR	2022-10-05 22:04:17.905556	2022-10-05 22:04:17.905556	B
173	CLAR	2022-10-05 22:04:17.993742	2022-10-05 22:04:17.993742	C
183	COLO	2022-10-05 22:04:18.074356	2022-10-05 22:04:18.074356	B
191	DECA	2022-10-05 22:04:18.153623	2022-10-05 22:04:18.153623	A
201	ESPE	2022-10-05 22:04:18.248	2022-10-05 22:04:18.248	B
211	FERR	2022-10-05 22:04:18.315867	2022-10-05 22:04:18.315867	A
221	GAIL	2022-10-05 22:04:18.382388	2022-10-05 22:04:18.382388	A
226	GAIL	2022-10-05 22:04:18.417986	2022-10-05 22:04:18.417986	B
235	GREZ	2022-10-05 22:04:18.473458	2022-10-05 22:04:18.473458	A
241	JUZE	2022-10-05 22:04:18.51222	2022-10-05 22:04:18.51222	A
252	JUZET	2022-10-05 22:04:18.581166	2022-10-05 22:04:18.581166	A
262	JUZET	2022-10-05 22:04:18.654351	2022-10-05 22:04:18.654351	C
273	LABA	2022-10-05 22:04:18.736964	2022-10-05 22:04:18.736964	A
283	LABAS	2022-10-05 22:04:18.804715	2022-10-05 22:04:18.804715	A
293	LAMA	2022-10-05 22:04:18.889096	2022-10-05 22:04:18.889096	A
303	LANT	2022-10-05 22:04:18.951603	2022-10-05 22:04:18.951603	D
313	LAUZ	2022-10-05 22:04:19.019474	2022-10-05 22:04:19.019474	A
314	LECT	2022-10-05 22:04:19.025575	2022-10-05 22:04:19.025575	A
324	LECT	2022-10-05 22:04:19.086751	2022-10-05 22:04:19.086751	B
334	LUNA	2022-10-05 22:04:19.16276	2022-10-05 22:04:19.16276	A
343	MARS	2022-10-05 22:04:19.222148	2022-10-05 22:04:19.222148	A
353	MART	2022-10-05 22:04:19.286919	2022-10-05 22:04:19.286919	A
363	MASS	2022-10-05 22:04:19.361308	2022-10-05 22:04:19.361308	A
373	MONB	2022-10-05 22:04:19.427257	2022-10-05 22:04:19.427257	A
383	MONE	2022-10-05 22:04:19.493458	2022-10-05 22:04:19.493458	A
392	MONF	2022-10-05 22:04:19.550025	2022-10-05 22:04:19.550025	A
402	MONT	2022-10-05 22:04:19.611152	2022-10-05 22:04:19.611152	B
407	MONTI	2022-10-05 22:04:19.642653	2022-10-05 22:04:19.642653	A
417	MONTI	2022-10-05 22:04:19.70536	2022-10-05 22:04:19.70536	D
425	MONTM	2022-10-05 22:04:19.752315	2022-10-05 22:04:19.752315	A
435	NAZA	2022-10-05 22:04:19.813323	2022-10-05 22:04:19.813323	A
443	PUYM	2022-10-05 22:04:19.867144	2022-10-05 22:04:19.867144	B
450	RAYR	2022-10-05 22:04:19.909878	2022-10-05 22:04:19.909878	A
460	RAYR	2022-10-05 22:04:19.975151	2022-10-05 22:04:19.975151	B
470	SALE	2022-10-05 22:04:20.044191	2022-10-05 22:04:20.044191	A
480	SALV	2022-10-05 22:04:20.117231	2022-10-05 22:04:20.117231	A
490	SAUB	2022-10-05 22:04:20.18827	2022-10-05 22:04:20.18827	B
500	SIMO	2022-10-05 22:04:20.263496	2022-10-05 22:04:20.263496	A
509	THOM	2022-10-05 22:04:20.331335	2022-10-05 22:04:20.331335	A
517	VICT	2022-10-05 22:04:20.37717	2022-10-05 22:04:20.37717	B
526	VIEL	2022-10-05 22:04:20.427608	2022-10-05 22:04:20.427608	A
536	VILLA	2022-10-05 22:04:20.485789	2022-10-05 22:04:20.485789	A
546	VILLE	2022-10-05 22:04:20.548402	2022-10-05 22:04:20.548402	A
556	VILLE	2022-10-05 22:04:20.604545	2022-10-05 22:04:20.604545	B
566	VILLE	2022-10-05 22:04:20.662295	2022-10-05 22:04:20.662295	C
574	VILLEM	2022-10-05 22:04:20.707818	2022-10-05 22:04:20.707818	A
1237	MONTI	2022-10-05 22:04:24.616693	2022-10-05 22:04:24.616693	B
1706	DAMI	2022-10-05 22:04:27.550023	2022-10-05 22:04:27.550023	C
1794	LANT	2022-10-05 22:04:28.064415	2022-10-05 22:04:28.064415	B
1839	MARS	2022-10-05 22:04:28.339035	2022-10-05 22:04:28.339035	C
2268	AULO	2022-10-05 22:04:31.129197	2022-10-05 22:04:31.129197	A
2269	AURE	2022-10-05 22:04:31.133318	2022-10-05 22:04:31.133318	B
2271	AXLE	2022-10-05 22:04:31.142599	2022-10-05 22:04:31.142599	A
2272	AXLE	2022-10-05 22:04:31.146554	2022-10-05 22:04:31.146554	B
2273	BACC	2022-10-05 22:04:31.150429	2022-10-05 22:04:31.150429	B
2274	BACC	2022-10-05 22:04:31.154224	2022-10-05 22:04:31.154224	C
2275	BACC	2022-10-05 22:04:31.158235	2022-10-05 22:04:31.158235	D
2276	BACC	2022-10-05 22:04:31.162504	2022-10-05 22:04:31.162504	E
2277	BACC	2022-10-05 22:04:31.169538	2022-10-05 22:04:31.169538	F
2278	BAGNB	2022-10-05 22:04:31.173481	2022-10-05 22:04:31.173481	A
2279	BAGNB	2022-10-05 22:04:31.177692	2022-10-05 22:04:31.177692	B
2280	BANI	2022-10-05 22:04:31.182083	2022-10-05 22:04:31.182083	A
2281	BANI	2022-10-05 22:04:31.186152	2022-10-05 22:04:31.186152	B
2282	BANI	2022-10-05 22:04:31.190202	2022-10-05 22:04:31.190202	C
2283	BARA	2022-10-05 22:04:31.195131	2022-10-05 22:04:31.195131	B
2285	BARC	2022-10-05 22:04:31.204701	2022-10-05 22:04:31.204701	A
2287	BAZI	2022-10-05 22:04:31.222252	2022-10-05 22:04:31.222252	A
2288	BELC	2022-10-05 22:04:31.226681	2022-10-05 22:04:31.226681	A
2289	BELC	2022-10-05 22:04:31.231049	2022-10-05 22:04:31.231049	B
2290	BELC	2022-10-05 22:04:31.235386	2022-10-05 22:04:31.235386	C
2292	BERNA	2022-10-05 22:04:31.244798	2022-10-05 22:04:31.244798	A
2293	BESS	2022-10-05 22:04:31.249656	2022-10-05 22:04:31.249656	A
2294	BOULO	2022-10-05 22:04:31.253704	2022-10-05 22:04:31.253704	A
2296	BROU	2022-10-05 22:04:31.263328	2022-10-05 22:04:31.263328	B
2297	BROU	2022-10-05 22:04:31.267569	2022-10-05 22:04:31.267569	C
2298	BULA	2022-10-05 22:04:31.271704	2022-10-05 22:04:31.271704	A
2299	BULE	2022-10-05 22:04:31.277459	2022-10-05 22:04:31.277459	B
2303	CAPE	2022-10-05 22:04:31.297853	2022-10-05 22:04:31.297853	A
2307	CASTI	2022-10-05 22:04:31.31824	2022-10-05 22:04:31.31824	A
2308	CAZA	2022-10-05 22:04:31.322539	2022-10-05 22:04:31.322539	B
2309	CEPE	2022-10-05 22:04:31.328352	2022-10-05 22:04:31.328352	A
2312	CHEI	2022-10-05 22:04:31.344021	2022-10-05 22:04:31.344021	A
2314	CIER	2022-10-05 22:04:31.355675	2022-10-05 22:04:31.355675	B
2315	CIER	2022-10-05 22:04:31.360363	2022-10-05 22:04:31.360363	C
2318	CLAR	2022-10-05 22:04:31.37737	2022-10-05 22:04:31.37737	A
2321	COLO	2022-10-05 22:04:31.391765	2022-10-05 22:04:31.391765	A
2323	COLO	2022-10-05 22:04:31.402633	2022-10-05 22:04:31.402633	C
2324	COMT	2022-10-05 22:04:31.406912	2022-10-05 22:04:31.406912	A
2325	CRAN	2022-10-05 22:04:31.412249	2022-10-05 22:04:31.412249	A
2326	DAMI	2022-10-05 22:04:31.417116	2022-10-05 22:04:31.417116	A
2327	DAMI	2022-10-05 22:04:31.421197	2022-10-05 22:04:31.421197	B
2330	DIEU	2022-10-05 22:04:31.436451	2022-10-05 22:04:31.436451	A
2332	FAYA	2022-10-05 22:04:31.445848	2022-10-05 22:04:31.445848	A
2337	JACO	2022-10-05 22:04:31.471131	2022-10-05 22:04:31.471131	A
2338	JACO	2022-10-05 22:04:31.480914	2022-10-05 22:04:31.480914	C
2339	JULI	2022-10-05 22:04:31.484845	2022-10-05 22:04:31.484845	A
2342	JUZET	2022-10-05 22:04:31.500719	2022-10-05 22:04:31.500719	B
2345	LABA	2022-10-05 22:04:31.518811	2022-10-05 22:04:31.518811	B
2346	LABA	2022-10-05 22:04:31.523049	2022-10-05 22:04:31.523049	C
2347	LABA	2022-10-05 22:04:31.527361	2022-10-05 22:04:31.527361	D
2349	LABAS	2022-10-05 22:04:31.537258	2022-10-05 22:04:31.537258	B
2350	LABR	2022-10-05 22:04:31.541992	2022-10-05 22:04:31.541992	A
2351	LACR	2022-10-05 22:04:31.546573	2022-10-05 22:04:31.546573	A
2352	LACR	2022-10-05 22:04:31.550789	2022-10-05 22:04:31.550789	C
2353	LAGR	2022-10-05 22:04:31.554931	2022-10-05 22:04:31.554931	A
2355	LAMA	2022-10-05 22:04:31.564742	2022-10-05 22:04:31.564742	B
2357	LANT	2022-10-05 22:04:31.574401	2022-10-05 22:04:31.574401	C
2362	LESP	2022-10-05 22:04:31.602839	2022-10-05 22:04:31.602839	A
2363	LOUB	2022-10-05 22:04:31.607082	2022-10-05 22:04:31.607082	A
2364	LOUB	2022-10-05 22:04:31.611744	2022-10-05 22:04:31.611744	B
2366	LUZE	2022-10-05 22:04:31.621885	2022-10-05 22:04:31.621885	A
2367	LUZE	2022-10-05 22:04:31.629185	2022-10-05 22:04:31.629185	B
2368	LUZE	2022-10-05 22:04:31.633951	2022-10-05 22:04:31.633951	D
2369	LUZE	2022-10-05 22:04:31.638102	2022-10-05 22:04:31.638102	E
2371	MARS	2022-10-05 22:04:31.648998	2022-10-05 22:04:31.648998	B
2374	MAZA	2022-10-05 22:04:31.666001	2022-10-05 22:04:31.666001	A
2375	MEDA	2022-10-05 22:04:31.670706	2022-10-05 22:04:31.670706	A
2376	MERE	2022-10-05 22:04:31.675182	2022-10-05 22:04:31.675182	A
2377	MERE	2022-10-05 22:04:31.679722	2022-10-05 22:04:31.679722	B
2378	MERV	2022-10-05 22:04:31.68513	2022-10-05 22:04:31.68513	A
2379	MERV	2022-10-05 22:04:31.689288	2022-10-05 22:04:31.689288	B
2383	MONT	2022-10-05 22:04:31.709785	2022-10-05 22:04:31.709785	A
2385	MONTB	2022-10-05 22:04:31.719354	2022-10-05 22:04:31.719354	A
2386	MONTG	2022-10-05 22:04:31.723692	2022-10-05 22:04:31.723692	B
2387	MONTG	2022-10-05 22:04:31.727986	2022-10-05 22:04:31.727986	D
2392	MONTM	2022-10-05 22:04:31.755039	2022-10-05 22:04:31.755039	B
2393	MOUL	2022-10-05 22:04:31.760059	2022-10-05 22:04:31.760059	A
2394	NAUV	2022-10-05 22:04:31.764658	2022-10-05 22:04:31.764658	A
2395	NAUV	2022-10-05 22:04:31.768812	2022-10-05 22:04:31.768812	B
2396	NAUV	2022-10-05 22:04:31.772864	2022-10-05 22:04:31.772864	C
2397	NAYR	2022-10-05 22:04:31.777702	2022-10-05 22:04:31.777702	A
2399	PAMP	2022-10-05 22:04:31.786959	2022-10-05 22:04:31.786959	A
2400	PAMP	2022-10-05 22:04:31.791878	2022-10-05 22:04:31.791878	B
2401	PANA	2022-10-05 22:04:31.796854	2022-10-05 22:04:31.796854	C
2402	PASD	2022-10-05 22:04:31.800891	2022-10-05 22:04:31.800891	B
2403	PREI	2022-10-05 22:04:31.804729	2022-10-05 22:04:31.804729	A
2405	RADE	2022-10-05 22:04:31.814447	2022-10-05 22:04:31.814447	A
2408	REAL	2022-10-05 22:04:31.828978	2022-10-05 22:04:31.828978	A
2409	ROME	2022-10-05 22:04:31.833404	2022-10-05 22:04:31.833404	A
2410	ROQU	2022-10-05 22:04:31.83771	2022-10-05 22:04:31.83771	B
2413	SAMA	2022-10-05 22:04:31.853183	2022-10-05 22:04:31.853183	A
2414	SAUB	2022-10-05 22:04:31.85709	2022-10-05 22:04:31.85709	A
2416	SAUB	2022-10-05 22:04:31.865827	2022-10-05 22:04:31.865827	C
2417	SAUR	2022-10-05 22:04:31.869833	2022-10-05 22:04:31.869833	A
2418	SEIS	2022-10-05 22:04:31.873827	2022-10-05 22:04:31.873827	A
2420	SORE	2022-10-05 22:04:31.883285	2022-10-05 22:04:31.883285	A
2421	TARN	2022-10-05 22:04:31.887444	2022-10-05 22:04:31.887444	C
2423	VALE	2022-10-05 22:04:31.899075	2022-10-05 22:04:31.899075	A
2425	VICT	2022-10-05 22:04:31.909249	2022-10-05 22:04:31.909249	C
2431	VILLE	2022-10-05 22:04:31.940424	2022-10-05 22:04:31.940424	D
\.


--
-- Data for Name: root_communities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.root_communities (id, population_id, root_otu_1, root_otu_2, root_otu_3, root_otu_4, root_otu_5, root_otu_6, root_otu_7, root_otu_9, root_otu_11, root_otu_16, root_otu_17, root_otu_19, root_otu_20, root_otu_21, root_otu_24, root_otu_26, root_otu_28, root_otu_30, root_otu_41, root_otu_46, root_otu_49, root_otu_50, root_otu_51, root_otu_58, root_otu_63, root_otu_64, root_otu_70, root_otu_75, root_otu_76, root_otu_100, root_otu_102, root_otu_114, root_otu_121, root_otu_122, root_otu_144, root_otu_146, root_otu_156, root_otu_163, root_otu_174, root_otu_199, root_otu_238, root_otu_258, root_otu_284, root_otu_989, root_microbiota_richness, root_microbiota_shannon, root_microbiota_pcoa1, root_microbiota_pcoa2, root_pathobiota_richness, root_pathobiota_shannon, root_pathobiota_pcoa2, created_at, updated_at) FROM stdin;
1	1	t	f	f	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.40157143	2.158914573	-0.0128578429	-0.1943671377	1.813714634	0.4369719543	0.1961986589	2022-10-05 22:04:33.330053	2022-10-05 22:04:33.330053
2	11	t	f	t	f	t	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	9.738071429	1.588014573	-0.1766678429	0.09113286225	2.034474634	0.4914719543	0.2027486589	2022-10-05 22:04:33.347851	2022-10-05 22:04:33.347851
3	19	t	f	f	f	t	t	t	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	8.826471429	1.540914573	-0.2571678429	0.1037328623	1.479914634	0.2656419543	0.2093686589	2022-10-05 22:04:33.355064	2022-10-05 22:04:33.355064
4	2268	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	11.38857143	2.121114573	0.4055321571	0.1384328623	1.694214634	0.3579419543	0.04045865892	2022-10-05 22:04:33.362051	2022-10-05 22:04:33.362051
5	2269	t	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	11.36607143	2.134114573	0.1410921571	-0.08449713775	1.919404634	0.4510119543	0.08592865892	2022-10-05 22:04:33.368843	2022-10-05 22:04:33.368843
6	27	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	12.38897143	2.162514573	0.0971321571	-0.1716671377	2.167314634	0.6586419543	0.08603865892	2022-10-05 22:04:33.375712	2022-10-05 22:04:33.375712
7	2271	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.29426143	1.722214573	0.1009121571	-0.1963671377	1.935154634	0.4624519543	0.2521586589	2022-10-05 22:04:33.381774	2022-10-05 22:04:33.381774
8	2272	f	t	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.09857143	2.070914573	0.1201121571	-0.1154671377	2.064414634	0.4874119543	0.1744486589	2022-10-05 22:04:33.393155	2022-10-05 22:04:33.393155
9	2273	t	f	f	f	t	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	9.999371429	1.979474573	-0.0952678429	-0.3116671377	2.117614634	0.6996419543	0.2397286589	2022-10-05 22:04:33.400785	2022-10-05 22:04:33.400785
10	2274	t	f	t	f	t	t	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.61677143	2.120314573	-0.0330578429	-0.4445671377	1.674714634	0.3397419543	0.2203286589	2022-10-05 22:04:33.414949	2022-10-05 22:04:33.414949
11	2275	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.740571429	1.988334573	-0.0914678429	-0.4465671377	1.908394634	0.4574519543	0.2217186589	2022-10-05 22:04:33.421438	2022-10-05 22:04:33.421438
12	2276	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.911271429	2.017894573	-0.0761678429	-0.4384671377	2.019904634	0.3796819543	0.1787586589	2022-10-05 22:04:33.428013	2022-10-05 22:04:33.428013
13	2277	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.30530143	2.048514573	-0.0582678429	-0.4394671377	1.726414634	0.4065519543	0.2355486589	2022-10-05 22:04:33.43429	2022-10-05 22:04:33.43429
14	2278	t	t	t	f	t	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	10.95617143	2.058914573	0.1428821571	-0.1205771377	1.920914634	0.4512319543	0.1985386589	2022-10-05 22:04:33.441127	2022-10-05 22:04:33.441127
15	2279	t	t	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	t	f	t	f	t	f	f	f	f	8.654571429	1.644814573	0.0885421571	-0.1968671377	2.056324634	0.5398719543	0.1633786589	2022-10-05 22:04:33.452354	2022-10-05 22:04:33.452354
16	2280	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:33.458983	2022-10-05 22:04:33.458983
17	2281	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	11.51957143	2.184514573	0.1325221571	-0.1263171377	0	0	0	2022-10-05 22:04:33.46765	2022-10-05 22:04:33.46765
18	2282	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	9.048771429	1.932224573	0.1446021571	-0.09086713775	2.090014634	0.5219219543	0.09376865892	2022-10-05 22:04:33.47418	2022-10-05 22:04:33.47418
19	2283	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.378471429	1.992784573	0.0935321571	-0.06718713775	0	0	0	2022-10-05 22:04:33.482143	2022-10-05 22:04:33.482143
20	37	f	f	t	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	7.831071429	1.556714573	0.2320321571	0.08423286225	2.032194634	0.4825019543	0.04518865892	2022-10-05 22:04:33.489883	2022-10-05 22:04:33.489883
21	2285	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.93917143	2.151514573	0.2554321571	-0.005007137747	1.768614634	0.3688419543	0.08979865892	2022-10-05 22:04:33.497046	2022-10-05 22:04:33.497046
22	46	f	f	t	t	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	10.17087143	2.012094573	0.2898321571	0.002832862253	2.487614634	0.5440319543	-0.01784134108	2022-10-05 22:04:33.503144	2022-10-05 22:04:33.503144
23	2287	t	f	t	f	t	t	t	t	f	f	t	t	f	t	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	t	f	t	t	f	f	f	f	t	f	f	12.65787143	2.347514573	0.0374121571	-0.1547871377	1.811614634	0.3147419543	0.2770586589	2022-10-05 22:04:33.509956	2022-10-05 22:04:33.509956
24	2288	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	9.159171429	1.882404573	0.1543021571	-0.1186171377	1.882704634	0.4299919543	0.1808186589	2022-10-05 22:04:33.516631	2022-10-05 22:04:33.516631
25	2289	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.17407143	1.811514573	0.1204721571	-0.1389571377	1.843514634	0.4079619543	0.2508586589	2022-10-05 22:04:33.522577	2022-10-05 22:04:33.522577
26	2290	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	11.11277143	2.235314573	0.1602321571	-0.06681713775	1.810814634	0.3953319543	0.1598486589	2022-10-05 22:04:33.531834	2022-10-05 22:04:33.531834
27	56	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.47116143	2.090214573	0.3208321571	0.09623286225	1.974234634	0.5189819543	0.2094486589	2022-10-05 22:04:33.537889	2022-10-05 22:04:33.537889
28	2292	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.26217143	2.040014573	0.0820321571	-0.1828671377	0	0	0	2022-10-05 22:04:33.545255	2022-10-05 22:04:33.545255
29	2293	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	t	f	f	11.30787143	2.221314573	0.1128321571	-0.01577713775	2.125614634	0.6197419543	0.2351986589	2022-10-05 22:04:33.551304	2022-10-05 22:04:33.551304
30	2294	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.881271429	2.082714573	0.2582321571	0.06163286225	2.010734634	0.4592619543	0.01715865892	2022-10-05 22:04:33.558033	2022-10-05 22:04:33.558033
31	67	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.683671429	1.884894573	0.2554321571	-0.03939713775	0	0	0	2022-10-05 22:04:33.565387	2022-10-05 22:04:33.565387
32	2296	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.924671429	1.946304573	0.2413321571	-0.004317137747	1.715314634	0.3367419543	0.09932865892	2022-10-05 22:04:33.572088	2022-10-05 22:04:33.572088
33	2297	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.68667143	2.133914573	0.2512321571	-0.04734713775	1.814014634	0.3925419543	0.03685865892	2022-10-05 22:04:33.578735	2022-10-05 22:04:33.578735
34	2298	t	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	14.54227143	2.474814573	0.0623021571	-0.1524071377	1.896184634	0.4414719543	0.2196986589	2022-10-05 22:04:33.585912	2022-10-05 22:04:33.585912
35	2299	t	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	9.533171429	1.834894573	0.1278321571	-0.1247071377	2.584514634	0.7483419543	0.1269786589	2022-10-05 22:04:33.59559	2022-10-05 22:04:33.59559
36	77	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	t	f	f	11.66227143	2.163614573	0.1746321571	-0.05409413775	2.029184634	0.4204919543	0.09897865892	2022-10-05 22:04:33.605263	2022-10-05 22:04:33.605263
37	80	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	t	f	f	f	f	11.69917143	2.222014573	0.1981321571	0.009882862253	0	0	0	2022-10-05 22:04:33.612469	2022-10-05 22:04:33.612469
38	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:33.618898	2022-10-05 22:04:33.618898
39	2303	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	12.24117143	2.367314573	0.2688321571	-0.04926713775	1.737614634	0.3539419543	-0.02944134108	2022-10-05 22:04:33.626694	2022-10-05 22:04:33.626694
40	92	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	9.636371429	1.948584573	0.3946321571	0.1297328623	1.511114634	0.2307419543	0.1721986589	2022-10-05 22:04:33.633529	2022-10-05 22:04:33.633529
41	102	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	8.999371429	1.763814573	0.1676321571	-0.1299271377	1.894154634	0.4357519543	0.2887586589	2022-10-05 22:04:33.642788	2022-10-05 22:04:33.642788
42	111	t	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	11.09497143	2.156514573	0.4262321571	-0.09661713775	2.223714634	0.6000419543	-0.05734134108	2022-10-05 22:04:33.650316	2022-10-05 22:04:33.650316
43	2307	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	7.678271429	1.480514573	-0.1172678429	-0.09235713775	1.866014634	0.4176119543	0.05030865892	2022-10-05 22:04:33.65747	2022-10-05 22:04:33.65747
44	2308	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:33.666308	2022-10-05 22:04:33.666308
45	2309	t	f	f	t	t	t	t	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	11.26927143	2.171714573	0.1707321571	-0.3008671377	2.446614634	0.6790419543	0.1592686589	2022-10-05 22:04:33.673403	2022-10-05 22:04:33.673403
46	121	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	f	f	8.306071429	1.674514573	0.2006321571	-0.01481713775	1.754714634	0.3657419543	0.09473865892	2022-10-05 22:04:33.680037	2022-10-05 22:04:33.680037
47	126	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.921171429	2.057214573	0.0417021571	-0.09487713775	1.898034634	0.3791019543	0.3320586589	2022-10-05 22:04:33.686249	2022-10-05 22:04:33.686249
48	2312	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	13.96737143	2.216814573	0.1306521571	-0.1129371377	1.897944634	0.4384119543	0.07805865892	2022-10-05 22:04:33.694328	2022-10-05 22:04:33.694328
49	136	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	8.689771429	1.245514573	-0.5814678429	-0.1104071377	2.096914634	0.5473919543	0.1305586589	2022-10-05 22:04:33.701397	2022-10-05 22:04:33.701397
50	2314	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.04877143	1.809614573	-0.5647678429	-0.08099713775	0	0	0	2022-10-05 22:04:33.712027	2022-10-05 22:04:33.712027
51	2315	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:33.721733	2022-10-05 22:04:33.721733
52	145	t	f	f	f	t	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.906471429	1.987744573	-0.0959678429	-0.4122671377	2.192214634	0.5734419543	0.1990086589	2022-10-05 22:04:33.730117	2022-10-05 22:04:33.730117
53	154	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	9.338171429	1.289614573	-0.5261678429	-0.08011713775	0	0	0	2022-10-05 22:04:33.736926	2022-10-05 22:04:33.736926
54	2318	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	10.61807143	1.518614573	-0.3639678429	0.1888328623	1.754714634	0.3584419543	-0.04694134108	2022-10-05 22:04:33.744325	2022-10-05 22:04:33.744325
55	164	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	6.900671429	0.9632145733	-0.4534678429	0.2075328623	1.922994634	0.4369019543	0.1332386589	2022-10-05 22:04:33.751329	2022-10-05 22:04:33.751329
56	173	t	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.509171429	1.278614573	-0.3961678429	0.2144328623	0	0	0	2022-10-05 22:04:33.758898	2022-10-05 22:04:33.758898
57	2321	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	10.67337143	2.148214573	0.1474021571	-0.1268671377	1.879074634	0.4291219543	0.2358586589	2022-10-05 22:04:33.766067	2022-10-05 22:04:33.766067
58	183	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	11.11377143	2.301614573	0.1637321571	-0.09422713775	0	0	0	2022-10-05 22:04:33.773539	2022-10-05 22:04:33.773539
59	2323	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	t	f	t	f	f	9.169871429	1.763214573	0.1799321571	-0.1005571377	0	0	0	2022-10-05 22:04:33.780829	2022-10-05 22:04:33.780829
60	2324	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	t	f	f	f	t	10.98907143	2.182814573	0.0204221571	-0.09566713775	1.901204634	0.4399219543	0.06230865892	2022-10-05 22:04:33.786963	2022-10-05 22:04:33.786963
61	2325	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	8.326371429	1.794914573	0.1313421571	-0.09285713775	2.160514634	0.6762419543	0.03735865892	2022-10-05 22:04:33.794298	2022-10-05 22:04:33.794298
62	2326	t	f	t	f	t	t	t	t	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	11.75907143	2.209514573	0.1887321571	-0.2622671377	1.843014634	0.4658719543	0.2528586589	2022-10-05 22:04:33.801157	2022-10-05 22:04:33.801157
63	2327	t	f	f	f	t	t	f	t	f	f	t	f	f	t	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	11.91437143	2.148914573	0.0767521571	-0.3845671377	2.079814634	0.6151419543	0.2213686589	2022-10-05 22:04:33.807388	2022-10-05 22:04:33.807388
64	1706	t	f	t	f	t	t	f	t	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	11.71277143	2.189714573	0.1226221571	-0.2153671377	2.123214634	0.3717019543	0.1777486589	2022-10-05 22:04:33.814877	2022-10-05 22:04:33.814877
65	191	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.35037143	2.160914573	0.2346321571	0.04713286225	1.830714634	0.3981619543	0.1584186589	2022-10-05 22:04:33.820846	2022-10-05 22:04:33.820846
66	2330	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.838271429	1.745914573	0.3024321571	0.07023286225	1.834214634	0.3284419543	0.1399186589	2022-10-05 22:04:33.832077	2022-10-05 22:04:33.832077
67	201	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	t	f	f	10.13677143	1.871364573	0.2374321571	-0.06081713775	1.720714634	0.3440419543	0.1820286589	2022-10-05 22:04:33.838657	2022-10-05 22:04:33.838657
68	2332	t	f	t	f	t	t	f	t	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.529571429	1.640214573	-0.5033678429	-0.1609671377	1.891204634	0.3742119543	0.4150586589	2022-10-05 22:04:33.851767	2022-10-05 22:04:33.851767
69	211	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.77847143	2.087114573	0.2608321571	-0.05135113775	1.728614634	0.3492419543	0.2826586589	2022-10-05 22:04:33.870202	2022-10-05 22:04:33.870202
70	221	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	9.937971429	1.881444573	0.007802157095	0.2105328623	1.856614634	0.5314719543	0.2123286589	2022-10-05 22:04:33.878324	2022-10-05 22:04:33.878324
71	226	t	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.390571429	1.646714573	-0.0670678429	0.1390328623	2.383414634	0.6493419543	0.05939865892	2022-10-05 22:04:33.886637	2022-10-05 22:04:33.886637
72	235	t	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	6.714871429	0.8024145733	-0.8462678429	-0.05162513775	1.960494634	0.4725349543	0.2135786589	2022-10-05 22:04:33.89389	2022-10-05 22:04:33.89389
73	2337	f	f	t	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.80737143	1.974534573	0.1647321571	0.04783286225	0	0	0	2022-10-05 22:04:33.900808	2022-10-05 22:04:33.900808
74	2338	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:33.907193	2022-10-05 22:04:33.907193
75	2339	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	12.70757143	2.301614573	0.1334721571	-0.1318371377	1.835914634	0.4088119543	0.2198986589	2022-10-05 22:04:33.913964	2022-10-05 22:04:33.913964
76	241	t	f	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	12.00897143	2.230614573	0.4001321571	0.08293286225	1.993664634	0.5540719543	-0.04654134108	2022-10-05 22:04:33.920754	2022-10-05 22:04:33.920754
77	252	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	12.61597143	2.099814573	0.1362621571	-0.1033471377	2.065214634	0.5887419543	-0.002041341082	2022-10-05 22:04:33.929404	2022-10-05 22:04:33.929404
78	2342	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	t	f	t	f	f	f	f	6.783671429	1.054814573	0.1221121571	-0.1479071377	2.080114634	0.6878419543	0.1950086589	2022-10-05 22:04:33.935916	2022-10-05 22:04:33.935916
79	262	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	8.271771429	1.527814573	0.1337321571	-0.1130371377	0	0	0	2022-10-05 22:04:33.950862	2022-10-05 22:04:33.950862
80	273	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	10.22457143	2.019434573	0.1362221571	-0.3271671377	2.083414634	0.5678219543	0.2047386589	2022-10-05 22:04:33.957788	2022-10-05 22:04:33.957788
81	2345	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	11.94987143	2.241114573	0.2120321571	-0.2193671377	1.873534634	0.5196119543	0.2015386589	2022-10-05 22:04:33.964225	2022-10-05 22:04:33.964225
82	2346	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.19627143	2.016494573	0.1123221571	-0.3188671377	2.486314634	0.8107419543	0.2231586589	2022-10-05 22:04:33.970598	2022-10-05 22:04:33.970598
83	2347	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:33.977398	2022-10-05 22:04:33.977398
84	283	t	f	t	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	10.80727143	1.914424573	-0.1295678429	0.2689328623	1.880444634	0.4409119543	-0.004241341082	2022-10-05 22:04:33.984004	2022-10-05 22:04:33.984004
85	2349	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	10.98227143	1.916724573	0.4151321571	0.1694328623	1.981864634	0.4705899543	-0.009541341082	2022-10-05 22:04:34.00062	2022-10-05 22:04:34.00062
86	2350	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	10.58097143	1.997264573	0.2845321571	0.01872286225	1.846714634	0.4068319543	-0.01764134108	2022-10-05 22:04:34.013197	2022-10-05 22:04:34.013197
87	2351	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	9.161771429	1.879714573	0.1408721571	-0.03869713775	2.064514634	0.5661719543	0.04606865892	2022-10-05 22:04:34.021136	2022-10-05 22:04:34.021136
88	2352	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.20427143	2.067714573	0.1426321571	-0.01199713775	1.903474634	0.4360219543	0.2426386589	2022-10-05 22:04:34.029709	2022-10-05 22:04:34.029709
89	2353	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	9.856571429	1.969044573	0.2875321571	-0.03969713775	1.804014634	0.3871619543	0.1277686589	2022-10-05 22:04:34.037344	2022-10-05 22:04:34.037344
90	293	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	t	f	t	f	f	f	f	9.452771429	1.554214573	-0.3086678429	0.2051328623	0	0	0	2022-10-05 22:04:34.046064	2022-10-05 22:04:34.046064
91	2355	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.885371429	0.9424145733	-0.4625678429	0.2422328623	0	0	0	2022-10-05 22:04:34.053751	2022-10-05 22:04:34.053751
92	1794	t	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	9.059071429	1.840574573	0.4142321571	0.09583286225	1.818814634	0.4222319543	-0.08484134108	2022-10-05 22:04:34.062405	2022-10-05 22:04:34.062405
93	2357	t	f	f	f	t	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.05927143	2.057314573	-0.1446678429	-0.4294671377	2.803414634	0.6942419543	0.1681586589	2022-10-05 22:04:34.070693	2022-10-05 22:04:34.070693
94	303	t	f	f	f	t	t	f	t	t	t	f	f	t	f	f	f	f	f	f	f	t	t	t	f	t	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	10.96607143	2.154714573	-0.1277678429	-0.4395671377	2.147914634	0.5683419543	0.3032586589	2022-10-05 22:04:34.078419	2022-10-05 22:04:34.078419
95	313	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	10.88207143	2.037314573	0.3395321571	0.1270328623	1.966556634	0.5106219543	0.2139386589	2022-10-05 22:04:34.085102	2022-10-05 22:04:34.085102
96	314	t	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	8.845271429	1.205914573	-0.3863678429	0.2484328623	1.588614634	0.2743419543	-0.05054134108	2022-10-05 22:04:34.091442	2022-10-05 22:04:34.091442
97	324	t	f	t	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	f	f	t	f	f	f	f	f	9.977271429	1.486014573	-0.3283678429	0.2327328623	1.611214634	0.2869419543	0.01995865892	2022-10-05 22:04:34.098688	2022-10-05 22:04:34.098688
98	2362	t	f	t	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.92987143	2.223614573	0.1378921571	-0.1300571377	2.094214634	0.5520319543	0.09346865892	2022-10-05 22:04:34.107346	2022-10-05 22:04:34.107346
99	2363	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.95987143	2.284914573	0.1318221571	-0.2641671377	2.422814634	0.7004419543	0.3029586589	2022-10-05 22:04:34.116274	2022-10-05 22:04:34.116274
100	2364	t	f	f	f	t	t	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.719971429	2.027214573	-0.1617678429	-0.5023671377	2.562914634	0.7178419543	0.1615086589	2022-10-05 22:04:34.122473	2022-10-05 22:04:34.122473
101	334	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:34.129527	2022-10-05 22:04:34.129527
102	2366	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	12.15167143	2.093414573	0.1007121571	-0.1407171377	1.913884634	0.4506919543	0.1351186589	2022-10-05 22:04:34.136645	2022-10-05 22:04:34.136645
103	2367	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	11.10097143	2.165214573	0.0767021571	-0.1978671377	2.040194634	0.4807319543	0.2662586589	2022-10-05 22:04:34.144919	2022-10-05 22:04:34.144919
104	2368	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:34.151799	2022-10-05 22:04:34.151799
105	2369	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	11.54577143	2.189414573	0.0768821571	-0.1607671377	2.035204634	0.4769819543	0.2727586589	2022-10-05 22:04:34.158019	2022-10-05 22:04:34.158019
106	343	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.386371429	0.7896145733	-0.5032678429	0.2205328623	1.751814634	0.3564419543	0.01565865892	2022-10-05 22:04:34.166698	2022-10-05 22:04:34.166698
107	2371	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.914171429	1.596514573	-0.1398678429	0.1285328623	1.602814634	0.2763419543	0.04462865892	2022-10-05 22:04:34.173555	2022-10-05 22:04:34.173555
108	353	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.571371429	1.871314573	0.3731321571	0.1233328623	1.890524634	0.3673419543	-0.02024134108	2022-10-05 22:04:34.180878	2022-10-05 22:04:34.180878
109	363	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	10.02657143	1.965534573	0.2256321571	-0.05719413775	1.946454634	0.5646019543	0.1630986589	2022-10-05 22:04:34.187291	2022-10-05 22:04:34.187291
110	2374	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.11477143	2.051514573	0.2384321571	-0.05897513775	1.701914634	0.4037519543	0.1791286589	2022-10-05 22:04:34.195906	2022-10-05 22:04:34.195906
111	2375	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.76537143	2.111514573	0.2496321571	-0.02743713775	1.897164634	0.4637419543	0.1096686589	2022-10-05 22:04:34.202246	2022-10-05 22:04:34.202246
112	2376	f	t	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	13.06657143	2.081814573	0.1068121571	-0.1724671377	1.913344634	0.4509419543	0.2278586589	2022-10-05 22:04:34.210164	2022-10-05 22:04:34.210164
113	2377	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	11.52687143	2.149814573	0.0828821571	-0.1966671377	1.932724634	0.4580919543	0.09232865892	2022-10-05 22:04:34.216434	2022-10-05 22:04:34.216434
114	2378	t	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	10.25427143	1.961644573	0.2618321571	-0.02744713775	1.970586634	0.5258319543	0.1000186589	2022-10-05 22:04:34.222541	2022-10-05 22:04:34.222541
115	2379	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.888771429	2.028614573	0.2844321571	-0.03024713775	1.980324634	0.3948419543	0.09492865892	2022-10-05 22:04:34.231018	2022-10-05 22:04:34.231018
116	373	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	t	11.97777143	1.992454573	-0.1497678429	0.2128328623	1.903524634	0.3965619543	0.1783486589	2022-10-05 22:04:34.236936	2022-10-05 22:04:34.236936
117	383	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	9.715671429	2.001924573	0.2736321571	-0.03797713775	1.818414634	0.3940019543	0.1330886589	2022-10-05 22:04:34.243941	2022-10-05 22:04:34.243941
118	392	t	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.67697143	1.781114573	-0.2752678429	0.1916328623	1.867364634	0.4876919543	0.01865865892	2022-10-05 22:04:34.250455	2022-10-05 22:04:34.250455
119	2383	t	f	f	f	t	t	f	t	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	10.44780143	1.973504573	-0.0487678429	-0.1996671377	2.218314634	0.6470419543	0.01305865892	2022-10-05 22:04:34.256562	2022-10-05 22:04:34.256562
120	402	t	f	f	f	t	t	f	t	t	t	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	9.509571429	1.709814573	-0.1245678429	-0.08450713775	2.022524634	0.5585219543	0.1793986589	2022-10-05 22:04:34.262575	2022-10-05 22:04:34.262575
121	2385	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	12.64777143	2.346614573	0.3566321571	0.01918286225	2.038224634	0.5575219543	0.03345865892	2022-10-05 22:04:34.268481	2022-10-05 22:04:34.268481
122	2386	t	f	t	f	f	f	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	f	8.835771429	1.848584573	0.1027021571	-0.1513771377	2.041624634	0.4075819543	0.1425586589	2022-10-05 22:04:34.274335	2022-10-05 22:04:34.274335
123	2387	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	10.43388143	2.128714573	0.1062821571	-0.1211571377	1.916974634	0.4516719543	0.1330386589	2022-10-05 22:04:34.281037	2022-10-05 22:04:34.281037
124	407	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.47632143	2.037514573	0.1941321571	-0.01057713775	2.063354634	0.5539819543	0.2037986589	2022-10-05 22:04:34.287036	2022-10-05 22:04:34.287036
125	1237	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	t	f	f	f	f	10.46649143	2.084414573	0.2647321571	0.06033286225	1.759214634	0.3663419543	0.07518865892	2022-10-05 22:04:34.293068	2022-10-05 22:04:34.293068
126	417	t	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	8.988571429	1.885914573	0.2664321571	0.03792286225	2.071314634	0.3373419543	0.06527865892	2022-10-05 22:04:34.299513	2022-10-05 22:04:34.299513
127	425	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	9.536671429	1.724214573	-0.5530678429	0.03154286225	1.959084634	0.4767549543	0.2276486589	2022-10-05 22:04:34.305488	2022-10-05 22:04:34.305488
128	2392	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	9.995971429	1.916174573	-0.5409678429	-0.07377713775	1.954584634	0.4725389543	0.07920865892	2022-10-05 22:04:34.312021	2022-10-05 22:04:34.312021
129	2393	f	f	t	f	f	f	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.24107143	2.387814573	0.2585321571	-0.05093913775	0	0	0	2022-10-05 22:04:34.318248	2022-10-05 22:04:34.318248
130	2394	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	t	f	f	11.12637143	2.173114573	0.1529121571	-0.03711713775	2.035604634	0.4552719543	0.06497865892	2022-10-05 22:04:34.325336	2022-10-05 22:04:34.325336
131	2395	t	f	t	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	9.942371429	2.063214573	0.1258421571	-0.09647713775	2.102714634	0.6371419543	-0.05114134108	2022-10-05 22:04:34.332011	2022-10-05 22:04:34.332011
132	2396	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.66967143	1.880844573	0.1124421571	0.1140328623	2.006914634	0.5546919543	0.08082865892	2022-10-05 22:04:34.338904	2022-10-05 22:04:34.338904
133	2397	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	10.52127143	2.124714573	0.1523321571	-0.1390171377	1.819214634	0.4040319543	0.2861586589	2022-10-05 22:04:34.345008	2022-10-05 22:04:34.345008
134	435	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	9.690571429	1.719514573	0.2770321571	-0.001857137747	1.698314634	0.3274419543	0.2852586589	2022-10-05 22:04:34.351575	2022-10-05 22:04:34.351575
135	2399	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	10.11937143	1.951834573	0.2372321571	-0.04673713775	0	0	0	2022-10-05 22:04:34.357042	2022-10-05 22:04:34.357042
136	2400	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	10.60727143	2.131314573	0.3021321571	0.05323286225	1.993404634	0.4959719543	0.06496865892	2022-10-05 22:04:34.362984	2022-10-05 22:04:34.362984
137	2401	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	11.36997143	2.148914573	0.1976321571	-0.02696713775	1.966152634	0.4838019543	0.1891386589	2022-10-05 22:04:34.36871	2022-10-05 22:04:34.36871
138	2402	t	f	t	f	t	t	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	t	f	f	8.565171429	1.495214573	-0.5493678429	-0.1881671377	1.827114634	0.4741159543	0.1846686589	2022-10-05 22:04:34.374643	2022-10-05 22:04:34.374643
139	2403	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.509771429	1.521214573	-0.2700678429	0.1866328623	1.768214634	0.3654419543	0.1973286589	2022-10-05 22:04:34.384455	2022-10-05 22:04:34.384455
140	443	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	7.895071429	1.401314573	0.1838321571	-0.07987713775	2.098314634	0.3880219543	0.2900586589	2022-10-05 22:04:34.390519	2022-10-05 22:04:34.390519
141	2405	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.22077143	2.156414573	0.1470321571	-0.06420713775	0	0	0	2022-10-05 22:04:34.397795	2022-10-05 22:04:34.397795
142	450	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	9.725371429	1.907754573	0.1274021571	-0.1319571377	1.900804634	0.4529419543	0.1117686589	2022-10-05 22:04:34.403736	2022-10-05 22:04:34.403736
143	460	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.996671429	1.886344573	0.1395821571	-0.1206071377	1.898364634	0.4359419543	0.06194865892	2022-10-05 22:04:34.410355	2022-10-05 22:04:34.410355
144	2408	t	f	t	t	t	f	t	f	f	f	f	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	12.81587143	2.216114573	0.008862157095	-0.04005713775	1.874064634	0.3734219543	-0.06644134108	2022-10-05 22:04:34.416987	2022-10-05 22:04:34.416987
145	2409	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	9.800071429	2.008964573	0.1507921571	-0.07710713775	2.050864634	0.6193419543	0.08802865892	2022-10-05 22:04:34.423262	2022-10-05 22:04:34.423262
146	2410	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	9.376571429	1.919054573	0.2546321571	-0.01540713775	1.865374634	0.4111019543	0.1972986589	2022-10-05 22:04:34.429798	2022-10-05 22:04:34.429798
147	470	t	f	t	f	f	f	t	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.23427143	1.970274573	0.1253521571	-0.1298371377	2.092314634	0.4786989543	0.02995865892	2022-10-05 22:04:34.435904	2022-10-05 22:04:34.435904
148	480	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	t	f	f	t	f	f	f	t	f	f	8.765371429	1.581914573	0.3026321571	0.1402328623	0	0	0	2022-10-05 22:04:34.442088	2022-10-05 22:04:34.442088
149	2413	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.13507143	1.931089573	-0.2395678429	0.2078328623	0	0	0	2022-10-05 22:04:34.449271	2022-10-05 22:04:34.449271
150	2414	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.758871429	2.027114573	-0.0830678429	-0.4525671377	2.118914634	0.5235319543	0.2530586589	2022-10-05 22:04:34.455206	2022-10-05 22:04:34.455206
151	490	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.038871429	0.9764145733	-0.8108678429	-0.01227713775	2.126614634	0.6060419543	0.2489586589	2022-10-05 22:04:34.462157	2022-10-05 22:04:34.462157
152	2416	t	f	f	f	t	t	f	f	t	t	f	t	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.987471429	1.931995573	-0.1377678429	-0.3168671377	1.905624634	0.4693019543	0.2836586589	2022-10-05 22:04:34.46852	2022-10-05 22:04:34.46852
153	2417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-10-05 22:04:34.47534	2022-10-05 22:04:34.47534
154	2418	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.878771429	1.709914573	0.2135321571	-0.01419713775	1.859814634	0.4130019543	0.1870986589	2022-10-05 22:04:34.483307	2022-10-05 22:04:34.483307
155	500	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	10.89957143	2.154114573	0.1959321571	-0.06792713775	1.846214634	0.4084419543	0.1744186589	2022-10-05 22:04:34.489195	2022-10-05 22:04:34.489195
156	2420	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	13.64287143	2.470914573	0.1769321571	0.08433286225	0	0	0	2022-10-05 22:04:34.497543	2022-10-05 22:04:34.497543
157	2421	t	f	t	f	t	t	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.43667143	2.028614573	0.3904321571	0.07483286225	1.721014634	0.4282819543	0.2170386589	2022-10-05 22:04:34.503774	2022-10-05 22:04:34.503774
158	509	t	f	t	f	f	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	9.629671429	1.612814573	-0.1783678429	0.2042328623	2.330014634	0.4026319543	0.09348865892	2022-10-05 22:04:34.511171	2022-10-05 22:04:34.511171
159	2423	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	9.790771429	1.843894573	0.2423321571	-0.04072713775	2.226514634	0.4459819543	0.1296486589	2022-10-05 22:04:34.518746	2022-10-05 22:04:34.518746
160	517	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	12.26547143	2.224314573	0.1733321571	-0.07297713775	1.957994634	0.3837519543	0.3184586589	2022-10-05 22:04:34.525924	2022-10-05 22:04:34.525924
161	2425	t	f	t	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	9.505171429	1.860194573	0.1743321571	-0.09554713775	2.156714634	0.5895419543	0.2247686589	2022-10-05 22:04:34.532747	2022-10-05 22:04:34.532747
162	526	t	f	t	f	t	t	f	t	f	f	t	f	f	t	f	f	t	f	t	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.58567143	2.312614573	0.2507321571	-0.3315671377	2.368014634	0.7728419543	0.3635586589	2022-10-05 22:04:34.539103	2022-10-05 22:04:34.539103
163	536	t	f	f	f	t	t	f	t	t	t	t	f	f	f	f	f	t	f	f	t	f	f	t	t	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	10.07307143	2.029414573	-0.0382778429	-0.4183671377	1.805114634	0.2372419543	0.2059186589	2022-10-05 22:04:34.551357	2022-10-05 22:04:34.551357
164	546	t	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	12.24357143	2.232214573	0.1792321571	0.1054328623	2.081014634	0.5984419543	0.2216386589	2022-10-05 22:04:34.557676	2022-10-05 22:04:34.557676
165	556	t	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	9.936571429	1.270014573	-0.4120678429	0.2358328623	1.730914634	0.3456419543	-0.04924134108	2022-10-05 22:04:34.565407	2022-10-05 22:04:34.565407
166	566	t	f	f	f	f	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	10.42206143	1.686414573	-0.3026678429	0.1820328623	0	0	0	2022-10-05 22:04:34.57253	2022-10-05 22:04:34.57253
167	2431	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	9.351571429	1.837114573	0.3847321571	0.1137328623	1.961594634	0.5246119543	0.1541666589	2022-10-05 22:04:34.579807	2022-10-05 22:04:34.579807
168	574	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	13.29577143	2.415014573	0.2452321571	-0.01888713775	1.831314634	0.4031219543	0.2512586589	2022-10-05 22:04:34.586258	2022-10-05 22:04:34.586258
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
20220809052029
20220812191825
20220815191752
20220815191851
20220823161839
20220823172531
20220823173352
20220823181424
20220824150459
20220824152748
20220824154706
20220824171828
20220923164405
20220927210805
20220928163626
20220928181826
20221003191218
20221005193351
20221005195839
20221005202744
20221005213854
\.


--
-- Data for Name: seedboxes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.seedboxes (id, name, created_at, updated_at) FROM stdin;
1	1	2022-10-05 22:04:16.751944	2022-10-05 22:04:16.751944
97	2	2022-10-05 22:04:17.42979	2022-10-05 22:04:17.42979
196	3	2022-10-05 22:04:18.195083	2022-10-05 22:04:18.195083
296	4	2022-10-05 22:04:18.908276	2022-10-05 22:04:18.908276
394	5	2022-10-05 22:04:19.563425	2022-10-05 22:04:19.563425
490	6	2022-10-05 22:04:20.18827	2022-10-05 22:04:20.18827
584	7	2022-10-05 22:04:20.765662	2022-10-05 22:04:20.765662
684	8	2022-10-05 22:04:21.339067	2022-10-05 22:04:21.339067
784	188	2022-10-05 22:04:21.915248	2022-10-05 22:04:21.915248
884	10	2022-10-05 22:04:22.492915	2022-10-05 22:04:22.492915
980	11	2022-10-05 22:04:23.055584	2022-10-05 22:04:23.055584
1080	12	2022-10-05 22:04:23.614617	2022-10-05 22:04:23.614617
1179	13	2022-10-05 22:04:24.22001	2022-10-05 22:04:24.22001
1276	14	2022-10-05 22:04:24.908063	2022-10-05 22:04:24.908063
1374	15	2022-10-05 22:04:25.521091	2022-10-05 22:04:25.521091
1401	16	2022-10-05 22:04:25.697733	2022-10-05 22:04:25.697733
1495	180	2022-10-05 22:04:26.271585	2022-10-05 22:04:26.271585
1561	181	2022-10-05 22:04:26.674128	2022-10-05 22:04:26.674128
1647	182	2022-10-05 22:04:27.194933	2022-10-05 22:04:27.194933
1728	183	2022-10-05 22:04:27.679178	2022-10-05 22:04:27.679178
1818	184	2022-10-05 22:04:28.208764	2022-10-05 22:04:28.208764
1905	185	2022-10-05 22:04:28.758467	2022-10-05 22:04:28.758467
1995	186	2022-10-05 22:04:29.395113	2022-10-05 22:04:29.395113
2094	187	2022-10-05 22:04:30.032418	2022-10-05 22:04:30.032418
2174	404	2022-10-05 22:04:30.518747	2022-10-05 22:04:30.518747
2196	9	2022-10-05 22:04:30.66457	2022-10-05 22:04:30.66457
\.


--
-- Data for Name: seeds; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.seeds (id, species, generation, created_at, updated_at, parent_id, accession_id) FROM stdin;
1	arabidopsis-thaliana	1	2022-10-05 22:04:16.751944	2022-10-05 22:04:16.751944	\N	1
2	arabidopsis-thaliana	1	2022-10-05 22:04:16.810371	2022-10-05 22:04:16.810371	\N	2
3	arabidopsis-thaliana	1	2022-10-05 22:04:16.818371	2022-10-05 22:04:16.818371	\N	3
4	arabidopsis-thaliana	1	2022-10-05 22:04:16.825073	2022-10-05 22:04:16.825073	\N	4
5	arabidopsis-thaliana	1	2022-10-05 22:04:16.833516	2022-10-05 22:04:16.833516	\N	5
6	arabidopsis-thaliana	1	2022-10-05 22:04:16.839703	2022-10-05 22:04:16.839703	\N	6
7	arabidopsis-thaliana	1	2022-10-05 22:04:16.84682	2022-10-05 22:04:16.84682	\N	7
8	arabidopsis-thaliana	1	2022-10-05 22:04:16.853471	2022-10-05 22:04:16.853471	\N	8
9	arabidopsis-thaliana	1	2022-10-05 22:04:16.858698	2022-10-05 22:04:16.858698	\N	9
10	arabidopsis-thaliana	1	2022-10-05 22:04:16.866932	2022-10-05 22:04:16.866932	\N	10
11	arabidopsis-thaliana	1	2022-10-05 22:04:16.872646	2022-10-05 22:04:16.872646	\N	11
12	arabidopsis-thaliana	1	2022-10-05 22:04:16.880032	2022-10-05 22:04:16.880032	\N	12
13	arabidopsis-thaliana	1	2022-10-05 22:04:16.893103	2022-10-05 22:04:16.893103	\N	13
14	arabidopsis-thaliana	1	2022-10-05 22:04:16.90237	2022-10-05 22:04:16.90237	\N	14
15	arabidopsis-thaliana	1	2022-10-05 22:04:16.908411	2022-10-05 22:04:16.908411	\N	15
16	arabidopsis-thaliana	1	2022-10-05 22:04:16.914344	2022-10-05 22:04:16.914344	\N	16
17	arabidopsis-thaliana	1	2022-10-05 22:04:16.9195	2022-10-05 22:04:16.9195	\N	17
18	arabidopsis-thaliana	1	2022-10-05 22:04:16.925398	2022-10-05 22:04:16.925398	\N	18
19	arabidopsis-thaliana	1	2022-10-05 22:04:16.93101	2022-10-05 22:04:16.93101	\N	19
20	arabidopsis-thaliana	1	2022-10-05 22:04:16.936204	2022-10-05 22:04:16.936204	\N	20
21	arabidopsis-thaliana	1	2022-10-05 22:04:16.942395	2022-10-05 22:04:16.942395	\N	21
22	arabidopsis-thaliana	1	2022-10-05 22:04:16.948931	2022-10-05 22:04:16.948931	\N	22
23	arabidopsis-thaliana	2	2022-10-05 22:04:16.954781	2022-10-05 22:04:16.954781	\N	23
24	arabidopsis-thaliana	2	2022-10-05 22:04:16.962062	2022-10-05 22:04:16.962062	\N	24
25	arabidopsis-thaliana	2	2022-10-05 22:04:16.967984	2022-10-05 22:04:16.967984	\N	25
26	arabidopsis-thaliana	1	2022-10-05 22:04:16.976917	2022-10-05 22:04:16.976917	\N	26
27	arabidopsis-thaliana	1	2022-10-05 22:04:16.986844	2022-10-05 22:04:16.986844	\N	27
28	arabidopsis-thaliana	1	2022-10-05 22:04:16.994215	2022-10-05 22:04:16.994215	\N	28
29	arabidopsis-thaliana	1	2022-10-05 22:04:17.000543	2022-10-05 22:04:17.000543	\N	29
30	arabidopsis-thaliana	1	2022-10-05 22:04:17.006137	2022-10-05 22:04:17.006137	\N	30
31	arabidopsis-thaliana	1	2022-10-05 22:04:17.012364	2022-10-05 22:04:17.012364	\N	31
32	arabidopsis-thaliana	1	2022-10-05 22:04:17.018142	2022-10-05 22:04:17.018142	\N	32
33	arabidopsis-thaliana	1	2022-10-05 22:04:17.023595	2022-10-05 22:04:17.023595	\N	33
34	arabidopsis-thaliana	1	2022-10-05 22:04:17.030385	2022-10-05 22:04:17.030385	\N	34
35	arabidopsis-thaliana	1	2022-10-05 22:04:17.03609	2022-10-05 22:04:17.03609	\N	35
36	arabidopsis-thaliana	1	2022-10-05 22:04:17.042266	2022-10-05 22:04:17.042266	\N	36
37	arabidopsis-thaliana	1	2022-10-05 22:04:17.04838	2022-10-05 22:04:17.04838	\N	37
38	arabidopsis-thaliana	1	2022-10-05 22:04:17.053944	2022-10-05 22:04:17.053944	\N	38
39	arabidopsis-thaliana	2	2022-10-05 22:04:17.061159	2022-10-05 22:04:17.061159	\N	39
40	arabidopsis-thaliana	1	2022-10-05 22:04:17.067312	2022-10-05 22:04:17.067312	\N	40
41	arabidopsis-thaliana	1	2022-10-05 22:04:17.072844	2022-10-05 22:04:17.072844	\N	41
42	arabidopsis-thaliana	1	2022-10-05 22:04:17.079432	2022-10-05 22:04:17.079432	\N	42
43	arabidopsis-thaliana	1	2022-10-05 22:04:17.085041	2022-10-05 22:04:17.085041	\N	43
44	arabidopsis-thaliana	1	2022-10-05 22:04:17.092238	2022-10-05 22:04:17.092238	\N	44
45	arabidopsis-thaliana	1	2022-10-05 22:04:17.098922	2022-10-05 22:04:17.098922	\N	45
46	arabidopsis-thaliana	1	2022-10-05 22:04:17.105178	2022-10-05 22:04:17.105178	\N	46
47	arabidopsis-thaliana	1	2022-10-05 22:04:17.116822	2022-10-05 22:04:17.116822	\N	47
48	arabidopsis-thaliana	1	2022-10-05 22:04:17.122546	2022-10-05 22:04:17.122546	\N	48
49	arabidopsis-thaliana	1	2022-10-05 22:04:17.128463	2022-10-05 22:04:17.128463	\N	49
50	arabidopsis-thaliana	1	2022-10-05 22:04:17.133896	2022-10-05 22:04:17.133896	\N	50
51	arabidopsis-thaliana	1	2022-10-05 22:04:17.139319	2022-10-05 22:04:17.139319	\N	51
52	arabidopsis-thaliana	1	2022-10-05 22:04:17.145657	2022-10-05 22:04:17.145657	\N	52
53	arabidopsis-thaliana	1	2022-10-05 22:04:17.151258	2022-10-05 22:04:17.151258	\N	53
54	arabidopsis-thaliana	1	2022-10-05 22:04:17.156572	2022-10-05 22:04:17.156572	\N	54
55	arabidopsis-thaliana	1	2022-10-05 22:04:17.163395	2022-10-05 22:04:17.163395	\N	55
56	arabidopsis-thaliana	1	2022-10-05 22:04:17.169262	2022-10-05 22:04:17.169262	\N	56
57	arabidopsis-thaliana	1	2022-10-05 22:04:17.174781	2022-10-05 22:04:17.174781	\N	57
58	arabidopsis-thaliana	1	2022-10-05 22:04:17.182334	2022-10-05 22:04:17.182334	\N	58
59	arabidopsis-thaliana	1	2022-10-05 22:04:17.187711	2022-10-05 22:04:17.187711	\N	59
60	arabidopsis-thaliana	1	2022-10-05 22:04:17.19453	2022-10-05 22:04:17.19453	\N	60
61	arabidopsis-thaliana	1	2022-10-05 22:04:17.200526	2022-10-05 22:04:17.200526	\N	61
62	arabidopsis-thaliana	1	2022-10-05 22:04:17.205936	2022-10-05 22:04:17.205936	\N	62
63	arabidopsis-thaliana	1	2022-10-05 22:04:17.212585	2022-10-05 22:04:17.212585	\N	63
64	arabidopsis-thaliana	1	2022-10-05 22:04:17.217802	2022-10-05 22:04:17.217802	\N	64
65	arabidopsis-thaliana	2	2022-10-05 22:04:17.223106	2022-10-05 22:04:17.223106	\N	65
66	arabidopsis-thaliana	1	2022-10-05 22:04:17.228515	2022-10-05 22:04:17.228515	\N	66
67	arabidopsis-thaliana	1	2022-10-05 22:04:17.234718	2022-10-05 22:04:17.234718	\N	67
68	arabidopsis-thaliana	1	2022-10-05 22:04:17.240056	2022-10-05 22:04:17.240056	\N	68
69	arabidopsis-thaliana	1	2022-10-05 22:04:17.246344	2022-10-05 22:04:17.246344	\N	69
70	arabidopsis-thaliana	1	2022-10-05 22:04:17.252819	2022-10-05 22:04:17.252819	\N	70
71	arabidopsis-thaliana	1	2022-10-05 22:04:17.259335	2022-10-05 22:04:17.259335	\N	71
72	arabidopsis-thaliana	1	2022-10-05 22:04:17.266278	2022-10-05 22:04:17.266278	\N	72
73	arabidopsis-thaliana	1	2022-10-05 22:04:17.27193	2022-10-05 22:04:17.27193	\N	73
74	arabidopsis-thaliana	1	2022-10-05 22:04:17.279814	2022-10-05 22:04:17.279814	\N	74
75	arabidopsis-thaliana	1	2022-10-05 22:04:17.285577	2022-10-05 22:04:17.285577	\N	75
76	arabidopsis-thaliana	1	2022-10-05 22:04:17.293078	2022-10-05 22:04:17.293078	\N	76
77	arabidopsis-thaliana	1	2022-10-05 22:04:17.299351	2022-10-05 22:04:17.299351	\N	77
78	arabidopsis-thaliana	1	2022-10-05 22:04:17.304921	2022-10-05 22:04:17.304921	\N	78
79	arabidopsis-thaliana	1	2022-10-05 22:04:17.311705	2022-10-05 22:04:17.311705	\N	79
80	arabidopsis-thaliana	1	2022-10-05 22:04:17.317701	2022-10-05 22:04:17.317701	\N	80
81	arabidopsis-thaliana	1	2022-10-05 22:04:17.327672	2022-10-05 22:04:17.327672	\N	81
82	arabidopsis-thaliana	1	2022-10-05 22:04:17.333983	2022-10-05 22:04:17.333983	\N	82
83	arabidopsis-thaliana	1	2022-10-05 22:04:17.340219	2022-10-05 22:04:17.340219	\N	83
84	arabidopsis-thaliana	2	2022-10-05 22:04:17.34847	2022-10-05 22:04:17.34847	\N	84
85	arabidopsis-thaliana	2	2022-10-05 22:04:17.354502	2022-10-05 22:04:17.354502	\N	85
86	arabidopsis-thaliana	1	2022-10-05 22:04:17.360927	2022-10-05 22:04:17.360927	\N	86
87	arabidopsis-thaliana	1	2022-10-05 22:04:17.367065	2022-10-05 22:04:17.367065	\N	87
88	arabidopsis-thaliana	1	2022-10-05 22:04:17.372468	2022-10-05 22:04:17.372468	\N	88
89	arabidopsis-thaliana	1	2022-10-05 22:04:17.379988	2022-10-05 22:04:17.379988	\N	89
90	arabidopsis-thaliana	1	2022-10-05 22:04:17.386486	2022-10-05 22:04:17.386486	\N	90
91	arabidopsis-thaliana	1	2022-10-05 22:04:17.392294	2022-10-05 22:04:17.392294	\N	91
92	arabidopsis-thaliana	1	2022-10-05 22:04:17.39822	2022-10-05 22:04:17.39822	\N	92
93	arabidopsis-thaliana	1	2022-10-05 22:04:17.403948	2022-10-05 22:04:17.403948	\N	93
94	arabidopsis-thaliana	1	2022-10-05 22:04:17.409851	2022-10-05 22:04:17.409851	\N	94
95	arabidopsis-thaliana	1	2022-10-05 22:04:17.417274	2022-10-05 22:04:17.417274	\N	95
96	arabidopsis-thaliana	1	2022-10-05 22:04:17.423061	2022-10-05 22:04:17.423061	\N	96
97	arabidopsis-thaliana	1	2022-10-05 22:04:17.42979	2022-10-05 22:04:17.42979	\N	97
98	arabidopsis-thaliana	1	2022-10-05 22:04:17.435572	2022-10-05 22:04:17.435572	\N	98
99	arabidopsis-thaliana	1	2022-10-05 22:04:17.442642	2022-10-05 22:04:17.442642	\N	99
100	arabidopsis-thaliana	1	2022-10-05 22:04:17.449082	2022-10-05 22:04:17.449082	\N	100
101	arabidopsis-thaliana	1	2022-10-05 22:04:17.454663	2022-10-05 22:04:17.454663	\N	101
102	arabidopsis-thaliana	1	2022-10-05 22:04:17.460955	2022-10-05 22:04:17.460955	\N	102
103	arabidopsis-thaliana	1	2022-10-05 22:04:17.467029	2022-10-05 22:04:17.467029	\N	103
104	arabidopsis-thaliana	1	2022-10-05 22:04:17.473011	2022-10-05 22:04:17.473011	\N	104
105	arabidopsis-thaliana	1	2022-10-05 22:04:17.481244	2022-10-05 22:04:17.481244	\N	105
106	arabidopsis-thaliana	1	2022-10-05 22:04:17.487189	2022-10-05 22:04:17.487189	\N	106
107	arabidopsis-thaliana	1	2022-10-05 22:04:17.495425	2022-10-05 22:04:17.495425	\N	107
108	arabidopsis-thaliana	1	2022-10-05 22:04:17.501794	2022-10-05 22:04:17.501794	\N	108
109	arabidopsis-thaliana	1	2022-10-05 22:04:17.508228	2022-10-05 22:04:17.508228	\N	109
110	arabidopsis-thaliana	1	2022-10-05 22:04:17.514931	2022-10-05 22:04:17.514931	\N	110
111	arabidopsis-thaliana	1	2022-10-05 22:04:17.521382	2022-10-05 22:04:17.521382	\N	111
112	arabidopsis-thaliana	1	2022-10-05 22:04:17.528038	2022-10-05 22:04:17.528038	\N	112
113	arabidopsis-thaliana	1	2022-10-05 22:04:17.534962	2022-10-05 22:04:17.534962	\N	113
114	arabidopsis-thaliana	1	2022-10-05 22:04:17.541922	2022-10-05 22:04:17.541922	\N	114
115	arabidopsis-thaliana	1	2022-10-05 22:04:17.549797	2022-10-05 22:04:17.549797	\N	115
116	arabidopsis-thaliana	1	2022-10-05 22:04:17.555802	2022-10-05 22:04:17.555802	\N	116
117	arabidopsis-thaliana	1	2022-10-05 22:04:17.562927	2022-10-05 22:04:17.562927	\N	117
118	arabidopsis-thaliana	1	2022-10-05 22:04:17.570258	2022-10-05 22:04:17.570258	\N	118
119	arabidopsis-thaliana	1	2022-10-05 22:04:17.577194	2022-10-05 22:04:17.577194	\N	119
120	arabidopsis-thaliana	1	2022-10-05 22:04:17.583404	2022-10-05 22:04:17.583404	\N	120
121	arabidopsis-thaliana	1	2022-10-05 22:04:17.601466	2022-10-05 22:04:17.601466	\N	121
122	arabidopsis-thaliana	1	2022-10-05 22:04:17.610961	2022-10-05 22:04:17.610961	\N	122
123	arabidopsis-thaliana	1	2022-10-05 22:04:17.620326	2022-10-05 22:04:17.620326	\N	123
124	arabidopsis-thaliana	1	2022-10-05 22:04:17.627383	2022-10-05 22:04:17.627383	\N	124
125	arabidopsis-thaliana	1	2022-10-05 22:04:17.634433	2022-10-05 22:04:17.634433	\N	125
126	arabidopsis-thaliana	1	2022-10-05 22:04:17.642567	2022-10-05 22:04:17.642567	\N	126
127	arabidopsis-thaliana	1	2022-10-05 22:04:17.649983	2022-10-05 22:04:17.649983	\N	127
128	arabidopsis-thaliana	1	2022-10-05 22:04:17.656062	2022-10-05 22:04:17.656062	\N	128
129	arabidopsis-thaliana	1	2022-10-05 22:04:17.663985	2022-10-05 22:04:17.663985	\N	129
130	arabidopsis-thaliana	1	2022-10-05 22:04:17.670701	2022-10-05 22:04:17.670701	\N	130
131	arabidopsis-thaliana	1	2022-10-05 22:04:17.676771	2022-10-05 22:04:17.676771	\N	131
132	arabidopsis-thaliana	1	2022-10-05 22:04:17.683759	2022-10-05 22:04:17.683759	\N	132
133	arabidopsis-thaliana	1	2022-10-05 22:04:17.689421	2022-10-05 22:04:17.689421	\N	133
134	arabidopsis-thaliana	1	2022-10-05 22:04:17.697124	2022-10-05 22:04:17.697124	\N	134
135	arabidopsis-thaliana	1	2022-10-05 22:04:17.702788	2022-10-05 22:04:17.702788	\N	135
136	arabidopsis-thaliana	1	2022-10-05 22:04:17.708396	2022-10-05 22:04:17.708396	\N	136
137	arabidopsis-thaliana	1	2022-10-05 22:04:17.714388	2022-10-05 22:04:17.714388	\N	137
138	arabidopsis-thaliana	1	2022-10-05 22:04:17.720188	2022-10-05 22:04:17.720188	\N	138
139	arabidopsis-thaliana	1	2022-10-05 22:04:17.726144	2022-10-05 22:04:17.726144	\N	139
140	arabidopsis-thaliana	1	2022-10-05 22:04:17.732409	2022-10-05 22:04:17.732409	\N	140
141	arabidopsis-thaliana	1	2022-10-05 22:04:17.738205	2022-10-05 22:04:17.738205	\N	141
142	arabidopsis-thaliana	1	2022-10-05 22:04:17.744898	2022-10-05 22:04:17.744898	\N	142
143	arabidopsis-thaliana	1	2022-10-05 22:04:17.755538	2022-10-05 22:04:17.755538	\N	143
144	arabidopsis-thaliana	1	2022-10-05 22:04:17.761147	2022-10-05 22:04:17.761147	\N	144
145	arabidopsis-thaliana	1	2022-10-05 22:04:17.767327	2022-10-05 22:04:17.767327	\N	145
146	arabidopsis-thaliana	1	2022-10-05 22:04:17.773208	2022-10-05 22:04:17.773208	\N	146
147	arabidopsis-thaliana	1	2022-10-05 22:04:17.779288	2022-10-05 22:04:17.779288	\N	147
148	arabidopsis-thaliana	1	2022-10-05 22:04:17.785559	2022-10-05 22:04:17.785559	\N	148
149	arabidopsis-thaliana	1	2022-10-05 22:04:17.793115	2022-10-05 22:04:17.793115	\N	149
150	arabidopsis-thaliana	1	2022-10-05 22:04:17.800497	2022-10-05 22:04:17.800497	\N	150
151	arabidopsis-thaliana	1	2022-10-05 22:04:17.806718	2022-10-05 22:04:17.806718	\N	151
152	arabidopsis-thaliana	1	2022-10-05 22:04:17.813184	2022-10-05 22:04:17.813184	\N	152
153	arabidopsis-thaliana	1	2022-10-05 22:04:17.820365	2022-10-05 22:04:17.820365	\N	153
154	arabidopsis-thaliana	1	2022-10-05 22:04:17.839681	2022-10-05 22:04:17.839681	\N	154
155	arabidopsis-thaliana	1	2022-10-05 22:04:17.84665	2022-10-05 22:04:17.84665	\N	155
156	arabidopsis-thaliana	1	2022-10-05 22:04:17.853691	2022-10-05 22:04:17.853691	\N	156
157	arabidopsis-thaliana	1	2022-10-05 22:04:17.859568	2022-10-05 22:04:17.859568	\N	157
158	arabidopsis-thaliana	1	2022-10-05 22:04:17.86712	2022-10-05 22:04:17.86712	\N	158
159	arabidopsis-thaliana	1	2022-10-05 22:04:17.872609	2022-10-05 22:04:17.872609	\N	159
160	arabidopsis-thaliana	1	2022-10-05 22:04:17.879257	2022-10-05 22:04:17.879257	\N	160
161	arabidopsis-thaliana	1	2022-10-05 22:04:17.886037	2022-10-05 22:04:17.886037	\N	161
162	arabidopsis-thaliana	1	2022-10-05 22:04:17.891855	2022-10-05 22:04:17.891855	\N	162
163	arabidopsis-thaliana	1	2022-10-05 22:04:17.899416	2022-10-05 22:04:17.899416	\N	163
164	arabidopsis-thaliana	1	2022-10-05 22:04:17.905556	2022-10-05 22:04:17.905556	\N	164
165	arabidopsis-thaliana	1	2022-10-05 22:04:17.911985	2022-10-05 22:04:17.911985	\N	165
166	arabidopsis-thaliana	1	2022-10-05 22:04:17.918556	2022-10-05 22:04:17.918556	\N	166
167	arabidopsis-thaliana	1	2022-10-05 22:04:17.924915	2022-10-05 22:04:17.924915	\N	167
168	arabidopsis-thaliana	1	2022-10-05 22:04:17.956871	2022-10-05 22:04:17.956871	\N	168
169	arabidopsis-thaliana	1	2022-10-05 22:04:17.963341	2022-10-05 22:04:17.963341	\N	169
170	arabidopsis-thaliana	1	2022-10-05 22:04:17.970432	2022-10-05 22:04:17.970432	\N	170
171	arabidopsis-thaliana	1	2022-10-05 22:04:17.978294	2022-10-05 22:04:17.978294	\N	171
172	arabidopsis-thaliana	1	2022-10-05 22:04:17.98596	2022-10-05 22:04:17.98596	\N	172
173	arabidopsis-thaliana	1	2022-10-05 22:04:17.993742	2022-10-05 22:04:17.993742	\N	173
174	arabidopsis-thaliana	1	2022-10-05 22:04:18.00129	2022-10-05 22:04:18.00129	\N	174
175	arabidopsis-thaliana	1	2022-10-05 22:04:18.00919	2022-10-05 22:04:18.00919	\N	175
176	arabidopsis-thaliana	1	2022-10-05 22:04:18.018159	2022-10-05 22:04:18.018159	\N	176
177	arabidopsis-thaliana	1	2022-10-05 22:04:18.02695	2022-10-05 22:04:18.02695	\N	177
178	arabidopsis-thaliana	1	2022-10-05 22:04:18.034646	2022-10-05 22:04:18.034646	\N	178
179	arabidopsis-thaliana	1	2022-10-05 22:04:18.04214	2022-10-05 22:04:18.04214	\N	179
180	arabidopsis-thaliana	1	2022-10-05 22:04:18.049278	2022-10-05 22:04:18.049278	\N	180
181	arabidopsis-thaliana	1	2022-10-05 22:04:18.056836	2022-10-05 22:04:18.056836	\N	181
182	arabidopsis-thaliana	1	2022-10-05 22:04:18.065768	2022-10-05 22:04:18.065768	\N	182
183	arabidopsis-thaliana	1	2022-10-05 22:04:18.074356	2022-10-05 22:04:18.074356	\N	183
184	arabidopsis-thaliana	1	2022-10-05 22:04:18.083552	2022-10-05 22:04:18.083552	\N	184
185	arabidopsis-thaliana	1	2022-10-05 22:04:18.091051	2022-10-05 22:04:18.091051	\N	185
186	arabidopsis-thaliana	1	2022-10-05 22:04:18.099946	2022-10-05 22:04:18.099946	\N	186
187	arabidopsis-thaliana	1	2022-10-05 22:04:18.119958	2022-10-05 22:04:18.119958	\N	187
188	arabidopsis-thaliana	2	2022-10-05 22:04:18.129247	2022-10-05 22:04:18.129247	\N	188
189	arabidopsis-thaliana	1	2022-10-05 22:04:18.137305	2022-10-05 22:04:18.137305	\N	189
190	arabidopsis-thaliana	1	2022-10-05 22:04:18.145397	2022-10-05 22:04:18.145397	\N	190
191	arabidopsis-thaliana	2	2022-10-05 22:04:18.153623	2022-10-05 22:04:18.153623	\N	191
192	arabidopsis-thaliana	1	2022-10-05 22:04:18.163619	2022-10-05 22:04:18.163619	\N	192
193	arabidopsis-thaliana	1	2022-10-05 22:04:18.171483	2022-10-05 22:04:18.171483	\N	193
194	arabidopsis-thaliana	1	2022-10-05 22:04:18.179445	2022-10-05 22:04:18.179445	\N	194
195	arabidopsis-thaliana	1	2022-10-05 22:04:18.187177	2022-10-05 22:04:18.187177	\N	195
196	arabidopsis-thaliana	1	2022-10-05 22:04:18.195083	2022-10-05 22:04:18.195083	\N	196
197	arabidopsis-thaliana	1	2022-10-05 22:04:18.204262	2022-10-05 22:04:18.204262	\N	197
198	arabidopsis-thaliana	1	2022-10-05 22:04:18.212879	2022-10-05 22:04:18.212879	\N	198
199	arabidopsis-thaliana	1	2022-10-05 22:04:18.222266	2022-10-05 22:04:18.222266	\N	199
200	arabidopsis-thaliana	1	2022-10-05 22:04:18.235579	2022-10-05 22:04:18.235579	\N	200
201	arabidopsis-thaliana	1	2022-10-05 22:04:18.248	2022-10-05 22:04:18.248	\N	201
202	arabidopsis-thaliana	1	2022-10-05 22:04:18.255092	2022-10-05 22:04:18.255092	\N	202
203	arabidopsis-thaliana	1	2022-10-05 22:04:18.261456	2022-10-05 22:04:18.261456	\N	203
204	arabidopsis-thaliana	1	2022-10-05 22:04:18.268982	2022-10-05 22:04:18.268982	\N	204
205	arabidopsis-thaliana	1	2022-10-05 22:04:18.276124	2022-10-05 22:04:18.276124	\N	205
206	arabidopsis-thaliana	1	2022-10-05 22:04:18.283049	2022-10-05 22:04:18.283049	\N	206
207	arabidopsis-thaliana	1	2022-10-05 22:04:18.289406	2022-10-05 22:04:18.289406	\N	207
208	arabidopsis-thaliana	1	2022-10-05 22:04:18.295493	2022-10-05 22:04:18.295493	\N	208
209	arabidopsis-thaliana	1	2022-10-05 22:04:18.301952	2022-10-05 22:04:18.301952	\N	209
210	arabidopsis-thaliana	1	2022-10-05 22:04:18.308516	2022-10-05 22:04:18.308516	\N	210
211	arabidopsis-thaliana	1	2022-10-05 22:04:18.315867	2022-10-05 22:04:18.315867	\N	211
212	arabidopsis-thaliana	1	2022-10-05 22:04:18.322566	2022-10-05 22:04:18.322566	\N	212
213	arabidopsis-thaliana	1	2022-10-05 22:04:18.32944	2022-10-05 22:04:18.32944	\N	213
214	arabidopsis-thaliana	1	2022-10-05 22:04:18.337312	2022-10-05 22:04:18.337312	\N	214
215	arabidopsis-thaliana	1	2022-10-05 22:04:18.343492	2022-10-05 22:04:18.343492	\N	215
216	arabidopsis-thaliana	1	2022-10-05 22:04:18.350141	2022-10-05 22:04:18.350141	\N	216
217	arabidopsis-thaliana	1	2022-10-05 22:04:18.357118	2022-10-05 22:04:18.357118	\N	217
218	arabidopsis-thaliana	1	2022-10-05 22:04:18.363017	2022-10-05 22:04:18.363017	\N	218
219	arabidopsis-thaliana	1	2022-10-05 22:04:18.369684	2022-10-05 22:04:18.369684	\N	219
220	arabidopsis-thaliana	1	2022-10-05 22:04:18.375622	2022-10-05 22:04:18.375622	\N	220
221	arabidopsis-thaliana	2	2022-10-05 22:04:18.382388	2022-10-05 22:04:18.382388	\N	221
222	arabidopsis-thaliana	1	2022-10-05 22:04:18.38835	2022-10-05 22:04:18.38835	\N	222
223	arabidopsis-thaliana	1	2022-10-05 22:04:18.396722	2022-10-05 22:04:18.396722	\N	223
224	arabidopsis-thaliana	2	2022-10-05 22:04:18.403831	2022-10-05 22:04:18.403831	\N	224
225	arabidopsis-thaliana	2	2022-10-05 22:04:18.411206	2022-10-05 22:04:18.411206	\N	225
226	arabidopsis-thaliana	1	2022-10-05 22:04:18.417986	2022-10-05 22:04:18.417986	\N	226
227	arabidopsis-thaliana	1	2022-10-05 22:04:18.424994	2022-10-05 22:04:18.424994	\N	227
228	arabidopsis-thaliana	1	2022-10-05 22:04:18.432783	2022-10-05 22:04:18.432783	\N	228
229	arabidopsis-thaliana	1	2022-10-05 22:04:18.43877	2022-10-05 22:04:18.43877	\N	229
230	arabidopsis-thaliana	1	2022-10-05 22:04:18.44544	2022-10-05 22:04:18.44544	\N	230
231	arabidopsis-thaliana	1	2022-10-05 22:04:18.451244	2022-10-05 22:04:18.451244	\N	231
232	arabidopsis-thaliana	1	2022-10-05 22:04:18.456586	2022-10-05 22:04:18.456586	\N	232
233	arabidopsis-thaliana	1	2022-10-05 22:04:18.462632	2022-10-05 22:04:18.462632	\N	233
234	arabidopsis-thaliana	1	2022-10-05 22:04:18.468182	2022-10-05 22:04:18.468182	\N	234
235	arabidopsis-thaliana	1	2022-10-05 22:04:18.473458	2022-10-05 22:04:18.473458	\N	235
236	arabidopsis-thaliana	1	2022-10-05 22:04:18.48032	2022-10-05 22:04:18.48032	\N	236
237	arabidopsis-thaliana	1	2022-10-05 22:04:18.48605	2022-10-05 22:04:18.48605	\N	237
238	arabidopsis-thaliana	2	2022-10-05 22:04:18.49177	2022-10-05 22:04:18.49177	\N	238
239	arabidopsis-thaliana	2	2022-10-05 22:04:18.499567	2022-10-05 22:04:18.499567	\N	239
240	arabidopsis-thaliana	2	2022-10-05 22:04:18.50509	2022-10-05 22:04:18.50509	\N	240
241	arabidopsis-thaliana	2	2022-10-05 22:04:18.51222	2022-10-05 22:04:18.51222	\N	241
242	arabidopsis-thaliana	2	2022-10-05 22:04:18.518976	2022-10-05 22:04:18.518976	\N	242
243	arabidopsis-thaliana	2	2022-10-05 22:04:18.52514	2022-10-05 22:04:18.52514	\N	243
244	arabidopsis-thaliana	2	2022-10-05 22:04:18.531045	2022-10-05 22:04:18.531045	\N	244
245	arabidopsis-thaliana	2	2022-10-05 22:04:18.536808	2022-10-05 22:04:18.536808	\N	245
246	arabidopsis-thaliana	2	2022-10-05 22:04:18.543347	2022-10-05 22:04:18.543347	\N	246
247	arabidopsis-thaliana	2	2022-10-05 22:04:18.54952	2022-10-05 22:04:18.54952	\N	247
248	arabidopsis-thaliana	2	2022-10-05 22:04:18.55631	2022-10-05 22:04:18.55631	\N	248
249	arabidopsis-thaliana	2	2022-10-05 22:04:18.562967	2022-10-05 22:04:18.562967	\N	249
250	arabidopsis-thaliana	2	2022-10-05 22:04:18.568754	2022-10-05 22:04:18.568754	\N	250
251	arabidopsis-thaliana	-999	2022-10-05 22:04:18.575286	2022-10-05 22:04:18.575286	\N	251
252	arabidopsis-thaliana	2	2022-10-05 22:04:18.581166	2022-10-05 22:04:18.581166	\N	252
253	arabidopsis-thaliana	2	2022-10-05 22:04:18.586778	2022-10-05 22:04:18.586778	\N	253
254	arabidopsis-thaliana	2	2022-10-05 22:04:18.593837	2022-10-05 22:04:18.593837	\N	254
255	arabidopsis-thaliana	2	2022-10-05 22:04:18.600992	2022-10-05 22:04:18.600992	\N	255
256	arabidopsis-thaliana	1	2022-10-05 22:04:18.610797	2022-10-05 22:04:18.610797	\N	256
257	arabidopsis-thaliana	2	2022-10-05 22:04:18.619968	2022-10-05 22:04:18.619968	\N	257
258	arabidopsis-thaliana	2	2022-10-05 22:04:18.626325	2022-10-05 22:04:18.626325	\N	258
259	arabidopsis-thaliana	1	2022-10-05 22:04:18.632754	2022-10-05 22:04:18.632754	\N	259
260	arabidopsis-thaliana	2	2022-10-05 22:04:18.6403	2022-10-05 22:04:18.6403	\N	260
261	arabidopsis-thaliana	2	2022-10-05 22:04:18.647642	2022-10-05 22:04:18.647642	\N	261
262	arabidopsis-thaliana	2	2022-10-05 22:04:18.654351	2022-10-05 22:04:18.654351	\N	262
263	arabidopsis-thaliana	2	2022-10-05 22:04:18.661575	2022-10-05 22:04:18.661575	\N	263
264	arabidopsis-thaliana	2	2022-10-05 22:04:18.668525	2022-10-05 22:04:18.668525	\N	264
265	arabidopsis-thaliana	2	2022-10-05 22:04:18.676413	2022-10-05 22:04:18.676413	\N	265
266	arabidopsis-thaliana	2	2022-10-05 22:04:18.683498	2022-10-05 22:04:18.683498	\N	266
267	arabidopsis-thaliana	2	2022-10-05 22:04:18.689697	2022-10-05 22:04:18.689697	\N	267
268	arabidopsis-thaliana	1	2022-10-05 22:04:18.700375	2022-10-05 22:04:18.700375	\N	268
269	arabidopsis-thaliana	2	2022-10-05 22:04:18.708957	2022-10-05 22:04:18.708957	\N	269
270	arabidopsis-thaliana	2	2022-10-05 22:04:18.71624	2022-10-05 22:04:18.71624	\N	270
271	arabidopsis-thaliana	2	2022-10-05 22:04:18.723227	2022-10-05 22:04:18.723227	\N	271
272	arabidopsis-thaliana	1	2022-10-05 22:04:18.730615	2022-10-05 22:04:18.730615	\N	272
273	arabidopsis-thaliana	1	2022-10-05 22:04:18.736964	2022-10-05 22:04:18.736964	\N	273
274	arabidopsis-thaliana	1	2022-10-05 22:04:18.743558	2022-10-05 22:04:18.743558	\N	274
275	arabidopsis-thaliana	1	2022-10-05 22:04:18.750313	2022-10-05 22:04:18.750313	\N	275
276	arabidopsis-thaliana	1	2022-10-05 22:04:18.75772	2022-10-05 22:04:18.75772	\N	276
277	arabidopsis-thaliana	1	2022-10-05 22:04:18.764865	2022-10-05 22:04:18.764865	\N	277
278	arabidopsis-thaliana	2	2022-10-05 22:04:18.77104	2022-10-05 22:04:18.77104	\N	278
279	arabidopsis-thaliana	1	2022-10-05 22:04:18.779278	2022-10-05 22:04:18.779278	\N	279
280	arabidopsis-thaliana	1	2022-10-05 22:04:18.786125	2022-10-05 22:04:18.786125	\N	280
281	arabidopsis-thaliana	1	2022-10-05 22:04:18.792875	2022-10-05 22:04:18.792875	\N	281
282	arabidopsis-thaliana	1	2022-10-05 22:04:18.798993	2022-10-05 22:04:18.798993	\N	282
283	arabidopsis-thaliana	1	2022-10-05 22:04:18.804715	2022-10-05 22:04:18.804715	\N	283
284	arabidopsis-thaliana	1	2022-10-05 22:04:18.811109	2022-10-05 22:04:18.811109	\N	284
285	arabidopsis-thaliana	2	2022-10-05 22:04:18.817042	2022-10-05 22:04:18.817042	\N	285
286	arabidopsis-thaliana	2	2022-10-05 22:04:18.822593	2022-10-05 22:04:18.822593	\N	286
287	arabidopsis-thaliana	2	2022-10-05 22:04:18.828551	2022-10-05 22:04:18.828551	\N	287
288	arabidopsis-thaliana	2	2022-10-05 22:04:18.836585	2022-10-05 22:04:18.836585	\N	288
289	arabidopsis-thaliana	2	2022-10-05 22:04:18.853337	2022-10-05 22:04:18.853337	\N	289
290	arabidopsis-thaliana	2	2022-10-05 22:04:18.868533	2022-10-05 22:04:18.868533	\N	290
291	arabidopsis-thaliana	2	2022-10-05 22:04:18.875163	2022-10-05 22:04:18.875163	\N	291
292	arabidopsis-thaliana	1	2022-10-05 22:04:18.881389	2022-10-05 22:04:18.881389	\N	292
293	arabidopsis-thaliana	2	2022-10-05 22:04:18.889096	2022-10-05 22:04:18.889096	\N	293
294	arabidopsis-thaliana	1	2022-10-05 22:04:18.895609	2022-10-05 22:04:18.895609	\N	294
295	arabidopsis-thaliana	1	2022-10-05 22:04:18.902151	2022-10-05 22:04:18.902151	\N	295
296	arabidopsis-thaliana	2	2022-10-05 22:04:18.908276	2022-10-05 22:04:18.908276	\N	296
297	arabidopsis-thaliana	2	2022-10-05 22:04:18.914831	2022-10-05 22:04:18.914831	\N	297
298	arabidopsis-thaliana	2	2022-10-05 22:04:18.920623	2022-10-05 22:04:18.920623	\N	298
299	arabidopsis-thaliana	1	2022-10-05 22:04:18.927058	2022-10-05 22:04:18.927058	\N	299
300	arabidopsis-thaliana	2	2022-10-05 22:04:18.932959	2022-10-05 22:04:18.932959	\N	300
301	arabidopsis-thaliana	2	2022-10-05 22:04:18.938864	2022-10-05 22:04:18.938864	\N	301
302	arabidopsis-thaliana	2	2022-10-05 22:04:18.945505	2022-10-05 22:04:18.945505	\N	302
303	arabidopsis-thaliana	1	2022-10-05 22:04:18.951603	2022-10-05 22:04:18.951603	\N	303
304	arabidopsis-thaliana	1	2022-10-05 22:04:18.958024	2022-10-05 22:04:18.958024	\N	304
305	arabidopsis-thaliana	1	2022-10-05 22:04:18.964427	2022-10-05 22:04:18.964427	\N	305
306	arabidopsis-thaliana	1	2022-10-05 22:04:18.970513	2022-10-05 22:04:18.970513	\N	306
307	arabidopsis-thaliana	1	2022-10-05 22:04:18.97907	2022-10-05 22:04:18.97907	\N	307
308	arabidopsis-thaliana	1	2022-10-05 22:04:18.987733	2022-10-05 22:04:18.987733	\N	308
309	arabidopsis-thaliana	1	2022-10-05 22:04:18.993955	2022-10-05 22:04:18.993955	\N	309
310	arabidopsis-thaliana	1	2022-10-05 22:04:19.000497	2022-10-05 22:04:19.000497	\N	310
311	arabidopsis-thaliana	1	2022-10-05 22:04:19.007322	2022-10-05 22:04:19.007322	\N	311
312	arabidopsis-thaliana	1	2022-10-05 22:04:19.013591	2022-10-05 22:04:19.013591	\N	312
313	arabidopsis-thaliana	1	2022-10-05 22:04:19.019474	2022-10-05 22:04:19.019474	\N	313
314	arabidopsis-thaliana	1	2022-10-05 22:04:19.025575	2022-10-05 22:04:19.025575	\N	314
315	arabidopsis-thaliana	1	2022-10-05 22:04:19.031484	2022-10-05 22:04:19.031484	\N	315
316	arabidopsis-thaliana	1	2022-10-05 22:04:19.037145	2022-10-05 22:04:19.037145	\N	316
317	arabidopsis-thaliana	2	2022-10-05 22:04:19.042884	2022-10-05 22:04:19.042884	\N	317
318	arabidopsis-thaliana	2	2022-10-05 22:04:19.048487	2022-10-05 22:04:19.048487	\N	318
319	arabidopsis-thaliana	2	2022-10-05 22:04:19.055279	2022-10-05 22:04:19.055279	\N	319
320	arabidopsis-thaliana	2	2022-10-05 22:04:19.061066	2022-10-05 22:04:19.061066	\N	320
321	arabidopsis-thaliana	2	2022-10-05 22:04:19.067347	2022-10-05 22:04:19.067347	\N	321
322	arabidopsis-thaliana	2	2022-10-05 22:04:19.073459	2022-10-05 22:04:19.073459	\N	322
323	arabidopsis-thaliana	2	2022-10-05 22:04:19.080627	2022-10-05 22:04:19.080627	\N	323
324	arabidopsis-thaliana	1	2022-10-05 22:04:19.086751	2022-10-05 22:04:19.086751	\N	324
325	arabidopsis-thaliana	2	2022-10-05 22:04:19.09914	2022-10-05 22:04:19.09914	\N	325
326	arabidopsis-thaliana	1	2022-10-05 22:04:19.104913	2022-10-05 22:04:19.104913	\N	326
327	arabidopsis-thaliana	1	2022-10-05 22:04:19.113194	2022-10-05 22:04:19.113194	\N	327
328	arabidopsis-thaliana	1	2022-10-05 22:04:19.120158	2022-10-05 22:04:19.120158	\N	328
329	arabidopsis-thaliana	1	2022-10-05 22:04:19.128467	2022-10-05 22:04:19.128467	\N	329
330	arabidopsis-thaliana	1	2022-10-05 22:04:19.135106	2022-10-05 22:04:19.135106	\N	330
331	arabidopsis-thaliana	1	2022-10-05 22:04:19.141902	2022-10-05 22:04:19.141902	\N	331
332	arabidopsis-thaliana	1	2022-10-05 22:04:19.148529	2022-10-05 22:04:19.148529	\N	332
333	arabidopsis-thaliana	1	2022-10-05 22:04:19.154834	2022-10-05 22:04:19.154834	\N	333
334	arabidopsis-thaliana	2	2022-10-05 22:04:19.16276	2022-10-05 22:04:19.16276	\N	334
335	arabidopsis-thaliana	1	2022-10-05 22:04:19.172595	2022-10-05 22:04:19.172595	\N	335
336	arabidopsis-thaliana	1	2022-10-05 22:04:19.178617	2022-10-05 22:04:19.178617	\N	336
337	arabidopsis-thaliana	2	2022-10-05 22:04:19.184811	2022-10-05 22:04:19.184811	\N	337
338	arabidopsis-thaliana	2	2022-10-05 22:04:19.190776	2022-10-05 22:04:19.190776	\N	338
339	arabidopsis-thaliana	2	2022-10-05 22:04:19.196685	2022-10-05 22:04:19.196685	\N	339
340	arabidopsis-thaliana	1	2022-10-05 22:04:19.202715	2022-10-05 22:04:19.202715	\N	340
341	arabidopsis-thaliana	2	2022-10-05 22:04:19.209084	2022-10-05 22:04:19.209084	\N	341
342	arabidopsis-thaliana	2	2022-10-05 22:04:19.215733	2022-10-05 22:04:19.215733	\N	342
343	arabidopsis-thaliana	2	2022-10-05 22:04:19.222148	2022-10-05 22:04:19.222148	\N	343
344	arabidopsis-thaliana	2	2022-10-05 22:04:19.2287	2022-10-05 22:04:19.2287	\N	344
345	arabidopsis-thaliana	2	2022-10-05 22:04:19.234586	2022-10-05 22:04:19.234586	\N	345
346	arabidopsis-thaliana	2	2022-10-05 22:04:19.240725	2022-10-05 22:04:19.240725	\N	346
347	arabidopsis-thaliana	2	2022-10-05 22:04:19.247226	2022-10-05 22:04:19.247226	\N	347
348	arabidopsis-thaliana	2	2022-10-05 22:04:19.253311	2022-10-05 22:04:19.253311	\N	348
349	arabidopsis-thaliana	2	2022-10-05 22:04:19.259189	2022-10-05 22:04:19.259189	\N	349
350	arabidopsis-thaliana	2	2022-10-05 22:04:19.265946	2022-10-05 22:04:19.265946	\N	350
351	arabidopsis-thaliana	2	2022-10-05 22:04:19.272956	2022-10-05 22:04:19.272956	\N	351
352	arabidopsis-thaliana	2	2022-10-05 22:04:19.280163	2022-10-05 22:04:19.280163	\N	352
353	arabidopsis-thaliana	1	2022-10-05 22:04:19.286919	2022-10-05 22:04:19.286919	\N	353
354	arabidopsis-thaliana	1	2022-10-05 22:04:19.296646	2022-10-05 22:04:19.296646	\N	354
355	arabidopsis-thaliana	1	2022-10-05 22:04:19.302805	2022-10-05 22:04:19.302805	\N	355
356	arabidopsis-thaliana	1	2022-10-05 22:04:19.310744	2022-10-05 22:04:19.310744	\N	356
357	arabidopsis-thaliana	1	2022-10-05 22:04:19.317312	2022-10-05 22:04:19.317312	\N	357
358	arabidopsis-thaliana	1	2022-10-05 22:04:19.323928	2022-10-05 22:04:19.323928	\N	358
359	arabidopsis-thaliana	1	2022-10-05 22:04:19.330734	2022-10-05 22:04:19.330734	\N	359
360	arabidopsis-thaliana	1	2022-10-05 22:04:19.338298	2022-10-05 22:04:19.338298	\N	360
361	arabidopsis-thaliana	1	2022-10-05 22:04:19.345612	2022-10-05 22:04:19.345612	\N	361
362	arabidopsis-thaliana	1	2022-10-05 22:04:19.353989	2022-10-05 22:04:19.353989	\N	362
363	arabidopsis-thaliana	1	2022-10-05 22:04:19.361308	2022-10-05 22:04:19.361308	\N	363
364	arabidopsis-thaliana	1	2022-10-05 22:04:19.368154	2022-10-05 22:04:19.368154	\N	364
365	arabidopsis-thaliana	1	2022-10-05 22:04:19.374162	2022-10-05 22:04:19.374162	\N	365
366	arabidopsis-thaliana	1	2022-10-05 22:04:19.382029	2022-10-05 22:04:19.382029	\N	366
367	arabidopsis-thaliana	1	2022-10-05 22:04:19.388559	2022-10-05 22:04:19.388559	\N	367
368	arabidopsis-thaliana	1	2022-10-05 22:04:19.394665	2022-10-05 22:04:19.394665	\N	368
369	arabidopsis-thaliana	1	2022-10-05 22:04:19.40072	2022-10-05 22:04:19.40072	\N	369
370	arabidopsis-thaliana	1	2022-10-05 22:04:19.409941	2022-10-05 22:04:19.409941	\N	370
371	arabidopsis-thaliana	1	2022-10-05 22:04:19.415821	2022-10-05 22:04:19.415821	\N	371
372	arabidopsis-thaliana	1	2022-10-05 22:04:19.421394	2022-10-05 22:04:19.421394	\N	372
373	arabidopsis-thaliana	1	2022-10-05 22:04:19.427257	2022-10-05 22:04:19.427257	\N	373
374	arabidopsis-thaliana	1	2022-10-05 22:04:19.433672	2022-10-05 22:04:19.433672	\N	374
375	arabidopsis-thaliana	1	2022-10-05 22:04:19.439919	2022-10-05 22:04:19.439919	\N	375
376	arabidopsis-thaliana	1	2022-10-05 22:04:19.448605	2022-10-05 22:04:19.448605	\N	376
377	arabidopsis-thaliana	1	2022-10-05 22:04:19.454775	2022-10-05 22:04:19.454775	\N	377
378	arabidopsis-thaliana	1	2022-10-05 22:04:19.46157	2022-10-05 22:04:19.46157	\N	378
379	arabidopsis-thaliana	2	2022-10-05 22:04:19.467436	2022-10-05 22:04:19.467436	\N	379
380	arabidopsis-thaliana	1	2022-10-05 22:04:19.473171	2022-10-05 22:04:19.473171	\N	380
381	arabidopsis-thaliana	1	2022-10-05 22:04:19.480135	2022-10-05 22:04:19.480135	\N	381
382	arabidopsis-thaliana	1	2022-10-05 22:04:19.486327	2022-10-05 22:04:19.486327	\N	382
383	arabidopsis-thaliana	1	2022-10-05 22:04:19.493458	2022-10-05 22:04:19.493458	\N	383
384	arabidopsis-thaliana	1	2022-10-05 22:04:19.500103	2022-10-05 22:04:19.500103	\N	384
385	arabidopsis-thaliana	1	2022-10-05 22:04:19.505925	2022-10-05 22:04:19.505925	\N	385
386	arabidopsis-thaliana	1	2022-10-05 22:04:19.512633	2022-10-05 22:04:19.512633	\N	386
387	arabidopsis-thaliana	1	2022-10-05 22:04:19.518545	2022-10-05 22:04:19.518545	\N	387
388	arabidopsis-thaliana	1	2022-10-05 22:04:19.524516	2022-10-05 22:04:19.524516	\N	388
389	arabidopsis-thaliana	1	2022-10-05 22:04:19.53042	2022-10-05 22:04:19.53042	\N	389
390	arabidopsis-thaliana	1	2022-10-05 22:04:19.537058	2022-10-05 22:04:19.537058	\N	390
391	arabidopsis-thaliana	1	2022-10-05 22:04:19.544249	2022-10-05 22:04:19.544249	\N	391
392	arabidopsis-thaliana	1	2022-10-05 22:04:19.550025	2022-10-05 22:04:19.550025	\N	392
393	arabidopsis-thaliana	1	2022-10-05 22:04:19.555611	2022-10-05 22:04:19.555611	\N	393
394	arabidopsis-thaliana	1	2022-10-05 22:04:19.563425	2022-10-05 22:04:19.563425	\N	394
395	arabidopsis-thaliana	1	2022-10-05 22:04:19.569041	2022-10-05 22:04:19.569041	\N	395
396	arabidopsis-thaliana	1	2022-10-05 22:04:19.574924	2022-10-05 22:04:19.574924	\N	396
397	arabidopsis-thaliana	1	2022-10-05 22:04:19.581016	2022-10-05 22:04:19.581016	\N	397
398	arabidopsis-thaliana	1	2022-10-05 22:04:19.586324	2022-10-05 22:04:19.586324	\N	398
399	arabidopsis-thaliana	1	2022-10-05 22:04:19.592284	2022-10-05 22:04:19.592284	\N	399
400	arabidopsis-thaliana	1	2022-10-05 22:04:19.598657	2022-10-05 22:04:19.598657	\N	400
401	arabidopsis-thaliana	1	2022-10-05 22:04:19.603935	2022-10-05 22:04:19.603935	\N	401
402	arabidopsis-thaliana	2	2022-10-05 22:04:19.611152	2022-10-05 22:04:19.611152	\N	402
403	arabidopsis-thaliana	2	2022-10-05 22:04:19.616974	2022-10-05 22:04:19.616974	\N	403
404	arabidopsis-thaliana	2	2022-10-05 22:04:19.622514	2022-10-05 22:04:19.622514	\N	404
405	arabidopsis-thaliana	2	2022-10-05 22:04:19.628825	2022-10-05 22:04:19.628825	\N	405
406	arabidopsis-thaliana	2	2022-10-05 22:04:19.635241	2022-10-05 22:04:19.635241	\N	406
407	arabidopsis-thaliana	1	2022-10-05 22:04:19.642653	2022-10-05 22:04:19.642653	\N	407
408	arabidopsis-thaliana	1	2022-10-05 22:04:19.649263	2022-10-05 22:04:19.649263	\N	408
409	arabidopsis-thaliana	1	2022-10-05 22:04:19.656061	2022-10-05 22:04:19.656061	\N	409
410	arabidopsis-thaliana	1	2022-10-05 22:04:19.662823	2022-10-05 22:04:19.662823	\N	410
411	arabidopsis-thaliana	1	2022-10-05 22:04:19.668902	2022-10-05 22:04:19.668902	\N	411
412	arabidopsis-thaliana	2	2022-10-05 22:04:19.674844	2022-10-05 22:04:19.674844	\N	412
413	arabidopsis-thaliana	1	2022-10-05 22:04:19.680778	2022-10-05 22:04:19.680778	\N	413
414	arabidopsis-thaliana	1	2022-10-05 22:04:19.687251	2022-10-05 22:04:19.687251	\N	414
415	arabidopsis-thaliana	1	2022-10-05 22:04:19.693584	2022-10-05 22:04:19.693584	\N	415
416	arabidopsis-thaliana	1	2022-10-05 22:04:19.700147	2022-10-05 22:04:19.700147	\N	416
417	arabidopsis-thaliana	2	2022-10-05 22:04:19.70536	2022-10-05 22:04:19.70536	\N	417
418	arabidopsis-thaliana	1	2022-10-05 22:04:19.713014	2022-10-05 22:04:19.713014	\N	418
419	arabidopsis-thaliana	1	2022-10-05 22:04:19.718326	2022-10-05 22:04:19.718326	\N	419
420	arabidopsis-thaliana	1	2022-10-05 22:04:19.724737	2022-10-05 22:04:19.724737	\N	420
421	arabidopsis-thaliana	1	2022-10-05 22:04:19.730321	2022-10-05 22:04:19.730321	\N	421
422	arabidopsis-thaliana	1	2022-10-05 22:04:19.7356	2022-10-05 22:04:19.7356	\N	422
423	arabidopsis-thaliana	1	2022-10-05 22:04:19.741309	2022-10-05 22:04:19.741309	\N	423
424	arabidopsis-thaliana	1	2022-10-05 22:04:19.747072	2022-10-05 22:04:19.747072	\N	424
425	arabidopsis-thaliana	2	2022-10-05 22:04:19.752315	2022-10-05 22:04:19.752315	\N	425
426	arabidopsis-thaliana	2	2022-10-05 22:04:19.757745	2022-10-05 22:04:19.757745	\N	426
427	arabidopsis-thaliana	2	2022-10-05 22:04:19.764454	2022-10-05 22:04:19.764454	\N	427
428	arabidopsis-thaliana	2	2022-10-05 22:04:19.770238	2022-10-05 22:04:19.770238	\N	428
429	arabidopsis-thaliana	2	2022-10-05 22:04:19.776125	2022-10-05 22:04:19.776125	\N	429
430	arabidopsis-thaliana	2	2022-10-05 22:04:19.784148	2022-10-05 22:04:19.784148	\N	430
431	arabidopsis-thaliana	2	2022-10-05 22:04:19.789559	2022-10-05 22:04:19.789559	\N	431
432	arabidopsis-thaliana	2	2022-10-05 22:04:19.795924	2022-10-05 22:04:19.795924	\N	432
433	arabidopsis-thaliana	2	2022-10-05 22:04:19.801695	2022-10-05 22:04:19.801695	\N	433
434	arabidopsis-thaliana	2	2022-10-05 22:04:19.807392	2022-10-05 22:04:19.807392	\N	434
435	arabidopsis-thaliana	1	2022-10-05 22:04:19.813323	2022-10-05 22:04:19.813323	\N	435
436	arabidopsis-thaliana	1	2022-10-05 22:04:19.818951	2022-10-05 22:04:19.818951	\N	436
437	arabidopsis-thaliana	1	2022-10-05 22:04:19.824571	2022-10-05 22:04:19.824571	\N	437
438	arabidopsis-thaliana	1	2022-10-05 22:04:19.83196	2022-10-05 22:04:19.83196	\N	438
439	arabidopsis-thaliana	1	2022-10-05 22:04:19.838936	2022-10-05 22:04:19.838936	\N	439
440	arabidopsis-thaliana	1	2022-10-05 22:04:19.845265	2022-10-05 22:04:19.845265	\N	440
441	arabidopsis-thaliana	1	2022-10-05 22:04:19.855553	2022-10-05 22:04:19.855553	\N	441
442	arabidopsis-thaliana	1	2022-10-05 22:04:19.861467	2022-10-05 22:04:19.861467	\N	442
443	arabidopsis-thaliana	2	2022-10-05 22:04:19.867144	2022-10-05 22:04:19.867144	\N	443
444	arabidopsis-thaliana	2	2022-10-05 22:04:19.872577	2022-10-05 22:04:19.872577	\N	444
445	arabidopsis-thaliana	2	2022-10-05 22:04:19.878165	2022-10-05 22:04:19.878165	\N	445
446	arabidopsis-thaliana	1	2022-10-05 22:04:19.884458	2022-10-05 22:04:19.884458	\N	446
447	arabidopsis-thaliana	2	2022-10-05 22:04:19.889975	2022-10-05 22:04:19.889975	\N	447
448	arabidopsis-thaliana	2	2022-10-05 22:04:19.896337	2022-10-05 22:04:19.896337	\N	448
449	arabidopsis-thaliana	2	2022-10-05 22:04:19.902613	2022-10-05 22:04:19.902613	\N	449
450	arabidopsis-thaliana	1	2022-10-05 22:04:19.909878	2022-10-05 22:04:19.909878	\N	450
451	arabidopsis-thaliana	1	2022-10-05 22:04:19.916753	2022-10-05 22:04:19.916753	\N	451
452	arabidopsis-thaliana	1	2022-10-05 22:04:19.922998	2022-10-05 22:04:19.922998	\N	452
453	arabidopsis-thaliana	1	2022-10-05 22:04:19.92904	2022-10-05 22:04:19.92904	\N	453
454	arabidopsis-thaliana	1	2022-10-05 22:04:19.935448	2022-10-05 22:04:19.935448	\N	454
455	arabidopsis-thaliana	1	2022-10-05 22:04:19.942871	2022-10-05 22:04:19.942871	\N	455
456	arabidopsis-thaliana	1	2022-10-05 22:04:19.949164	2022-10-05 22:04:19.949164	\N	456
457	arabidopsis-thaliana	0	2022-10-05 22:04:19.954921	2022-10-05 22:04:19.954921	\N	457
458	arabidopsis-thaliana	1	2022-10-05 22:04:19.962445	2022-10-05 22:04:19.962445	\N	458
459	arabidopsis-thaliana	1	2022-10-05 22:04:19.969167	2022-10-05 22:04:19.969167	\N	459
460	arabidopsis-thaliana	1	2022-10-05 22:04:19.975151	2022-10-05 22:04:19.975151	\N	460
461	arabidopsis-thaliana	1	2022-10-05 22:04:19.985587	2022-10-05 22:04:19.985587	\N	461
462	arabidopsis-thaliana	1	2022-10-05 22:04:19.992512	2022-10-05 22:04:19.992512	\N	462
463	arabidopsis-thaliana	1	2022-10-05 22:04:19.998643	2022-10-05 22:04:19.998643	\N	463
464	arabidopsis-thaliana	1	2022-10-05 22:04:20.004721	2022-10-05 22:04:20.004721	\N	464
465	arabidopsis-thaliana	1	2022-10-05 22:04:20.012311	2022-10-05 22:04:20.012311	\N	465
466	arabidopsis-thaliana	1	2022-10-05 22:04:20.01863	2022-10-05 22:04:20.01863	\N	466
467	arabidopsis-thaliana	1	2022-10-05 22:04:20.025185	2022-10-05 22:04:20.025185	\N	467
468	arabidopsis-thaliana	1	2022-10-05 22:04:20.031468	2022-10-05 22:04:20.031468	\N	468
469	arabidopsis-thaliana	1	2022-10-05 22:04:20.037038	2022-10-05 22:04:20.037038	\N	469
470	arabidopsis-thaliana	1	2022-10-05 22:04:20.044191	2022-10-05 22:04:20.044191	\N	470
471	arabidopsis-thaliana	1	2022-10-05 22:04:20.050575	2022-10-05 22:04:20.050575	\N	471
472	arabidopsis-thaliana	1	2022-10-05 22:04:20.057244	2022-10-05 22:04:20.057244	\N	472
473	arabidopsis-thaliana	1	2022-10-05 22:04:20.064127	2022-10-05 22:04:20.064127	\N	473
474	arabidopsis-thaliana	1	2022-10-05 22:04:20.071041	2022-10-05 22:04:20.071041	\N	474
475	arabidopsis-thaliana	1	2022-10-05 22:04:20.078017	2022-10-05 22:04:20.078017	\N	475
476	arabidopsis-thaliana	1	2022-10-05 22:04:20.084142	2022-10-05 22:04:20.084142	\N	476
477	arabidopsis-thaliana	1	2022-10-05 22:04:20.093495	2022-10-05 22:04:20.093495	\N	477
478	arabidopsis-thaliana	1	2022-10-05 22:04:20.100835	2022-10-05 22:04:20.100835	\N	478
479	arabidopsis-thaliana	1	2022-10-05 22:04:20.10768	2022-10-05 22:04:20.10768	\N	479
480	arabidopsis-thaliana	1	2022-10-05 22:04:20.117231	2022-10-05 22:04:20.117231	\N	480
481	arabidopsis-thaliana	1	2022-10-05 22:04:20.123956	2022-10-05 22:04:20.123956	\N	481
482	arabidopsis-thaliana	1	2022-10-05 22:04:20.131175	2022-10-05 22:04:20.131175	\N	482
483	arabidopsis-thaliana	1	2022-10-05 22:04:20.13733	2022-10-05 22:04:20.13733	\N	483
484	arabidopsis-thaliana	1	2022-10-05 22:04:20.144613	2022-10-05 22:04:20.144613	\N	484
485	arabidopsis-thaliana	1	2022-10-05 22:04:20.152387	2022-10-05 22:04:20.152387	\N	485
486	arabidopsis-thaliana	1	2022-10-05 22:04:20.158776	2022-10-05 22:04:20.158776	\N	486
487	arabidopsis-thaliana	1	2022-10-05 22:04:20.168662	2022-10-05 22:04:20.168662	\N	487
488	arabidopsis-thaliana	1	2022-10-05 22:04:20.175285	2022-10-05 22:04:20.175285	\N	488
489	arabidopsis-thaliana	1	2022-10-05 22:04:20.182001	2022-10-05 22:04:20.182001	\N	489
490	arabidopsis-thaliana	1	2022-10-05 22:04:20.18827	2022-10-05 22:04:20.18827	\N	490
491	arabidopsis-thaliana	1	2022-10-05 22:04:20.195279	2022-10-05 22:04:20.195279	\N	491
492	arabidopsis-thaliana	1	2022-10-05 22:04:20.20152	2022-10-05 22:04:20.20152	\N	492
493	arabidopsis-thaliana	1	2022-10-05 22:04:20.208687	2022-10-05 22:04:20.208687	\N	493
494	arabidopsis-thaliana	1	2022-10-05 22:04:20.215165	2022-10-05 22:04:20.215165	\N	494
495	arabidopsis-thaliana	1	2022-10-05 22:04:20.221179	2022-10-05 22:04:20.221179	\N	495
496	arabidopsis-thaliana	1	2022-10-05 22:04:20.229677	2022-10-05 22:04:20.229677	\N	496
497	arabidopsis-thaliana	1	2022-10-05 22:04:20.235842	2022-10-05 22:04:20.235842	\N	497
498	arabidopsis-thaliana	1	2022-10-05 22:04:20.243039	2022-10-05 22:04:20.243039	\N	498
499	arabidopsis-thaliana	1	2022-10-05 22:04:20.253367	2022-10-05 22:04:20.253367	\N	499
500	arabidopsis-thaliana	1	2022-10-05 22:04:20.263496	2022-10-05 22:04:20.263496	\N	500
501	arabidopsis-thaliana	1	2022-10-05 22:04:20.272049	2022-10-05 22:04:20.272049	\N	501
502	arabidopsis-thaliana	1	2022-10-05 22:04:20.284494	2022-10-05 22:04:20.284494	\N	502
503	arabidopsis-thaliana	1	2022-10-05 22:04:20.291346	2022-10-05 22:04:20.291346	\N	503
504	arabidopsis-thaliana	1	2022-10-05 22:04:20.298423	2022-10-05 22:04:20.298423	\N	504
505	arabidopsis-thaliana	1	2022-10-05 22:04:20.304575	2022-10-05 22:04:20.304575	\N	505
506	arabidopsis-thaliana	1	2022-10-05 22:04:20.311667	2022-10-05 22:04:20.311667	\N	506
507	arabidopsis-thaliana	1	2022-10-05 22:04:20.317683	2022-10-05 22:04:20.317683	\N	507
508	arabidopsis-thaliana	1	2022-10-05 22:04:20.323719	2022-10-05 22:04:20.323719	\N	508
509	arabidopsis-thaliana	1	2022-10-05 22:04:20.331335	2022-10-05 22:04:20.331335	\N	509
510	arabidopsis-thaliana	1	2022-10-05 22:04:20.338077	2022-10-05 22:04:20.338077	\N	510
511	arabidopsis-thaliana	1	2022-10-05 22:04:20.344333	2022-10-05 22:04:20.344333	\N	511
512	arabidopsis-thaliana	1	2022-10-05 22:04:20.350527	2022-10-05 22:04:20.350527	\N	512
513	arabidopsis-thaliana	1	2022-10-05 22:04:20.356644	2022-10-05 22:04:20.356644	\N	513
514	arabidopsis-thaliana	1	2022-10-05 22:04:20.361686	2022-10-05 22:04:20.361686	\N	514
515	arabidopsis-thaliana	1	2022-10-05 22:04:20.366608	2022-10-05 22:04:20.366608	\N	515
516	arabidopsis-thaliana	1	2022-10-05 22:04:20.371906	2022-10-05 22:04:20.371906	\N	516
517	arabidopsis-thaliana	1	2022-10-05 22:04:20.37717	2022-10-05 22:04:20.37717	\N	517
518	arabidopsis-thaliana	1	2022-10-05 22:04:20.382845	2022-10-05 22:04:20.382845	\N	518
519	arabidopsis-thaliana	1	2022-10-05 22:04:20.387931	2022-10-05 22:04:20.387931	\N	519
520	arabidopsis-thaliana	1	2022-10-05 22:04:20.393038	2022-10-05 22:04:20.393038	\N	520
521	arabidopsis-thaliana	1	2022-10-05 22:04:20.39846	2022-10-05 22:04:20.39846	\N	521
522	arabidopsis-thaliana	1	2022-10-05 22:04:20.403769	2022-10-05 22:04:20.403769	\N	522
523	arabidopsis-thaliana	1	2022-10-05 22:04:20.409786	2022-10-05 22:04:20.409786	\N	523
524	arabidopsis-thaliana	1	2022-10-05 22:04:20.416395	2022-10-05 22:04:20.416395	\N	524
525	arabidopsis-thaliana	1	2022-10-05 22:04:20.421643	2022-10-05 22:04:20.421643	\N	525
526	arabidopsis-thaliana	1	2022-10-05 22:04:20.427608	2022-10-05 22:04:20.427608	\N	526
527	arabidopsis-thaliana	1	2022-10-05 22:04:20.433441	2022-10-05 22:04:20.433441	\N	527
528	arabidopsis-thaliana	1	2022-10-05 22:04:20.438468	2022-10-05 22:04:20.438468	\N	528
529	arabidopsis-thaliana	1	2022-10-05 22:04:20.445551	2022-10-05 22:04:20.445551	\N	529
530	arabidopsis-thaliana	1	2022-10-05 22:04:20.4513	2022-10-05 22:04:20.4513	\N	530
531	arabidopsis-thaliana	1	2022-10-05 22:04:20.45736	2022-10-05 22:04:20.45736	\N	531
532	arabidopsis-thaliana	1	2022-10-05 22:04:20.463311	2022-10-05 22:04:20.463311	\N	532
533	arabidopsis-thaliana	1	2022-10-05 22:04:20.468655	2022-10-05 22:04:20.468655	\N	533
534	arabidopsis-thaliana	1	2022-10-05 22:04:20.474423	2022-10-05 22:04:20.474423	\N	534
535	arabidopsis-thaliana	1	2022-10-05 22:04:20.480528	2022-10-05 22:04:20.480528	\N	535
536	arabidopsis-thaliana	1	2022-10-05 22:04:20.485789	2022-10-05 22:04:20.485789	\N	536
537	arabidopsis-thaliana	1	2022-10-05 22:04:20.493491	2022-10-05 22:04:20.493491	\N	537
538	arabidopsis-thaliana	1	2022-10-05 22:04:20.499665	2022-10-05 22:04:20.499665	\N	538
539	arabidopsis-thaliana	1	2022-10-05 22:04:20.504679	2022-10-05 22:04:20.504679	\N	539
540	arabidopsis-thaliana	1	2022-10-05 22:04:20.514629	2022-10-05 22:04:20.514629	\N	540
541	arabidopsis-thaliana	1	2022-10-05 22:04:20.520239	2022-10-05 22:04:20.520239	\N	541
542	arabidopsis-thaliana	1	2022-10-05 22:04:20.526217	2022-10-05 22:04:20.526217	\N	542
543	arabidopsis-thaliana	1	2022-10-05 22:04:20.532187	2022-10-05 22:04:20.532187	\N	543
544	arabidopsis-thaliana	1	2022-10-05 22:04:20.537154	2022-10-05 22:04:20.537154	\N	544
545	arabidopsis-thaliana	1	2022-10-05 22:04:20.543002	2022-10-05 22:04:20.543002	\N	545
546	arabidopsis-thaliana	1	2022-10-05 22:04:20.548402	2022-10-05 22:04:20.548402	\N	546
547	arabidopsis-thaliana	1	2022-10-05 22:04:20.553466	2022-10-05 22:04:20.553466	\N	547
548	arabidopsis-thaliana	2	2022-10-05 22:04:20.559145	2022-10-05 22:04:20.559145	\N	548
549	arabidopsis-thaliana	2	2022-10-05 22:04:20.56574	2022-10-05 22:04:20.56574	\N	549
550	arabidopsis-thaliana	1	2022-10-05 22:04:20.571039	2022-10-05 22:04:20.571039	\N	550
551	arabidopsis-thaliana	2	2022-10-05 22:04:20.577027	2022-10-05 22:04:20.577027	\N	551
552	arabidopsis-thaliana	2	2022-10-05 22:04:20.583142	2022-10-05 22:04:20.583142	\N	552
553	arabidopsis-thaliana	2	2022-10-05 22:04:20.587945	2022-10-05 22:04:20.587945	\N	553
554	arabidopsis-thaliana	2	2022-10-05 22:04:20.594341	2022-10-05 22:04:20.594341	\N	554
555	arabidopsis-thaliana	2	2022-10-05 22:04:20.599401	2022-10-05 22:04:20.599401	\N	555
556	arabidopsis-thaliana	1	2022-10-05 22:04:20.604545	2022-10-05 22:04:20.604545	\N	556
557	arabidopsis-thaliana	1	2022-10-05 22:04:20.6095	2022-10-05 22:04:20.6095	\N	557
558	arabidopsis-thaliana	1	2022-10-05 22:04:20.614866	2022-10-05 22:04:20.614866	\N	558
559	arabidopsis-thaliana	1	2022-10-05 22:04:20.619695	2022-10-05 22:04:20.619695	\N	559
560	arabidopsis-thaliana	1	2022-10-05 22:04:20.625114	2022-10-05 22:04:20.625114	\N	560
561	arabidopsis-thaliana	1	2022-10-05 22:04:20.633052	2022-10-05 22:04:20.633052	\N	561
562	arabidopsis-thaliana	1	2022-10-05 22:04:20.638242	2022-10-05 22:04:20.638242	\N	562
563	arabidopsis-thaliana	1	2022-10-05 22:04:20.644034	2022-10-05 22:04:20.644034	\N	563
564	arabidopsis-thaliana	1	2022-10-05 22:04:20.649389	2022-10-05 22:04:20.649389	\N	564
565	arabidopsis-thaliana	1	2022-10-05 22:04:20.654576	2022-10-05 22:04:20.654576	\N	565
566	arabidopsis-thaliana	2	2022-10-05 22:04:20.662295	2022-10-05 22:04:20.662295	\N	566
567	arabidopsis-thaliana	2	2022-10-05 22:04:20.669884	2022-10-05 22:04:20.669884	\N	567
568	arabidopsis-thaliana	2	2022-10-05 22:04:20.674902	2022-10-05 22:04:20.674902	\N	568
569	arabidopsis-thaliana	2	2022-10-05 22:04:20.681265	2022-10-05 22:04:20.681265	\N	569
570	arabidopsis-thaliana	2	2022-10-05 22:04:20.686428	2022-10-05 22:04:20.686428	\N	570
571	arabidopsis-thaliana	2	2022-10-05 22:04:20.691638	2022-10-05 22:04:20.691638	\N	571
572	arabidopsis-thaliana	2	2022-10-05 22:04:20.697045	2022-10-05 22:04:20.697045	\N	572
573	arabidopsis-thaliana	2	2022-10-05 22:04:20.70246	2022-10-05 22:04:20.70246	\N	573
574	arabidopsis-thaliana	1	2022-10-05 22:04:20.707818	2022-10-05 22:04:20.707818	\N	574
575	arabidopsis-thaliana	1	2022-10-05 22:04:20.713248	2022-10-05 22:04:20.713248	\N	575
576	arabidopsis-thaliana	1	2022-10-05 22:04:20.719142	2022-10-05 22:04:20.719142	\N	576
577	arabidopsis-thaliana	1	2022-10-05 22:04:20.724179	2022-10-05 22:04:20.724179	\N	577
578	arabidopsis-thaliana	1	2022-10-05 22:04:20.730033	2022-10-05 22:04:20.730033	\N	578
579	arabidopsis-thaliana	1	2022-10-05 22:04:20.735604	2022-10-05 22:04:20.735604	\N	579
580	arabidopsis-thaliana	1	2022-10-05 22:04:20.741775	2022-10-05 22:04:20.741775	\N	580
581	arabidopsis-thaliana	1	2022-10-05 22:04:20.749078	2022-10-05 22:04:20.749078	\N	581
582	arabidopsis-thaliana	1	2022-10-05 22:04:20.754368	2022-10-05 22:04:20.754368	\N	582
583	arabidopsis-thaliana	1	2022-10-05 22:04:20.759699	2022-10-05 22:04:20.759699	\N	583
667	arabidopsis-thaliana	0	2022-10-05 22:04:21.247048	2022-10-05 22:04:21.247048	\N	559
712	arabidopsis-thaliana	1	2022-10-05 22:04:21.504547	2022-10-05 22:04:21.504547	\N	379
733	arabidopsis-thaliana	1	2022-10-05 22:04:21.622845	2022-10-05 22:04:21.622845	\N	325
790	arabidopsis-thaliana	1	2022-10-05 22:04:21.951774	2022-10-05 22:04:21.951774	\N	25
803	arabidopsis-thaliana	1	2022-10-05 22:04:22.023026	2022-10-05 22:04:22.023026	\N	191
837	arabidopsis-thaliana	1	2022-10-05 22:04:22.212569	2022-10-05 22:04:22.212569	\N	247
838	arabidopsis-thaliana	1	2022-10-05 22:04:22.218311	2022-10-05 22:04:22.218311	\N	244
839	arabidopsis-thaliana	1	2022-10-05 22:04:22.224847	2022-10-05 22:04:22.224847	\N	252
840	arabidopsis-thaliana	-999	2022-10-05 22:04:22.231457	2022-10-05 22:04:22.231457	\N	165
843	arabidopsis-thaliana	1	2022-10-05 22:04:22.252512	2022-10-05 22:04:22.252512	\N	242
844	arabidopsis-thaliana	1	2022-10-05 22:04:22.25855	2022-10-05 22:04:22.25855	\N	243
845	arabidopsis-thaliana	1	2022-10-05 22:04:22.266049	2022-10-05 22:04:22.266049	\N	245
846	arabidopsis-thaliana	1	2022-10-05 22:04:22.271008	2022-10-05 22:04:22.271008	\N	248
847	arabidopsis-thaliana	1	2022-10-05 22:04:22.276948	2022-10-05 22:04:22.276948	\N	249
848	arabidopsis-thaliana	1	2022-10-05 22:04:22.282274	2022-10-05 22:04:22.282274	\N	250
851	arabidopsis-thaliana	1	2022-10-05 22:04:22.30021	2022-10-05 22:04:22.30021	\N	39
852	arabidopsis-thaliana	1	2022-10-05 22:04:22.305328	2022-10-05 22:04:22.305328	\N	221
856	arabidopsis-thaliana	1	2022-10-05 22:04:22.329419	2022-10-05 22:04:22.329419	\N	23
857	arabidopsis-thaliana	1	2022-10-05 22:04:22.336165	2022-10-05 22:04:22.336165	\N	24
858	arabidopsis-thaliana	1	2022-10-05 22:04:22.342919	2022-10-05 22:04:22.342919	\N	65
860	arabidopsis-thaliana	1	2022-10-05 22:04:22.358658	2022-10-05 22:04:22.358658	\N	85
862	arabidopsis-thaliana	1	2022-10-05 22:04:22.369644	2022-10-05 22:04:22.369644	\N	188
863	arabidopsis-thaliana	1	2022-10-05 22:04:22.375497	2022-10-05 22:04:22.375497	\N	224
864	arabidopsis-thaliana	1	2022-10-05 22:04:22.381444	2022-10-05 22:04:22.381444	\N	225
865	arabidopsis-thaliana	1	2022-10-05 22:04:22.386714	2022-10-05 22:04:22.386714	\N	238
866	arabidopsis-thaliana	1	2022-10-05 22:04:22.391953	2022-10-05 22:04:22.391953	\N	239
867	arabidopsis-thaliana	1	2022-10-05 22:04:22.3977	2022-10-05 22:04:22.3977	\N	240
868	arabidopsis-thaliana	1	2022-10-05 22:04:22.402844	2022-10-05 22:04:22.402844	\N	241
869	arabidopsis-thaliana	1	2022-10-05 22:04:22.408214	2022-10-05 22:04:22.408214	\N	246
870	arabidopsis-thaliana	1	2022-10-05 22:04:22.413381	2022-10-05 22:04:22.413381	\N	253
871	arabidopsis-thaliana	1	2022-10-05 22:04:22.418342	2022-10-05 22:04:22.418342	\N	254
872	arabidopsis-thaliana	1	2022-10-05 22:04:22.423416	2022-10-05 22:04:22.423416	\N	255
873	arabidopsis-thaliana	1	2022-10-05 22:04:22.429172	2022-10-05 22:04:22.429172	\N	261
874	arabidopsis-thaliana	1	2022-10-05 22:04:22.435281	2022-10-05 22:04:22.435281	\N	266
875	arabidopsis-thaliana	1	2022-10-05 22:04:22.441026	2022-10-05 22:04:22.441026	\N	352
876	arabidopsis-thaliana	1	2022-10-05 22:04:22.446776	2022-10-05 22:04:22.446776	\N	432
879	arabidopsis-thaliana	2	2022-10-05 22:04:22.464449	2022-10-05 22:04:22.464449	\N	104
881	arabidopsis-thaliana	2	2022-10-05 22:04:22.476327	2022-10-05 22:04:22.476327	\N	268
883	arabidopsis-thaliana	2	2022-10-05 22:04:22.486847	2022-10-05 22:04:22.486847	\N	272
884	cardamine-hirsuta	1	2022-10-05 22:04:22.492915	2022-10-05 22:04:22.492915	\N	1
885	cardamine-hirsuta	1	2022-10-05 22:04:22.499653	2022-10-05 22:04:22.499653	\N	2
886	cardamine-hirsuta	1	2022-10-05 22:04:22.504526	2022-10-05 22:04:22.504526	\N	3
887	cardamine-hirsuta	1	2022-10-05 22:04:22.510757	2022-10-05 22:04:22.510757	\N	4
888	cardamine-hirsuta	1	2022-10-05 22:04:22.516963	2022-10-05 22:04:22.516963	\N	5
889	cardamine-hirsuta	-999	2022-10-05 22:04:22.52204	2022-10-05 22:04:22.52204	\N	6
890	cardamine-hirsuta	-999	2022-10-05 22:04:22.529398	2022-10-05 22:04:22.529398	\N	7
891	cardamine-hirsuta	1	2022-10-05 22:04:22.535598	2022-10-05 22:04:22.535598	\N	8
892	cardamine-hirsuta	1	2022-10-05 22:04:22.541241	2022-10-05 22:04:22.541241	\N	9
893	cardamine-hirsuta	1	2022-10-05 22:04:22.546807	2022-10-05 22:04:22.546807	\N	10
894	cardamine-hirsuta	1	2022-10-05 22:04:22.552188	2022-10-05 22:04:22.552188	\N	11
895	cardamine-hirsuta	1	2022-10-05 22:04:22.557904	2022-10-05 22:04:22.557904	\N	12
896	cardamine-hirsuta	1	2022-10-05 22:04:22.563531	2022-10-05 22:04:22.563531	\N	13
897	cardamine-hirsuta	1	2022-10-05 22:04:22.568745	2022-10-05 22:04:22.568745	\N	14
898	cardamine-hirsuta	0	2022-10-05 22:04:22.574503	2022-10-05 22:04:22.574503	\N	898
899	cardamine-hirsuta	0	2022-10-05 22:04:22.580504	2022-10-05 22:04:22.580504	\N	15
900	cardamine-hirsuta	1	2022-10-05 22:04:22.585689	2022-10-05 22:04:22.585689	\N	900
901	cardamine-hirsuta	1	2022-10-05 22:04:22.59165	2022-10-05 22:04:22.59165	\N	901
902	cardamine-hirsuta	1	2022-10-05 22:04:22.597474	2022-10-05 22:04:22.597474	\N	902
903	cardamine-hirsuta	1	2022-10-05 22:04:22.604369	2022-10-05 22:04:22.604369	\N	16
904	cardamine-hirsuta	1	2022-10-05 22:04:22.610528	2022-10-05 22:04:22.610528	\N	904
905	cardamine-hirsuta	1	2022-10-05 22:04:22.616515	2022-10-05 22:04:22.616515	\N	19
906	cardamine-hirsuta	1	2022-10-05 22:04:22.621446	2022-10-05 22:04:22.621446	\N	906
907	cardamine-hirsuta	1	2022-10-05 22:04:22.629694	2022-10-05 22:04:22.629694	\N	20
908	cardamine-hirsuta	1	2022-10-05 22:04:22.636317	2022-10-05 22:04:22.636317	\N	21
909	cardamine-hirsuta	1	2022-10-05 22:04:22.642859	2022-10-05 22:04:22.642859	\N	909
910	cardamine-hirsuta	1	2022-10-05 22:04:22.648786	2022-10-05 22:04:22.648786	\N	22
911	cardamine-hirsuta	1	2022-10-05 22:04:22.654055	2022-10-05 22:04:22.654055	\N	23
912	cardamine-hirsuta	1	2022-10-05 22:04:22.659678	2022-10-05 22:04:22.659678	\N	24
913	cardamine-hirsuta	1	2022-10-05 22:04:22.665371	2022-10-05 22:04:22.665371	\N	25
914	cardamine-hirsuta	1	2022-10-05 22:04:22.670745	2022-10-05 22:04:22.670745	\N	27
915	cardamine-hirsuta	1	2022-10-05 22:04:22.675787	2022-10-05 22:04:22.675787	\N	29
916	cardamine-hirsuta	1	2022-10-05 22:04:22.681224	2022-10-05 22:04:22.681224	\N	30
917	cardamine-hirsuta	-999	2022-10-05 22:04:22.686094	2022-10-05 22:04:22.686094	\N	31
918	cardamine-hirsuta	1	2022-10-05 22:04:22.691093	2022-10-05 22:04:22.691093	\N	32
919	cardamine-hirsuta	1	2022-10-05 22:04:22.696422	2022-10-05 22:04:22.696422	\N	33
920	cardamine-hirsuta	1	2022-10-05 22:04:22.701291	2022-10-05 22:04:22.701291	\N	34
921	cardamine-hirsuta	-999	2022-10-05 22:04:22.706208	2022-10-05 22:04:22.706208	\N	35
922	cardamine-hirsuta	2	2022-10-05 22:04:22.711584	2022-10-05 22:04:22.711584	\N	36
923	cardamine-hirsuta	0	2022-10-05 22:04:22.716649	2022-10-05 22:04:22.716649	\N	46
924	cardamine-hirsuta	0	2022-10-05 22:04:22.733756	2022-10-05 22:04:22.733756	\N	47
925	cardamine-hirsuta	1	2022-10-05 22:04:22.738396	2022-10-05 22:04:22.738396	\N	48
926	cardamine-hirsuta	1	2022-10-05 22:04:22.744476	2022-10-05 22:04:22.744476	\N	49
927	cardamine-hirsuta	-999	2022-10-05 22:04:22.750227	2022-10-05 22:04:22.750227	\N	50
928	cardamine-hirsuta	1	2022-10-05 22:04:22.755052	2022-10-05 22:04:22.755052	\N	51
929	cardamine-hirsuta	1	2022-10-05 22:04:22.760412	2022-10-05 22:04:22.760412	\N	52
930	cardamine-hirsuta	1	2022-10-05 22:04:22.765326	2022-10-05 22:04:22.765326	\N	53
931	cardamine-hirsuta	1	2022-10-05 22:04:22.770176	2022-10-05 22:04:22.770176	\N	54
932	cardamine-hirsuta	2	2022-10-05 22:04:22.775141	2022-10-05 22:04:22.775141	\N	55
933	cardamine-hirsuta	0	2022-10-05 22:04:22.780388	2022-10-05 22:04:22.780388	\N	56
934	cardamine-hirsuta	1	2022-10-05 22:04:22.785183	2022-10-05 22:04:22.785183	\N	57
935	cardamine-hirsuta	1	2022-10-05 22:04:22.791205	2022-10-05 22:04:22.791205	\N	58
936	cardamine-hirsuta	1	2022-10-05 22:04:22.797414	2022-10-05 22:04:22.797414	\N	59
937	cardamine-hirsuta	1	2022-10-05 22:04:22.802618	2022-10-05 22:04:22.802618	\N	60
938	cardamine-hirsuta	1	2022-10-05 22:04:22.808454	2022-10-05 22:04:22.808454	\N	61
939	cardamine-hirsuta	1	2022-10-05 22:04:22.813979	2022-10-05 22:04:22.813979	\N	62
940	cardamine-hirsuta	1	2022-10-05 22:04:22.819009	2022-10-05 22:04:22.819009	\N	64
941	cardamine-hirsuta	0	2022-10-05 22:04:22.834355	2022-10-05 22:04:22.834355	\N	65
942	cardamine-hirsuta	1	2022-10-05 22:04:22.839657	2022-10-05 22:04:22.839657	\N	67
943	cardamine-hirsuta	1	2022-10-05 22:04:22.844967	2022-10-05 22:04:22.844967	\N	68
944	cardamine-hirsuta	1	2022-10-05 22:04:22.850664	2022-10-05 22:04:22.850664	\N	69
945	cardamine-hirsuta	1	2022-10-05 22:04:22.855683	2022-10-05 22:04:22.855683	\N	70
946	cardamine-hirsuta	1	2022-10-05 22:04:22.8613	2022-10-05 22:04:22.8613	\N	71
947	cardamine-hirsuta	-999	2022-10-05 22:04:22.867018	2022-10-05 22:04:22.867018	\N	72
948	cardamine-hirsuta	1	2022-10-05 22:04:22.872554	2022-10-05 22:04:22.872554	\N	73
949	cardamine-hirsuta	1	2022-10-05 22:04:22.877748	2022-10-05 22:04:22.877748	\N	74
950	cardamine-hirsuta	1	2022-10-05 22:04:22.88352	2022-10-05 22:04:22.88352	\N	75
951	cardamine-hirsuta	1	2022-10-05 22:04:22.888609	2022-10-05 22:04:22.888609	\N	76
952	cardamine-hirsuta	0	2022-10-05 22:04:22.8941	2022-10-05 22:04:22.8941	\N	82
953	cardamine-hirsuta	1	2022-10-05 22:04:22.89933	2022-10-05 22:04:22.89933	\N	86
954	cardamine-hirsuta	1	2022-10-05 22:04:22.904461	2022-10-05 22:04:22.904461	\N	954
955	cardamine-hirsuta	2	2022-10-05 22:04:22.910729	2022-10-05 22:04:22.910729	\N	89
956	cardamine-hirsuta	1	2022-10-05 22:04:22.916133	2022-10-05 22:04:22.916133	\N	956
957	cardamine-hirsuta	2	2022-10-05 22:04:22.921165	2022-10-05 22:04:22.921165	\N	957
958	cardamine-hirsuta	1	2022-10-05 22:04:22.927881	2022-10-05 22:04:22.927881	\N	91
959	cardamine-hirsuta	1	2022-10-05 22:04:22.934551	2022-10-05 22:04:22.934551	\N	959
960	cardamine-hirsuta	1	2022-10-05 22:04:22.94055	2022-10-05 22:04:22.94055	\N	92
961	cardamine-hirsuta	1	2022-10-05 22:04:22.94696	2022-10-05 22:04:22.94696	\N	93
962	cardamine-hirsuta	1	2022-10-05 22:04:22.951943	2022-10-05 22:04:22.951943	\N	94
963	cardamine-hirsuta	1	2022-10-05 22:04:22.959091	2022-10-05 22:04:22.959091	\N	95
964	cardamine-hirsuta	1	2022-10-05 22:04:22.965208	2022-10-05 22:04:22.965208	\N	96
965	cardamine-hirsuta	1	2022-10-05 22:04:22.970445	2022-10-05 22:04:22.970445	\N	97
966	cardamine-hirsuta	1	2022-10-05 22:04:22.97669	2022-10-05 22:04:22.97669	\N	98
967	cardamine-hirsuta	-999	2022-10-05 22:04:22.982507	2022-10-05 22:04:22.982507	\N	99
968	cardamine-hirsuta	1	2022-10-05 22:04:22.987655	2022-10-05 22:04:22.987655	\N	100
969	cardamine-hirsuta	1	2022-10-05 22:04:22.993403	2022-10-05 22:04:22.993403	\N	101
970	cardamine-hirsuta	1	2022-10-05 22:04:22.998739	2022-10-05 22:04:22.998739	\N	970
971	cardamine-hirsuta	2	2022-10-05 22:04:23.003766	2022-10-05 22:04:23.003766	\N	971
972	cardamine-hirsuta	1	2022-10-05 22:04:23.008876	2022-10-05 22:04:23.008876	\N	103
973	cardamine-hirsuta	1	2022-10-05 22:04:23.017056	2022-10-05 22:04:23.017056	\N	104
974	cardamine-hirsuta	1	2022-10-05 22:04:23.022073	2022-10-05 22:04:23.022073	\N	105
975	cardamine-hirsuta	1	2022-10-05 22:04:23.028771	2022-10-05 22:04:23.028771	\N	106
976	cardamine-hirsuta	1	2022-10-05 22:04:23.034465	2022-10-05 22:04:23.034465	\N	107
977	cardamine-hirsuta	1	2022-10-05 22:04:23.039292	2022-10-05 22:04:23.039292	\N	108
978	cardamine-hirsuta	2	2022-10-05 22:04:23.045115	2022-10-05 22:04:23.045115	\N	111
979	cardamine-hirsuta	1	2022-10-05 22:04:23.050523	2022-10-05 22:04:23.050523	\N	112
980	cardamine-hirsuta	1	2022-10-05 22:04:23.055584	2022-10-05 22:04:23.055584	\N	980
981	cardamine-hirsuta	1	2022-10-05 22:04:23.060739	2022-10-05 22:04:23.060739	\N	113
982	cardamine-hirsuta	1	2022-10-05 22:04:23.066918	2022-10-05 22:04:23.066918	\N	982
983	cardamine-hirsuta	1	2022-10-05 22:04:23.072126	2022-10-05 22:04:23.072126	\N	114
984	cardamine-hirsuta	-999	2022-10-05 22:04:23.077725	2022-10-05 22:04:23.077725	\N	115
985	cardamine-hirsuta	1	2022-10-05 22:04:23.083311	2022-10-05 22:04:23.083311	\N	985
986	cardamine-hirsuta	1	2022-10-05 22:04:23.087915	2022-10-05 22:04:23.087915	\N	116
987	cardamine-hirsuta	1	2022-10-05 22:04:23.094653	2022-10-05 22:04:23.094653	\N	117
988	cardamine-hirsuta	1	2022-10-05 22:04:23.100283	2022-10-05 22:04:23.100283	\N	988
989	cardamine-hirsuta	2	2022-10-05 22:04:23.105374	2022-10-05 22:04:23.105374	\N	989
990	cardamine-hirsuta	2	2022-10-05 22:04:23.111619	2022-10-05 22:04:23.111619	\N	127
991	cardamine-hirsuta	0	2022-10-05 22:04:23.117138	2022-10-05 22:04:23.117138	\N	991
992	cardamine-hirsuta	2	2022-10-05 22:04:23.122038	2022-10-05 22:04:23.122038	\N	128
993	cardamine-hirsuta	2	2022-10-05 22:04:23.129607	2022-10-05 22:04:23.129607	\N	129
994	cardamine-hirsuta	1	2022-10-05 22:04:23.136223	2022-10-05 22:04:23.136223	\N	130
995	cardamine-hirsuta	0	2022-10-05 22:04:23.141272	2022-10-05 22:04:23.141272	\N	132
996	cardamine-hirsuta	2	2022-10-05 22:04:23.146334	2022-10-05 22:04:23.146334	\N	133
997	cardamine-hirsuta	1	2022-10-05 22:04:23.151334	2022-10-05 22:04:23.151334	\N	997
998	cardamine-hirsuta	1	2022-10-05 22:04:23.156729	2022-10-05 22:04:23.156729	\N	136
999	cardamine-hirsuta	1	2022-10-05 22:04:23.162343	2022-10-05 22:04:23.162343	\N	137
1000	cardamine-hirsuta	1	2022-10-05 22:04:23.169807	2022-10-05 22:04:23.169807	\N	138
1001	cardamine-hirsuta	1	2022-10-05 22:04:23.176523	2022-10-05 22:04:23.176523	\N	1001
1002	cardamine-hirsuta	1	2022-10-05 22:04:23.182652	2022-10-05 22:04:23.182652	\N	139
1003	cardamine-hirsuta	1	2022-10-05 22:04:23.187714	2022-10-05 22:04:23.187714	\N	1003
1004	cardamine-hirsuta	1	2022-10-05 22:04:23.193823	2022-10-05 22:04:23.193823	\N	1004
1005	cardamine-hirsuta	1	2022-10-05 22:04:23.199632	2022-10-05 22:04:23.199632	\N	140
1006	cardamine-hirsuta	1	2022-10-05 22:04:23.205538	2022-10-05 22:04:23.205538	\N	141
1007	cardamine-hirsuta	1	2022-10-05 22:04:23.211755	2022-10-05 22:04:23.211755	\N	154
1008	cardamine-hirsuta	1	2022-10-05 22:04:23.217493	2022-10-05 22:04:23.217493	\N	155
1009	cardamine-hirsuta	1	2022-10-05 22:04:23.222676	2022-10-05 22:04:23.222676	\N	156
1010	cardamine-hirsuta	1	2022-10-05 22:04:23.229223	2022-10-05 22:04:23.229223	\N	157
1011	cardamine-hirsuta	-999	2022-10-05 22:04:23.234566	2022-10-05 22:04:23.234566	\N	158
1012	cardamine-hirsuta	1	2022-10-05 22:04:23.240717	2022-10-05 22:04:23.240717	\N	159
1013	cardamine-hirsuta	1	2022-10-05 22:04:23.246386	2022-10-05 22:04:23.246386	\N	160
1014	cardamine-hirsuta	1	2022-10-05 22:04:23.252122	2022-10-05 22:04:23.252122	\N	161
1015	cardamine-hirsuta	1	2022-10-05 22:04:23.258103	2022-10-05 22:04:23.258103	\N	162
1016	cardamine-hirsuta	1	2022-10-05 22:04:23.263454	2022-10-05 22:04:23.263454	\N	163
1017	cardamine-hirsuta	1	2022-10-05 22:04:23.268446	2022-10-05 22:04:23.268446	\N	164
1018	cardamine-hirsuta	1	2022-10-05 22:04:23.273254	2022-10-05 22:04:23.273254	\N	165
1019	cardamine-hirsuta	1	2022-10-05 22:04:23.27833	2022-10-05 22:04:23.27833	\N	166
1020	cardamine-hirsuta	1	2022-10-05 22:04:23.283323	2022-10-05 22:04:23.283323	\N	167
1021	cardamine-hirsuta	1	2022-10-05 22:04:23.288346	2022-10-05 22:04:23.288346	\N	168
1022	cardamine-hirsuta	1	2022-10-05 22:04:23.294321	2022-10-05 22:04:23.294321	\N	169
1023	cardamine-hirsuta	1	2022-10-05 22:04:23.300339	2022-10-05 22:04:23.300339	\N	1023
1024	cardamine-hirsuta	1	2022-10-05 22:04:23.305279	2022-10-05 22:04:23.305279	\N	171
1025	cardamine-hirsuta	1	2022-10-05 22:04:23.312128	2022-10-05 22:04:23.312128	\N	172
1026	cardamine-hirsuta	1	2022-10-05 22:04:23.317033	2022-10-05 22:04:23.317033	\N	173
1027	cardamine-hirsuta	1	2022-10-05 22:04:23.321729	2022-10-05 22:04:23.321729	\N	174
1028	cardamine-hirsuta	1	2022-10-05 22:04:23.32785	2022-10-05 22:04:23.32785	\N	175
1029	cardamine-hirsuta	1	2022-10-05 22:04:23.334328	2022-10-05 22:04:23.334328	\N	176
1030	cardamine-hirsuta	1	2022-10-05 22:04:23.340182	2022-10-05 22:04:23.340182	\N	177
1031	cardamine-hirsuta	1	2022-10-05 22:04:23.345691	2022-10-05 22:04:23.345691	\N	178
1032	cardamine-hirsuta	1	2022-10-05 22:04:23.351779	2022-10-05 22:04:23.351779	\N	179
1033	cardamine-hirsuta	1	2022-10-05 22:04:23.357916	2022-10-05 22:04:23.357916	\N	180
1034	cardamine-hirsuta	1	2022-10-05 22:04:23.363848	2022-10-05 22:04:23.363848	\N	181
1035	cardamine-hirsuta	1	2022-10-05 22:04:23.3692	2022-10-05 22:04:23.3692	\N	1035
1036	cardamine-hirsuta	1	2022-10-05 22:04:23.374057	2022-10-05 22:04:23.374057	\N	183
1037	cardamine-hirsuta	0	2022-10-05 22:04:23.379106	2022-10-05 22:04:23.379106	\N	184
1038	cardamine-hirsuta	2	2022-10-05 22:04:23.384183	2022-10-05 22:04:23.384183	\N	185
1039	cardamine-hirsuta	2	2022-10-05 22:04:23.389376	2022-10-05 22:04:23.389376	\N	186
1040	cardamine-hirsuta	1	2022-10-05 22:04:23.395153	2022-10-05 22:04:23.395153	\N	1040
1041	cardamine-hirsuta	1	2022-10-05 22:04:23.400231	2022-10-05 22:04:23.400231	\N	188
1042	cardamine-hirsuta	1	2022-10-05 22:04:23.405601	2022-10-05 22:04:23.405601	\N	1042
1043	cardamine-hirsuta	1	2022-10-05 22:04:23.410929	2022-10-05 22:04:23.410929	\N	191
1044	cardamine-hirsuta	1	2022-10-05 22:04:23.416559	2022-10-05 22:04:23.416559	\N	1044
1045	cardamine-hirsuta	1	2022-10-05 22:04:23.421644	2022-10-05 22:04:23.421644	\N	192
1046	cardamine-hirsuta	1	2022-10-05 22:04:23.428392	2022-10-05 22:04:23.428392	\N	193
1047	cardamine-hirsuta	1	2022-10-05 22:04:23.433584	2022-10-05 22:04:23.433584	\N	194
1048	cardamine-hirsuta	1	2022-10-05 22:04:23.438747	2022-10-05 22:04:23.438747	\N	195
1049	cardamine-hirsuta	2	2022-10-05 22:04:23.444359	2022-10-05 22:04:23.444359	\N	196
1050	cardamine-hirsuta	1	2022-10-05 22:04:23.449794	2022-10-05 22:04:23.449794	\N	197
1051	cardamine-hirsuta	1	2022-10-05 22:04:23.454918	2022-10-05 22:04:23.454918	\N	198
1052	cardamine-hirsuta	1	2022-10-05 22:04:23.460772	2022-10-05 22:04:23.460772	\N	199
1053	cardamine-hirsuta	1	2022-10-05 22:04:23.466704	2022-10-05 22:04:23.466704	\N	201
1054	cardamine-hirsuta	1	2022-10-05 22:04:23.47252	2022-10-05 22:04:23.47252	\N	203
1055	cardamine-hirsuta	1	2022-10-05 22:04:23.478364	2022-10-05 22:04:23.478364	\N	204
1056	cardamine-hirsuta	0	2022-10-05 22:04:23.48419	2022-10-05 22:04:23.48419	\N	1056
1057	cardamine-hirsuta	2	2022-10-05 22:04:23.488922	2022-10-05 22:04:23.488922	\N	1057
1058	cardamine-hirsuta	1	2022-10-05 22:04:23.494839	2022-10-05 22:04:23.494839	\N	205
1059	cardamine-hirsuta	1	2022-10-05 22:04:23.500229	2022-10-05 22:04:23.500229	\N	206
1060	cardamine-hirsuta	1	2022-10-05 22:04:23.505267	2022-10-05 22:04:23.505267	\N	207
1061	cardamine-hirsuta	0	2022-10-05 22:04:23.511093	2022-10-05 22:04:23.511093	\N	208
1062	cardamine-hirsuta	1	2022-10-05 22:04:23.516151	2022-10-05 22:04:23.516151	\N	211
1063	cardamine-hirsuta	1	2022-10-05 22:04:23.521135	2022-10-05 22:04:23.521135	\N	212
1064	cardamine-hirsuta	0	2022-10-05 22:04:23.526288	2022-10-05 22:04:23.526288	\N	214
1065	cardamine-hirsuta	1	2022-10-05 22:04:23.531481	2022-10-05 22:04:23.531481	\N	215
1066	cardamine-hirsuta	1	2022-10-05 22:04:23.537227	2022-10-05 22:04:23.537227	\N	216
1067	cardamine-hirsuta	1	2022-10-05 22:04:23.543163	2022-10-05 22:04:23.543163	\N	217
1068	cardamine-hirsuta	1	2022-10-05 22:04:23.549431	2022-10-05 22:04:23.549431	\N	218
1069	cardamine-hirsuta	1	2022-10-05 22:04:23.554376	2022-10-05 22:04:23.554376	\N	219
1070	cardamine-hirsuta	1	2022-10-05 22:04:23.560713	2022-10-05 22:04:23.560713	\N	220
1071	cardamine-hirsuta	1	2022-10-05 22:04:23.566583	2022-10-05 22:04:23.566583	\N	1071
1072	cardamine-hirsuta	0	2022-10-05 22:04:23.571657	2022-10-05 22:04:23.571657	\N	221
1073	cardamine-hirsuta	1	2022-10-05 22:04:23.577053	2022-10-05 22:04:23.577053	\N	222
1074	cardamine-hirsuta	0	2022-10-05 22:04:23.582435	2022-10-05 22:04:23.582435	\N	1074
1075	cardamine-hirsuta	1	2022-10-05 22:04:23.587066	2022-10-05 22:04:23.587066	\N	1075
1076	cardamine-hirsuta	1	2022-10-05 22:04:23.592848	2022-10-05 22:04:23.592848	\N	223
1077	cardamine-hirsuta	1	2022-10-05 22:04:23.598557	2022-10-05 22:04:23.598557	\N	1077
1078	cardamine-hirsuta	0	2022-10-05 22:04:23.603662	2022-10-05 22:04:23.603662	\N	1078
1079	cardamine-hirsuta	0	2022-10-05 22:04:23.608693	2022-10-05 22:04:23.608693	\N	1079
1080	cardamine-hirsuta	2	2022-10-05 22:04:23.614617	2022-10-05 22:04:23.614617	\N	1080
1081	cardamine-hirsuta	-999	2022-10-05 22:04:23.619986	2022-10-05 22:04:23.619986	\N	226
1082	cardamine-hirsuta	-999	2022-10-05 22:04:23.626458	2022-10-05 22:04:23.626458	\N	227
1083	cardamine-hirsuta	1	2022-10-05 22:04:23.633325	2022-10-05 22:04:23.633325	\N	228
1084	cardamine-hirsuta	1	2022-10-05 22:04:23.63819	2022-10-05 22:04:23.63819	\N	1084
1085	cardamine-hirsuta	2	2022-10-05 22:04:23.647501	2022-10-05 22:04:23.647501	\N	229
1086	cardamine-hirsuta	1	2022-10-05 22:04:23.652327	2022-10-05 22:04:23.652327	\N	232
1087	cardamine-hirsuta	2	2022-10-05 22:04:23.661093	2022-10-05 22:04:23.661093	\N	1087
1088	cardamine-hirsuta	1	2022-10-05 22:04:23.666402	2022-10-05 22:04:23.666402	\N	235
1089	cardamine-hirsuta	1	2022-10-05 22:04:23.672422	2022-10-05 22:04:23.672422	\N	1089
1090	cardamine-hirsuta	1	2022-10-05 22:04:23.681059	2022-10-05 22:04:23.681059	\N	236
1091	cardamine-hirsuta	1	2022-10-05 22:04:23.687277	2022-10-05 22:04:23.687277	\N	237
1092	cardamine-hirsuta	1	2022-10-05 22:04:23.693886	2022-10-05 22:04:23.693886	\N	1092
1093	cardamine-hirsuta	2	2022-10-05 22:04:23.699787	2022-10-05 22:04:23.699787	\N	1093
1094	cardamine-hirsuta	2	2022-10-05 22:04:23.704852	2022-10-05 22:04:23.704852	\N	1094
1095	cardamine-hirsuta	2	2022-10-05 22:04:23.710815	2022-10-05 22:04:23.710815	\N	1095
1096	cardamine-hirsuta	1	2022-10-05 22:04:23.716752	2022-10-05 22:04:23.716752	\N	238
1097	cardamine-hirsuta	2	2022-10-05 22:04:23.722237	2022-10-05 22:04:23.722237	\N	252
1098	cardamine-hirsuta	2	2022-10-05 22:04:23.72834	2022-10-05 22:04:23.72834	\N	253
1099	cardamine-hirsuta	0	2022-10-05 22:04:23.733631	2022-10-05 22:04:23.733631	\N	254
1100	cardamine-hirsuta	2	2022-10-05 22:04:23.738746	2022-10-05 22:04:23.738746	\N	255
1101	cardamine-hirsuta	2	2022-10-05 22:04:23.746431	2022-10-05 22:04:23.746431	\N	256
1102	cardamine-hirsuta	2	2022-10-05 22:04:23.752003	2022-10-05 22:04:23.752003	\N	257
1103	cardamine-hirsuta	2	2022-10-05 22:04:23.757919	2022-10-05 22:04:23.757919	\N	258
1104	cardamine-hirsuta	2	2022-10-05 22:04:23.76343	2022-10-05 22:04:23.76343	\N	259
1105	cardamine-hirsuta	2	2022-10-05 22:04:23.769193	2022-10-05 22:04:23.769193	\N	260
1106	cardamine-hirsuta	2	2022-10-05 22:04:23.775544	2022-10-05 22:04:23.775544	\N	262
1107	cardamine-hirsuta	0	2022-10-05 22:04:23.780887	2022-10-05 22:04:23.780887	\N	263
1108	cardamine-hirsuta	1	2022-10-05 22:04:23.78638	2022-10-05 22:04:23.78638	\N	264
1109	cardamine-hirsuta	0	2022-10-05 22:04:23.79217	2022-10-05 22:04:23.79217	\N	265
1110	cardamine-hirsuta	2	2022-10-05 22:04:23.79731	2022-10-05 22:04:23.79731	\N	266
1111	cardamine-hirsuta	0	2022-10-05 22:04:23.802395	2022-10-05 22:04:23.802395	\N	267
1112	cardamine-hirsuta	2	2022-10-05 22:04:23.807923	2022-10-05 22:04:23.807923	\N	268
1113	cardamine-hirsuta	2	2022-10-05 22:04:23.81345	2022-10-05 22:04:23.81345	\N	269
1114	cardamine-hirsuta	2	2022-10-05 22:04:23.818535	2022-10-05 22:04:23.818535	\N	270
1115	cardamine-hirsuta	2	2022-10-05 22:04:23.823756	2022-10-05 22:04:23.823756	\N	271
1116	cardamine-hirsuta	1	2022-10-05 22:04:23.828761	2022-10-05 22:04:23.828761	\N	273
1117	cardamine-hirsuta	1	2022-10-05 22:04:23.836331	2022-10-05 22:04:23.836331	\N	274
1118	cardamine-hirsuta	1	2022-10-05 22:04:23.854396	2022-10-05 22:04:23.854396	\N	275
1119	cardamine-hirsuta	-999	2022-10-05 22:04:23.864733	2022-10-05 22:04:23.864733	\N	283
1120	cardamine-hirsuta	2	2022-10-05 22:04:23.870116	2022-10-05 22:04:23.870116	\N	285
1121	cardamine-hirsuta	1	2022-10-05 22:04:23.877615	2022-10-05 22:04:23.877615	\N	286
1122	cardamine-hirsuta	1	2022-10-05 22:04:23.883492	2022-10-05 22:04:23.883492	\N	287
1123	cardamine-hirsuta	1	2022-10-05 22:04:23.888773	2022-10-05 22:04:23.888773	\N	288
1124	cardamine-hirsuta	2	2022-10-05 22:04:23.894734	2022-10-05 22:04:23.894734	\N	289
1125	cardamine-hirsuta	2	2022-10-05 22:04:23.901754	2022-10-05 22:04:23.901754	\N	290
1126	cardamine-hirsuta	0	2022-10-05 22:04:23.907341	2022-10-05 22:04:23.907341	\N	291
1127	cardamine-hirsuta	1	2022-10-05 22:04:23.912923	2022-10-05 22:04:23.912923	\N	292
1128	cardamine-hirsuta	1	2022-10-05 22:04:23.918436	2022-10-05 22:04:23.918436	\N	293
1129	cardamine-hirsuta	1	2022-10-05 22:04:23.925002	2022-10-05 22:04:23.925002	\N	294
1130	cardamine-hirsuta	1	2022-10-05 22:04:23.930924	2022-10-05 22:04:23.930924	\N	295
1131	cardamine-hirsuta	1	2022-10-05 22:04:23.936181	2022-10-05 22:04:23.936181	\N	296
1132	cardamine-hirsuta	1	2022-10-05 22:04:23.941409	2022-10-05 22:04:23.941409	\N	297
1133	cardamine-hirsuta	1	2022-10-05 22:04:23.947201	2022-10-05 22:04:23.947201	\N	298
1134	cardamine-hirsuta	1	2022-10-05 22:04:23.952471	2022-10-05 22:04:23.952471	\N	299
1135	cardamine-hirsuta	1	2022-10-05 22:04:23.958381	2022-10-05 22:04:23.958381	\N	300
1136	cardamine-hirsuta	1	2022-10-05 22:04:23.964097	2022-10-05 22:04:23.964097	\N	301
1137	cardamine-hirsuta	1	2022-10-05 22:04:23.969098	2022-10-05 22:04:23.969098	\N	303
1138	cardamine-hirsuta	1	2022-10-05 22:04:23.974853	2022-10-05 22:04:23.974853	\N	304
1139	cardamine-hirsuta	1	2022-10-05 22:04:23.981103	2022-10-05 22:04:23.981103	\N	305
1140	cardamine-hirsuta	1	2022-10-05 22:04:23.987289	2022-10-05 22:04:23.987289	\N	306
1141	cardamine-hirsuta	1	2022-10-05 22:04:23.993107	2022-10-05 22:04:23.993107	\N	307
1142	cardamine-hirsuta	1	2022-10-05 22:04:23.998638	2022-10-05 22:04:23.998638	\N	308
1143	cardamine-hirsuta	1	2022-10-05 22:04:24.003589	2022-10-05 22:04:24.003589	\N	309
1144	cardamine-hirsuta	1	2022-10-05 22:04:24.009539	2022-10-05 22:04:24.009539	\N	310
1145	cardamine-hirsuta	1	2022-10-05 22:04:24.015181	2022-10-05 22:04:24.015181	\N	311
1146	cardamine-hirsuta	1	2022-10-05 22:04:24.020243	2022-10-05 22:04:24.020243	\N	312
1147	cardamine-hirsuta	1	2022-10-05 22:04:24.02696	2022-10-05 22:04:24.02696	\N	1147
1148	cardamine-hirsuta	1	2022-10-05 22:04:24.033975	2022-10-05 22:04:24.033975	\N	1148
1149	cardamine-hirsuta	1	2022-10-05 22:04:24.03938	2022-10-05 22:04:24.03938	\N	1149
1150	cardamine-hirsuta	1	2022-10-05 22:04:24.045465	2022-10-05 22:04:24.045465	\N	1150
1151	cardamine-hirsuta	1	2022-10-05 22:04:24.051251	2022-10-05 22:04:24.051251	\N	1151
1152	cardamine-hirsuta	1	2022-10-05 22:04:24.057117	2022-10-05 22:04:24.057117	\N	1152
1153	cardamine-hirsuta	1	2022-10-05 22:04:24.063238	2022-10-05 22:04:24.063238	\N	1153
1154	cardamine-hirsuta	1	2022-10-05 22:04:24.068271	2022-10-05 22:04:24.068271	\N	1154
1155	cardamine-hirsuta	1	2022-10-05 22:04:24.073373	2022-10-05 22:04:24.073373	\N	314
1156	cardamine-hirsuta	1	2022-10-05 22:04:24.078896	2022-10-05 22:04:24.078896	\N	1156
1157	cardamine-hirsuta	2	2022-10-05 22:04:24.084789	2022-10-05 22:04:24.084789	\N	1157
1158	cardamine-hirsuta	1	2022-10-05 22:04:24.089787	2022-10-05 22:04:24.089787	\N	316
1159	cardamine-hirsuta	1	2022-10-05 22:04:24.095436	2022-10-05 22:04:24.095436	\N	317
1160	cardamine-hirsuta	-999	2022-10-05 22:04:24.101708	2022-10-05 22:04:24.101708	\N	318
1161	cardamine-hirsuta	1	2022-10-05 22:04:24.107685	2022-10-05 22:04:24.107685	\N	319
1162	cardamine-hirsuta	2	2022-10-05 22:04:24.113742	2022-10-05 22:04:24.113742	\N	320
1163	cardamine-hirsuta	1	2022-10-05 22:04:24.119056	2022-10-05 22:04:24.119056	\N	321
1164	cardamine-hirsuta	1	2022-10-05 22:04:24.124566	2022-10-05 22:04:24.124566	\N	324
1165	cardamine-hirsuta	1	2022-10-05 22:04:24.131643	2022-10-05 22:04:24.131643	\N	325
1166	cardamine-hirsuta	1	2022-10-05 22:04:24.137113	2022-10-05 22:04:24.137113	\N	326
1167	cardamine-hirsuta	1	2022-10-05 22:04:24.142781	2022-10-05 22:04:24.142781	\N	328
1168	cardamine-hirsuta	1	2022-10-05 22:04:24.148162	2022-10-05 22:04:24.148162	\N	329
1169	cardamine-hirsuta	1	2022-10-05 22:04:24.15313	2022-10-05 22:04:24.15313	\N	330
1170	cardamine-hirsuta	1	2022-10-05 22:04:24.158077	2022-10-05 22:04:24.158077	\N	331
1171	cardamine-hirsuta	2	2022-10-05 22:04:24.163544	2022-10-05 22:04:24.163544	\N	332
1172	cardamine-hirsuta	1	2022-10-05 22:04:24.171915	2022-10-05 22:04:24.171915	\N	333
1173	cardamine-hirsuta	0	2022-10-05 22:04:24.182788	2022-10-05 22:04:24.182788	\N	334
1174	cardamine-hirsuta	1	2022-10-05 22:04:24.18906	2022-10-05 22:04:24.18906	\N	335
1175	cardamine-hirsuta	1	2022-10-05 22:04:24.196065	2022-10-05 22:04:24.196065	\N	336
1176	cardamine-hirsuta	1	2022-10-05 22:04:24.202336	2022-10-05 22:04:24.202336	\N	1176
1177	cardamine-hirsuta	2	2022-10-05 22:04:24.208252	2022-10-05 22:04:24.208252	\N	337
1178	cardamine-hirsuta	0	2022-10-05 22:04:24.214245	2022-10-05 22:04:24.214245	\N	338
1179	cardamine-hirsuta	2	2022-10-05 22:04:24.22001	2022-10-05 22:04:24.22001	\N	339
1180	cardamine-hirsuta	1	2022-10-05 22:04:24.226864	2022-10-05 22:04:24.226864	\N	340
1181	cardamine-hirsuta	1	2022-10-05 22:04:24.232672	2022-10-05 22:04:24.232672	\N	341
1182	cardamine-hirsuta	2	2022-10-05 22:04:24.238638	2022-10-05 22:04:24.238638	\N	342
1183	cardamine-hirsuta	1	2022-10-05 22:04:24.247289	2022-10-05 22:04:24.247289	\N	343
1184	cardamine-hirsuta	1	2022-10-05 22:04:24.253632	2022-10-05 22:04:24.253632	\N	344
1185	cardamine-hirsuta	1	2022-10-05 22:04:24.26068	2022-10-05 22:04:24.26068	\N	345
1186	cardamine-hirsuta	1	2022-10-05 22:04:24.267616	2022-10-05 22:04:24.267616	\N	346
1187	cardamine-hirsuta	1	2022-10-05 22:04:24.273316	2022-10-05 22:04:24.273316	\N	347
1188	cardamine-hirsuta	1	2022-10-05 22:04:24.279963	2022-10-05 22:04:24.279963	\N	348
1189	cardamine-hirsuta	1	2022-10-05 22:04:24.287842	2022-10-05 22:04:24.287842	\N	349
1190	cardamine-hirsuta	1	2022-10-05 22:04:24.295252	2022-10-05 22:04:24.295252	\N	350
1191	cardamine-hirsuta	1	2022-10-05 22:04:24.302004	2022-10-05 22:04:24.302004	\N	352
1192	cardamine-hirsuta	1	2022-10-05 22:04:24.308221	2022-10-05 22:04:24.308221	\N	353
1193	cardamine-hirsuta	1	2022-10-05 22:04:24.31489	2022-10-05 22:04:24.31489	\N	354
1194	cardamine-hirsuta	1	2022-10-05 22:04:24.321422	2022-10-05 22:04:24.321422	\N	355
1195	cardamine-hirsuta	1	2022-10-05 22:04:24.328284	2022-10-05 22:04:24.328284	\N	358
1196	cardamine-hirsuta	1	2022-10-05 22:04:24.336475	2022-10-05 22:04:24.336475	\N	359
1197	cardamine-hirsuta	1	2022-10-05 22:04:24.345167	2022-10-05 22:04:24.345167	\N	360
1198	cardamine-hirsuta	1	2022-10-05 22:04:24.351323	2022-10-05 22:04:24.351323	\N	361
1199	cardamine-hirsuta	1	2022-10-05 22:04:24.357963	2022-10-05 22:04:24.357963	\N	362
1200	cardamine-hirsuta	0	2022-10-05 22:04:24.36557	2022-10-05 22:04:24.36557	\N	363
1201	cardamine-hirsuta	-999	2022-10-05 22:04:24.371715	2022-10-05 22:04:24.371715	\N	365
1202	cardamine-hirsuta	0	2022-10-05 22:04:24.378481	2022-10-05 22:04:24.378481	\N	368
1203	cardamine-hirsuta	0	2022-10-05 22:04:24.384523	2022-10-05 22:04:24.384523	\N	369
1204	cardamine-hirsuta	-999	2022-10-05 22:04:24.390866	2022-10-05 22:04:24.390866	\N	370
1205	cardamine-hirsuta	1	2022-10-05 22:04:24.396939	2022-10-05 22:04:24.396939	\N	371
1206	cardamine-hirsuta	0	2022-10-05 22:04:24.403889	2022-10-05 22:04:24.403889	\N	372
1207	cardamine-hirsuta	1	2022-10-05 22:04:24.40967	2022-10-05 22:04:24.40967	\N	373
1208	cardamine-hirsuta	1	2022-10-05 22:04:24.415726	2022-10-05 22:04:24.415726	\N	374
1209	cardamine-hirsuta	1	2022-10-05 22:04:24.422339	2022-10-05 22:04:24.422339	\N	375
1210	cardamine-hirsuta	-999	2022-10-05 22:04:24.429889	2022-10-05 22:04:24.429889	\N	378
1211	cardamine-hirsuta	-999	2022-10-05 22:04:24.436334	2022-10-05 22:04:24.436334	\N	379
1212	cardamine-hirsuta	1	2022-10-05 22:04:24.443949	2022-10-05 22:04:24.443949	\N	1212
1213	cardamine-hirsuta	1	2022-10-05 22:04:24.450745	2022-10-05 22:04:24.450745	\N	380
1214	cardamine-hirsuta	1	2022-10-05 22:04:24.456517	2022-10-05 22:04:24.456517	\N	381
1215	cardamine-hirsuta	1	2022-10-05 22:04:24.463604	2022-10-05 22:04:24.463604	\N	384
1216	cardamine-hirsuta	1	2022-10-05 22:04:24.470533	2022-10-05 22:04:24.470533	\N	385
1217	cardamine-hirsuta	1	2022-10-05 22:04:24.47718	2022-10-05 22:04:24.47718	\N	386
1218	cardamine-hirsuta	1	2022-10-05 22:04:24.483335	2022-10-05 22:04:24.483335	\N	387
1219	cardamine-hirsuta	1	2022-10-05 22:04:24.490273	2022-10-05 22:04:24.490273	\N	388
1220	cardamine-hirsuta	1	2022-10-05 22:04:24.497724	2022-10-05 22:04:24.497724	\N	1220
1221	cardamine-hirsuta	1	2022-10-05 22:04:24.5041	2022-10-05 22:04:24.5041	\N	389
1222	cardamine-hirsuta	1	2022-10-05 22:04:24.512715	2022-10-05 22:04:24.512715	\N	390
1223	cardamine-hirsuta	1	2022-10-05 22:04:24.51923	2022-10-05 22:04:24.51923	\N	392
1224	cardamine-hirsuta	1	2022-10-05 22:04:24.526157	2022-10-05 22:04:24.526157	\N	393
1225	cardamine-hirsuta	1	2022-10-05 22:04:24.532904	2022-10-05 22:04:24.532904	\N	394
1226	cardamine-hirsuta	1	2022-10-05 22:04:24.539127	2022-10-05 22:04:24.539127	\N	395
1227	cardamine-hirsuta	1	2022-10-05 22:04:24.547041	2022-10-05 22:04:24.547041	\N	396
1228	cardamine-hirsuta	1	2022-10-05 22:04:24.553088	2022-10-05 22:04:24.553088	\N	398
1229	cardamine-hirsuta	1	2022-10-05 22:04:24.559818	2022-10-05 22:04:24.559818	\N	399
1230	cardamine-hirsuta	1	2022-10-05 22:04:24.566181	2022-10-05 22:04:24.566181	\N	400
1231	cardamine-hirsuta	1	2022-10-05 22:04:24.572389	2022-10-05 22:04:24.572389	\N	401
1232	cardamine-hirsuta	-999	2022-10-05 22:04:24.580561	2022-10-05 22:04:24.580561	\N	409
1233	cardamine-hirsuta	1	2022-10-05 22:04:24.586789	2022-10-05 22:04:24.586789	\N	411
1234	cardamine-hirsuta	2	2022-10-05 22:04:24.594495	2022-10-05 22:04:24.594495	\N	412
1235	cardamine-hirsuta	2	2022-10-05 22:04:24.601082	2022-10-05 22:04:24.601082	\N	1235
1236	cardamine-hirsuta	-999	2022-10-05 22:04:24.609332	2022-10-05 22:04:24.609332	\N	415
1237	cardamine-hirsuta	0	2022-10-05 22:04:24.616693	2022-10-05 22:04:24.616693	\N	1237
1238	cardamine-hirsuta	2	2022-10-05 22:04:24.623098	2022-10-05 22:04:24.623098	\N	1238
1239	cardamine-hirsuta	0	2022-10-05 22:04:24.635944	2022-10-05 22:04:24.635944	\N	1239
1240	cardamine-hirsuta	2	2022-10-05 22:04:24.641875	2022-10-05 22:04:24.641875	\N	1240
1241	cardamine-hirsuta	0	2022-10-05 22:04:24.648538	2022-10-05 22:04:24.648538	\N	1241
1242	cardamine-hirsuta	2	2022-10-05 22:04:24.654243	2022-10-05 22:04:24.654243	\N	1242
1243	cardamine-hirsuta	2	2022-10-05 22:04:24.661958	2022-10-05 22:04:24.661958	\N	1243
1244	cardamine-hirsuta	2	2022-10-05 22:04:24.669761	2022-10-05 22:04:24.669761	\N	1244
1245	cardamine-hirsuta	0	2022-10-05 22:04:24.677659	2022-10-05 22:04:24.677659	\N	1245
1246	cardamine-hirsuta	-999	2022-10-05 22:04:24.696162	2022-10-05 22:04:24.696162	\N	417
1247	cardamine-hirsuta	0	2022-10-05 22:04:24.702572	2022-10-05 22:04:24.702572	\N	1247
1248	cardamine-hirsuta	0	2022-10-05 22:04:24.709692	2022-10-05 22:04:24.709692	\N	418
1249	cardamine-hirsuta	2	2022-10-05 22:04:24.717096	2022-10-05 22:04:24.717096	\N	419
1250	cardamine-hirsuta	2	2022-10-05 22:04:24.724267	2022-10-05 22:04:24.724267	\N	1250
1251	cardamine-hirsuta	2	2022-10-05 22:04:24.732045	2022-10-05 22:04:24.732045	\N	1251
1252	cardamine-hirsuta	0	2022-10-05 22:04:24.7393	2022-10-05 22:04:24.7393	\N	420
1253	cardamine-hirsuta	0	2022-10-05 22:04:24.746224	2022-10-05 22:04:24.746224	\N	435
1254	cardamine-hirsuta	1	2022-10-05 22:04:24.753468	2022-10-05 22:04:24.753468	\N	1254
1255	cardamine-hirsuta	0	2022-10-05 22:04:24.760798	2022-10-05 22:04:24.760798	\N	436
1256	cardamine-hirsuta	1	2022-10-05 22:04:24.768582	2022-10-05 22:04:24.768582	\N	437
1257	cardamine-hirsuta	1	2022-10-05 22:04:24.776005	2022-10-05 22:04:24.776005	\N	1257
1258	cardamine-hirsuta	1	2022-10-05 22:04:24.783546	2022-10-05 22:04:24.783546	\N	438
1259	cardamine-hirsuta	1	2022-10-05 22:04:24.790588	2022-10-05 22:04:24.790588	\N	1259
1260	cardamine-hirsuta	-999	2022-10-05 22:04:24.798174	2022-10-05 22:04:24.798174	\N	1260
1261	cardamine-hirsuta	0	2022-10-05 22:04:24.805321	2022-10-05 22:04:24.805321	\N	440
1262	cardamine-hirsuta	0	2022-10-05 22:04:24.812956	2022-10-05 22:04:24.812956	\N	443
1263	cardamine-hirsuta	2	2022-10-05 22:04:24.819591	2022-10-05 22:04:24.819591	\N	444
1264	cardamine-hirsuta	2	2022-10-05 22:04:24.827167	2022-10-05 22:04:24.827167	\N	445
1265	cardamine-hirsuta	2	2022-10-05 22:04:24.834497	2022-10-05 22:04:24.834497	\N	446
1266	cardamine-hirsuta	2	2022-10-05 22:04:24.841879	2022-10-05 22:04:24.841879	\N	1266
1267	cardamine-hirsuta	2	2022-10-05 22:04:24.849738	2022-10-05 22:04:24.849738	\N	447
1268	cardamine-hirsuta	0	2022-10-05 22:04:24.856447	2022-10-05 22:04:24.856447	\N	448
1269	cardamine-hirsuta	2	2022-10-05 22:04:24.862836	2022-10-05 22:04:24.862836	\N	449
1270	cardamine-hirsuta	0	2022-10-05 22:04:24.869434	2022-10-05 22:04:24.869434	\N	1270
1271	cardamine-hirsuta	1	2022-10-05 22:04:24.876038	2022-10-05 22:04:24.876038	\N	450
1272	cardamine-hirsuta	-999	2022-10-05 22:04:24.882513	2022-10-05 22:04:24.882513	\N	451
1273	cardamine-hirsuta	1	2022-10-05 22:04:24.888579	2022-10-05 22:04:24.888579	\N	452
1274	cardamine-hirsuta	1	2022-10-05 22:04:24.895355	2022-10-05 22:04:24.895355	\N	1274
1275	cardamine-hirsuta	2	2022-10-05 22:04:24.901723	2022-10-05 22:04:24.901723	\N	453
1276	cardamine-hirsuta	-999	2022-10-05 22:04:24.908063	2022-10-05 22:04:24.908063	\N	1276
1277	cardamine-hirsuta	1	2022-10-05 22:04:24.914816	2022-10-05 22:04:24.914816	\N	456
1278	cardamine-hirsuta	1	2022-10-05 22:04:24.920822	2022-10-05 22:04:24.920822	\N	460
1279	cardamine-hirsuta	1	2022-10-05 22:04:24.927365	2022-10-05 22:04:24.927365	\N	462
1280	cardamine-hirsuta	1	2022-10-05 22:04:24.935895	2022-10-05 22:04:24.935895	\N	464
1281	cardamine-hirsuta	1	2022-10-05 22:04:24.943476	2022-10-05 22:04:24.943476	\N	466
1282	cardamine-hirsuta	1	2022-10-05 22:04:24.950075	2022-10-05 22:04:24.950075	\N	467
1283	cardamine-hirsuta	1	2022-10-05 22:04:24.955737	2022-10-05 22:04:24.955737	\N	468
1284	cardamine-hirsuta	-999	2022-10-05 22:04:24.962757	2022-10-05 22:04:24.962757	\N	470
1285	cardamine-hirsuta	1	2022-10-05 22:04:24.969119	2022-10-05 22:04:24.969119	\N	471
1286	cardamine-hirsuta	1	2022-10-05 22:04:24.975306	2022-10-05 22:04:24.975306	\N	472
1287	cardamine-hirsuta	1	2022-10-05 22:04:24.981241	2022-10-05 22:04:24.981241	\N	473
1288	cardamine-hirsuta	1	2022-10-05 22:04:24.986806	2022-10-05 22:04:24.986806	\N	475
1289	cardamine-hirsuta	2	2022-10-05 22:04:24.993734	2022-10-05 22:04:24.993734	\N	476
1290	cardamine-hirsuta	1	2022-10-05 22:04:25.000471	2022-10-05 22:04:25.000471	\N	477
1291	cardamine-hirsuta	2	2022-10-05 22:04:25.007274	2022-10-05 22:04:25.007274	\N	478
1292	cardamine-hirsuta	1	2022-10-05 22:04:25.013233	2022-10-05 22:04:25.013233	\N	479
1293	cardamine-hirsuta	1	2022-10-05 22:04:25.018612	2022-10-05 22:04:25.018612	\N	480
1294	cardamine-hirsuta	1	2022-10-05 22:04:25.024343	2022-10-05 22:04:25.024343	\N	481
1295	cardamine-hirsuta	0	2022-10-05 22:04:25.031969	2022-10-05 22:04:25.031969	\N	482
1296	cardamine-hirsuta	1	2022-10-05 22:04:25.037236	2022-10-05 22:04:25.037236	\N	1296
1297	cardamine-hirsuta	1	2022-10-05 22:04:25.043377	2022-10-05 22:04:25.043377	\N	483
1298	cardamine-hirsuta	2	2022-10-05 22:04:25.049021	2022-10-05 22:04:25.049021	\N	1298
1299	cardamine-hirsuta	1	2022-10-05 22:04:25.054784	2022-10-05 22:04:25.054784	\N	484
1300	cardamine-hirsuta	1	2022-10-05 22:04:25.061094	2022-10-05 22:04:25.061094	\N	485
1301	cardamine-hirsuta	0	2022-10-05 22:04:25.067506	2022-10-05 22:04:25.067506	\N	486
1302	cardamine-hirsuta	1	2022-10-05 22:04:25.072818	2022-10-05 22:04:25.072818	\N	1302
1303	cardamine-hirsuta	1	2022-10-05 22:04:25.079818	2022-10-05 22:04:25.079818	\N	490
1304	cardamine-hirsuta	-999	2022-10-05 22:04:25.085513	2022-10-05 22:04:25.085513	\N	491
1305	cardamine-hirsuta	1	2022-10-05 22:04:25.091491	2022-10-05 22:04:25.091491	\N	492
1306	cardamine-hirsuta	1	2022-10-05 22:04:25.102056	2022-10-05 22:04:25.102056	\N	493
1307	cardamine-hirsuta	-999	2022-10-05 22:04:25.109064	2022-10-05 22:04:25.109064	\N	494
1308	cardamine-hirsuta	1	2022-10-05 22:04:25.116817	2022-10-05 22:04:25.116817	\N	495
1309	cardamine-hirsuta	1	2022-10-05 22:04:25.122746	2022-10-05 22:04:25.122746	\N	496
1310	cardamine-hirsuta	1	2022-10-05 22:04:25.133438	2022-10-05 22:04:25.133438	\N	497
1311	cardamine-hirsuta	1	2022-10-05 22:04:25.139354	2022-10-05 22:04:25.139354	\N	498
1312	cardamine-hirsuta	1	2022-10-05 22:04:25.146622	2022-10-05 22:04:25.146622	\N	499
1313	cardamine-hirsuta	1	2022-10-05 22:04:25.153695	2022-10-05 22:04:25.153695	\N	1313
1314	cardamine-hirsuta	1	2022-10-05 22:04:25.1603	2022-10-05 22:04:25.1603	\N	500
1315	cardamine-hirsuta	1	2022-10-05 22:04:25.168363	2022-10-05 22:04:25.168363	\N	501
1316	cardamine-hirsuta	1	2022-10-05 22:04:25.174218	2022-10-05 22:04:25.174218	\N	502
1317	cardamine-hirsuta	1	2022-10-05 22:04:25.180333	2022-10-05 22:04:25.180333	\N	503
1318	cardamine-hirsuta	1	2022-10-05 22:04:25.186611	2022-10-05 22:04:25.186611	\N	504
1319	cardamine-hirsuta	1	2022-10-05 22:04:25.193095	2022-10-05 22:04:25.193095	\N	505
1320	cardamine-hirsuta	1	2022-10-05 22:04:25.199305	2022-10-05 22:04:25.199305	\N	506
1321	cardamine-hirsuta	1	2022-10-05 22:04:25.204933	2022-10-05 22:04:25.204933	\N	508
1322	cardamine-hirsuta	1	2022-10-05 22:04:25.21077	2022-10-05 22:04:25.21077	\N	509
1323	cardamine-hirsuta	1	2022-10-05 22:04:25.217115	2022-10-05 22:04:25.217115	\N	1323
1324	cardamine-hirsuta	1	2022-10-05 22:04:25.222928	2022-10-05 22:04:25.222928	\N	511
1325	cardamine-hirsuta	1	2022-10-05 22:04:25.229235	2022-10-05 22:04:25.229235	\N	512
1326	cardamine-hirsuta	1	2022-10-05 22:04:25.235063	2022-10-05 22:04:25.235063	\N	1326
1327	cardamine-hirsuta	1	2022-10-05 22:04:25.240828	2022-10-05 22:04:25.240828	\N	513
1328	cardamine-hirsuta	1	2022-10-05 22:04:25.247067	2022-10-05 22:04:25.247067	\N	517
1329	cardamine-hirsuta	1	2022-10-05 22:04:25.253043	2022-10-05 22:04:25.253043	\N	519
1330	cardamine-hirsuta	1	2022-10-05 22:04:25.259355	2022-10-05 22:04:25.259355	\N	520
1331	cardamine-hirsuta	0	2022-10-05 22:04:25.265785	2022-10-05 22:04:25.265785	\N	521
1332	cardamine-hirsuta	1	2022-10-05 22:04:25.271101	2022-10-05 22:04:25.271101	\N	522
1333	cardamine-hirsuta	1	2022-10-05 22:04:25.277753	2022-10-05 22:04:25.277753	\N	1333
1334	cardamine-hirsuta	-999	2022-10-05 22:04:25.283678	2022-10-05 22:04:25.283678	\N	523
1335	cardamine-hirsuta	1	2022-10-05 22:04:25.289009	2022-10-05 22:04:25.289009	\N	524
1336	cardamine-hirsuta	1	2022-10-05 22:04:25.29533	2022-10-05 22:04:25.29533	\N	525
1337	cardamine-hirsuta	1	2022-10-05 22:04:25.301673	2022-10-05 22:04:25.301673	\N	526
1338	cardamine-hirsuta	1	2022-10-05 22:04:25.308723	2022-10-05 22:04:25.308723	\N	538
1339	cardamine-hirsuta	1	2022-10-05 22:04:25.317959	2022-10-05 22:04:25.317959	\N	530
1340	cardamine-hirsuta	1	2022-10-05 22:04:25.323859	2022-10-05 22:04:25.323859	\N	531
1341	cardamine-hirsuta	1	2022-10-05 22:04:25.329966	2022-10-05 22:04:25.329966	\N	532
1342	cardamine-hirsuta	1	2022-10-05 22:04:25.335984	2022-10-05 22:04:25.335984	\N	533
1343	cardamine-hirsuta	1	2022-10-05 22:04:25.342033	2022-10-05 22:04:25.342033	\N	534
1344	cardamine-hirsuta	1	2022-10-05 22:04:25.347903	2022-10-05 22:04:25.347903	\N	535
1345	cardamine-hirsuta	1	2022-10-05 22:04:25.354671	2022-10-05 22:04:25.354671	\N	536
1346	cardamine-hirsuta	1	2022-10-05 22:04:25.360123	2022-10-05 22:04:25.360123	\N	537
1348	cardamine-hirsuta	1	2022-10-05 22:04:25.370682	2022-10-05 22:04:25.370682	\N	539
1349	cardamine-hirsuta	1	2022-10-05 22:04:25.376176	2022-10-05 22:04:25.376176	\N	540
1350	cardamine-hirsuta	1	2022-10-05 22:04:25.381397	2022-10-05 22:04:25.381397	\N	541
1351	cardamine-hirsuta	1	2022-10-05 22:04:25.386738	2022-10-05 22:04:25.386738	\N	542
1352	cardamine-hirsuta	1	2022-10-05 22:04:25.392247	2022-10-05 22:04:25.392247	\N	543
1353	cardamine-hirsuta	1	2022-10-05 22:04:25.398318	2022-10-05 22:04:25.398318	\N	544
1354	cardamine-hirsuta	-999	2022-10-05 22:04:25.403371	2022-10-05 22:04:25.403371	\N	545
1355	cardamine-hirsuta	1	2022-10-05 22:04:25.410715	2022-10-05 22:04:25.410715	\N	546
1356	cardamine-hirsuta	1	2022-10-05 22:04:25.41574	2022-10-05 22:04:25.41574	\N	547
1357	cardamine-hirsuta	2	2022-10-05 22:04:25.421089	2022-10-05 22:04:25.421089	\N	548
1358	cardamine-hirsuta	2	2022-10-05 22:04:25.426761	2022-10-05 22:04:25.426761	\N	549
1359	cardamine-hirsuta	2	2022-10-05 22:04:25.43219	2022-10-05 22:04:25.43219	\N	550
1360	cardamine-hirsuta	2	2022-10-05 22:04:25.437414	2022-10-05 22:04:25.437414	\N	551
1361	cardamine-hirsuta	-999	2022-10-05 22:04:25.444271	2022-10-05 22:04:25.444271	\N	552
1362	cardamine-hirsuta	-999	2022-10-05 22:04:25.450386	2022-10-05 22:04:25.450386	\N	553
1363	cardamine-hirsuta	-999	2022-10-05 22:04:25.455996	2022-10-05 22:04:25.455996	\N	554
1364	cardamine-hirsuta	1	2022-10-05 22:04:25.461615	2022-10-05 22:04:25.461615	\N	555
1365	cardamine-hirsuta	1	2022-10-05 22:04:25.471772	2022-10-05 22:04:25.471772	\N	556
1366	cardamine-hirsuta	1	2022-10-05 22:04:25.477413	2022-10-05 22:04:25.477413	\N	557
1367	cardamine-hirsuta	1	2022-10-05 22:04:25.482802	2022-10-05 22:04:25.482802	\N	558
1368	cardamine-hirsuta	1	2022-10-05 22:04:25.488038	2022-10-05 22:04:25.488038	\N	559
1369	cardamine-hirsuta	1	2022-10-05 22:04:25.493419	2022-10-05 22:04:25.493419	\N	560
1370	cardamine-hirsuta	1	2022-10-05 22:04:25.499185	2022-10-05 22:04:25.499185	\N	561
1371	cardamine-hirsuta	1	2022-10-05 22:04:25.504384	2022-10-05 22:04:25.504384	\N	1371
1372	cardamine-hirsuta	1	2022-10-05 22:04:25.509742	2022-10-05 22:04:25.509742	\N	563
1373	cardamine-hirsuta	1	2022-10-05 22:04:25.515647	2022-10-05 22:04:25.515647	\N	564
1374	cardamine-hirsuta	1	2022-10-05 22:04:25.521091	2022-10-05 22:04:25.521091	\N	575
1375	cardamine-hirsuta	1	2022-10-05 22:04:25.527123	2022-10-05 22:04:25.527123	\N	581
1376	cardamine-hirsuta	1	2022-10-05 22:04:25.533024	2022-10-05 22:04:25.533024	\N	583
1377	cardamine-hirsuta	1	2022-10-05 22:04:25.538224	2022-10-05 22:04:25.538224	\N	1377
1378	cardamine-hirsuta	1	2022-10-05 22:04:25.544737	2022-10-05 22:04:25.544737	\N	289
1379	cardamine-hirsuta	2	2022-10-05 22:04:25.550474	2022-10-05 22:04:25.550474	\N	11
1380	cardamine-hirsuta	2	2022-10-05 22:04:25.557653	2022-10-05 22:04:25.557653	\N	28
1381	cardamine-hirsuta	2	2022-10-05 22:04:25.570431	2022-10-05 22:04:25.570431	\N	31
1382	cardamine-hirsuta	2	2022-10-05 22:04:25.581991	2022-10-05 22:04:25.581991	\N	32
1383	cardamine-hirsuta	2	2022-10-05 22:04:25.587756	2022-10-05 22:04:25.587756	\N	33
1384	cardamine-hirsuta	2	2022-10-05 22:04:25.593942	2022-10-05 22:04:25.593942	\N	553
1385	cardamine-hirsuta	2	2022-10-05 22:04:25.600466	2022-10-05 22:04:25.600466	\N	554
1386	cardamine-hirsuta	1	2022-10-05 22:04:25.606063	2022-10-05 22:04:25.606063	\N	102
1388	cardamine-hirsuta	2	2022-10-05 22:04:25.618909	2022-10-05 22:04:25.618909	\N	27
1389	cardamine-hirsuta	2	2022-10-05 22:04:25.625781	2022-10-05 22:04:25.625781	\N	30
1390	cardamine-hirsuta	2	2022-10-05 22:04:25.63151	2022-10-05 22:04:25.63151	\N	34
1391	cardamine-hirsuta	0	2022-10-05 22:04:25.636691	2022-10-05 22:04:25.636691	\N	1391
1392	cardamine-hirsuta	0	2022-10-05 22:04:25.64158	2022-10-05 22:04:25.64158	\N	1392
1393	cardamine-hirsuta	0	2022-10-05 22:04:25.647032	2022-10-05 22:04:25.647032	\N	1393
1394	cardamine-hirsuta	0	2022-10-05 22:04:25.653108	2022-10-05 22:04:25.653108	\N	1394
1395	cardamine-hirsuta	0	2022-10-05 22:04:25.658918	2022-10-05 22:04:25.658918	\N	126
1396	cardamine-hirsuta	0	2022-10-05 22:04:25.666205	2022-10-05 22:04:25.666205	\N	131
1397	cardamine-hirsuta	0	2022-10-05 22:04:25.672285	2022-10-05 22:04:25.672285	\N	213
1398	cardamine-hirsuta	0	2022-10-05 22:04:25.678879	2022-10-05 22:04:25.678879	\N	233
1399	cardamine-hirsuta	0	2022-10-05 22:04:25.684974	2022-10-05 22:04:25.684974	\N	397
1400	cardamine-hirsuta	0	2022-10-05 22:04:25.691397	2022-10-05 22:04:25.691397	\N	454
1401	cardamine-hirsuta	-999	2022-10-05 22:04:25.697733	2022-10-05 22:04:25.697733	\N	10
1406	cardamine-hirsuta	-999	2022-10-05 22:04:25.727555	2022-10-05 22:04:25.727555	\N	11
1407	cardamine-hirsuta	-999	2022-10-05 22:04:25.733581	2022-10-05 22:04:25.733581	\N	14
1408	cardamine-hirsuta	-999	2022-10-05 22:04:25.739335	2022-10-05 22:04:25.739335	\N	900
1409	cardamine-hirsuta	-999	2022-10-05 22:04:25.751124	2022-10-05 22:04:25.751124	\N	901
1412	cardamine-hirsuta	-999	2022-10-05 22:04:25.770526	2022-10-05 22:04:25.770526	\N	23
1413	cardamine-hirsuta	-999	2022-10-05 22:04:25.778881	2022-10-05 22:04:25.778881	\N	24
1415	cardamine-hirsuta	1	2022-10-05 22:04:25.789533	2022-10-05 22:04:25.789533	\N	31
1417	cardamine-hirsuta	1	2022-10-05 22:04:25.80401	2022-10-05 22:04:25.80401	\N	35
1418	cardamine-hirsuta	1	2022-10-05 22:04:25.810882	2022-10-05 22:04:25.810882	\N	50
1420	cardamine-hirsuta	1	2022-10-05 22:04:25.822378	2022-10-05 22:04:25.822378	\N	72
1422	cardamine-hirsuta	-999	2022-10-05 22:04:25.839342	2022-10-05 22:04:25.839342	\N	101
1426	cardamine-hirsuta	1	2022-10-05 22:04:25.865382	2022-10-05 22:04:25.865382	\N	111
1431	cardamine-hirsuta	1	2022-10-05 22:04:25.892766	2022-10-05 22:04:25.892766	\N	115
1433	cardamine-hirsuta	-999	2022-10-05 22:04:25.903782	2022-10-05 22:04:25.903782	\N	141
1434	cardamine-hirsuta	-999	2022-10-05 22:04:25.909211	2022-10-05 22:04:25.909211	\N	137
1435	cardamine-hirsuta	-999	2022-10-05 22:04:25.914539	2022-10-05 22:04:25.914539	\N	138
1436	cardamine-hirsuta	-999	2022-10-05 22:04:25.919793	2022-10-05 22:04:25.919793	\N	1001
1439	cardamine-hirsuta	1	2022-10-05 22:04:25.936201	2022-10-05 22:04:25.936201	\N	158
1447	cardamine-hirsuta	-999	2022-10-05 22:04:25.985176	2022-10-05 22:04:25.985176	\N	195
1451	cardamine-hirsuta	1	2022-10-05 22:04:26.00858	2022-10-05 22:04:26.00858	\N	229
1453	cardamine-hirsuta	-999	2022-10-05 22:04:26.019296	2022-10-05 22:04:26.019296	\N	303
1456	cardamine-hirsuta	-999	2022-10-05 22:04:26.037657	2022-10-05 22:04:26.037657	\N	311
1458	cardamine-hirsuta	-999	2022-10-05 22:04:26.049881	2022-10-05 22:04:26.049881	\N	1149
1460	cardamine-hirsuta	1	2022-10-05 22:04:26.061648	2022-10-05 22:04:26.061648	\N	318
1461	cardamine-hirsuta	-999	2022-10-05 22:04:26.067066	2022-10-05 22:04:26.067066	\N	329
1462	cardamine-hirsuta	-999	2022-10-05 22:04:26.073216	2022-10-05 22:04:26.073216	\N	332
1464	cardamine-hirsuta	-999	2022-10-05 22:04:26.08573	2022-10-05 22:04:26.08573	\N	362
1465	cardamine-hirsuta	1	2022-10-05 22:04:26.091233	2022-10-05 22:04:26.091233	\N	379
1466	cardamine-hirsuta	-999	2022-10-05 22:04:26.098665	2022-10-05 22:04:26.098665	\N	1212
1469	cardamine-hirsuta	1	2022-10-05 22:04:26.117378	2022-10-05 22:04:26.117378	\N	412
1470	cardamine-hirsuta	-999	2022-10-05 22:04:26.124285	2022-10-05 22:04:26.124285	\N	1259
1471	cardamine-hirsuta	1	2022-10-05 22:04:26.13383	2022-10-05 22:04:26.13383	\N	451
1473	cardamine-hirsuta	1	2022-10-05 22:04:26.14467	2022-10-05 22:04:26.14467	\N	453
1474	cardamine-hirsuta	1	2022-10-05 22:04:26.149798	2022-10-05 22:04:26.149798	\N	1276
1477	cardamine-hirsuta	1	2022-10-05 22:04:26.168287	2022-10-05 22:04:26.168287	\N	476
1478	cardamine-hirsuta	1	2022-10-05 22:04:26.17332	2022-10-05 22:04:26.17332	\N	478
1483	cardamine-hirsuta	-999	2022-10-05 22:04:26.203804	2022-10-05 22:04:26.203804	\N	524
1484	cardamine-hirsuta	1	2022-10-05 22:04:26.21002	2022-10-05 22:04:26.21002	\N	528
1486	cardamine-hirsuta	-999	2022-10-05 22:04:26.220136	2022-10-05 22:04:26.220136	\N	533
1487	cardamine-hirsuta	-999	2022-10-05 22:04:26.225455	2022-10-05 22:04:26.225455	\N	534
1489	cardamine-hirsuta	1	2022-10-05 22:04:26.236377	2022-10-05 22:04:26.236377	\N	545
1490	cardamine-hirsuta	-999	2022-10-05 22:04:26.242066	2022-10-05 22:04:26.242066	\N	556
1492	cardamine-hirsuta	-999	2022-10-05 22:04:26.253579	2022-10-05 22:04:26.253579	\N	560
1493	cardamine-hirsuta	-999	2022-10-05 22:04:26.259684	2022-10-05 22:04:26.259684	\N	581
1494	cardamine-hirsuta	-999	2022-10-05 22:04:26.266364	2022-10-05 22:04:26.266364	\N	100
1495	cardamine-hirsuta	1	2022-10-05 22:04:26.271585	2022-10-05 22:04:26.271585	\N	55
1496	cardamine-hirsuta	1	2022-10-05 22:04:26.277501	2022-10-05 22:04:26.277501	\N	89
1497	cardamine-hirsuta	1	2022-10-05 22:04:26.283149	2022-10-05 22:04:26.283149	\N	971
1499	cardamine-hirsuta	1	2022-10-05 22:04:26.293863	2022-10-05 22:04:26.293863	\N	989
1500	cardamine-hirsuta	1	2022-10-05 22:04:26.299693	2022-10-05 22:04:26.299693	\N	127
1501	cardamine-hirsuta	1	2022-10-05 22:04:26.305013	2022-10-05 22:04:26.305013	\N	128
1502	cardamine-hirsuta	1	2022-10-05 22:04:26.310399	2022-10-05 22:04:26.310399	\N	129
1503	cardamine-hirsuta	1	2022-10-05 22:04:26.316304	2022-10-05 22:04:26.316304	\N	133
1505	cardamine-hirsuta	1	2022-10-05 22:04:26.327848	2022-10-05 22:04:26.327848	\N	185
1506	cardamine-hirsuta	1	2022-10-05 22:04:26.334445	2022-10-05 22:04:26.334445	\N	186
1507	cardamine-hirsuta	1	2022-10-05 22:04:26.342864	2022-10-05 22:04:26.342864	\N	1057
1508	cardamine-hirsuta	1	2022-10-05 22:04:26.349786	2022-10-05 22:04:26.349786	\N	1080
1509	cardamine-hirsuta	1	2022-10-05 22:04:26.356709	2022-10-05 22:04:26.356709	\N	1087
1510	cardamine-hirsuta	1	2022-10-05 22:04:26.36174	2022-10-05 22:04:26.36174	\N	1093
1511	cardamine-hirsuta	1	2022-10-05 22:04:26.367592	2022-10-05 22:04:26.367592	\N	1094
1512	cardamine-hirsuta	1	2022-10-05 22:04:26.372447	2022-10-05 22:04:26.372447	\N	1095
1513	cardamine-hirsuta	1	2022-10-05 22:04:26.378538	2022-10-05 22:04:26.378538	\N	252
1514	cardamine-hirsuta	1	2022-10-05 22:04:26.384039	2022-10-05 22:04:26.384039	\N	253
1515	cardamine-hirsuta	1	2022-10-05 22:04:26.389321	2022-10-05 22:04:26.389321	\N	255
1516	cardamine-hirsuta	1	2022-10-05 22:04:26.394956	2022-10-05 22:04:26.394956	\N	256
1517	cardamine-hirsuta	1	2022-10-05 22:04:26.400642	2022-10-05 22:04:26.400642	\N	257
1518	cardamine-hirsuta	1	2022-10-05 22:04:26.406389	2022-10-05 22:04:26.406389	\N	258
1519	cardamine-hirsuta	1	2022-10-05 22:04:26.411771	2022-10-05 22:04:26.411771	\N	259
1520	cardamine-hirsuta	1	2022-10-05 22:04:26.417516	2022-10-05 22:04:26.417516	\N	260
1521	cardamine-hirsuta	1	2022-10-05 22:04:26.422818	2022-10-05 22:04:26.422818	\N	262
1522	cardamine-hirsuta	1	2022-10-05 22:04:26.430343	2022-10-05 22:04:26.430343	\N	266
1523	cardamine-hirsuta	1	2022-10-05 22:04:26.436094	2022-10-05 22:04:26.436094	\N	268
1524	cardamine-hirsuta	1	2022-10-05 22:04:26.443071	2022-10-05 22:04:26.443071	\N	269
1525	cardamine-hirsuta	1	2022-10-05 22:04:26.448943	2022-10-05 22:04:26.448943	\N	270
1526	cardamine-hirsuta	1	2022-10-05 22:04:26.4543	2022-10-05 22:04:26.4543	\N	271
1527	cardamine-hirsuta	1	2022-10-05 22:04:26.461298	2022-10-05 22:04:26.461298	\N	285
1528	cardamine-hirsuta	1	2022-10-05 22:04:26.467031	2022-10-05 22:04:26.467031	\N	290
1529	cardamine-hirsuta	1	2022-10-05 22:04:26.473462	2022-10-05 22:04:26.473462	\N	1157
1530	cardamine-hirsuta	1	2022-10-05 22:04:26.48006	2022-10-05 22:04:26.48006	\N	320
1531	cardamine-hirsuta	1	2022-10-05 22:04:26.485718	2022-10-05 22:04:26.485718	\N	332
1532	cardamine-hirsuta	1	2022-10-05 22:04:26.492164	2022-10-05 22:04:26.492164	\N	337
1533	cardamine-hirsuta	1	2022-10-05 22:04:26.497981	2022-10-05 22:04:26.497981	\N	339
1534	cardamine-hirsuta	1	2022-10-05 22:04:26.503083	2022-10-05 22:04:26.503083	\N	342
1535	cardamine-hirsuta	1	2022-10-05 22:04:26.509176	2022-10-05 22:04:26.509176	\N	1235
1537	cardamine-hirsuta	1	2022-10-05 22:04:26.520418	2022-10-05 22:04:26.520418	\N	1238
1538	cardamine-hirsuta	1	2022-10-05 22:04:26.526604	2022-10-05 22:04:26.526604	\N	1240
1539	cardamine-hirsuta	1	2022-10-05 22:04:26.531947	2022-10-05 22:04:26.531947	\N	1242
1540	cardamine-hirsuta	1	2022-10-05 22:04:26.537193	2022-10-05 22:04:26.537193	\N	1243
1541	cardamine-hirsuta	1	2022-10-05 22:04:26.545117	2022-10-05 22:04:26.545117	\N	1244
1542	cardamine-hirsuta	1	2022-10-05 22:04:26.55152	2022-10-05 22:04:26.55152	\N	419
1543	cardamine-hirsuta	1	2022-10-05 22:04:26.557117	2022-10-05 22:04:26.557117	\N	1250
1544	cardamine-hirsuta	1	2022-10-05 22:04:26.562828	2022-10-05 22:04:26.562828	\N	1251
1545	cardamine-hirsuta	1	2022-10-05 22:04:26.568424	2022-10-05 22:04:26.568424	\N	444
1546	cardamine-hirsuta	1	2022-10-05 22:04:26.574098	2022-10-05 22:04:26.574098	\N	445
1547	cardamine-hirsuta	1	2022-10-05 22:04:26.579849	2022-10-05 22:04:26.579849	\N	446
1548	cardamine-hirsuta	1	2022-10-05 22:04:26.586199	2022-10-05 22:04:26.586199	\N	1266
1549	cardamine-hirsuta	1	2022-10-05 22:04:26.591543	2022-10-05 22:04:26.591543	\N	447
1550	cardamine-hirsuta	1	2022-10-05 22:04:26.598738	2022-10-05 22:04:26.598738	\N	449
1551	cardamine-hirsuta	1	2022-10-05 22:04:26.604497	2022-10-05 22:04:26.604497	\N	1298
1553	cardamine-hirsuta	1	2022-10-05 22:04:26.618194	2022-10-05 22:04:26.618194	\N	550
1554	cardamine-hirsuta	-999	2022-10-05 22:04:26.624219	2022-10-05 22:04:26.624219	\N	550
1555	cardamine-hirsuta	1	2022-10-05 22:04:26.634726	2022-10-05 22:04:26.634726	\N	551
1556	cardamine-hirsuta	1	2022-10-05 22:04:26.641332	2022-10-05 22:04:26.641332	\N	553
1557	cardamine-hirsuta	1	2022-10-05 22:04:26.648121	2022-10-05 22:04:26.648121	\N	554
1558	cardamine-hirsuta	-999	2022-10-05 22:04:26.653912	2022-10-05 22:04:26.653912	\N	906
1559	cardamine-hirsuta	-999	2022-10-05 22:04:26.661385	2022-10-05 22:04:26.661385	\N	20
1561	draba-verna	0	2022-10-05 22:04:26.674128	2022-10-05 22:04:26.674128	\N	3
1562	draba-verna	2	2022-10-05 22:04:26.680333	2022-10-05 22:04:26.680333	\N	5
1563	draba-verna	0	2022-10-05 22:04:26.686952	2022-10-05 22:04:26.686952	\N	7
1564	draba-verna	0	2022-10-05 22:04:26.693555	2022-10-05 22:04:26.693555	\N	8
1565	draba-verna	0	2022-10-05 22:04:26.699277	2022-10-05 22:04:26.699277	\N	9
1566	draba-verna	2	2022-10-05 22:04:26.704791	2022-10-05 22:04:26.704791	\N	1566
1567	draba-verna	2	2022-10-05 22:04:26.712427	2022-10-05 22:04:26.712427	\N	11
1568	draba-verna	2	2022-10-05 22:04:26.718117	2022-10-05 22:04:26.718117	\N	12
1569	draba-verna	2	2022-10-05 22:04:26.725229	2022-10-05 22:04:26.725229	\N	13
1570	draba-verna	2	2022-10-05 22:04:26.731365	2022-10-05 22:04:26.731365	\N	14
1571	draba-verna	2	2022-10-05 22:04:26.736969	2022-10-05 22:04:26.736969	\N	898
1572	draba-verna	1	2022-10-05 22:04:26.743748	2022-10-05 22:04:26.743748	\N	15
1573	draba-verna	1	2022-10-05 22:04:26.750192	2022-10-05 22:04:26.750192	\N	900
1574	draba-verna	2	2022-10-05 22:04:26.758595	2022-10-05 22:04:26.758595	\N	901
1575	draba-verna	2	2022-10-05 22:04:26.765684	2022-10-05 22:04:26.765684	\N	902
1576	draba-verna	2	2022-10-05 22:04:26.771223	2022-10-05 22:04:26.771223	\N	904
1577	draba-verna	1	2022-10-05 22:04:26.777277	2022-10-05 22:04:26.777277	\N	19
1578	draba-verna	1	2022-10-05 22:04:26.783215	2022-10-05 22:04:26.783215	\N	906
1579	draba-verna	1	2022-10-05 22:04:26.78858	2022-10-05 22:04:26.78858	\N	20
1580	draba-verna	2	2022-10-05 22:04:26.794349	2022-10-05 22:04:26.794349	\N	21
1581	draba-verna	0	2022-10-05 22:04:26.801861	2022-10-05 22:04:26.801861	\N	909
1582	draba-verna	0	2022-10-05 22:04:26.807756	2022-10-05 22:04:26.807756	\N	22
1583	draba-verna	2	2022-10-05 22:04:26.813539	2022-10-05 22:04:26.813539	\N	23
1584	draba-verna	2	2022-10-05 22:04:26.819218	2022-10-05 22:04:26.819218	\N	24
1585	draba-verna	2	2022-10-05 22:04:26.824704	2022-10-05 22:04:26.824704	\N	25
1586	draba-verna	1	2022-10-05 22:04:26.83079	2022-10-05 22:04:26.83079	\N	26
1587	draba-verna	2	2022-10-05 22:04:26.836859	2022-10-05 22:04:26.836859	\N	27
1588	draba-verna	0	2022-10-05 22:04:26.843126	2022-10-05 22:04:26.843126	\N	28
1589	draba-verna	1	2022-10-05 22:04:26.848494	2022-10-05 22:04:26.848494	\N	29
1590	draba-verna	2	2022-10-05 22:04:26.85317	2022-10-05 22:04:26.85317	\N	31
1591	draba-verna	1	2022-10-05 22:04:26.859296	2022-10-05 22:04:26.859296	\N	34
1592	draba-verna	1	2022-10-05 22:04:26.864747	2022-10-05 22:04:26.864747	\N	35
1593	draba-verna	1	2022-10-05 22:04:26.869661	2022-10-05 22:04:26.869661	\N	1593
1594	draba-verna	1	2022-10-05 22:04:26.874943	2022-10-05 22:04:26.874943	\N	1594
1595	draba-verna	1	2022-10-05 22:04:26.880309	2022-10-05 22:04:26.880309	\N	1595
1596	draba-verna	1	2022-10-05 22:04:26.885473	2022-10-05 22:04:26.885473	\N	1596
1597	draba-verna	1	2022-10-05 22:04:26.890984	2022-10-05 22:04:26.890984	\N	37
1598	draba-verna	1	2022-10-05 22:04:26.897186	2022-10-05 22:04:26.897186	\N	38
1599	draba-verna	1	2022-10-05 22:04:26.903887	2022-10-05 22:04:26.903887	\N	39
1600	draba-verna	2	2022-10-05 22:04:26.909887	2022-10-05 22:04:26.909887	\N	40
1601	draba-verna	1	2022-10-05 22:04:26.915932	2022-10-05 22:04:26.915932	\N	1601
1602	draba-verna	2	2022-10-05 22:04:26.921321	2022-10-05 22:04:26.921321	\N	1602
1603	draba-verna	2	2022-10-05 22:04:26.927391	2022-10-05 22:04:26.927391	\N	41
1604	draba-verna	0	2022-10-05 22:04:26.932909	2022-10-05 22:04:26.932909	\N	1604
1605	draba-verna	1	2022-10-05 22:04:26.937902	2022-10-05 22:04:26.937902	\N	1605
1606	draba-verna	1	2022-10-05 22:04:26.943724	2022-10-05 22:04:26.943724	\N	1606
1607	draba-verna	1	2022-10-05 22:04:26.949178	2022-10-05 22:04:26.949178	\N	46
1608	draba-verna	0	2022-10-05 22:04:26.95437	2022-10-05 22:04:26.95437	\N	48
1609	draba-verna	1	2022-10-05 22:04:26.95988	2022-10-05 22:04:26.95988	\N	50
1610	draba-verna	0	2022-10-05 22:04:26.966312	2022-10-05 22:04:26.966312	\N	51
1611	draba-verna	1	2022-10-05 22:04:26.971292	2022-10-05 22:04:26.971292	\N	52
1612	draba-verna	0	2022-10-05 22:04:26.976976	2022-10-05 22:04:26.976976	\N	53
1613	draba-verna	1	2022-10-05 22:04:26.984452	2022-10-05 22:04:26.984452	\N	54
1614	draba-verna	0	2022-10-05 22:04:26.990876	2022-10-05 22:04:26.990876	\N	1614
1615	draba-verna	0	2022-10-05 22:04:26.996754	2022-10-05 22:04:26.996754	\N	1615
1616	draba-verna	0	2022-10-05 22:04:27.003147	2022-10-05 22:04:27.003147	\N	1616
1617	draba-verna	1	2022-10-05 22:04:27.009123	2022-10-05 22:04:27.009123	\N	1617
1618	draba-verna	0	2022-10-05 22:04:27.015655	2022-10-05 22:04:27.015655	\N	1618
1619	draba-verna	1	2022-10-05 22:04:27.020935	2022-10-05 22:04:27.020935	\N	61
1620	draba-verna	1	2022-10-05 22:04:27.027519	2022-10-05 22:04:27.027519	\N	62
1621	draba-verna	1	2022-10-05 22:04:27.034138	2022-10-05 22:04:27.034138	\N	63
1622	draba-verna	1	2022-10-05 22:04:27.041884	2022-10-05 22:04:27.041884	\N	65
1623	draba-verna	1	2022-10-05 22:04:27.048223	2022-10-05 22:04:27.048223	\N	66
1624	draba-verna	1	2022-10-05 22:04:27.05378	2022-10-05 22:04:27.05378	\N	1624
1625	draba-verna	1	2022-10-05 22:04:27.060837	2022-10-05 22:04:27.060837	\N	77
1626	draba-verna	2	2022-10-05 22:04:27.066909	2022-10-05 22:04:27.066909	\N	1626
1627	draba-verna	3	2022-10-05 22:04:27.072525	2022-10-05 22:04:27.072525	\N	1627
1628	draba-verna	2	2022-10-05 22:04:27.079664	2022-10-05 22:04:27.079664	\N	1628
1629	draba-verna	2	2022-10-05 22:04:27.085785	2022-10-05 22:04:27.085785	\N	81
1630	draba-verna	1	2022-10-05 22:04:27.092186	2022-10-05 22:04:27.092186	\N	82
1631	draba-verna	2	2022-10-05 22:04:27.098174	2022-10-05 22:04:27.098174	\N	83
1632	draba-verna	1	2022-10-05 22:04:27.103814	2022-10-05 22:04:27.103814	\N	88
1633	draba-verna	2	2022-10-05 22:04:27.110184	2022-10-05 22:04:27.110184	\N	89
1634	draba-verna	2	2022-10-05 22:04:27.115666	2022-10-05 22:04:27.115666	\N	1634
1635	draba-verna	2	2022-10-05 22:04:27.121155	2022-10-05 22:04:27.121155	\N	1635
1636	draba-verna	3	2022-10-05 22:04:27.128672	2022-10-05 22:04:27.128672	\N	956
1637	draba-verna	1	2022-10-05 22:04:27.134578	2022-10-05 22:04:27.134578	\N	957
1638	draba-verna	1	2022-10-05 22:04:27.14034	2022-10-05 22:04:27.14034	\N	1638
1639	draba-verna	1	2022-10-05 22:04:27.146231	2022-10-05 22:04:27.146231	\N	91
1640	draba-verna	1	2022-10-05 22:04:27.152347	2022-10-05 22:04:27.152347	\N	959
1641	draba-verna	2	2022-10-05 22:04:27.158181	2022-10-05 22:04:27.158181	\N	1641
1642	draba-verna	2	2022-10-05 22:04:27.165368	2022-10-05 22:04:27.165368	\N	1642
1643	draba-verna	2	2022-10-05 22:04:27.170799	2022-10-05 22:04:27.170799	\N	92
1644	draba-verna	2	2022-10-05 22:04:27.176815	2022-10-05 22:04:27.176815	\N	93
1645	draba-verna	2	2022-10-05 22:04:27.183024	2022-10-05 22:04:27.183024	\N	94
1646	draba-verna	2	2022-10-05 22:04:27.18886	2022-10-05 22:04:27.18886	\N	95
1647	draba-verna	2	2022-10-05 22:04:27.194933	2022-10-05 22:04:27.194933	\N	971
1648	draba-verna	1	2022-10-05 22:04:27.200736	2022-10-05 22:04:27.200736	\N	102
1649	draba-verna	1	2022-10-05 22:04:27.206387	2022-10-05 22:04:27.206387	\N	103
1650	draba-verna	1	2022-10-05 22:04:27.212802	2022-10-05 22:04:27.212802	\N	1391
1651	draba-verna	2	2022-10-05 22:04:27.219299	2022-10-05 22:04:27.219299	\N	104
1652	draba-verna	1	2022-10-05 22:04:27.225857	2022-10-05 22:04:27.225857	\N	105
1653	draba-verna	3	2022-10-05 22:04:27.232125	2022-10-05 22:04:27.232125	\N	107
1654	draba-verna	2	2022-10-05 22:04:27.237694	2022-10-05 22:04:27.237694	\N	121
1655	draba-verna	1	2022-10-05 22:04:27.243555	2022-10-05 22:04:27.243555	\N	123
1656	draba-verna	1	2022-10-05 22:04:27.249519	2022-10-05 22:04:27.249519	\N	1392
1657	draba-verna	1	2022-10-05 22:04:27.255591	2022-10-05 22:04:27.255591	\N	128
1658	draba-verna	1	2022-10-05 22:04:27.261058	2022-10-05 22:04:27.261058	\N	130
1659	draba-verna	2	2022-10-05 22:04:27.267429	2022-10-05 22:04:27.267429	\N	131
1660	draba-verna	1	2022-10-05 22:04:27.272576	2022-10-05 22:04:27.272576	\N	132
1661	draba-verna	1	2022-10-05 22:04:27.278364	2022-10-05 22:04:27.278364	\N	1661
1662	draba-verna	2	2022-10-05 22:04:27.284269	2022-10-05 22:04:27.284269	\N	133
1663	draba-verna	1	2022-10-05 22:04:27.289438	2022-10-05 22:04:27.289438	\N	997
1664	draba-verna	1	2022-10-05 22:04:27.295272	2022-10-05 22:04:27.295272	\N	136
1665	draba-verna	1	2022-10-05 22:04:27.300834	2022-10-05 22:04:27.300834	\N	137
1666	draba-verna	2	2022-10-05 22:04:27.306246	2022-10-05 22:04:27.306246	\N	138
1667	draba-verna	2	2022-10-05 22:04:27.311985	2022-10-05 22:04:27.311985	\N	1001
1668	draba-verna	2	2022-10-05 22:04:27.318026	2022-10-05 22:04:27.318026	\N	139
1669	draba-verna	2	2022-10-05 22:04:27.324232	2022-10-05 22:04:27.324232	\N	1003
1670	draba-verna	2	2022-10-05 22:04:27.329956	2022-10-05 22:04:27.329956	\N	1004
1671	draba-verna	1	2022-10-05 22:04:27.338149	2022-10-05 22:04:27.338149	\N	140
1672	draba-verna	1	2022-10-05 22:04:27.34496	2022-10-05 22:04:27.34496	\N	141
1673	draba-verna	1	2022-10-05 22:04:27.351359	2022-10-05 22:04:27.351359	\N	142
1674	draba-verna	0	2022-10-05 22:04:27.361281	2022-10-05 22:04:27.361281	\N	145
1675	draba-verna	1	2022-10-05 22:04:27.367367	2022-10-05 22:04:27.367367	\N	146
1676	draba-verna	1	2022-10-05 22:04:27.37343	2022-10-05 22:04:27.37343	\N	147
1677	draba-verna	1	2022-10-05 22:04:27.381212	2022-10-05 22:04:27.381212	\N	1677
1678	draba-verna	1	2022-10-05 22:04:27.386579	2022-10-05 22:04:27.386579	\N	148
1679	draba-verna	1	2022-10-05 22:04:27.39311	2022-10-05 22:04:27.39311	\N	149
1680	draba-verna	1	2022-10-05 22:04:27.399033	2022-10-05 22:04:27.399033	\N	1680
1681	draba-verna	1	2022-10-05 22:04:27.404283	2022-10-05 22:04:27.404283	\N	150
1682	draba-verna	1	2022-10-05 22:04:27.410631	2022-10-05 22:04:27.410631	\N	151
1683	draba-verna	1	2022-10-05 22:04:27.416401	2022-10-05 22:04:27.416401	\N	152
1684	draba-verna	1	2022-10-05 22:04:27.421647	2022-10-05 22:04:27.421647	\N	153
1685	draba-verna	2	2022-10-05 22:04:27.427632	2022-10-05 22:04:27.427632	\N	154
1686	draba-verna	1	2022-10-05 22:04:27.433666	2022-10-05 22:04:27.433666	\N	157
1687	draba-verna	1	2022-10-05 22:04:27.438885	2022-10-05 22:04:27.438885	\N	158
1688	draba-verna	1	2022-10-05 22:04:27.444898	2022-10-05 22:04:27.444898	\N	161
1689	draba-verna	2	2022-10-05 22:04:27.45017	2022-10-05 22:04:27.45017	\N	162
1690	draba-verna	2	2022-10-05 22:04:27.455638	2022-10-05 22:04:27.455638	\N	1690
1691	draba-verna	1	2022-10-05 22:04:27.461526	2022-10-05 22:04:27.461526	\N	164
1692	draba-verna	2	2022-10-05 22:04:27.468237	2022-10-05 22:04:27.468237	\N	166
1693	draba-verna	2	2022-10-05 22:04:27.474929	2022-10-05 22:04:27.474929	\N	167
1694	draba-verna	2	2022-10-05 22:04:27.480777	2022-10-05 22:04:27.480777	\N	168
1695	draba-verna	1	2022-10-05 22:04:27.48648	2022-10-05 22:04:27.48648	\N	169
1696	draba-verna	2	2022-10-05 22:04:27.492654	2022-10-05 22:04:27.492654	\N	173
1697	draba-verna	2	2022-10-05 22:04:27.499278	2022-10-05 22:04:27.499278	\N	174
1698	draba-verna	1	2022-10-05 22:04:27.50481	2022-10-05 22:04:27.50481	\N	175
1699	draba-verna	2	2022-10-05 22:04:27.510845	2022-10-05 22:04:27.510845	\N	176
1700	draba-verna	2	2022-10-05 22:04:27.516628	2022-10-05 22:04:27.516628	\N	180
1701	draba-verna	1	2022-10-05 22:04:27.521905	2022-10-05 22:04:27.521905	\N	183
1702	draba-verna	1	2022-10-05 22:04:27.527364	2022-10-05 22:04:27.527364	\N	184
1703	draba-verna	1	2022-10-05 22:04:27.533456	2022-10-05 22:04:27.533456	\N	185
1704	draba-verna	2	2022-10-05 22:04:27.538694	2022-10-05 22:04:27.538694	\N	186
1705	draba-verna	2	2022-10-05 22:04:27.544478	2022-10-05 22:04:27.544478	\N	1377
1706	draba-verna	1	2022-10-05 22:04:27.550023	2022-10-05 22:04:27.550023	\N	1706
1707	draba-verna	1	2022-10-05 22:04:27.554956	2022-10-05 22:04:27.554956	\N	1707
1708	draba-verna	2	2022-10-05 22:04:27.560592	2022-10-05 22:04:27.560592	\N	1708
1709	draba-verna	1	2022-10-05 22:04:27.567346	2022-10-05 22:04:27.567346	\N	191
1710	draba-verna	1	2022-10-05 22:04:27.57254	2022-10-05 22:04:27.57254	\N	1044
1711	draba-verna	2	2022-10-05 22:04:27.581326	2022-10-05 22:04:27.581326	\N	192
1712	draba-verna	1	2022-10-05 22:04:27.58678	2022-10-05 22:04:27.58678	\N	193
1713	draba-verna	1	2022-10-05 22:04:27.593095	2022-10-05 22:04:27.593095	\N	194
1714	draba-verna	2	2022-10-05 22:04:27.600162	2022-10-05 22:04:27.600162	\N	195
1715	draba-verna	2	2022-10-05 22:04:27.605346	2022-10-05 22:04:27.605346	\N	196
1716	draba-verna	1	2022-10-05 22:04:27.611782	2022-10-05 22:04:27.611782	\N	197
1717	draba-verna	1	2022-10-05 22:04:27.618286	2022-10-05 22:04:27.618286	\N	198
1718	draba-verna	1	2022-10-05 22:04:27.625602	2022-10-05 22:04:27.625602	\N	199
1719	draba-verna	2	2022-10-05 22:04:27.631241	2022-10-05 22:04:27.631241	\N	200
1720	draba-verna	1	2022-10-05 22:04:27.636676	2022-10-05 22:04:27.636676	\N	1720
1721	draba-verna	0	2022-10-05 22:04:27.642606	2022-10-05 22:04:27.642606	\N	201
1722	draba-verna	1	2022-10-05 22:04:27.647539	2022-10-05 22:04:27.647539	\N	202
1723	draba-verna	1	2022-10-05 22:04:27.652859	2022-10-05 22:04:27.652859	\N	203
1724	draba-verna	0	2022-10-05 22:04:27.657932	2022-10-05 22:04:27.657932	\N	204
1725	draba-verna	1	2022-10-05 22:04:27.663121	2022-10-05 22:04:27.663121	\N	1057
1726	draba-verna	1	2022-10-05 22:04:27.668707	2022-10-05 22:04:27.668707	\N	205
1727	draba-verna	1	2022-10-05 22:04:27.673822	2022-10-05 22:04:27.673822	\N	208
1728	draba-verna	2	2022-10-05 22:04:27.679178	2022-10-05 22:04:27.679178	\N	211
1729	draba-verna	2	2022-10-05 22:04:27.684592	2022-10-05 22:04:27.684592	\N	212
1730	draba-verna	2	2022-10-05 22:04:27.689485	2022-10-05 22:04:27.689485	\N	213
1731	draba-verna	2	2022-10-05 22:04:27.694747	2022-10-05 22:04:27.694747	\N	214
1732	draba-verna	2	2022-10-05 22:04:27.69993	2022-10-05 22:04:27.69993	\N	1071
1733	draba-verna	1	2022-10-05 22:04:27.704838	2022-10-05 22:04:27.704838	\N	222
1734	draba-verna	1	2022-10-05 22:04:27.710981	2022-10-05 22:04:27.710981	\N	1074
1735	draba-verna	2	2022-10-05 22:04:27.717058	2022-10-05 22:04:27.717058	\N	223
1736	draba-verna	1	2022-10-05 22:04:27.72269	2022-10-05 22:04:27.72269	\N	1077
1737	draba-verna	2	2022-10-05 22:04:27.728444	2022-10-05 22:04:27.728444	\N	1078
1738	draba-verna	2	2022-10-05 22:04:27.733696	2022-10-05 22:04:27.733696	\N	1079
1739	draba-verna	2	2022-10-05 22:04:27.738644	2022-10-05 22:04:27.738644	\N	226
1740	draba-verna	2	2022-10-05 22:04:27.744928	2022-10-05 22:04:27.744928	\N	227
1741	draba-verna	1	2022-10-05 22:04:27.75	2022-10-05 22:04:27.75	\N	228
1742	draba-verna	2	2022-10-05 22:04:27.75472	2022-10-05 22:04:27.75472	\N	1084
1743	draba-verna	2	2022-10-05 22:04:27.760059	2022-10-05 22:04:27.760059	\N	230
1744	draba-verna	2	2022-10-05 22:04:27.765715	2022-10-05 22:04:27.765715	\N	231
1745	draba-verna	1	2022-10-05 22:04:27.770441	2022-10-05 22:04:27.770441	\N	232
1746	draba-verna	2	2022-10-05 22:04:27.77678	2022-10-05 22:04:27.77678	\N	233
1747	draba-verna	1	2022-10-05 22:04:27.782226	2022-10-05 22:04:27.782226	\N	234
1748	draba-verna	1	2022-10-05 22:04:27.787003	2022-10-05 22:04:27.787003	\N	1748
1749	draba-verna	2	2022-10-05 22:04:27.792494	2022-10-05 22:04:27.792494	\N	1087
1750	draba-verna	2	2022-10-05 22:04:27.799001	2022-10-05 22:04:27.799001	\N	235
1751	draba-verna	1	2022-10-05 22:04:27.803619	2022-10-05 22:04:27.803619	\N	1089
1752	draba-verna	2	2022-10-05 22:04:27.810053	2022-10-05 22:04:27.810053	\N	236
1753	draba-verna	2	2022-10-05 22:04:27.815237	2022-10-05 22:04:27.815237	\N	242
1754	draba-verna	0	2022-10-05 22:04:27.820556	2022-10-05 22:04:27.820556	\N	243
1755	draba-verna	1	2022-10-05 22:04:27.835403	2022-10-05 22:04:27.835403	\N	244
1756	draba-verna	2	2022-10-05 22:04:27.84156	2022-10-05 22:04:27.84156	\N	245
1757	draba-verna	2	2022-10-05 22:04:27.847143	2022-10-05 22:04:27.847143	\N	246
1758	draba-verna	2	2022-10-05 22:04:27.853859	2022-10-05 22:04:27.853859	\N	247
1759	draba-verna	1	2022-10-05 22:04:27.859408	2022-10-05 22:04:27.859408	\N	248
1760	draba-verna	0	2022-10-05 22:04:27.864559	2022-10-05 22:04:27.864559	\N	249
1761	draba-verna	0	2022-10-05 22:04:27.869625	2022-10-05 22:04:27.869625	\N	250
1762	draba-verna	1	2022-10-05 22:04:27.878362	2022-10-05 22:04:27.878362	\N	1762
1763	draba-verna	1	2022-10-05 22:04:27.884186	2022-10-05 22:04:27.884186	\N	1763
1764	draba-verna	2	2022-10-05 22:04:27.889487	2022-10-05 22:04:27.889487	\N	1764
1765	draba-verna	1	2022-10-05 22:04:27.89825	2022-10-05 22:04:27.89825	\N	1765
1766	draba-verna	2	2022-10-05 22:04:27.903339	2022-10-05 22:04:27.903339	\N	251
1767	draba-verna	1	2022-10-05 22:04:27.908418	2022-10-05 22:04:27.908418	\N	252
1768	draba-verna	2	2022-10-05 22:04:27.914476	2022-10-05 22:04:27.914476	\N	253
1769	draba-verna	1	2022-10-05 22:04:27.920057	2022-10-05 22:04:27.920057	\N	254
1770	draba-verna	2	2022-10-05 22:04:27.925132	2022-10-05 22:04:27.925132	\N	262
1771	draba-verna	1	2022-10-05 22:04:27.930392	2022-10-05 22:04:27.930392	\N	263
1772	draba-verna	1	2022-10-05 22:04:27.936202	2022-10-05 22:04:27.936202	\N	264
1773	draba-verna	1	2022-10-05 22:04:27.941818	2022-10-05 22:04:27.941818	\N	266
1774	draba-verna	1	2022-10-05 22:04:27.948349	2022-10-05 22:04:27.948349	\N	273
1775	draba-verna	1	2022-10-05 22:04:27.953624	2022-10-05 22:04:27.953624	\N	274
1776	draba-verna	1	2022-10-05 22:04:27.959283	2022-10-05 22:04:27.959283	\N	275
1777	draba-verna	2	2022-10-05 22:04:27.965063	2022-10-05 22:04:27.965063	\N	276
1778	draba-verna	1	2022-10-05 22:04:27.97058	2022-10-05 22:04:27.97058	\N	277
1779	draba-verna	1	2022-10-05 22:04:27.976526	2022-10-05 22:04:27.976526	\N	278
1780	draba-verna	1	2022-10-05 22:04:27.981803	2022-10-05 22:04:27.981803	\N	279
1781	draba-verna	1	2022-10-05 22:04:27.987033	2022-10-05 22:04:27.987033	\N	281
1782	draba-verna	2	2022-10-05 22:04:27.993045	2022-10-05 22:04:27.993045	\N	282
1783	draba-verna	1	2022-10-05 22:04:27.99837	2022-10-05 22:04:27.99837	\N	1783
1784	draba-verna	1	2022-10-05 22:04:28.003399	2022-10-05 22:04:28.003399	\N	1784
1785	draba-verna	2	2022-10-05 22:04:28.008604	2022-10-05 22:04:28.008604	\N	1785
1786	draba-verna	2	2022-10-05 22:04:28.013953	2022-10-05 22:04:28.013953	\N	1786
1787	draba-verna	1	2022-10-05 22:04:28.019656	2022-10-05 22:04:28.019656	\N	1787
1788	draba-verna	1	2022-10-05 22:04:28.025437	2022-10-05 22:04:28.025437	\N	284
1789	draba-verna	2	2022-10-05 22:04:28.031832	2022-10-05 22:04:28.031832	\N	286
1790	draba-verna	1	2022-10-05 22:04:28.037272	2022-10-05 22:04:28.037272	\N	288
1791	draba-verna	1	2022-10-05 22:04:28.043537	2022-10-05 22:04:28.043537	\N	293
1792	draba-verna	2	2022-10-05 22:04:28.051302	2022-10-05 22:04:28.051302	\N	295
1793	draba-verna	2	2022-10-05 22:04:28.058458	2022-10-05 22:04:28.058458	\N	296
1794	draba-verna	2	2022-10-05 22:04:28.064415	2022-10-05 22:04:28.064415	\N	1794
1795	draba-verna	0	2022-10-05 22:04:28.070478	2022-10-05 22:04:28.070478	\N	1795
1796	draba-verna	1	2022-10-05 22:04:28.078014	2022-10-05 22:04:28.078014	\N	1796
1797	draba-verna	1	2022-10-05 22:04:28.08404	2022-10-05 22:04:28.08404	\N	1797
1798	draba-verna	1	2022-10-05 22:04:28.090584	2022-10-05 22:04:28.090584	\N	1798
1799	draba-verna	1	2022-10-05 22:04:28.096734	2022-10-05 22:04:28.096734	\N	1799
1800	draba-verna	1	2022-10-05 22:04:28.103221	2022-10-05 22:04:28.103221	\N	1800
1801	draba-verna	2	2022-10-05 22:04:28.109181	2022-10-05 22:04:28.109181	\N	1801
1802	draba-verna	1	2022-10-05 22:04:28.115358	2022-10-05 22:04:28.115358	\N	1802
1803	draba-verna	1	2022-10-05 22:04:28.120566	2022-10-05 22:04:28.120566	\N	1803
1804	draba-verna	1	2022-10-05 22:04:28.128512	2022-10-05 22:04:28.128512	\N	303
1805	draba-verna	2	2022-10-05 22:04:28.134783	2022-10-05 22:04:28.134783	\N	306
1806	draba-verna	1	2022-10-05 22:04:28.140183	2022-10-05 22:04:28.140183	\N	307
1807	draba-verna	0	2022-10-05 22:04:28.145604	2022-10-05 22:04:28.145604	\N	308
1808	draba-verna	1	2022-10-05 22:04:28.151169	2022-10-05 22:04:28.151169	\N	312
1809	draba-verna	0	2022-10-05 22:04:28.156484	2022-10-05 22:04:28.156484	\N	1809
1810	draba-verna	0	2022-10-05 22:04:28.163069	2022-10-05 22:04:28.163069	\N	1810
1811	draba-verna	0	2022-10-05 22:04:28.168409	2022-10-05 22:04:28.168409	\N	1811
1812	draba-verna	1	2022-10-05 22:04:28.17404	2022-10-05 22:04:28.17404	\N	1812
1813	draba-verna	1	2022-10-05 22:04:28.180102	2022-10-05 22:04:28.180102	\N	1813
1814	draba-verna	1	2022-10-05 22:04:28.185906	2022-10-05 22:04:28.185906	\N	1147
1815	draba-verna	2	2022-10-05 22:04:28.192057	2022-10-05 22:04:28.192057	\N	1148
1816	draba-verna	0	2022-10-05 22:04:28.198038	2022-10-05 22:04:28.198038	\N	1149
1817	draba-verna	1	2022-10-05 22:04:28.203174	2022-10-05 22:04:28.203174	\N	1150
1818	draba-verna	1	2022-10-05 22:04:28.208764	2022-10-05 22:04:28.208764	\N	1151
1819	draba-verna	1	2022-10-05 22:04:28.214545	2022-10-05 22:04:28.214545	\N	1152
1820	draba-verna	2	2022-10-05 22:04:28.219873	2022-10-05 22:04:28.219873	\N	313
1821	draba-verna	1	2022-10-05 22:04:28.225366	2022-10-05 22:04:28.225366	\N	1821
1822	draba-verna	2	2022-10-05 22:04:28.23126	2022-10-05 22:04:28.23126	\N	1154
1823	draba-verna	2	2022-10-05 22:04:28.236771	2022-10-05 22:04:28.236771	\N	319
1824	draba-verna	1	2022-10-05 22:04:28.243345	2022-10-05 22:04:28.243345	\N	321
1825	draba-verna	1	2022-10-05 22:04:28.251479	2022-10-05 22:04:28.251479	\N	322
1826	draba-verna	1	2022-10-05 22:04:28.25673	2022-10-05 22:04:28.25673	\N	323
1827	draba-verna	2	2022-10-05 22:04:28.262767	2022-10-05 22:04:28.262767	\N	334
1828	draba-verna	2	2022-10-05 22:04:28.268844	2022-10-05 22:04:28.268844	\N	335
1829	draba-verna	1	2022-10-05 22:04:28.274461	2022-10-05 22:04:28.274461	\N	336
1830	draba-verna	1	2022-10-05 22:04:28.27998	2022-10-05 22:04:28.27998	\N	1176
1831	draba-verna	1	2022-10-05 22:04:28.2855	2022-10-05 22:04:28.2855	\N	337
1832	draba-verna	2	2022-10-05 22:04:28.29109	2022-10-05 22:04:28.29109	\N	338
1833	draba-verna	1	2022-10-05 22:04:28.297174	2022-10-05 22:04:28.297174	\N	339
1834	draba-verna	2	2022-10-05 22:04:28.304369	2022-10-05 22:04:28.304369	\N	340
1835	draba-verna	2	2022-10-05 22:04:28.312624	2022-10-05 22:04:28.312624	\N	341
1836	draba-verna	2	2022-10-05 22:04:28.318696	2022-10-05 22:04:28.318696	\N	342
1837	draba-verna	0	2022-10-05 22:04:28.325582	2022-10-05 22:04:28.325582	\N	1837
1838	draba-verna	2	2022-10-05 22:04:28.332368	2022-10-05 22:04:28.332368	\N	1838
1839	draba-verna	1	2022-10-05 22:04:28.339035	2022-10-05 22:04:28.339035	\N	1839
1840	draba-verna	2	2022-10-05 22:04:28.345172	2022-10-05 22:04:28.345172	\N	1840
1841	draba-verna	1	2022-10-05 22:04:28.351635	2022-10-05 22:04:28.351635	\N	1841
1842	draba-verna	0	2022-10-05 22:04:28.357599	2022-10-05 22:04:28.357599	\N	1842
1843	draba-verna	1	2022-10-05 22:04:28.362896	2022-10-05 22:04:28.362896	\N	1843
1844	draba-verna	1	2022-10-05 22:04:28.36916	2022-10-05 22:04:28.36916	\N	1844
1845	draba-verna	2	2022-10-05 22:04:28.375372	2022-10-05 22:04:28.375372	\N	1845
1846	draba-verna	1	2022-10-05 22:04:28.383297	2022-10-05 22:04:28.383297	\N	1846
1847	draba-verna	1	2022-10-05 22:04:28.389012	2022-10-05 22:04:28.389012	\N	373
1848	draba-verna	-999	2022-10-05 22:04:28.395321	2022-10-05 22:04:28.395321	\N	374
1849	draba-verna	1	2022-10-05 22:04:28.401292	2022-10-05 22:04:28.401292	\N	375
1850	draba-verna	2	2022-10-05 22:04:28.406941	2022-10-05 22:04:28.406941	\N	376
1851	draba-verna	1	2022-10-05 22:04:28.4129	2022-10-05 22:04:28.4129	\N	377
1852	draba-verna	2	2022-10-05 22:04:28.418766	2022-10-05 22:04:28.418766	\N	378
1853	draba-verna	1	2022-10-05 22:04:28.425166	2022-10-05 22:04:28.425166	\N	379
1854	draba-verna	2	2022-10-05 22:04:28.431012	2022-10-05 22:04:28.431012	\N	1212
1855	draba-verna	2	2022-10-05 22:04:28.436891	2022-10-05 22:04:28.436891	\N	380
1856	draba-verna	2	2022-10-05 22:04:28.442882	2022-10-05 22:04:28.442882	\N	381
1857	draba-verna	1	2022-10-05 22:04:28.449538	2022-10-05 22:04:28.449538	\N	382
1858	draba-verna	2	2022-10-05 22:04:28.457664	2022-10-05 22:04:28.457664	\N	1858
1859	draba-verna	1	2022-10-05 22:04:28.464851	2022-10-05 22:04:28.464851	\N	1859
1860	draba-verna	2	2022-10-05 22:04:28.471357	2022-10-05 22:04:28.471357	\N	392
1861	draba-verna	1	2022-10-05 22:04:28.477915	2022-10-05 22:04:28.477915	\N	394
1862	draba-verna	2	2022-10-05 22:04:28.483543	2022-10-05 22:04:28.483543	\N	395
1863	draba-verna	1	2022-10-05 22:04:28.490067	2022-10-05 22:04:28.490067	\N	396
1864	draba-verna	1	2022-10-05 22:04:28.496601	2022-10-05 22:04:28.496601	\N	397
1865	draba-verna	1	2022-10-05 22:04:28.50215	2022-10-05 22:04:28.50215	\N	398
1866	draba-verna	1	2022-10-05 22:04:28.508291	2022-10-05 22:04:28.508291	\N	399
1867	draba-verna	1	2022-10-05 22:04:28.514709	2022-10-05 22:04:28.514709	\N	400
1868	draba-verna	1	2022-10-05 22:04:28.520234	2022-10-05 22:04:28.520234	\N	401
1869	draba-verna	1	2022-10-05 22:04:28.526235	2022-10-05 22:04:28.526235	\N	1869
1870	draba-verna	2	2022-10-05 22:04:28.532425	2022-10-05 22:04:28.532425	\N	1870
1871	draba-verna	2	2022-10-05 22:04:28.537859	2022-10-05 22:04:28.537859	\N	1237
1872	draba-verna	2	2022-10-05 22:04:28.544462	2022-10-05 22:04:28.544462	\N	1238
1873	draba-verna	2	2022-10-05 22:04:28.550777	2022-10-05 22:04:28.550777	\N	1239
1874	draba-verna	2	2022-10-05 22:04:28.556321	2022-10-05 22:04:28.556321	\N	1240
1875	draba-verna	2	2022-10-05 22:04:28.562841	2022-10-05 22:04:28.562841	\N	1875
1876	draba-verna	2	2022-10-05 22:04:28.568655	2022-10-05 22:04:28.568655	\N	1241
1877	draba-verna	2	2022-10-05 22:04:28.575837	2022-10-05 22:04:28.575837	\N	1242
1878	draba-verna	2	2022-10-05 22:04:28.581871	2022-10-05 22:04:28.581871	\N	425
1879	draba-verna	2	2022-10-05 22:04:28.58764	2022-10-05 22:04:28.58764	\N	426
1880	draba-verna	2	2022-10-05 22:04:28.594159	2022-10-05 22:04:28.594159	\N	428
1881	draba-verna	2	2022-10-05 22:04:28.601134	2022-10-05 22:04:28.601134	\N	429
1882	draba-verna	2	2022-10-05 22:04:28.608106	2022-10-05 22:04:28.608106	\N	430
1883	draba-verna	1	2022-10-05 22:04:28.614639	2022-10-05 22:04:28.614639	\N	431
1884	draba-verna	1	2022-10-05 22:04:28.620963	2022-10-05 22:04:28.620963	\N	432
1885	draba-verna	2	2022-10-05 22:04:28.632503	2022-10-05 22:04:28.632503	\N	433
1886	draba-verna	1	2022-10-05 22:04:28.638465	2022-10-05 22:04:28.638465	\N	435
1887	draba-verna	2	2022-10-05 22:04:28.64477	2022-10-05 22:04:28.64477	\N	1254
1888	draba-verna	2	2022-10-05 22:04:28.651618	2022-10-05 22:04:28.651618	\N	436
1889	draba-verna	2	2022-10-05 22:04:28.65856	2022-10-05 22:04:28.65856	\N	1257
1890	draba-verna	1	2022-10-05 22:04:28.665298	2022-10-05 22:04:28.665298	\N	438
1891	draba-verna	1	2022-10-05 22:04:28.671856	2022-10-05 22:04:28.671856	\N	1259
1892	draba-verna	1	2022-10-05 22:04:28.678467	2022-10-05 22:04:28.678467	\N	1260
1893	draba-verna	1	2022-10-05 22:04:28.684546	2022-10-05 22:04:28.684546	\N	439
1894	draba-verna	0	2022-10-05 22:04:28.691008	2022-10-05 22:04:28.691008	\N	441
1895	draba-verna	1	2022-10-05 22:04:28.696652	2022-10-05 22:04:28.696652	\N	442
1896	draba-verna	1	2022-10-05 22:04:28.702074	2022-10-05 22:04:28.702074	\N	1896
1897	draba-verna	0	2022-10-05 22:04:28.707986	2022-10-05 22:04:28.707986	\N	443
1898	draba-verna	2	2022-10-05 22:04:28.71341	2022-10-05 22:04:28.71341	\N	444
1899	draba-verna	2	2022-10-05 22:04:28.719284	2022-10-05 22:04:28.719284	\N	445
1900	draba-verna	0	2022-10-05 22:04:28.725561	2022-10-05 22:04:28.725561	\N	446
1901	draba-verna	0	2022-10-05 22:04:28.73133	2022-10-05 22:04:28.73133	\N	1266
1902	draba-verna	0	2022-10-05 22:04:28.737058	2022-10-05 22:04:28.737058	\N	447
1903	draba-verna	1	2022-10-05 22:04:28.743623	2022-10-05 22:04:28.743623	\N	448
1904	draba-verna	1	2022-10-05 22:04:28.750523	2022-10-05 22:04:28.750523	\N	449
1905	draba-verna	-999	2022-10-05 22:04:28.758467	2022-10-05 22:04:28.758467	\N	1270
1906	draba-verna	2	2022-10-05 22:04:28.765059	2022-10-05 22:04:28.765059	\N	1906
1907	draba-verna	0	2022-10-05 22:04:28.771173	2022-10-05 22:04:28.771173	\N	1907
1908	draba-verna	0	2022-10-05 22:04:28.780608	2022-10-05 22:04:28.780608	\N	1908
1909	draba-verna	0	2022-10-05 22:04:28.786761	2022-10-05 22:04:28.786761	\N	1909
1910	draba-verna	2	2022-10-05 22:04:28.793961	2022-10-05 22:04:28.793961	\N	450
1911	draba-verna	1	2022-10-05 22:04:28.800465	2022-10-05 22:04:28.800465	\N	451
1912	draba-verna	2	2022-10-05 22:04:28.806103	2022-10-05 22:04:28.806103	\N	452
1913	draba-verna	2	2022-10-05 22:04:28.813337	2022-10-05 22:04:28.813337	\N	1274
1914	draba-verna	2	2022-10-05 22:04:28.81942	2022-10-05 22:04:28.81942	\N	453
1915	draba-verna	1	2022-10-05 22:04:28.826954	2022-10-05 22:04:28.826954	\N	1276
1916	draba-verna	2	2022-10-05 22:04:28.837537	2022-10-05 22:04:28.837537	\N	454
1917	draba-verna	2	2022-10-05 22:04:28.862231	2022-10-05 22:04:28.862231	\N	455
1918	draba-verna	2	2022-10-05 22:04:28.868745	2022-10-05 22:04:28.868745	\N	456
1919	draba-verna	1	2022-10-05 22:04:28.876751	2022-10-05 22:04:28.876751	\N	457
1920	draba-verna	2	2022-10-05 22:04:28.88593	2022-10-05 22:04:28.88593	\N	458
1921	draba-verna	2	2022-10-05 22:04:28.893017	2022-10-05 22:04:28.893017	\N	470
1922	draba-verna	2	2022-10-05 22:04:28.899639	2022-10-05 22:04:28.899639	\N	480
1923	draba-verna	1	2022-10-05 22:04:28.905552	2022-10-05 22:04:28.905552	\N	481
1924	draba-verna	2	2022-10-05 22:04:28.911989	2022-10-05 22:04:28.911989	\N	482
1925	draba-verna	3	2022-10-05 22:04:28.919573	2022-10-05 22:04:28.919573	\N	1296
1926	draba-verna	2	2022-10-05 22:04:28.926248	2022-10-05 22:04:28.926248	\N	483
1927	draba-verna	1	2022-10-05 22:04:28.932551	2022-10-05 22:04:28.932551	\N	1298
1928	draba-verna	2	2022-10-05 22:04:28.938723	2022-10-05 22:04:28.938723	\N	484
1929	draba-verna	2	2022-10-05 22:04:28.94654	2022-10-05 22:04:28.94654	\N	485
1930	draba-verna	1	2022-10-05 22:04:28.954648	2022-10-05 22:04:28.954648	\N	1302
1931	draba-verna	0	2022-10-05 22:04:28.96121	2022-10-05 22:04:28.96121	\N	487
1932	draba-verna	2	2022-10-05 22:04:28.967224	2022-10-05 22:04:28.967224	\N	491
1933	draba-verna	2	2022-10-05 22:04:28.973255	2022-10-05 22:04:28.973255	\N	492
1934	draba-verna	1	2022-10-05 22:04:28.980855	2022-10-05 22:04:28.980855	\N	493
1935	draba-verna	2	2022-10-05 22:04:28.98702	2022-10-05 22:04:28.98702	\N	494
1936	draba-verna	2	2022-10-05 22:04:28.993193	2022-10-05 22:04:28.993193	\N	495
1937	draba-verna	2	2022-10-05 22:04:28.99928	2022-10-05 22:04:28.99928	\N	496
1938	draba-verna	2	2022-10-05 22:04:29.005416	2022-10-05 22:04:29.005416	\N	497
1939	draba-verna	2	2022-10-05 22:04:29.011787	2022-10-05 22:04:29.011787	\N	498
1940	draba-verna	0	2022-10-05 22:04:29.018171	2022-10-05 22:04:29.018171	\N	499
1941	draba-verna	2	2022-10-05 22:04:29.024095	2022-10-05 22:04:29.024095	\N	1941
1942	draba-verna	2	2022-10-05 22:04:29.030777	2022-10-05 22:04:29.030777	\N	1313
1943	draba-verna	1	2022-10-05 22:04:29.037533	2022-10-05 22:04:29.037533	\N	500
1944	draba-verna	2	2022-10-05 22:04:29.044146	2022-10-05 22:04:29.044146	\N	501
1945	draba-verna	1	2022-10-05 22:04:29.052271	2022-10-05 22:04:29.052271	\N	502
1946	draba-verna	2	2022-10-05 22:04:29.058396	2022-10-05 22:04:29.058396	\N	503
1947	draba-verna	1	2022-10-05 22:04:29.064868	2022-10-05 22:04:29.064868	\N	504
1948	draba-verna	2	2022-10-05 22:04:29.070838	2022-10-05 22:04:29.070838	\N	505
1949	draba-verna	2	2022-10-05 22:04:29.077634	2022-10-05 22:04:29.077634	\N	506
1950	draba-verna	2	2022-10-05 22:04:29.083906	2022-10-05 22:04:29.083906	\N	509
1951	draba-verna	0	2022-10-05 22:04:29.089974	2022-10-05 22:04:29.089974	\N	510
1952	draba-verna	2	2022-10-05 22:04:29.097936	2022-10-05 22:04:29.097936	\N	511
1953	draba-verna	0	2022-10-05 22:04:29.104784	2022-10-05 22:04:29.104784	\N	512
1954	draba-verna	0	2022-10-05 22:04:29.111017	2022-10-05 22:04:29.111017	\N	1326
1955	draba-verna	2	2022-10-05 22:04:29.117412	2022-10-05 22:04:29.117412	\N	513
1956	draba-verna	2	2022-10-05 22:04:29.123972	2022-10-05 22:04:29.123972	\N	514
1957	draba-verna	2	2022-10-05 22:04:29.132098	2022-10-05 22:04:29.132098	\N	515
1958	draba-verna	0	2022-10-05 22:04:29.138032	2022-10-05 22:04:29.138032	\N	516
1959	draba-verna	1	2022-10-05 22:04:29.144968	2022-10-05 22:04:29.144968	\N	1959
1960	draba-verna	2	2022-10-05 22:04:29.15116	2022-10-05 22:04:29.15116	\N	1960
1961	draba-verna	1	2022-10-05 22:04:29.158213	2022-10-05 22:04:29.158213	\N	546
1962	draba-verna	2	2022-10-05 22:04:29.166015	2022-10-05 22:04:29.166015	\N	547
1963	draba-verna	1	2022-10-05 22:04:29.172254	2022-10-05 22:04:29.172254	\N	548
1964	draba-verna	1	2022-10-05 22:04:29.181348	2022-10-05 22:04:29.181348	\N	549
1965	draba-verna	1	2022-10-05 22:04:29.187425	2022-10-05 22:04:29.187425	\N	550
1966	draba-verna	2	2022-10-05 22:04:29.196818	2022-10-05 22:04:29.196818	\N	551
1967	draba-verna	2	2022-10-05 22:04:29.204208	2022-10-05 22:04:29.204208	\N	552
1968	draba-verna	2	2022-10-05 22:04:29.21121	2022-10-05 22:04:29.21121	\N	553
1969	draba-verna	2	2022-10-05 22:04:29.217227	2022-10-05 22:04:29.217227	\N	554
1970	draba-verna	0	2022-10-05 22:04:29.223374	2022-10-05 22:04:29.223374	\N	555
1971	draba-verna	0	2022-10-05 22:04:29.230047	2022-10-05 22:04:29.230047	\N	1971
1972	draba-verna	1	2022-10-05 22:04:29.23574	2022-10-05 22:04:29.23574	\N	1972
1973	draba-verna	0	2022-10-05 22:04:29.242696	2022-10-05 22:04:29.242696	\N	1973
1974	draba-verna	1	2022-10-05 22:04:29.249221	2022-10-05 22:04:29.249221	\N	1974
1975	draba-verna	1	2022-10-05 22:04:29.256297	2022-10-05 22:04:29.256297	\N	556
1976	draba-verna	1	2022-10-05 22:04:29.264596	2022-10-05 22:04:29.264596	\N	557
1977	draba-verna	1	2022-10-05 22:04:29.270982	2022-10-05 22:04:29.270982	\N	558
1978	draba-verna	1	2022-10-05 22:04:29.278405	2022-10-05 22:04:29.278405	\N	560
1979	draba-verna	1	2022-10-05 22:04:29.284731	2022-10-05 22:04:29.284731	\N	561
1980	draba-verna	0	2022-10-05 22:04:29.291095	2022-10-05 22:04:29.291095	\N	562
1981	draba-verna	0	2022-10-05 22:04:29.297702	2022-10-05 22:04:29.297702	\N	563
1982	draba-verna	1	2022-10-05 22:04:29.303788	2022-10-05 22:04:29.303788	\N	564
1983	draba-verna	1	2022-10-05 22:04:29.310692	2022-10-05 22:04:29.310692	\N	565
1984	draba-verna	0	2022-10-05 22:04:29.31782	2022-10-05 22:04:29.31782	\N	1984
1985	draba-verna	1	2022-10-05 22:04:29.325115	2022-10-05 22:04:29.325115	\N	1985
1986	draba-verna	2	2022-10-05 22:04:29.333796	2022-10-05 22:04:29.333796	\N	1986
1987	draba-verna	2	2022-10-05 22:04:29.340165	2022-10-05 22:04:29.340165	\N	566
1988	draba-verna	1	2022-10-05 22:04:29.346889	2022-10-05 22:04:29.346889	\N	1988
1989	draba-verna	0	2022-10-05 22:04:29.353507	2022-10-05 22:04:29.353507	\N	1989
1990	draba-verna	1	2022-10-05 22:04:29.359292	2022-10-05 22:04:29.359292	\N	568
1991	draba-verna	2	2022-10-05 22:04:29.366179	2022-10-05 22:04:29.366179	\N	1991
1992	draba-verna	-999	2022-10-05 22:04:29.37327	2022-10-05 22:04:29.37327	\N	337
1995	draba-verna	1	2022-10-05 22:04:29.395113	2022-10-05 22:04:29.395113	\N	5
1996	draba-verna	1	2022-10-05 22:04:29.401597	2022-10-05 22:04:29.401597	\N	1566
1997	draba-verna	1	2022-10-05 22:04:29.408098	2022-10-05 22:04:29.408098	\N	11
1998	draba-verna	1	2022-10-05 22:04:29.41461	2022-10-05 22:04:29.41461	\N	12
1999	draba-verna	1	2022-10-05 22:04:29.420897	2022-10-05 22:04:29.420897	\N	13
2000	draba-verna	1	2022-10-05 22:04:29.428705	2022-10-05 22:04:29.428705	\N	14
2001	draba-verna	1	2022-10-05 22:04:29.435066	2022-10-05 22:04:29.435066	\N	898
2002	draba-verna	0	2022-10-05 22:04:29.44138	2022-10-05 22:04:29.44138	\N	15
2003	draba-verna	0	2022-10-05 22:04:29.448322	2022-10-05 22:04:29.448322	\N	900
2004	draba-verna	1	2022-10-05 22:04:29.454082	2022-10-05 22:04:29.454082	\N	901
2005	draba-verna	1	2022-10-05 22:04:29.461362	2022-10-05 22:04:29.461362	\N	902
2006	draba-verna	1	2022-10-05 22:04:29.467716	2022-10-05 22:04:29.467716	\N	904
2007	draba-verna	0	2022-10-05 22:04:29.475213	2022-10-05 22:04:29.475213	\N	19
2008	draba-verna	0	2022-10-05 22:04:29.481484	2022-10-05 22:04:29.481484	\N	906
2009	draba-verna	0	2022-10-05 22:04:29.487513	2022-10-05 22:04:29.487513	\N	20
2010	draba-verna	1	2022-10-05 22:04:29.494135	2022-10-05 22:04:29.494135	\N	21
2011	draba-verna	1	2022-10-05 22:04:29.500852	2022-10-05 22:04:29.500852	\N	23
2012	draba-verna	1	2022-10-05 22:04:29.507262	2022-10-05 22:04:29.507262	\N	24
2013	draba-verna	1	2022-10-05 22:04:29.51363	2022-10-05 22:04:29.51363	\N	25
2014	draba-verna	0	2022-10-05 22:04:29.519555	2022-10-05 22:04:29.519555	\N	35
2015	draba-verna	0	2022-10-05 22:04:29.525483	2022-10-05 22:04:29.525483	\N	1596
2016	draba-verna	0	2022-10-05 22:04:29.531329	2022-10-05 22:04:29.531329	\N	37
2017	draba-verna	0	2022-10-05 22:04:29.537275	2022-10-05 22:04:29.537275	\N	38
2018	draba-verna	0	2022-10-05 22:04:29.543754	2022-10-05 22:04:29.543754	\N	39
2019	draba-verna	1	2022-10-05 22:04:29.549825	2022-10-05 22:04:29.549825	\N	40
2020	draba-verna	0	2022-10-05 22:04:29.556659	2022-10-05 22:04:29.556659	\N	1601
2021	draba-verna	1	2022-10-05 22:04:29.563337	2022-10-05 22:04:29.563337	\N	1602
2022	draba-verna	1	2022-10-05 22:04:29.569689	2022-10-05 22:04:29.569689	\N	41
2023	draba-verna	0	2022-10-05 22:04:29.576645	2022-10-05 22:04:29.576645	\N	1605
2024	draba-verna	2	2022-10-05 22:04:29.584251	2022-10-05 22:04:29.584251	\N	46
2025	draba-verna	0	2022-10-05 22:04:29.591746	2022-10-05 22:04:29.591746	\N	50
2026	draba-verna	0	2022-10-05 22:04:29.598528	2022-10-05 22:04:29.598528	\N	52
2027	draba-verna	0	2022-10-05 22:04:29.605066	2022-10-05 22:04:29.605066	\N	54
2028	draba-verna	1	2022-10-05 22:04:29.611754	2022-10-05 22:04:29.611754	\N	58
2029	draba-verna	1	2022-10-05 22:04:29.618494	2022-10-05 22:04:29.618494	\N	59
2030	draba-verna	1	2022-10-05 22:04:29.626257	2022-10-05 22:04:29.626257	\N	60
2031	draba-verna	1	2022-10-05 22:04:29.634187	2022-10-05 22:04:29.634187	\N	1626
2032	draba-verna	2	2022-10-05 22:04:29.641325	2022-10-05 22:04:29.641325	\N	1627
2033	draba-verna	1	2022-10-05 22:04:29.647375	2022-10-05 22:04:29.647375	\N	81
2034	draba-verna	1	2022-10-05 22:04:29.653463	2022-10-05 22:04:29.653463	\N	1635
2035	draba-verna	2	2022-10-05 22:04:29.659878	2022-10-05 22:04:29.659878	\N	956
2036	draba-verna	1	2022-10-05 22:04:29.668419	2022-10-05 22:04:29.668419	\N	93
2037	draba-verna	1	2022-10-05 22:04:29.674949	2022-10-05 22:04:29.674949	\N	94
2038	draba-verna	1	2022-10-05 22:04:29.681461	2022-10-05 22:04:29.681461	\N	971
2039	draba-verna	1	2022-10-05 22:04:29.687668	2022-10-05 22:04:29.687668	\N	104
2040	draba-verna	1	2022-10-05 22:04:29.694148	2022-10-05 22:04:29.694148	\N	121
2041	draba-verna	1	2022-10-05 22:04:29.700533	2022-10-05 22:04:29.700533	\N	991
2042	draba-verna	1	2022-10-05 22:04:29.70651	2022-10-05 22:04:29.70651	\N	129
2043	draba-verna	1	2022-10-05 22:04:29.712831	2022-10-05 22:04:29.712831	\N	131
2044	draba-verna	1	2022-10-05 22:04:29.719924	2022-10-05 22:04:29.719924	\N	133
2045	draba-verna	1	2022-10-05 22:04:29.727285	2022-10-05 22:04:29.727285	\N	138
2046	draba-verna	1	2022-10-05 22:04:29.733581	2022-10-05 22:04:29.733581	\N	1001
2047	draba-verna	1	2022-10-05 22:04:29.740315	2022-10-05 22:04:29.740315	\N	139
2048	draba-verna	1	2022-10-05 22:04:29.748105	2022-10-05 22:04:29.748105	\N	1003
2049	draba-verna	1	2022-10-05 22:04:29.75471	2022-10-05 22:04:29.75471	\N	1004
2050	draba-verna	0	2022-10-05 22:04:29.761416	2022-10-05 22:04:29.761416	\N	153
2051	draba-verna	1	2022-10-05 22:04:29.768008	2022-10-05 22:04:29.768008	\N	154
2052	draba-verna	1	2022-10-05 22:04:29.775256	2022-10-05 22:04:29.775256	\N	162
2053	draba-verna	1	2022-10-05 22:04:29.783238	2022-10-05 22:04:29.783238	\N	1690
2054	draba-verna	1	2022-10-05 22:04:29.789172	2022-10-05 22:04:29.789172	\N	167
2055	draba-verna	1	2022-10-05 22:04:29.795438	2022-10-05 22:04:29.795438	\N	173
2056	draba-verna	1	2022-10-05 22:04:29.801484	2022-10-05 22:04:29.801484	\N	174
2057	draba-verna	1	2022-10-05 22:04:29.808003	2022-10-05 22:04:29.808003	\N	176
2058	draba-verna	1	2022-10-05 22:04:29.813982	2022-10-05 22:04:29.813982	\N	180
2059	draba-verna	1	2022-10-05 22:04:29.819738	2022-10-05 22:04:29.819738	\N	186
2060	draba-verna	1	2022-10-05 22:04:29.826211	2022-10-05 22:04:29.826211	\N	1377
2061	draba-verna	1	2022-10-05 22:04:29.834286	2022-10-05 22:04:29.834286	\N	1708
2062	draba-verna	1	2022-10-05 22:04:29.841382	2022-10-05 22:04:29.841382	\N	192
2063	draba-verna	1	2022-10-05 22:04:29.848385	2022-10-05 22:04:29.848385	\N	195
2064	draba-verna	1	2022-10-05 22:04:29.854535	2022-10-05 22:04:29.854535	\N	196
2065	draba-verna	1	2022-10-05 22:04:29.861533	2022-10-05 22:04:29.861533	\N	200
2066	draba-verna	1	2022-10-05 22:04:29.868027	2022-10-05 22:04:29.868027	\N	211
2067	draba-verna	1	2022-10-05 22:04:29.874371	2022-10-05 22:04:29.874371	\N	1071
2068	draba-verna	1	2022-10-05 22:04:29.879969	2022-10-05 22:04:29.879969	\N	223
2069	draba-verna	1	2022-10-05 22:04:29.88534	2022-10-05 22:04:29.88534	\N	1078
2070	draba-verna	1	2022-10-05 22:04:29.890747	2022-10-05 22:04:29.890747	\N	1079
2071	draba-verna	1	2022-10-05 22:04:29.897192	2022-10-05 22:04:29.897192	\N	226
2072	draba-verna	1	2022-10-05 22:04:29.902787	2022-10-05 22:04:29.902787	\N	227
2073	draba-verna	1	2022-10-05 22:04:29.909085	2022-10-05 22:04:29.909085	\N	1084
2074	draba-verna	1	2022-10-05 22:04:29.915533	2022-10-05 22:04:29.915533	\N	230
2075	draba-verna	1	2022-10-05 22:04:29.921123	2022-10-05 22:04:29.921123	\N	231
2076	draba-verna	1	2022-10-05 22:04:29.926827	2022-10-05 22:04:29.926827	\N	233
2077	draba-verna	1	2022-10-05 22:04:29.932304	2022-10-05 22:04:29.932304	\N	1087
2078	draba-verna	1	2022-10-05 22:04:29.937847	2022-10-05 22:04:29.937847	\N	245
2079	draba-verna	1	2022-10-05 22:04:29.943689	2022-10-05 22:04:29.943689	\N	246
2080	draba-verna	1	2022-10-05 22:04:29.949184	2022-10-05 22:04:29.949184	\N	253
2081	draba-verna	1	2022-10-05 22:04:29.95412	2022-10-05 22:04:29.95412	\N	262
2082	draba-verna	1	2022-10-05 22:04:29.961928	2022-10-05 22:04:29.961928	\N	282
2083	draba-verna	0	2022-10-05 22:04:29.967256	2022-10-05 22:04:29.967256	\N	288
2084	draba-verna	1	2022-10-05 22:04:29.971854	2022-10-05 22:04:29.971854	\N	1801
2085	draba-verna	1	2022-10-05 22:04:29.982635	2022-10-05 22:04:29.982635	\N	311
2086	draba-verna	1	2022-10-05 22:04:29.987713	2022-10-05 22:04:29.987713	\N	1154
2087	draba-verna	1	2022-10-05 22:04:29.993098	2022-10-05 22:04:29.993098	\N	314
2088	draba-verna	1	2022-10-05 22:04:29.99808	2022-10-05 22:04:29.99808	\N	1157
2089	draba-verna	1	2022-10-05 22:04:30.004696	2022-10-05 22:04:30.004696	\N	315
2090	draba-verna	1	2022-10-05 22:04:30.010445	2022-10-05 22:04:30.010445	\N	317
2091	draba-verna	1	2022-10-05 22:04:30.015863	2022-10-05 22:04:30.015863	\N	318
2092	draba-verna	1	2022-10-05 22:04:30.020954	2022-10-05 22:04:30.020954	\N	319
2093	draba-verna	1	2022-10-05 22:04:30.026441	2022-10-05 22:04:30.026441	\N	334
2094	draba-verna	1	2022-10-05 22:04:30.032418	2022-10-05 22:04:30.032418	\N	1840
2095	draba-verna	1	2022-10-05 22:04:30.037706	2022-10-05 22:04:30.037706	\N	378
2096	draba-verna	1	2022-10-05 22:04:30.042947	2022-10-05 22:04:30.042947	\N	1212
2097	draba-verna	1	2022-10-05 22:04:30.048287	2022-10-05 22:04:30.048287	\N	392
2098	draba-verna	1	2022-10-05 22:04:30.053358	2022-10-05 22:04:30.053358	\N	395
2099	draba-verna	1	2022-10-05 22:04:30.058813	2022-10-05 22:04:30.058813	\N	1239
2100	draba-verna	1	2022-10-05 22:04:30.064057	2022-10-05 22:04:30.064057	\N	1240
2101	draba-verna	1	2022-10-05 22:04:30.068879	2022-10-05 22:04:30.068879	\N	1241
2102	draba-verna	1	2022-10-05 22:04:30.081338	2022-10-05 22:04:30.081338	\N	426
2103	draba-verna	1	2022-10-05 22:04:30.08791	2022-10-05 22:04:30.08791	\N	429
2104	draba-verna	1	2022-10-05 22:04:30.093858	2022-10-05 22:04:30.093858	\N	1257
2105	draba-verna	1	2022-10-05 22:04:30.099067	2022-10-05 22:04:30.099067	\N	445
2106	draba-verna	1	2022-10-05 22:04:30.104225	2022-10-05 22:04:30.104225	\N	1906
2107	draba-verna	1	2022-10-05 22:04:30.110672	2022-10-05 22:04:30.110672	\N	1274
2108	draba-verna	1	2022-10-05 22:04:30.118097	2022-10-05 22:04:30.118097	\N	454
2109	draba-verna	1	2022-10-05 22:04:30.125933	2022-10-05 22:04:30.125933	\N	455
2110	draba-verna	1	2022-10-05 22:04:30.131995	2022-10-05 22:04:30.131995	\N	456
2111	draba-verna	1	2022-10-05 22:04:30.137056	2022-10-05 22:04:30.137056	\N	458
2112	draba-verna	1	2022-10-05 22:04:30.144788	2022-10-05 22:04:30.144788	\N	470
2113	draba-verna	1	2022-10-05 22:04:30.151381	2022-10-05 22:04:30.151381	\N	480
2114	draba-verna	0	2022-10-05 22:04:30.157508	2022-10-05 22:04:30.157508	\N	481
2115	draba-verna	1	2022-10-05 22:04:30.163027	2022-10-05 22:04:30.163027	\N	482
2116	draba-verna	2	2022-10-05 22:04:30.168813	2022-10-05 22:04:30.168813	\N	1296
2117	draba-verna	1	2022-10-05 22:04:30.174279	2022-10-05 22:04:30.174279	\N	484
2118	draba-verna	1	2022-10-05 22:04:30.180976	2022-10-05 22:04:30.180976	\N	491
2119	draba-verna	1	2022-10-05 22:04:30.186668	2022-10-05 22:04:30.186668	\N	494
2120	draba-verna	1	2022-10-05 22:04:30.192331	2022-10-05 22:04:30.192331	\N	495
2121	draba-verna	1	2022-10-05 22:04:30.199131	2022-10-05 22:04:30.199131	\N	496
2122	draba-verna	1	2022-10-05 22:04:30.204824	2022-10-05 22:04:30.204824	\N	497
2123	draba-verna	1	2022-10-05 22:04:30.211331	2022-10-05 22:04:30.211331	\N	1313
2124	draba-verna	0	2022-10-05 22:04:30.217503	2022-10-05 22:04:30.217503	\N	500
2125	draba-verna	0	2022-10-05 22:04:30.22399	2022-10-05 22:04:30.22399	\N	546
2126	draba-verna	0	2022-10-05 22:04:30.229453	2022-10-05 22:04:30.229453	\N	548
2127	draba-verna	0	2022-10-05 22:04:30.235128	2022-10-05 22:04:30.235128	\N	549
2128	draba-verna	-999	2022-10-05 22:04:30.240646	2022-10-05 22:04:30.240646	\N	551
2129	draba-verna	0	2022-10-05 22:04:30.246621	2022-10-05 22:04:30.246621	\N	1972
2130	draba-verna	0	2022-10-05 22:04:30.252685	2022-10-05 22:04:30.252685	\N	556
2131	draba-verna	0	2022-10-05 22:04:30.258232	2022-10-05 22:04:30.258232	\N	557
2132	draba-verna	0	2022-10-05 22:04:30.264582	2022-10-05 22:04:30.264582	\N	561
2133	draba-verna	0	2022-10-05 22:04:30.269756	2022-10-05 22:04:30.269756	\N	564
2134	draba-verna	0	2022-10-05 22:04:30.27532	2022-10-05 22:04:30.27532	\N	1985
2135	draba-verna	1	2022-10-05 22:04:30.280556	2022-10-05 22:04:30.280556	\N	1986
2136	draba-verna	1	2022-10-05 22:04:30.286667	2022-10-05 22:04:30.286667	\N	566
2137	draba-verna	0	2022-10-05 22:04:30.292404	2022-10-05 22:04:30.292404	\N	1988
2138	draba-verna	0	2022-10-05 22:04:30.297947	2022-10-05 22:04:30.297947	\N	568
2139	draba-verna	1	2022-10-05 22:04:30.303082	2022-10-05 22:04:30.303082	\N	1991
2140	draba-verna	1	2022-10-05 22:04:30.309144	2022-10-05 22:04:30.309144	\N	27
2141	draba-verna	1	2022-10-05 22:04:30.315464	2022-10-05 22:04:30.315464	\N	31
2145	draba-verna	1	2022-10-05 22:04:30.341968	2022-10-05 22:04:30.341968	\N	57
2146	draba-verna	1	2022-10-05 22:04:30.351423	2022-10-05 22:04:30.351423	\N	1628
2147	draba-verna	1	2022-10-05 22:04:30.357669	2022-10-05 22:04:30.357669	\N	83
2148	draba-verna	1	2022-10-05 22:04:30.364272	2022-10-05 22:04:30.364272	\N	1634
2149	draba-verna	1	2022-10-05 22:04:30.370729	2022-10-05 22:04:30.370729	\N	1641
2150	draba-verna	1	2022-10-05 22:04:30.37761	2022-10-05 22:04:30.37761	\N	1642
2151	draba-verna	1	2022-10-05 22:04:30.383928	2022-10-05 22:04:30.383928	\N	92
2152	draba-verna	1	2022-10-05 22:04:30.390717	2022-10-05 22:04:30.390717	\N	95
2153	draba-verna	2	2022-10-05 22:04:30.397185	2022-10-05 22:04:30.397185	\N	107
2155	draba-verna	1	2022-10-05 22:04:30.409649	2022-10-05 22:04:30.409649	\N	156
2156	draba-verna	1	2022-10-05 22:04:30.415618	2022-10-05 22:04:30.415618	\N	1764
2157	draba-verna	1	2022-10-05 22:04:30.421075	2022-10-05 22:04:30.421075	\N	251
2158	draba-verna	1	2022-10-05 22:04:30.427376	2022-10-05 22:04:30.427376	\N	1785
2159	draba-verna	1	2022-10-05 22:04:30.432999	2022-10-05 22:04:30.432999	\N	1786
2160	draba-verna	1	2022-10-05 22:04:30.438559	2022-10-05 22:04:30.438559	\N	1858
2161	draba-verna	1	2022-10-05 22:04:30.444957	2022-10-05 22:04:30.444957	\N	425
2162	draba-verna	1	2022-10-05 22:04:30.450925	2022-10-05 22:04:30.450925	\N	1254
2163	draba-verna	1	2022-10-05 22:04:30.456932	2022-10-05 22:04:30.456932	\N	444
2165	draba-verna	1	2022-10-05 22:04:30.469268	2022-10-05 22:04:30.469268	\N	1270
2166	draba-verna	1	2022-10-05 22:04:30.475786	2022-10-05 22:04:30.475786	\N	1960
2167	draba-verna	1	2022-10-05 22:04:30.481493	2022-10-05 22:04:30.481493	\N	547
2168	draba-verna	1	2022-10-05 22:04:30.486527	2022-10-05 22:04:30.486527	\N	552
2169	draba-verna	1	2022-10-05 22:04:30.491831	2022-10-05 22:04:30.491831	\N	296
2171	arabidopsis-thaliana	1	2022-10-05 22:04:30.502377	2022-10-05 22:04:30.502377	\N	84
2172	arabidopsis-thaliana	2	2022-10-05 22:04:30.507611	2022-10-05 22:04:30.507611	\N	89
2174	draba-verna	-999	2022-10-05 22:04:30.518747	2022-10-05 22:04:30.518747	\N	58
2175	draba-verna	-999	2022-10-05 22:04:30.524054	2022-10-05 22:04:30.524054	\N	59
2176	draba-verna	-999	2022-10-05 22:04:30.529579	2022-10-05 22:04:30.529579	\N	64
2178	draba-verna	-999	2022-10-05 22:04:30.540801	2022-10-05 22:04:30.540801	\N	318
2179	draba-verna	-999	2022-10-05 22:04:30.54777	2022-10-05 22:04:30.54777	\N	317
2180	draba-verna	-999	2022-10-05 22:04:30.552953	2022-10-05 22:04:30.552953	\N	1157
2182	draba-verna	-999	2022-10-05 22:04:30.577962	2022-10-05 22:04:30.577962	\N	991
2183	draba-verna	-999	2022-10-05 22:04:30.583621	2022-10-05 22:04:30.583621	\N	127
2184	draba-verna	-999	2022-10-05 22:04:30.588972	2022-10-05 22:04:30.588972	\N	129
2185	draba-verna	-999	2022-10-05 22:04:30.595103	2022-10-05 22:04:30.595103	\N	134
2186	draba-verna	-999	2022-10-05 22:04:30.601691	2022-10-05 22:04:30.601691	\N	304
2187	draba-verna	-999	2022-10-05 22:04:30.607834	2022-10-05 22:04:30.607834	\N	309
2190	draba-verna	-999	2022-10-05 22:04:30.626682	2022-10-05 22:04:30.626682	\N	156
2191	draba-verna	-999	2022-10-05 22:04:30.633158	2022-10-05 22:04:30.633158	\N	155
2192	draba-verna	-999	2022-10-05 22:04:30.638334	2022-10-05 22:04:30.638334	\N	160
2195	draba-verna	-999	2022-10-05 22:04:30.657793	2022-10-05 22:04:30.657793	\N	1154
2196	arabidopsis-thaliana	0	2022-10-05 22:04:30.66457	2022-10-05 22:04:30.66457	\N	2196
2197	arabidopsis-thaliana	0	2022-10-05 22:04:30.670155	2022-10-05 22:04:30.670155	\N	1624
2198	arabidopsis-thaliana	0	2022-10-05 22:04:30.67583	2022-10-05 22:04:30.67583	\N	909
2199	arabidopsis-thaliana	0	2022-10-05 22:04:30.683619	2022-10-05 22:04:30.683619	\N	2199
2200	arabidopsis-thaliana	0	2022-10-05 22:04:30.688895	2022-10-05 22:04:30.688895	\N	954
2201	arabidopsis-thaliana	0	2022-10-05 22:04:30.69499	2022-10-05 22:04:30.69499	\N	2201
2202	arabidopsis-thaliana	0	2022-10-05 22:04:30.700317	2022-10-05 22:04:30.700317	\N	2202
2203	arabidopsis-thaliana	0	2022-10-05 22:04:30.705207	2022-10-05 22:04:30.705207	\N	1642
2204	arabidopsis-thaliana	0	2022-10-05 22:04:30.711709	2022-10-05 22:04:30.711709	\N	2204
2205	arabidopsis-thaliana	0	2022-10-05 22:04:30.717164	2022-10-05 22:04:30.717164	\N	2205
2206	arabidopsis-thaliana	0	2022-10-05 22:04:30.722255	2022-10-05 22:04:30.722255	\N	2206
2207	arabidopsis-thaliana	0	2022-10-05 22:04:30.728657	2022-10-05 22:04:30.728657	\N	1661
2208	arabidopsis-thaliana	-999	2022-10-05 22:04:30.734321	2022-10-05 22:04:30.734321	\N	2208
2209	arabidopsis-thaliana	-999	2022-10-05 22:04:30.740515	2022-10-05 22:04:30.740515	\N	2209
2210	arabidopsis-thaliana	0	2022-10-05 22:04:30.746843	2022-10-05 22:04:30.746843	\N	2210
2211	arabidopsis-thaliana	0	2022-10-05 22:04:30.752102	2022-10-05 22:04:30.752102	\N	1023
2212	arabidopsis-thaliana	0	2022-10-05 22:04:30.758404	2022-10-05 22:04:30.758404	\N	2212
2213	arabidopsis-thaliana	0	2022-10-05 22:04:30.766287	2022-10-05 22:04:30.766287	\N	2213
2214	arabidopsis-thaliana	0	2022-10-05 22:04:30.771709	2022-10-05 22:04:30.771709	\N	1377
2215	arabidopsis-thaliana	0	2022-10-05 22:04:30.778231	2022-10-05 22:04:30.778231	\N	1042
2216	arabidopsis-thaliana	-999	2022-10-05 22:04:30.784123	2022-10-05 22:04:30.784123	\N	2216
2217	arabidopsis-thaliana	-999	2022-10-05 22:04:30.789505	2022-10-05 22:04:30.789505	\N	2217
2218	arabidopsis-thaliana	0	2022-10-05 22:04:30.795477	2022-10-05 22:04:30.795477	\N	1074
2219	arabidopsis-thaliana	0	2022-10-05 22:04:30.80062	2022-10-05 22:04:30.80062	\N	1075
2220	arabidopsis-thaliana	0	2022-10-05 22:04:30.805457	2022-10-05 22:04:30.805457	\N	1079
2221	arabidopsis-thaliana	0	2022-10-05 22:04:30.810622	2022-10-05 22:04:30.810622	\N	1080
2222	arabidopsis-thaliana	0	2022-10-05 22:04:30.81612	2022-10-05 22:04:30.81612	\N	2222
2223	arabidopsis-thaliana	0	2022-10-05 22:04:30.821264	2022-10-05 22:04:30.821264	\N	1084
2224	arabidopsis-thaliana	0	2022-10-05 22:04:30.828886	2022-10-05 22:04:30.828886	\N	2224
2225	arabidopsis-thaliana	-999	2022-10-05 22:04:30.836545	2022-10-05 22:04:30.836545	\N	2225
2226	arabidopsis-thaliana	0	2022-10-05 22:04:30.843237	2022-10-05 22:04:30.843237	\N	1176
2227	arabidopsis-thaliana	-999	2022-10-05 22:04:30.849344	2022-10-05 22:04:30.849344	\N	1837
2228	arabidopsis-thaliana	-999	2022-10-05 22:04:30.855527	2022-10-05 22:04:30.855527	\N	1838
2229	arabidopsis-thaliana	0	2022-10-05 22:04:30.860522	2022-10-05 22:04:30.860522	\N	2229
2230	arabidopsis-thaliana	0	2022-10-05 22:04:30.865915	2022-10-05 22:04:30.865915	\N	442
2231	arabidopsis-thaliana	0	2022-10-05 22:04:30.871135	2022-10-05 22:04:30.871135	\N	1906
2232	arabidopsis-thaliana	0	2022-10-05 22:04:30.876358	2022-10-05 22:04:30.876358	\N	1907
2233	arabidopsis-thaliana	0	2022-10-05 22:04:30.882137	2022-10-05 22:04:30.882137	\N	1909
2234	arabidopsis-thaliana	0	2022-10-05 22:04:30.887424	2022-10-05 22:04:30.887424	\N	2234
2235	arabidopsis-thaliana	-999	2022-10-05 22:04:30.892931	2022-10-05 22:04:30.892931	\N	457
2236	arabidopsis-thaliana	0	2022-10-05 22:04:30.898868	2022-10-05 22:04:30.898868	\N	1313
2237	arabidopsis-thaliana	0	2022-10-05 22:04:30.905648	2022-10-05 22:04:30.905648	\N	1323
2238	arabidopsis-thaliana	0	2022-10-05 22:04:30.911852	2022-10-05 22:04:30.911852	\N	1326
2239	arabidopsis-thaliana	0	2022-10-05 22:04:30.918412	2022-10-05 22:04:30.918412	\N	2239
2241	draba-verna	2	2022-10-05 22:04:30.930025	2022-10-05 22:04:30.930025	\N	58
2242	draba-verna	2	2022-10-05 22:04:30.936309	2022-10-05 22:04:30.936309	\N	59
2243	draba-verna	2	2022-10-05 22:04:30.941654	2022-10-05 22:04:30.941654	\N	60
2244	draba-verna	1	2022-10-05 22:04:30.957235	2022-10-05 22:04:30.957235	\N	64
2245	draba-verna	1	2022-10-05 22:04:30.962965	2022-10-05 22:04:30.962965	\N	126
2246	draba-verna	1	2022-10-05 22:04:30.973285	2022-10-05 22:04:30.973285	\N	127
2247	draba-verna	2	2022-10-05 22:04:30.979898	2022-10-05 22:04:30.979898	\N	991
2248	draba-verna	2	2022-10-05 22:04:30.985789	2022-10-05 22:04:30.985789	\N	129
2249	draba-verna	1	2022-10-05 22:04:30.992106	2022-10-05 22:04:30.992106	\N	134
2250	draba-verna	1	2022-10-05 22:04:30.997988	2022-10-05 22:04:30.997988	\N	155
2251	draba-verna	2	2022-10-05 22:04:31.003976	2022-10-05 22:04:31.003976	\N	156
2252	draba-verna	1	2022-10-05 22:04:31.010523	2022-10-05 22:04:31.010523	\N	159
2253	draba-verna	1	2022-10-05 22:04:31.016647	2022-10-05 22:04:31.016647	\N	160
2254	draba-verna	1	2022-10-05 22:04:31.023532	2022-10-05 22:04:31.023532	\N	163
2255	draba-verna	1	2022-10-05 22:04:31.02916	2022-10-05 22:04:31.02916	\N	304
2256	draba-verna	1	2022-10-05 22:04:31.035067	2022-10-05 22:04:31.035067	\N	305
2257	draba-verna	1	2022-10-05 22:04:31.0405	2022-10-05 22:04:31.0405	\N	309
2258	draba-verna	1	2022-10-05 22:04:31.047769	2022-10-05 22:04:31.047769	\N	310
2259	draba-verna	2	2022-10-05 22:04:31.053557	2022-10-05 22:04:31.053557	\N	311
2260	draba-verna	2	2022-10-05 22:04:31.071204	2022-10-05 22:04:31.071204	\N	314
2261	draba-verna	2	2022-10-05 22:04:31.077858	2022-10-05 22:04:31.077858	\N	1157
2262	draba-verna	2	2022-10-05 22:04:31.083615	2022-10-05 22:04:31.083615	\N	315
2263	draba-verna	2	2022-10-05 22:04:31.088954	2022-10-05 22:04:31.088954	\N	317
2264	draba-verna	2	2022-10-05 22:04:31.094328	2022-10-05 22:04:31.094328	\N	318
\.


--
-- Data for Name: seeds_plant_samples; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.seeds_plant_samples (id, seed_id, plant_sample_id) FROM stdin;
1	1562	1
2	1566	5
3	1567	6
4	1998	7
5	1568	8
6	1569	9
7	2000	10
8	1570	11
9	1571	12
10	1572	13
11	1573	14
12	1574	15
13	2004	16
14	1575	17
15	1576	18
16	1577	19
17	1578	20
18	1579	21
19	1580	22
20	1583	23
21	1584	24
22	1585	25
23	1586	26
24	1586	27
25	1587	28
26	2140	29
27	1589	30
28	2141	32
29	2141	33
30	1591	34
31	1591	35
32	1592	36
33	1594	39
34	1594	40
35	1595	41
36	1596	42
37	1597	43
38	1598	44
39	1599	45
40	1600	46
41	1601	47
42	1602	48
43	1603	49
44	1605	50
45	1606	51
46	1606	52
47	1607	53
48	1609	54
49	1611	55
50	1613	56
51	2145	58
52	2145	59
53	2241	60
54	2242	61
55	2243	62
56	1620	63
57	2244	64
58	2244	65
59	1622	66
60	1623	67
61	1623	68
62	1624	69
63	1625	70
64	1626	71
65	2032	72
66	2146	74
67	2146	75
68	2033	76
69	2147	77
70	2147	78
71	1632	79
72	2148	82
73	2148	83
74	2148	84
75	1635	85
76	2035	87
77	1637	88
78	1637	89
79	1638	90
80	1638	91
81	1639	92
82	1639	93
83	1640	94
84	1640	95
85	2149	96
86	2149	97
87	2150	98
88	2150	99
89	1643	100
90	2151	101
91	1644	102
92	1645	103
93	2152	104
94	2152	105
95	2038	106
96	1647	107
97	1648	108
98	1648	109
99	1649	110
100	1650	111
101	1651	112
102	1652	113
103	2153	115
104	1653	116
105	2153	116
106	1653	117
107	2153	117
108	1654	118
109	1655	119
110	1656	120
111	2245	121
112	2246	122
113	2247	123
114	1657	124
115	2248	125
116	1658	126
117	1659	127
118	1660	128
119	1661	129
120	1662	130
121	2249	131
122	2249	132
123	1663	133
124	1664	134
125	1665	135
126	1666	136
127	1667	137
128	1668	138
129	1669	139
130	1670	140
131	1671	141
132	1672	142
133	1673	143
134	1673	144
135	1675	145
136	1676	146
137	1676	147
138	1677	148
139	1678	149
140	1679	150
141	1680	151
142	1681	152
143	1682	153
144	1683	154
145	1684	155
146	1685	156
147	2250	157
148	2155	158
149	2155	159
150	1686	160
151	1686	161
152	1687	162
153	2252	163
154	2253	164
155	1688	165
156	2052	166
157	2254	167
158	2053	168
159	1690	169
160	1691	170
161	1692	171
162	1693	172
163	1694	173
164	1695	174
165	1696	175
166	1697	176
167	1698	177
168	1699	178
169	1700	179
170	1701	180
171	1702	181
172	1704	182
173	1705	183
174	1707	184
175	1708	185
176	1709	186
177	1710	187
178	1711	188
179	1712	189
180	1713	190
181	1714	191
182	1715	192
183	1716	193
184	1717	195
185	1718	196
186	1719	197
187	1720	198
188	1722	199
189	1723	200
190	1725	201
191	1726	202
192	1727	203
193	2066	204
194	1728	205
195	1729	207
196	1730	209
197	1731	210
198	2067	211
199	1733	212
200	1734	213
201	1735	214
202	1736	215
203	1737	216
204	1738	217
205	1739	218
206	1740	219
207	1741	220
208	1742	221
209	1743	223
210	1744	224
211	1745	225
212	1745	226
213	1746	227
214	1747	228
215	1748	229
216	1749	230
217	1751	232
218	1751	233
219	1752	234
220	1755	236
221	1756	237
222	1757	238
223	1758	239
224	1759	240
225	1762	241
226	1763	242
227	1763	243
228	2156	244
229	2156	245
230	1765	246
231	2157	247
232	2157	248
233	1767	249
234	1768	250
235	1769	251
236	1770	252
237	1771	253
238	1772	254
239	1773	255
240	1774	256
241	1775	257
242	1776	258
243	1777	260
244	1778	261
245	1778	262
246	1779	263
247	1779	264
248	1780	265
249	1781	267
250	1782	268
251	1783	269
252	1783	270
253	1784	271
254	1784	272
255	2158	273
256	2158	274
257	2159	275
258	2159	276
259	1787	277
260	1788	278
261	1789	281
262	1791	282
263	1791	283
264	1792	286
265	2169	287
266	1794	288
267	1796	290
268	1798	291
269	1799	292
270	1800	293
271	1801	294
272	1802	295
273	1803	296
274	1804	297
275	2255	298
276	2256	299
277	1805	300
278	1806	301
279	2257	303
280	2258	304
281	2259	305
282	1808	306
283	1812	307
284	1812	308
285	1813	309
286	1814	310
287	1815	311
288	1817	312
289	1818	313
290	1819	314
291	1820	315
292	1821	316
293	1822	317
294	2087	318
295	2261	319
296	2089	320
297	2262	321
298	2263	323
299	2264	324
300	1823	325
301	1824	326
302	1825	327
303	1826	328
304	1827	329
305	1828	330
306	1829	331
307	1830	332
308	1832	334
309	1833	335
310	1834	336
311	1835	337
312	1836	338
313	1838	339
314	1839	340
315	1840	341
316	1841	342
317	1843	343
318	1844	344
319	1845	345
320	1846	346
321	1847	347
322	1847	348
323	1849	351
324	1850	352
325	1851	353
326	1852	354
327	1854	355
328	1855	356
329	1856	357
330	2160	358
331	1860	359
332	1861	360
333	1862	361
334	1863	362
335	1864	363
336	1864	364
337	1865	365
338	1866	366
339	1867	367
340	1868	368
341	1868	369
342	1869	370
343	1870	372
344	1871	373
345	1872	374
346	1873	375
347	1874	376
348	1875	377
349	1876	378
350	1877	379
351	2161	380
352	1879	381
353	1880	382
354	1881	383
355	1882	384
356	1885	385
357	1886	386
358	2162	387
359	2162	388
360	1888	391
361	1889	392
362	1890	393
363	1891	394
364	1892	395
365	1893	396
366	1896	397
367	2163	398
368	2163	399
369	1899	400
370	1904	401
371	1904	402
372	2165	403
373	2165	404
374	1906	405
375	1910	407
376	1911	408
377	1912	410
378	1913	411
379	1916	414
380	1917	415
381	1918	416
382	1920	417
383	1921	418
384	1922	419
385	1923	420
386	1923	421
387	1924	422
388	2116	423
389	1926	427
390	1927	428
391	1928	429
392	1929	430
393	1930	431
394	1932	433
395	1933	435
396	1934	436
397	1935	437
398	1936	438
399	1937	439
400	1938	440
401	1939	442
402	1941	443
403	1942	444
404	1943	445
405	1943	446
406	1944	447
407	1945	448
408	1946	450
409	1947	451
410	1948	453
411	1949	454
412	1950	455
413	1952	457
414	1955	458
415	1956	460
416	1957	462
417	2166	463
418	2166	464
419	1961	465
420	1961	466
421	2167	467
422	2167	468
423	1963	469
424	1964	470
425	1964	471
426	1966	472
427	1966	474
428	2168	475
429	2168	476
430	1968	477
431	1969	478
432	1972	479
433	1974	480
434	1975	481
435	1976	482
436	1977	484
437	1978	485
438	1979	486
439	1982	487
440	1983	488
441	1985	490
442	1986	491
443	1987	492
444	1988	493
445	1990	494
446	1991	495
447	1567	496
448	1997	496
449	1568	497
450	1998	497
451	1569	498
452	1999	498
453	1570	499
454	2000	499
455	1571	500
456	2001	500
457	1575	501
458	2005	501
459	1577	502
460	2007	502
461	1579	503
462	2009	503
463	1580	504
464	2010	504
465	1583	505
466	2011	505
467	1584	506
468	2012	506
469	1585	507
470	2013	507
471	1586	508
472	1590	509
473	2141	509
474	1591	510
475	1592	511
476	2014	511
477	1595	512
478	1598	513
479	2017	513
480	1600	514
481	2019	514
482	1601	515
483	2020	515
484	1602	516
485	2021	516
486	1605	517
487	2023	517
488	1611	518
489	2026	518
490	1613	519
491	2027	519
492	1629	520
493	2033	520
494	1631	521
495	2147	521
496	1632	522
497	1634	523
498	2148	523
499	1635	524
500	2034	524
501	1638	525
502	1639	526
503	1640	527
504	1642	528
505	2150	528
506	1643	529
507	2151	529
508	1644	530
509	2036	530
510	1654	531
511	2040	531
512	1655	532
513	1656	533
514	1659	534
515	2043	534
516	1660	535
517	1661	536
518	1663	537
519	1664	538
520	1665	539
521	1666	540
522	2045	540
523	1667	541
524	2046	541
525	1669	542
526	2048	542
527	1670	543
528	2049	543
529	1671	544
530	1691	545
531	1694	546
532	1695	547
533	1697	548
534	2056	548
535	1699	549
536	2057	549
537	1700	550
538	2058	550
539	1701	551
540	1702	552
541	1705	553
542	2060	553
543	1707	554
544	1708	555
545	2061	555
546	1709	556
547	1710	557
548	1711	558
549	2062	558
550	1712	559
551	1713	560
552	1714	561
553	2063	561
554	1715	562
555	2064	562
556	1716	563
557	1717	564
558	1718	565
559	1719	566
560	2065	566
561	1720	567
562	1732	568
563	2067	568
564	1733	569
565	1734	570
566	1735	571
567	2068	571
568	1736	572
569	1737	573
570	2069	573
571	1738	574
572	2070	574
573	1739	575
574	2071	575
575	1740	576
576	2072	576
577	1742	577
578	2073	577
579	1744	578
580	2075	578
581	1745	579
582	1747	580
583	1748	581
584	1750	582
585	1751	583
586	1755	584
587	1756	585
588	2078	585
589	1757	586
590	2079	586
591	1759	587
592	1762	588
593	1763	589
594	1764	590
595	2156	590
596	1765	591
597	1766	592
598	2157	592
599	1768	593
600	2080	593
601	1769	594
602	1771	595
603	1772	596
604	1773	597
605	1774	598
606	1775	599
607	1776	600
608	1777	601
609	1778	602
610	1779	603
611	1780	604
612	1781	605
613	1783	606
614	1785	607
615	2158	607
616	1786	608
617	2159	608
618	1839	609
619	1840	610
620	2094	610
621	1841	611
622	1843	612
623	1844	613
624	1845	614
625	1846	615
626	1847	616
627	1850	617
628	1852	618
629	2095	618
630	1854	619
631	2096	619
632	1855	620
633	1858	621
634	2160	621
635	1860	622
636	2097	622
637	1862	623
638	2098	623
639	1863	624
640	1864	625
641	1865	626
642	1866	627
643	1868	628
644	1869	629
645	1870	630
646	1872	631
647	1874	632
648	2100	632
649	1875	633
650	1876	634
651	2101	634
652	1879	635
653	2102	635
654	1880	636
655	1881	637
656	2103	637
657	1882	638
658	1885	639
659	1888	640
660	1889	641
661	2104	641
662	1890	642
663	1891	643
664	1896	644
665	1904	645
666	1911	646
667	1914	647
668	1917	648
669	2109	648
670	1921	649
671	2112	649
672	1922	650
673	2113	650
674	1923	651
675	2114	651
676	1924	652
677	2115	652
678	1926	653
679	1927	654
680	1928	655
681	2117	655
682	1932	656
683	2118	656
684	1933	657
685	1934	658
686	1935	659
687	2119	659
688	1936	660
689	2120	660
690	1937	661
691	2121	661
692	1938	662
693	2122	662
694	1939	663
695	1941	664
696	1943	665
697	2124	665
698	1945	666
699	1946	667
700	1947	668
701	1948	669
702	1949	670
703	1950	671
704	1952	672
705	1955	673
706	1956	674
707	1957	675
708	1960	676
709	2166	676
710	1961	677
711	2125	677
712	1962	678
713	2167	678
714	1964	679
715	2127	679
716	1966	680
717	2128	680
718	1967	681
719	2168	681
720	1969	682
721	1972	683
722	2129	683
723	1978	684
724	1979	685
725	2132	685
726	1622	686
727	1648	687
728	1649	688
729	1650	689
730	1652	690
731	1675	691
732	1676	692
733	1677	693
734	1678	694
735	1679	695
736	1680	696
737	1682	697
738	1683	698
739	1687	699
740	1689	700
741	2052	700
742	1796	701
743	1799	702
744	1800	703
745	1801	704
746	2084	704
747	1802	705
748	1803	706
749	1806	707
750	1817	708
751	1818	709
752	1822	710
753	2086	710
754	2195	710
755	1824	711
756	1825	712
757	1826	713
758	1827	714
759	2093	714
760	1828	715
761	1829	716
762	1831	717
763	1992	717
764	1832	718
765	1833	719
766	1834	720
767	1835	721
768	1836	722
769	1838	723
770	1990	724
771	2138	724
772	1991	725
773	2139	725
774	1566	726
775	1996	726
776	1567	727
777	1997	727
778	1568	728
779	1998	728
780	1569	729
781	1999	729
782	1574	730
783	2004	730
784	1576	731
785	2006	731
786	1577	732
787	2007	732
788	1578	733
789	2008	733
790	1579	734
791	2009	734
792	1580	735
793	2010	735
794	1583	736
795	2011	736
796	1585	737
797	2013	737
798	1586	738
799	1590	739
800	2141	739
801	1591	740
802	1592	741
803	2014	741
804	1594	742
805	1595	743
806	1597	744
807	2016	744
808	1598	745
809	2017	745
810	1599	746
811	2018	746
812	1602	747
813	2021	747
814	1625	748
815	1628	749
816	2146	749
817	1629	750
818	2033	750
819	1631	751
820	2147	751
821	1632	752
822	1634	753
823	2148	753
824	1640	754
825	1643	755
826	2151	755
827	1646	756
828	2152	756
829	1655	757
830	1656	758
831	1657	759
832	1659	760
833	2043	760
834	1660	761
835	1661	762
836	1663	763
837	1664	764
838	1665	765
839	1667	766
840	2046	766
841	1669	767
842	2048	767
843	1670	768
844	2049	768
845	1671	769
846	1691	770
847	1694	771
848	1696	772
849	2055	772
850	1700	773
851	2058	773
852	1702	774
853	1704	775
854	2059	775
855	1707	776
856	1708	777
857	2061	777
858	1709	778
859	1710	779
860	1711	780
861	2062	780
862	1712	781
863	1713	782
864	1714	783
865	2063	783
866	1715	784
867	2064	784
868	1716	785
869	1717	786
870	1719	787
871	2065	787
872	1720	788
873	1722	789
874	1725	790
875	1727	791
876	1729	792
877	1730	793
878	1731	794
879	1732	795
880	2067	795
881	1733	796
882	1734	797
883	1735	798
884	2068	798
885	1736	799
886	1737	800
887	2069	800
888	1738	801
889	2070	801
890	1739	802
891	2071	802
892	1740	803
893	2072	803
894	1742	804
895	2073	804
896	1745	805
897	1747	806
898	1748	807
899	1749	808
900	2077	808
901	1750	809
902	1751	810
903	1755	811
904	1756	812
905	2078	812
906	1757	813
907	2079	813
908	1758	814
909	1759	815
910	1762	816
911	1765	817
912	1766	818
913	2157	818
914	1767	819
915	1769	820
916	1770	821
917	2081	821
918	1772	822
919	1773	823
920	1774	824
921	1775	825
922	1776	826
923	1777	827
924	1780	828
925	1781	829
926	1782	830
927	2082	830
928	1783	831
929	1784	832
930	1785	833
931	2158	833
932	1786	834
933	2159	834
934	1787	835
935	1789	836
936	1839	837
937	1840	838
938	2094	838
939	1841	839
940	1843	840
941	1844	841
942	1845	842
943	1846	843
944	1847	844
945	1848	845
946	1850	846
947	1852	847
948	2095	847
949	1854	848
950	2096	848
951	1858	849
952	2160	849
953	1860	850
954	2097	850
955	1862	851
956	2098	851
957	1863	852
958	1867	853
959	1868	854
960	1869	855
961	1870	856
962	1871	857
963	1872	858
964	1873	859
965	2099	859
966	1875	860
967	1876	861
968	2101	861
969	1877	862
970	1879	863
971	2102	863
972	1880	864
973	1881	865
974	2103	865
975	1885	866
976	1888	867
977	1889	868
978	2104	868
979	1890	869
980	1891	870
981	1904	871
982	1910	872
983	1911	873
984	1914	874
985	1921	875
986	2112	875
987	1926	876
988	1927	877
989	1930	878
990	1932	879
991	2118	879
992	1933	880
993	1934	881
994	1935	882
995	2119	882
996	1936	883
997	2120	883
998	1937	884
999	2121	884
1000	1938	885
1001	2122	885
1002	1939	886
1003	1941	887
1004	1942	888
1005	2123	888
1006	1943	889
1007	2124	889
1008	1945	890
1009	1946	891
1010	1947	892
1011	1948	893
1012	1949	894
1013	1950	895
1014	1952	896
1015	1956	897
1016	1960	898
1017	2166	898
1018	1961	899
1019	2125	899
1020	1962	900
1021	2167	900
1022	1964	901
1023	2127	901
1024	1966	902
1025	2128	902
1026	1967	903
1027	2168	903
1028	1968	904
1029	1969	905
1030	1972	906
1031	2129	906
1032	1977	907
1033	1978	908
1034	1982	909
1035	2133	909
1036	1983	910
1037	1987	911
1038	2136	911
1039	1620	912
1040	1623	913
1041	1649	914
1042	1650	915
1043	1651	916
1044	2039	916
1045	1652	917
1046	1653	918
1047	2153	918
1048	1675	919
1049	1676	920
1050	1677	921
1051	1678	922
1052	1679	923
1053	1688	924
1054	1689	925
1055	2052	925
1056	1794	926
1057	1796	927
1058	1798	928
1059	1799	929
1060	1800	930
1061	1801	931
1062	2084	931
1063	1802	932
1064	1803	933
1065	1804	934
1066	1806	935
1067	1814	936
1068	1817	937
1069	1822	938
1070	2086	938
1071	2195	938
1072	1824	939
1073	1825	940
1074	1826	941
1075	1827	942
1076	2093	942
1077	1828	943
1078	1829	944
1079	1831	945
1080	1992	945
1081	1832	946
1082	1833	947
1083	1834	948
1084	1835	949
1085	1836	950
1086	1838	951
1087	1562	952
1088	1995	952
1089	1562	953
1090	1995	953
1091	1566	954
1092	1996	954
1093	1566	955
1094	1996	955
1095	1567	956
1096	1997	956
1097	1567	957
1098	1997	957
1099	1568	958
1100	1998	958
1101	1568	959
1102	1998	959
1103	1569	960
1104	1999	960
1105	1569	961
1106	1999	961
1107	1570	962
1108	2000	962
1109	1570	963
1110	2000	963
1111	1571	964
1112	2001	964
1113	1571	965
1114	2001	965
1115	1572	966
1116	2002	966
1117	1572	967
1118	2002	967
1119	1573	968
1120	2003	968
1121	1573	969
1122	2003	969
1123	1574	970
1124	2004	970
1125	1574	971
1126	2004	971
1127	1576	972
1128	2006	972
1129	1576	973
1130	2006	973
1131	1577	974
1132	2007	974
1133	1577	975
1134	2007	975
1135	1578	976
1136	2008	976
1137	1578	977
1138	2008	977
1139	1579	978
1140	2009	978
1141	1579	979
1142	2009	979
1143	1580	980
1144	2010	980
1145	1580	981
1146	2010	981
1147	1583	982
1148	2011	982
1149	1583	983
1150	2011	983
1151	1584	984
1152	2012	984
1153	1584	985
1154	2012	985
1155	1585	986
1156	2013	986
1157	1585	987
1158	2013	987
1159	1586	988
1160	1586	989
1161	1590	990
1162	2141	990
1163	1590	991
1164	2141	991
1165	1591	992
1166	1591	993
1167	1592	994
1168	2014	994
1169	1592	995
1170	2014	995
1171	1593	996
1172	1593	997
1173	1594	998
1174	1594	999
1175	1595	1000
1176	1595	1001
1177	1596	1002
1178	2015	1002
1179	1596	1003
1180	2015	1003
1181	1597	1004
1182	2016	1004
1183	1597	1005
1184	2016	1005
1185	1598	1006
1186	2017	1006
1187	1598	1007
1188	2017	1007
1189	1599	1008
1190	2018	1008
1191	1599	1009
1192	2018	1009
1193	1600	1010
1194	2019	1010
1195	1600	1011
1196	2019	1011
1197	1601	1012
1198	2020	1012
1199	1601	1013
1200	2020	1013
1201	1602	1014
1202	2021	1014
1203	1602	1015
1204	2021	1015
1205	1603	1016
1206	2022	1016
1207	1603	1017
1208	2022	1017
1209	1605	1018
1210	2023	1018
1211	1605	1019
1212	2023	1019
1213	1606	1020
1214	1606	1021
1215	1607	1022
1216	2024	1022
1217	1607	1023
1218	2024	1023
1219	1609	1024
1220	2025	1024
1221	1609	1025
1222	2025	1025
1223	1611	1026
1224	2026	1026
1225	1611	1027
1226	2026	1027
1227	1613	1028
1228	2027	1028
1229	1613	1029
1230	2027	1029
1231	2145	1030
1232	2145	1031
1233	2028	1032
1234	2174	1032
1235	2241	1032
1236	2028	1033
1237	2174	1033
1238	2241	1033
1239	2029	1034
1240	2175	1034
1241	2242	1034
1242	2029	1035
1243	2175	1035
1244	2242	1035
1245	2030	1036
1246	2243	1036
1247	2030	1037
1248	2243	1037
1249	1620	1038
1250	1620	1039
1251	2176	1040
1252	2244	1040
1253	2176	1041
1254	2244	1041
1255	1623	1042
1256	1623	1043
1257	1625	1044
1258	1625	1045
1259	1626	1046
1260	2031	1046
1261	1626	1047
1262	2031	1047
1263	1627	1048
1264	2032	1048
1265	1627	1049
1266	2032	1049
1267	1628	1050
1268	2146	1050
1269	1628	1051
1270	2146	1051
1271	1629	1052
1272	2033	1052
1273	1629	1053
1274	2033	1053
1275	1631	1054
1276	2147	1054
1277	1631	1055
1278	2147	1055
1279	1632	1056
1280	1632	1057
1281	1633	1058
1282	1633	1059
1283	1634	1060
1284	2148	1060
1285	1634	1061
1286	2148	1061
1287	1635	1062
1288	2034	1062
1289	1635	1063
1290	2034	1063
1291	1636	1064
1292	2035	1064
1293	1636	1065
1294	2035	1065
1295	1637	1066
1296	1637	1067
1297	1638	1068
1298	1638	1069
1299	1639	1070
1300	1639	1071
1301	1640	1072
1302	1640	1073
1303	1641	1074
1304	2149	1074
1305	1641	1075
1306	2149	1075
1307	1642	1076
1308	2150	1076
1309	1642	1077
1310	2150	1077
1311	1643	1078
1312	2151	1078
1313	1643	1079
1314	2151	1079
1315	1644	1080
1316	2036	1080
1317	1644	1081
1318	2036	1081
1319	1645	1082
1320	2037	1082
1321	1645	1083
1322	2037	1083
1323	1646	1084
1324	2152	1084
1325	1646	1085
1326	2152	1085
1327	1647	1086
1328	2038	1086
1329	1647	1087
1330	2038	1087
1331	1648	1088
1332	1648	1089
1333	1649	1090
1334	1649	1091
1335	1650	1092
1336	1650	1093
1337	1651	1094
1338	2039	1094
1339	1651	1095
1340	2039	1095
1341	1652	1096
1342	1652	1097
1343	1653	1098
1344	2153	1098
1345	1653	1099
1346	2153	1099
1347	1654	1100
1348	2040	1100
1349	1654	1101
1350	2040	1101
1351	1655	1102
1352	1655	1103
1353	1656	1104
1354	1656	1105
1355	2245	1106
1356	2245	1107
1357	2183	1108
1358	2246	1108
1359	2183	1109
1360	2246	1109
1361	2041	1110
1362	2182	1110
1363	2247	1110
1364	2041	1111
1365	2182	1111
1366	2247	1111
1367	1657	1112
1368	1657	1113
1369	2042	1114
1370	2184	1114
1371	2248	1114
1372	2042	1115
1373	2184	1115
1374	2248	1115
1375	1658	1116
1376	1658	1117
1377	1659	1118
1378	2043	1118
1379	1659	1119
1380	2043	1119
1381	1660	1120
1382	1660	1121
1383	1661	1122
1384	1661	1123
1385	1662	1124
1386	2044	1124
1387	1662	1125
1388	2044	1125
1389	2185	1126
1390	2249	1126
1391	2185	1127
1392	2249	1127
1393	1663	1128
1394	1663	1129
1395	1664	1130
1396	1664	1131
1397	1665	1132
1398	1665	1133
1399	1666	1134
1400	2045	1134
1401	1666	1135
1402	2045	1135
1403	1667	1136
1404	2046	1136
1405	1667	1137
1406	2046	1137
1407	1668	1138
1408	2047	1138
1409	1668	1139
1410	2047	1139
1411	1669	1140
1412	2048	1140
1413	1669	1141
1414	2048	1141
1415	1670	1142
1416	2049	1142
1417	1670	1143
1418	2049	1143
1419	1671	1144
1420	1671	1145
1421	1672	1146
1422	1672	1147
1423	1673	1148
1424	1673	1149
1425	1675	1150
1426	1675	1151
1427	1676	1152
1428	1676	1153
1429	1677	1154
1430	1677	1155
1431	1678	1156
1432	1678	1157
1433	1679	1158
1434	1679	1159
1435	1680	1160
1436	1680	1161
1437	1681	1162
1438	1681	1163
1439	1682	1164
1440	1682	1165
1441	1683	1166
1442	1683	1167
1443	1684	1168
1444	2050	1168
1445	1684	1169
1446	2050	1169
1447	2191	1170
1448	2250	1170
1449	2191	1171
1450	2250	1171
1451	2155	1172
1452	2190	1172
1453	2251	1172
1454	2155	1173
1455	2190	1173
1456	2251	1173
1457	2252	1174
1458	2252	1175
1459	2192	1176
1460	2253	1176
1461	2192	1177
1462	2253	1177
1463	1688	1178
1464	1688	1179
1465	1689	1180
1466	2052	1180
1467	1689	1181
1468	2052	1181
1469	2254	1182
1470	2254	1183
1471	1690	1184
1472	2053	1184
1473	1690	1185
1474	2053	1185
1475	1691	1186
1476	1691	1187
1477	1692	1188
1478	1692	1189
1479	1693	1190
1480	2054	1190
1481	1693	1191
1482	2054	1191
1483	1694	1192
1484	1694	1193
1485	1695	1194
1486	1695	1195
1487	1696	1196
1488	2055	1196
1489	1696	1197
1490	2055	1197
1491	1697	1198
1492	2056	1198
1493	1697	1199
1494	2056	1199
1495	1699	1200
1496	2057	1200
1497	1699	1201
1498	2057	1201
1499	1700	1202
1500	2058	1202
1501	1700	1203
1502	2058	1203
1503	1701	1204
1504	1701	1205
1505	1702	1206
1506	1702	1207
1507	1704	1208
1508	2059	1208
1509	1704	1209
1510	2059	1209
1511	1705	1210
1512	2060	1210
1513	1705	1211
1514	2060	1211
1515	1707	1212
1516	1707	1213
1517	1708	1214
1518	2061	1214
1519	1708	1215
1520	2061	1215
1521	1709	1216
1522	1709	1217
1523	1710	1218
1524	1710	1219
1525	1711	1220
1526	2062	1220
1527	1711	1221
1528	2062	1221
1529	1712	1222
1530	1712	1223
1531	1713	1224
1532	1713	1225
1533	1714	1226
1534	2063	1226
1535	1714	1227
1536	2063	1227
1537	1715	1228
1538	2064	1228
1539	1715	1229
1540	2064	1229
1541	1716	1230
1542	1716	1231
1543	1717	1232
1544	1717	1233
1545	1718	1234
1546	1718	1235
1547	1719	1236
1548	2065	1236
1549	1719	1237
1550	2065	1237
1551	1720	1238
1552	1720	1239
1553	1722	1240
1554	1722	1241
1555	1725	1242
1556	1725	1243
1557	1726	1244
1558	1726	1245
1559	1727	1246
1560	1727	1247
1561	1728	1248
1562	2066	1248
1563	1728	1249
1564	2066	1249
1565	1729	1250
1566	1729	1251
1567	1730	1252
1568	1730	1253
1569	1731	1254
1570	1731	1255
1571	1732	1256
1572	2067	1256
1573	1732	1257
1574	2067	1257
1575	1733	1258
1576	1733	1259
1577	1734	1260
1578	1734	1261
1579	1735	1262
1580	2068	1262
1581	1735	1263
1582	2068	1263
1583	1736	1264
1584	1736	1265
1585	1737	1266
1586	2069	1266
1587	1737	1267
1588	2069	1267
1589	1738	1268
1590	2070	1268
1591	1738	1269
1592	2070	1269
1593	1739	1270
1594	2071	1270
1595	1739	1271
1596	2071	1271
1597	1740	1272
1598	2072	1272
1599	1740	1273
1600	2072	1273
1601	1742	1274
1602	2073	1274
1603	1742	1275
1604	2073	1275
1605	1743	1276
1606	2074	1276
1607	1743	1277
1608	2074	1277
1609	1744	1278
1610	2075	1278
1611	1744	1279
1612	2075	1279
1613	1745	1280
1614	1745	1281
1615	1746	1282
1616	2076	1282
1617	1746	1283
1618	2076	1283
1619	1747	1284
1620	1747	1285
1621	1748	1286
1622	1748	1287
1623	1749	1288
1624	2077	1288
1625	1749	1289
1626	2077	1289
1627	1750	1290
1628	1750	1291
1629	1751	1292
1630	1751	1293
1631	1752	1294
1632	1752	1295
1633	1753	1296
1634	1753	1297
1635	1755	1298
1636	1755	1299
1637	1756	1300
1638	2078	1300
1639	1756	1301
1640	2078	1301
1641	1757	1302
1642	2079	1302
1643	1757	1303
1644	2079	1303
1645	1758	1304
1646	1758	1305
1647	1759	1306
1648	1759	1307
1649	1762	1308
1650	1762	1309
1651	1763	1310
1652	1763	1311
1653	1764	1312
1654	2156	1312
1655	1764	1313
1656	2156	1313
1657	1765	1314
1658	1765	1315
1659	1766	1316
1660	2157	1316
1661	1766	1317
1662	2157	1317
1663	1767	1318
1664	1767	1319
1665	1768	1320
1666	2080	1320
1667	1768	1321
1668	2080	1321
1669	1769	1322
1670	1769	1323
1671	1770	1324
1672	2081	1324
1673	1770	1325
1674	2081	1325
1675	1771	1326
1676	1771	1327
1677	1772	1328
1678	1772	1329
1679	1773	1330
1680	1773	1331
1681	1774	1332
1682	1774	1333
1683	1775	1334
1684	1775	1335
1685	1776	1336
1686	1776	1337
1687	1777	1338
1688	1777	1339
1689	1778	1340
1690	1778	1341
1691	1779	1342
1692	1779	1343
1693	1780	1344
1694	1780	1345
1695	1781	1346
1696	1781	1347
1697	1782	1348
1698	2082	1348
1699	1782	1349
1700	2082	1349
1701	1783	1350
1702	1783	1351
1703	1784	1352
1704	1784	1353
1705	1785	1354
1706	2158	1354
1707	1785	1355
1708	2158	1355
1709	1786	1356
1710	2159	1356
1711	1786	1357
1712	2159	1357
1713	1787	1358
1714	1787	1359
1715	1789	1360
1716	1789	1361
1717	1792	1362
1718	1792	1363
1719	1793	1364
1720	2169	1364
1721	1793	1365
1722	2169	1365
1723	1794	1366
1724	1794	1367
1725	1796	1368
1726	1796	1369
1727	1798	1370
1728	1798	1371
1729	1799	1372
1730	1799	1373
1731	1800	1374
1732	1800	1375
1733	1801	1376
1734	2084	1376
1735	1801	1377
1736	2084	1377
1737	1802	1378
1738	1802	1379
1739	1803	1380
1740	1803	1381
1741	2186	1382
1742	2255	1382
1743	2186	1383
1744	2255	1383
1745	2256	1384
1746	2256	1385
1747	1805	1386
1748	1805	1387
1749	1806	1388
1750	1806	1389
1751	2187	1390
1752	2257	1390
1753	2187	1391
1754	2257	1391
1755	2258	1392
1756	2258	1393
1757	2085	1394
1758	2259	1394
1759	2085	1395
1760	2259	1395
1761	1812	1396
1762	1812	1397
1763	1813	1398
1764	1813	1399
1765	1814	1400
1766	1814	1401
1767	1815	1402
1768	1815	1403
1769	1818	1404
1770	1818	1405
1771	1819	1406
1772	1819	1407
1773	1820	1408
1774	1820	1409
1775	1821	1410
1776	1821	1411
1777	1822	1412
1778	2086	1412
1779	2195	1412
1780	1822	1413
1781	2086	1413
1782	2195	1413
1783	2087	1414
1784	2260	1414
1785	2087	1415
1786	2260	1415
1787	2088	1416
1788	2180	1416
1789	2261	1416
1790	2088	1417
1791	2180	1417
1792	2261	1417
1793	2089	1418
1794	2262	1418
1795	2089	1419
1796	2262	1419
1797	2090	1420
1798	2179	1420
1799	2263	1420
1800	2090	1421
1801	2179	1421
1802	2263	1421
1803	2091	1422
1804	2178	1422
1805	2264	1422
1806	2091	1423
1807	2178	1423
1808	2264	1423
1809	1823	1424
1810	2092	1424
1811	1823	1425
1812	2092	1425
1813	1824	1426
1814	1824	1427
1815	1825	1428
1816	1825	1429
1817	1826	1430
1818	1826	1431
1819	1827	1432
1820	2093	1432
1821	1827	1433
1822	2093	1433
1823	1828	1434
1824	1828	1435
1825	1829	1436
1826	1829	1437
1827	1831	1438
1828	1992	1438
1829	1831	1439
1830	1992	1439
1831	1832	1440
1832	1832	1441
1833	1833	1442
1834	1833	1443
1835	1834	1444
1836	1834	1445
1837	1835	1446
1838	1835	1447
1839	1836	1448
1840	1836	1449
1841	1838	1450
1842	1838	1451
1843	1839	1452
1844	1839	1453
1845	1840	1454
1846	2094	1454
1847	1840	1455
1848	2094	1455
1849	1841	1456
1850	1841	1457
1851	1843	1458
1852	1843	1459
1853	1844	1460
1854	1844	1461
1855	1845	1462
1856	1845	1463
1857	1846	1464
1858	1846	1465
1859	1847	1466
1860	1847	1467
1861	1848	1468
1862	1848	1469
1863	1850	1470
1864	1850	1471
1865	1852	1472
1866	2095	1472
1867	1852	1473
1868	2095	1473
1869	1854	1474
1870	2096	1474
1871	1854	1475
1872	2096	1475
1873	1855	1476
1874	1855	1477
1875	1856	1478
1876	1856	1479
1877	1858	1480
1878	2160	1480
1879	1858	1481
1880	2160	1481
1881	1860	1482
1882	2097	1482
1883	1860	1483
1884	2097	1483
1885	1861	1484
1886	1861	1485
1887	1862	1486
1888	2098	1486
1889	1862	1487
1890	2098	1487
1891	1863	1488
1892	1863	1489
1893	1864	1490
1894	1864	1491
1895	1865	1492
1896	1865	1493
1897	1866	1494
1898	1866	1495
1899	1867	1496
1900	1867	1497
1901	1868	1498
1902	1868	1499
1903	1869	1500
1904	1869	1501
1905	1870	1502
1906	1870	1503
1907	1871	1504
1908	1871	1505
1909	1872	1506
1910	1872	1507
1911	1873	1508
1912	2099	1508
1913	1873	1509
1914	2099	1509
1915	1817	1510
1916	1817	1511
1917	1874	1512
1918	2100	1512
1919	1874	1513
1920	2100	1513
1921	1875	1514
1922	1875	1515
1923	1876	1516
1924	2101	1516
1925	1876	1517
1926	2101	1517
1927	1877	1518
1928	1877	1519
1929	1879	1520
1930	2102	1520
1931	1879	1521
1932	2102	1521
1933	1880	1522
1934	1880	1523
1935	1881	1524
1936	2103	1524
1937	1881	1525
1938	2103	1525
1939	1882	1526
1940	1882	1527
1941	1885	1528
1942	1885	1529
1943	1887	1530
1944	2162	1530
1945	1887	1531
1946	2162	1531
1947	1889	1532
1948	2104	1532
1949	1889	1533
1950	2104	1533
1951	1890	1534
1952	1890	1535
1953	1891	1536
1954	1891	1537
1955	1893	1538
1956	1893	1539
1957	1896	1540
1958	1896	1541
1959	1898	1542
1960	2163	1542
1961	1898	1543
1962	2163	1543
1963	1899	1544
1964	2105	1544
1965	1899	1545
1966	2105	1545
1967	1904	1546
1968	1904	1547
1969	1905	1548
1970	2165	1548
1971	1905	1549
1972	2165	1549
1973	1906	1550
1974	2106	1550
1975	1906	1551
1976	2106	1551
1977	1910	1552
1978	1910	1553
1979	1911	1554
1980	1911	1555
1981	1912	1556
1982	1912	1557
1983	1913	1558
1984	2107	1558
1985	1913	1559
1986	2107	1559
1987	1914	1560
1988	1914	1561
1989	1916	1562
1990	2108	1562
1991	1916	1563
1992	2108	1563
1993	1917	1564
1994	2109	1564
1995	1917	1565
1996	2109	1565
1997	1918	1566
1998	2110	1566
1999	1918	1567
2000	2110	1567
2001	1920	1568
2002	2111	1568
2003	1920	1569
2004	2111	1569
2005	1921	1570
2006	2112	1570
2007	1921	1571
2008	2112	1571
2009	1922	1572
2010	2113	1572
2011	1922	1573
2012	2113	1573
2013	1923	1574
2014	2114	1574
2015	1923	1575
2016	2114	1575
2017	1924	1576
2018	2115	1576
2019	1924	1577
2020	2115	1577
2021	1925	1578
2022	2116	1578
2023	1925	1579
2024	2116	1579
2025	1926	1580
2026	1926	1581
2027	1927	1582
2028	1927	1583
2029	1928	1584
2030	2117	1584
2031	1928	1585
2032	2117	1585
2033	1929	1586
2034	1929	1587
2035	1930	1588
2036	1930	1589
2037	1932	1590
2038	2118	1590
2039	1932	1591
2040	2118	1591
2041	1933	1592
2042	1933	1593
2043	1934	1594
2044	1934	1595
2045	1935	1596
2046	2119	1596
2047	1935	1597
2048	2119	1597
2049	1936	1598
2050	2120	1598
2051	1936	1599
2052	2120	1599
2053	1937	1600
2054	2121	1600
2055	1937	1601
2056	2121	1601
2057	1938	1602
2058	2122	1602
2059	1938	1603
2060	2122	1603
2061	1939	1604
2062	1939	1605
2063	1941	1606
2064	1941	1607
2065	1942	1608
2066	2123	1608
2067	1942	1609
2068	2123	1609
2069	1943	1610
2070	2124	1610
2071	1943	1611
2072	2124	1611
2073	1944	1612
2074	1944	1613
2075	1945	1614
2076	1945	1615
2077	1946	1616
2078	1946	1617
2079	1947	1618
2080	1947	1619
2081	1948	1620
2082	1948	1621
2083	1949	1622
2084	1949	1623
2085	1950	1624
2086	1950	1625
2087	1952	1626
2088	1952	1627
2089	1955	1628
2090	1955	1629
2091	1956	1630
2092	1956	1631
2093	1957	1632
2094	1957	1633
2095	1960	1634
2096	2166	1634
2097	1960	1635
2098	2166	1635
2099	1961	1636
2100	2125	1636
2101	1961	1637
2102	2125	1637
2103	1962	1638
2104	2167	1638
2105	1962	1639
2106	2167	1639
2107	1963	1640
2108	2126	1640
2109	1963	1641
2110	2126	1641
2111	1964	1642
2112	2127	1642
2113	1964	1643
2114	2127	1643
2115	1966	1644
2116	2128	1644
2117	1966	1645
2118	2128	1645
2119	1967	1646
2120	2168	1646
2121	1967	1647
2122	2168	1647
2123	1968	1648
2124	1968	1649
2125	1969	1650
2126	1969	1651
2127	1972	1652
2128	2129	1652
2129	1972	1653
2130	2129	1653
2131	1974	1654
2132	1974	1655
2133	1975	1656
2134	2130	1656
2135	1975	1657
2136	2130	1657
2137	1976	1658
2138	2131	1658
2139	1976	1659
2140	2131	1659
2141	1977	1660
2142	1977	1661
2143	1978	1662
2144	1978	1663
2145	1979	1664
2146	2132	1664
2147	1979	1665
2148	2132	1665
2149	1982	1666
2150	2133	1666
2151	1982	1667
2152	2133	1667
2153	1983	1668
2154	1983	1669
2155	1985	1670
2156	2134	1670
2157	1985	1671
2158	2134	1671
2159	1986	1672
2160	2135	1672
2161	1986	1673
2162	2135	1673
2163	1987	1674
2164	2136	1674
2165	1987	1675
2166	2136	1675
2167	1988	1676
2168	2137	1676
2169	1988	1677
2170	2137	1677
2171	1990	1678
2172	2138	1678
2173	1990	1679
2174	2138	1679
2175	1991	1680
2176	2139	1680
2177	1991	1681
2178	2139	1681
\.


--
-- Data for Name: tubes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tubes (id, seed_id, seedbox_id, "position", volume, count, created_at, updated_at) FROM stdin;
1	1	1	1	2.0	\N	2022-10-05 22:04:16.751944	2022-10-05 22:04:16.751944
2	2	1	2	2.0	\N	2022-10-05 22:04:16.810371	2022-10-05 22:04:16.810371
3	3	1	3	1.6	\N	2022-10-05 22:04:16.818371	2022-10-05 22:04:16.818371
4	4	1	4	2.0	\N	2022-10-05 22:04:16.825073	2022-10-05 22:04:16.825073
5	5	1	5	2.0	\N	2022-10-05 22:04:16.833516	2022-10-05 22:04:16.833516
6	6	1	6	2.0	\N	2022-10-05 22:04:16.839703	2022-10-05 22:04:16.839703
7	7	1	7	1.7	\N	2022-10-05 22:04:16.84682	2022-10-05 22:04:16.84682
8	8	1	8	1.8	\N	2022-10-05 22:04:16.853471	2022-10-05 22:04:16.853471
9	9	1	9	2.0	\N	2022-10-05 22:04:16.858698	2022-10-05 22:04:16.858698
10	10	1	10	2.0	\N	2022-10-05 22:04:16.866932	2022-10-05 22:04:16.866932
11	11	1	11	2.0	\N	2022-10-05 22:04:16.872646	2022-10-05 22:04:16.872646
12	12	1	12	2.0	\N	2022-10-05 22:04:16.880032	2022-10-05 22:04:16.880032
13	13	1	13	2.0	\N	2022-10-05 22:04:16.893103	2022-10-05 22:04:16.893103
14	14	1	14	2.0	\N	2022-10-05 22:04:16.90237	2022-10-05 22:04:16.90237
15	15	1	15	1.5	\N	2022-10-05 22:04:16.908411	2022-10-05 22:04:16.908411
16	16	1	16	1.0	\N	2022-10-05 22:04:16.914344	2022-10-05 22:04:16.914344
17	17	1	17	1.8	\N	2022-10-05 22:04:16.9195	2022-10-05 22:04:16.9195
18	18	1	19	1.8	\N	2022-10-05 22:04:16.925398	2022-10-05 22:04:16.925398
19	19	1	20	2.0	\N	2022-10-05 22:04:16.93101	2022-10-05 22:04:16.93101
20	20	1	21	1.7	\N	2022-10-05 22:04:16.936204	2022-10-05 22:04:16.936204
21	21	1	22	1.6	\N	2022-10-05 22:04:16.942395	2022-10-05 22:04:16.942395
22	22	1	23	2.0	\N	2022-10-05 22:04:16.948931	2022-10-05 22:04:16.948931
23	23	1	24	2.0	\N	2022-10-05 22:04:16.954781	2022-10-05 22:04:16.954781
24	24	1	25	2.0	\N	2022-10-05 22:04:16.962062	2022-10-05 22:04:16.962062
25	25	1	26	2.0	\N	2022-10-05 22:04:16.967984	2022-10-05 22:04:16.967984
26	26	1	27	1.9	\N	2022-10-05 22:04:16.976917	2022-10-05 22:04:16.976917
27	27	1	28	2.0	\N	2022-10-05 22:04:16.986844	2022-10-05 22:04:16.986844
28	28	1	29	1.8	\N	2022-10-05 22:04:16.994215	2022-10-05 22:04:16.994215
29	29	1	30	1.8	\N	2022-10-05 22:04:17.000543	2022-10-05 22:04:17.000543
30	30	1	31	2.0	\N	2022-10-05 22:04:17.006137	2022-10-05 22:04:17.006137
31	31	1	32	2.0	\N	2022-10-05 22:04:17.012364	2022-10-05 22:04:17.012364
32	32	1	33	1.8	\N	2022-10-05 22:04:17.018142	2022-10-05 22:04:17.018142
33	33	1	34	2.0	\N	2022-10-05 22:04:17.023595	2022-10-05 22:04:17.023595
34	34	1	35	1.3	\N	2022-10-05 22:04:17.030385	2022-10-05 22:04:17.030385
35	35	1	36	1.9	\N	2022-10-05 22:04:17.03609	2022-10-05 22:04:17.03609
36	36	1	37	2.0	\N	2022-10-05 22:04:17.042266	2022-10-05 22:04:17.042266
37	37	1	38	1.5	\N	2022-10-05 22:04:17.04838	2022-10-05 22:04:17.04838
38	38	1	39	1.0	\N	2022-10-05 22:04:17.053944	2022-10-05 22:04:17.053944
39	39	1	40	0.6	\N	2022-10-05 22:04:17.061159	2022-10-05 22:04:17.061159
40	40	1	41	0.8	\N	2022-10-05 22:04:17.067312	2022-10-05 22:04:17.067312
41	41	1	42	0.6	\N	2022-10-05 22:04:17.072844	2022-10-05 22:04:17.072844
42	42	1	43	0.3	\N	2022-10-05 22:04:17.079432	2022-10-05 22:04:17.079432
43	43	1	44	0.7	\N	2022-10-05 22:04:17.085041	2022-10-05 22:04:17.085041
44	44	1	45	0.5	\N	2022-10-05 22:04:17.092238	2022-10-05 22:04:17.092238
45	45	1	46	0.1	\N	2022-10-05 22:04:17.098922	2022-10-05 22:04:17.098922
46	46	1	47	2.0	\N	2022-10-05 22:04:17.105178	2022-10-05 22:04:17.105178
47	47	1	48	2.0	\N	2022-10-05 22:04:17.116822	2022-10-05 22:04:17.116822
48	48	1	49	2.0	\N	2022-10-05 22:04:17.122546	2022-10-05 22:04:17.122546
49	49	1	50	1.8	\N	2022-10-05 22:04:17.128463	2022-10-05 22:04:17.128463
50	50	1	51	2.0	\N	2022-10-05 22:04:17.133896	2022-10-05 22:04:17.133896
51	51	1	52	1.7	\N	2022-10-05 22:04:17.139319	2022-10-05 22:04:17.139319
52	52	1	53	1.8	\N	2022-10-05 22:04:17.145657	2022-10-05 22:04:17.145657
53	53	1	54	1.6	\N	2022-10-05 22:04:17.151258	2022-10-05 22:04:17.151258
54	54	1	55	2.0	\N	2022-10-05 22:04:17.156572	2022-10-05 22:04:17.156572
55	55	1	56	2.0	\N	2022-10-05 22:04:17.163395	2022-10-05 22:04:17.163395
56	56	1	57	0.5	\N	2022-10-05 22:04:17.169262	2022-10-05 22:04:17.169262
57	57	1	58	0.1	\N	2022-10-05 22:04:17.174781	2022-10-05 22:04:17.174781
58	58	1	59	0.5	\N	2022-10-05 22:04:17.182334	2022-10-05 22:04:17.182334
59	59	1	60	1.0	\N	2022-10-05 22:04:17.187711	2022-10-05 22:04:17.187711
60	60	1	61	0.1	\N	2022-10-05 22:04:17.19453	2022-10-05 22:04:17.19453
61	61	1	62	0.2	\N	2022-10-05 22:04:17.200526	2022-10-05 22:04:17.200526
62	62	1	63	0.4	\N	2022-10-05 22:04:17.205936	2022-10-05 22:04:17.205936
63	63	1	64	0.1	\N	2022-10-05 22:04:17.212585	2022-10-05 22:04:17.212585
64	64	1	65	0.2	\N	2022-10-05 22:04:17.217802	2022-10-05 22:04:17.217802
65	65	1	66	2.0	\N	2022-10-05 22:04:17.223106	2022-10-05 22:04:17.223106
66	66	1	67	2.0	\N	2022-10-05 22:04:17.228515	2022-10-05 22:04:17.228515
67	67	1	69	2.0	\N	2022-10-05 22:04:17.234718	2022-10-05 22:04:17.234718
68	68	1	70	2.0	\N	2022-10-05 22:04:17.240056	2022-10-05 22:04:17.240056
69	69	1	71	1.7	\N	2022-10-05 22:04:17.246344	2022-10-05 22:04:17.246344
70	70	1	72	1.7	\N	2022-10-05 22:04:17.252819	2022-10-05 22:04:17.252819
71	71	1	73	2.0	\N	2022-10-05 22:04:17.259335	2022-10-05 22:04:17.259335
72	72	1	74	2.0	\N	2022-10-05 22:04:17.266278	2022-10-05 22:04:17.266278
73	73	1	75	1.6	\N	2022-10-05 22:04:17.27193	2022-10-05 22:04:17.27193
74	74	1	76	0.8	\N	2022-10-05 22:04:17.279814	2022-10-05 22:04:17.279814
75	75	1	77	2.0	\N	2022-10-05 22:04:17.285577	2022-10-05 22:04:17.285577
76	76	1	78	2.0	\N	2022-10-05 22:04:17.293078	2022-10-05 22:04:17.293078
77	77	1	79	0.3	\N	2022-10-05 22:04:17.299351	2022-10-05 22:04:17.299351
78	78	1	80	0.08	\N	2022-10-05 22:04:17.304921	2022-10-05 22:04:17.304921
79	79	1	81	0.2	\N	2022-10-05 22:04:17.311705	2022-10-05 22:04:17.311705
80	80	1	82	1.0	\N	2022-10-05 22:04:17.317701	2022-10-05 22:04:17.317701
81	81	1	83	0.2	\N	2022-10-05 22:04:17.327672	2022-10-05 22:04:17.327672
82	82	1	84	1.0	\N	2022-10-05 22:04:17.333983	2022-10-05 22:04:17.333983
83	83	1	85	1.2	\N	2022-10-05 22:04:17.340219	2022-10-05 22:04:17.340219
84	84	1	86	0.7	\N	2022-10-05 22:04:17.34847	2022-10-05 22:04:17.34847
85	85	1	87	2.0	\N	2022-10-05 22:04:17.354502	2022-10-05 22:04:17.354502
86	86	1	88	0.3	\N	2022-10-05 22:04:17.360927	2022-10-05 22:04:17.360927
87	87	1	89	0.15	\N	2022-10-05 22:04:17.367065	2022-10-05 22:04:17.367065
88	88	1	90	1.0	\N	2022-10-05 22:04:17.372468	2022-10-05 22:04:17.372468
89	89	1	91	0.8	\N	2022-10-05 22:04:17.379988	2022-10-05 22:04:17.379988
90	90	1	93	0.05	\N	2022-10-05 22:04:17.386486	2022-10-05 22:04:17.386486
91	91	1	94	1.5	\N	2022-10-05 22:04:17.392294	2022-10-05 22:04:17.392294
92	92	1	96	1.8	\N	2022-10-05 22:04:17.39822	2022-10-05 22:04:17.39822
93	93	1	97	2.0	\N	2022-10-05 22:04:17.403948	2022-10-05 22:04:17.403948
94	94	1	98	2.0	\N	2022-10-05 22:04:17.409851	2022-10-05 22:04:17.409851
95	95	1	99	2.0	\N	2022-10-05 22:04:17.417274	2022-10-05 22:04:17.417274
96	96	1	100	2.0	\N	2022-10-05 22:04:17.423061	2022-10-05 22:04:17.423061
97	97	97	1	2.0	\N	2022-10-05 22:04:17.42979	2022-10-05 22:04:17.42979
98	98	97	2	1.9	\N	2022-10-05 22:04:17.435572	2022-10-05 22:04:17.435572
99	99	97	3	1.9	\N	2022-10-05 22:04:17.442642	2022-10-05 22:04:17.442642
100	100	97	4	2.0	\N	2022-10-05 22:04:17.449082	2022-10-05 22:04:17.449082
101	101	97	5	1.7	\N	2022-10-05 22:04:17.454663	2022-10-05 22:04:17.454663
102	102	97	6	2.0	\N	2022-10-05 22:04:17.460955	2022-10-05 22:04:17.460955
103	103	97	7	2.0	\N	2022-10-05 22:04:17.467029	2022-10-05 22:04:17.467029
104	104	97	8	1.7	\N	2022-10-05 22:04:17.473011	2022-10-05 22:04:17.473011
105	105	97	9	2.0	\N	2022-10-05 22:04:17.481244	2022-10-05 22:04:17.481244
106	106	97	10	1.6	\N	2022-10-05 22:04:17.487189	2022-10-05 22:04:17.487189
107	107	97	11	1.8	\N	2022-10-05 22:04:17.495425	2022-10-05 22:04:17.495425
108	108	97	12	2.0	\N	2022-10-05 22:04:17.501794	2022-10-05 22:04:17.501794
109	109	97	13	1.2	\N	2022-10-05 22:04:17.508228	2022-10-05 22:04:17.508228
110	110	97	14	2.0	\N	2022-10-05 22:04:17.514931	2022-10-05 22:04:17.514931
111	111	97	15	1.7	\N	2022-10-05 22:04:17.521382	2022-10-05 22:04:17.521382
112	112	97	16	2.0	\N	2022-10-05 22:04:17.528038	2022-10-05 22:04:17.528038
113	113	97	17	1.6	\N	2022-10-05 22:04:17.534962	2022-10-05 22:04:17.534962
114	114	97	18	1.8	\N	2022-10-05 22:04:17.541922	2022-10-05 22:04:17.541922
115	115	97	19	1.8	\N	2022-10-05 22:04:17.549797	2022-10-05 22:04:17.549797
116	116	97	20	1.6	\N	2022-10-05 22:04:17.555802	2022-10-05 22:04:17.555802
117	117	97	21	2.0	\N	2022-10-05 22:04:17.562927	2022-10-05 22:04:17.562927
118	118	97	22	1.5	\N	2022-10-05 22:04:17.570258	2022-10-05 22:04:17.570258
119	119	97	23	2.0	\N	2022-10-05 22:04:17.577194	2022-10-05 22:04:17.577194
120	120	97	24	1.7	\N	2022-10-05 22:04:17.583404	2022-10-05 22:04:17.583404
121	121	97	25	1.6	\N	2022-10-05 22:04:17.601466	2022-10-05 22:04:17.601466
122	122	97	26	0.8	\N	2022-10-05 22:04:17.610961	2022-10-05 22:04:17.610961
123	123	97	27	1.8	\N	2022-10-05 22:04:17.620326	2022-10-05 22:04:17.620326
124	124	97	28	1.2	\N	2022-10-05 22:04:17.627383	2022-10-05 22:04:17.627383
125	125	97	29	1.0	\N	2022-10-05 22:04:17.634433	2022-10-05 22:04:17.634433
126	126	97	30	1.2	\N	2022-10-05 22:04:17.642567	2022-10-05 22:04:17.642567
127	127	97	31	1.3	\N	2022-10-05 22:04:17.649983	2022-10-05 22:04:17.649983
128	128	97	32	0.7	\N	2022-10-05 22:04:17.656062	2022-10-05 22:04:17.656062
129	129	97	33	1.2	\N	2022-10-05 22:04:17.663985	2022-10-05 22:04:17.663985
130	130	97	34	0.5	\N	2022-10-05 22:04:17.670701	2022-10-05 22:04:17.670701
131	131	97	35	1.7	\N	2022-10-05 22:04:17.676771	2022-10-05 22:04:17.676771
132	132	97	36	0.08	\N	2022-10-05 22:04:17.683759	2022-10-05 22:04:17.683759
133	133	97	37	1.8	\N	2022-10-05 22:04:17.689421	2022-10-05 22:04:17.689421
134	134	97	38	1.0	\N	2022-10-05 22:04:17.697124	2022-10-05 22:04:17.697124
135	135	97	39	0.8	\N	2022-10-05 22:04:17.702788	2022-10-05 22:04:17.702788
136	136	97	40	1.5	\N	2022-10-05 22:04:17.708396	2022-10-05 22:04:17.708396
137	137	97	41	1.2	\N	2022-10-05 22:04:17.714388	2022-10-05 22:04:17.714388
138	138	97	42	2.0	\N	2022-10-05 22:04:17.720188	2022-10-05 22:04:17.720188
139	139	97	43	1.1	\N	2022-10-05 22:04:17.726144	2022-10-05 22:04:17.726144
140	140	97	44	2.0	\N	2022-10-05 22:04:17.732409	2022-10-05 22:04:17.732409
141	141	97	45	2.0	\N	2022-10-05 22:04:17.738205	2022-10-05 22:04:17.738205
142	142	97	46	2.0	\N	2022-10-05 22:04:17.744898	2022-10-05 22:04:17.744898
143	143	97	47	0.2	\N	2022-10-05 22:04:17.755538	2022-10-05 22:04:17.755538
144	144	97	48	1.7	\N	2022-10-05 22:04:17.761147	2022-10-05 22:04:17.761147
145	145	97	49	0.1	\N	2022-10-05 22:04:17.767327	2022-10-05 22:04:17.767327
146	146	97	50	0.1	\N	2022-10-05 22:04:17.773208	2022-10-05 22:04:17.773208
147	147	97	51	0.6	\N	2022-10-05 22:04:17.779288	2022-10-05 22:04:17.779288
148	148	97	52	0.15	\N	2022-10-05 22:04:17.785559	2022-10-05 22:04:17.785559
149	149	97	53	0.1	\N	2022-10-05 22:04:17.793115	2022-10-05 22:04:17.793115
150	150	97	54	0.1	\N	2022-10-05 22:04:17.800497	2022-10-05 22:04:17.800497
151	151	97	55	0.5	\N	2022-10-05 22:04:17.806718	2022-10-05 22:04:17.806718
152	152	97	56	0.3	\N	2022-10-05 22:04:17.813184	2022-10-05 22:04:17.813184
153	153	97	57	0.7	\N	2022-10-05 22:04:17.820365	2022-10-05 22:04:17.820365
154	154	97	58	2.0	\N	2022-10-05 22:04:17.839681	2022-10-05 22:04:17.839681
155	155	97	59	2.0	\N	2022-10-05 22:04:17.84665	2022-10-05 22:04:17.84665
156	156	97	60	1.9	\N	2022-10-05 22:04:17.853691	2022-10-05 22:04:17.853691
157	157	97	61	1.6	\N	2022-10-05 22:04:17.859568	2022-10-05 22:04:17.859568
158	158	97	62	1.7	\N	2022-10-05 22:04:17.86712	2022-10-05 22:04:17.86712
159	159	97	63	1.8	\N	2022-10-05 22:04:17.872609	2022-10-05 22:04:17.872609
160	160	97	64	2.0	\N	2022-10-05 22:04:17.879257	2022-10-05 22:04:17.879257
161	161	97	65	2.0	\N	2022-10-05 22:04:17.886037	2022-10-05 22:04:17.886037
162	162	97	66	2.0	\N	2022-10-05 22:04:17.891855	2022-10-05 22:04:17.891855
163	163	97	67	0.6	\N	2022-10-05 22:04:17.899416	2022-10-05 22:04:17.899416
164	164	97	68	0.3	\N	2022-10-05 22:04:17.905556	2022-10-05 22:04:17.905556
165	165	97	69	1.2	\N	2022-10-05 22:04:17.911985	2022-10-05 22:04:17.911985
166	166	97	70	0.2	\N	2022-10-05 22:04:17.918556	2022-10-05 22:04:17.918556
167	167	97	71	0.5	\N	2022-10-05 22:04:17.924915	2022-10-05 22:04:17.924915
168	168	97	72	0.06	\N	2022-10-05 22:04:17.956871	2022-10-05 22:04:17.956871
169	169	97	73	0.5	\N	2022-10-05 22:04:17.963341	2022-10-05 22:04:17.963341
170	170	97	75	1.7	\N	2022-10-05 22:04:17.970432	2022-10-05 22:04:17.970432
171	171	97	76	0.1	\N	2022-10-05 22:04:17.978294	2022-10-05 22:04:17.978294
172	172	97	77	0.06	\N	2022-10-05 22:04:17.98596	2022-10-05 22:04:17.98596
173	173	97	78	0.05	\N	2022-10-05 22:04:17.993742	2022-10-05 22:04:17.993742
174	174	97	79	0.06	\N	2022-10-05 22:04:18.00129	2022-10-05 22:04:18.00129
175	175	97	80	0.06	\N	2022-10-05 22:04:18.00919	2022-10-05 22:04:18.00919
176	176	97	81	0.05	\N	2022-10-05 22:04:18.018159	2022-10-05 22:04:18.018159
177	177	97	82	0.04	\N	2022-10-05 22:04:18.02695	2022-10-05 22:04:18.02695
178	178	97	83	0.2	\N	2022-10-05 22:04:18.034646	2022-10-05 22:04:18.034646
179	179	97	84	0.06	\N	2022-10-05 22:04:18.04214	2022-10-05 22:04:18.04214
180	180	97	85	0.2	\N	2022-10-05 22:04:18.049278	2022-10-05 22:04:18.049278
181	181	97	86	0.3	\N	2022-10-05 22:04:18.056836	2022-10-05 22:04:18.056836
182	182	97	87	0.06	\N	2022-10-05 22:04:18.065768	2022-10-05 22:04:18.065768
183	183	97	88	1.0	\N	2022-10-05 22:04:18.074356	2022-10-05 22:04:18.074356
184	184	97	89	1.8	\N	2022-10-05 22:04:18.083552	2022-10-05 22:04:18.083552
185	185	97	90	1.2	\N	2022-10-05 22:04:18.091051	2022-10-05 22:04:18.091051
186	186	97	91	1.0	\N	2022-10-05 22:04:18.099946	2022-10-05 22:04:18.099946
187	187	97	92	1.0	\N	2022-10-05 22:04:18.119958	2022-10-05 22:04:18.119958
188	188	97	93	2.0	\N	2022-10-05 22:04:18.129247	2022-10-05 22:04:18.129247
189	189	97	94	1.0	\N	2022-10-05 22:04:18.137305	2022-10-05 22:04:18.137305
190	190	97	95	1.0	\N	2022-10-05 22:04:18.145397	2022-10-05 22:04:18.145397
191	191	97	96	2.0	\N	2022-10-05 22:04:18.153623	2022-10-05 22:04:18.153623
192	192	97	97	0.06	\N	2022-10-05 22:04:18.163619	2022-10-05 22:04:18.163619
193	193	97	98	0.04	\N	2022-10-05 22:04:18.171483	2022-10-05 22:04:18.171483
194	194	97	99	2.0	\N	2022-10-05 22:04:18.179445	2022-10-05 22:04:18.179445
195	195	97	100	0.7	\N	2022-10-05 22:04:18.187177	2022-10-05 22:04:18.187177
196	196	196	1	1.9	\N	2022-10-05 22:04:18.195083	2022-10-05 22:04:18.195083
197	197	196	2	1.9	\N	2022-10-05 22:04:18.204262	2022-10-05 22:04:18.204262
198	198	196	3	2.0	\N	2022-10-05 22:04:18.212879	2022-10-05 22:04:18.212879
199	199	196	4	1.0	\N	2022-10-05 22:04:18.222266	2022-10-05 22:04:18.222266
200	200	196	5	1.9	\N	2022-10-05 22:04:18.235579	2022-10-05 22:04:18.235579
201	201	196	6	0.5	\N	2022-10-05 22:04:18.248	2022-10-05 22:04:18.248
202	202	196	7	1.7	\N	2022-10-05 22:04:18.255092	2022-10-05 22:04:18.255092
203	203	196	8	0.4	\N	2022-10-05 22:04:18.261456	2022-10-05 22:04:18.261456
204	204	196	9	0.5	\N	2022-10-05 22:04:18.268982	2022-10-05 22:04:18.268982
205	205	196	10	2.0	\N	2022-10-05 22:04:18.276124	2022-10-05 22:04:18.276124
206	206	196	11	1.3	\N	2022-10-05 22:04:18.283049	2022-10-05 22:04:18.283049
207	207	196	12	1.5	\N	2022-10-05 22:04:18.289406	2022-10-05 22:04:18.289406
208	208	196	13	1.7	\N	2022-10-05 22:04:18.295493	2022-10-05 22:04:18.295493
209	209	196	14	2.0	\N	2022-10-05 22:04:18.301952	2022-10-05 22:04:18.301952
210	210	196	15	0.8	\N	2022-10-05 22:04:18.308516	2022-10-05 22:04:18.308516
211	211	196	16	0.1	\N	2022-10-05 22:04:18.315867	2022-10-05 22:04:18.315867
212	212	196	17	1.0	\N	2022-10-05 22:04:18.322566	2022-10-05 22:04:18.322566
213	213	196	18	0.6	\N	2022-10-05 22:04:18.32944	2022-10-05 22:04:18.32944
214	214	196	19	0.7	\N	2022-10-05 22:04:18.337312	2022-10-05 22:04:18.337312
215	215	196	20	1.0	\N	2022-10-05 22:04:18.343492	2022-10-05 22:04:18.343492
216	216	196	21	0.12	\N	2022-10-05 22:04:18.350141	2022-10-05 22:04:18.350141
217	217	196	22	0.18	\N	2022-10-05 22:04:18.357118	2022-10-05 22:04:18.357118
218	218	196	23	1.3	\N	2022-10-05 22:04:18.363017	2022-10-05 22:04:18.363017
219	219	196	24	0.03	\N	2022-10-05 22:04:18.369684	2022-10-05 22:04:18.369684
220	220	196	25	0.08	\N	2022-10-05 22:04:18.375622	2022-10-05 22:04:18.375622
221	221	196	26	2.0	\N	2022-10-05 22:04:18.382388	2022-10-05 22:04:18.382388
222	222	196	27	0.4	\N	2022-10-05 22:04:18.38835	2022-10-05 22:04:18.38835
223	223	196	28	0.3	\N	2022-10-05 22:04:18.396722	2022-10-05 22:04:18.396722
224	224	196	29	2.0	\N	2022-10-05 22:04:18.403831	2022-10-05 22:04:18.403831
225	225	196	30	2.0	\N	2022-10-05 22:04:18.411206	2022-10-05 22:04:18.411206
226	226	196	31	0.7	\N	2022-10-05 22:04:18.417986	2022-10-05 22:04:18.417986
227	227	196	32	1.7	\N	2022-10-05 22:04:18.424994	2022-10-05 22:04:18.424994
228	228	196	33	1.7	\N	2022-10-05 22:04:18.432783	2022-10-05 22:04:18.432783
229	229	196	34	1.8	\N	2022-10-05 22:04:18.43877	2022-10-05 22:04:18.43877
230	230	196	35	1.6	\N	2022-10-05 22:04:18.44544	2022-10-05 22:04:18.44544
231	231	196	36	1.5	\N	2022-10-05 22:04:18.451244	2022-10-05 22:04:18.451244
232	232	196	37	2.0	\N	2022-10-05 22:04:18.456586	2022-10-05 22:04:18.456586
233	233	196	38	0.9	\N	2022-10-05 22:04:18.462632	2022-10-05 22:04:18.462632
234	234	196	39	1.8	\N	2022-10-05 22:04:18.468182	2022-10-05 22:04:18.468182
235	235	196	40	0.13	\N	2022-10-05 22:04:18.473458	2022-10-05 22:04:18.473458
236	236	196	41	1.3	\N	2022-10-05 22:04:18.48032	2022-10-05 22:04:18.48032
237	237	196	42	0.2	\N	2022-10-05 22:04:18.48605	2022-10-05 22:04:18.48605
238	238	196	43	1.0	\N	2022-10-05 22:04:18.49177	2022-10-05 22:04:18.49177
239	239	196	44	1.8	\N	2022-10-05 22:04:18.499567	2022-10-05 22:04:18.499567
240	240	196	45	2.0	\N	2022-10-05 22:04:18.50509	2022-10-05 22:04:18.50509
241	241	196	46	2.0	\N	2022-10-05 22:04:18.51222	2022-10-05 22:04:18.51222
242	242	196	47	2.0	\N	2022-10-05 22:04:18.518976	2022-10-05 22:04:18.518976
243	243	196	48	2.0	\N	2022-10-05 22:04:18.52514	2022-10-05 22:04:18.52514
244	244	196	49	2.0	\N	2022-10-05 22:04:18.531045	2022-10-05 22:04:18.531045
245	245	196	50	2.0	\N	2022-10-05 22:04:18.536808	2022-10-05 22:04:18.536808
246	246	196	51	2.0	\N	2022-10-05 22:04:18.543347	2022-10-05 22:04:18.543347
247	247	196	52	2.0	\N	2022-10-05 22:04:18.54952	2022-10-05 22:04:18.54952
248	248	196	53	2.0	\N	2022-10-05 22:04:18.55631	2022-10-05 22:04:18.55631
249	249	196	54	2.0	\N	2022-10-05 22:04:18.562967	2022-10-05 22:04:18.562967
250	250	196	55	2.0	\N	2022-10-05 22:04:18.568754	2022-10-05 22:04:18.568754
251	251	196	56	2.0	\N	2022-10-05 22:04:18.575286	2022-10-05 22:04:18.575286
252	252	196	57	2.0	\N	2022-10-05 22:04:18.581166	2022-10-05 22:04:18.581166
253	253	196	58	2.0	\N	2022-10-05 22:04:18.586778	2022-10-05 22:04:18.586778
254	254	196	59	2.0	\N	2022-10-05 22:04:18.593837	2022-10-05 22:04:18.593837
255	255	196	60	2.0	\N	2022-10-05 22:04:18.600992	2022-10-05 22:04:18.600992
256	256	196	61	2.0	\N	2022-10-05 22:04:18.610797	2022-10-05 22:04:18.610797
257	257	196	62	2.0	\N	2022-10-05 22:04:18.619968	2022-10-05 22:04:18.619968
258	258	196	63	2.0	\N	2022-10-05 22:04:18.626325	2022-10-05 22:04:18.626325
259	259	196	64	2.0	\N	2022-10-05 22:04:18.632754	2022-10-05 22:04:18.632754
260	260	196	65	2.0	\N	2022-10-05 22:04:18.6403	2022-10-05 22:04:18.6403
261	261	196	66	2.0	\N	2022-10-05 22:04:18.647642	2022-10-05 22:04:18.647642
262	262	196	67	2.0	\N	2022-10-05 22:04:18.654351	2022-10-05 22:04:18.654351
263	263	196	68	2.0	\N	2022-10-05 22:04:18.661575	2022-10-05 22:04:18.661575
264	264	196	69	2.0	\N	2022-10-05 22:04:18.668525	2022-10-05 22:04:18.668525
265	265	196	70	1.8	\N	2022-10-05 22:04:18.676413	2022-10-05 22:04:18.676413
266	266	196	71	0.6	\N	2022-10-05 22:04:18.683498	2022-10-05 22:04:18.683498
267	267	196	72	1.5	\N	2022-10-05 22:04:18.689697	2022-10-05 22:04:18.689697
268	268	196	73	2.0	\N	2022-10-05 22:04:18.700375	2022-10-05 22:04:18.700375
269	269	196	74	2.0	\N	2022-10-05 22:04:18.708957	2022-10-05 22:04:18.708957
270	270	196	75	2.0	\N	2022-10-05 22:04:18.71624	2022-10-05 22:04:18.71624
271	271	196	76	2.0	\N	2022-10-05 22:04:18.723227	2022-10-05 22:04:18.723227
272	272	196	77	1.9	\N	2022-10-05 22:04:18.730615	2022-10-05 22:04:18.730615
273	273	196	78	1.7	\N	2022-10-05 22:04:18.736964	2022-10-05 22:04:18.736964
274	274	196	79	1.4	\N	2022-10-05 22:04:18.743558	2022-10-05 22:04:18.743558
275	275	196	80	1.7	\N	2022-10-05 22:04:18.750313	2022-10-05 22:04:18.750313
276	276	196	81	1.8	\N	2022-10-05 22:04:18.75772	2022-10-05 22:04:18.75772
277	277	196	82	2.0	\N	2022-10-05 22:04:18.764865	2022-10-05 22:04:18.764865
278	278	196	83	2.0	\N	2022-10-05 22:04:18.77104	2022-10-05 22:04:18.77104
279	279	196	84	1.5	\N	2022-10-05 22:04:18.779278	2022-10-05 22:04:18.779278
280	280	196	85	1.7	\N	2022-10-05 22:04:18.786125	2022-10-05 22:04:18.786125
281	281	196	86	1.8	\N	2022-10-05 22:04:18.792875	2022-10-05 22:04:18.792875
282	282	196	87	2.0	\N	2022-10-05 22:04:18.798993	2022-10-05 22:04:18.798993
283	283	196	88	0.6	\N	2022-10-05 22:04:18.804715	2022-10-05 22:04:18.804715
284	284	196	89	1.0	\N	2022-10-05 22:04:18.811109	2022-10-05 22:04:18.811109
285	285	196	90	2.0	\N	2022-10-05 22:04:18.817042	2022-10-05 22:04:18.817042
286	286	196	91	2.0	\N	2022-10-05 22:04:18.822593	2022-10-05 22:04:18.822593
287	287	196	92	2.0	\N	2022-10-05 22:04:18.828551	2022-10-05 22:04:18.828551
288	288	196	93	1.7	\N	2022-10-05 22:04:18.836585	2022-10-05 22:04:18.836585
289	289	196	94	1.9	\N	2022-10-05 22:04:18.853337	2022-10-05 22:04:18.853337
290	290	196	95	2.0	\N	2022-10-05 22:04:18.868533	2022-10-05 22:04:18.868533
291	291	196	96	1.8	\N	2022-10-05 22:04:18.875163	2022-10-05 22:04:18.875163
292	292	196	97	0.8	\N	2022-10-05 22:04:18.881389	2022-10-05 22:04:18.881389
293	293	196	98	1.8	\N	2022-10-05 22:04:18.889096	2022-10-05 22:04:18.889096
294	294	196	99	1.0	\N	2022-10-05 22:04:18.895609	2022-10-05 22:04:18.895609
295	295	196	100	0.6	\N	2022-10-05 22:04:18.902151	2022-10-05 22:04:18.902151
296	296	296	1	2.0	\N	2022-10-05 22:04:18.908276	2022-10-05 22:04:18.908276
297	297	296	2	1.8	\N	2022-10-05 22:04:18.914831	2022-10-05 22:04:18.914831
298	298	296	3	1.7	\N	2022-10-05 22:04:18.920623	2022-10-05 22:04:18.920623
299	299	296	4	1.9	\N	2022-10-05 22:04:18.927058	2022-10-05 22:04:18.927058
300	300	296	5	1.8	\N	2022-10-05 22:04:18.932959	2022-10-05 22:04:18.932959
301	301	296	6	2.0	\N	2022-10-05 22:04:18.938864	2022-10-05 22:04:18.938864
302	302	296	7	2.0	\N	2022-10-05 22:04:18.945505	2022-10-05 22:04:18.945505
303	303	296	8	0.7	\N	2022-10-05 22:04:18.951603	2022-10-05 22:04:18.951603
304	304	296	9	1.7	\N	2022-10-05 22:04:18.958024	2022-10-05 22:04:18.958024
305	305	296	10	1.9	\N	2022-10-05 22:04:18.964427	2022-10-05 22:04:18.964427
306	306	296	11	1.6	\N	2022-10-05 22:04:18.970513	2022-10-05 22:04:18.970513
307	307	296	12	1.3	\N	2022-10-05 22:04:18.97907	2022-10-05 22:04:18.97907
308	308	296	13	1.8	\N	2022-10-05 22:04:18.987733	2022-10-05 22:04:18.987733
309	309	296	14	0.4	\N	2022-10-05 22:04:18.993955	2022-10-05 22:04:18.993955
310	310	296	15	0.8	\N	2022-10-05 22:04:19.000497	2022-10-05 22:04:19.000497
311	311	296	16	1.9	\N	2022-10-05 22:04:19.007322	2022-10-05 22:04:19.007322
312	312	296	17	1.3	\N	2022-10-05 22:04:19.013591	2022-10-05 22:04:19.013591
313	313	296	18	1.9	\N	2022-10-05 22:04:19.019474	2022-10-05 22:04:19.019474
314	314	296	19	0.3	\N	2022-10-05 22:04:19.025575	2022-10-05 22:04:19.025575
315	315	296	20	1.2	\N	2022-10-05 22:04:19.031484	2022-10-05 22:04:19.031484
316	316	296	21	1.5	\N	2022-10-05 22:04:19.037145	2022-10-05 22:04:19.037145
317	317	296	22	2.0	\N	2022-10-05 22:04:19.042884	2022-10-05 22:04:19.042884
318	318	296	23	2.0	\N	2022-10-05 22:04:19.048487	2022-10-05 22:04:19.048487
319	319	296	24	2.0	\N	2022-10-05 22:04:19.055279	2022-10-05 22:04:19.055279
320	320	296	25	2.0	\N	2022-10-05 22:04:19.061066	2022-10-05 22:04:19.061066
321	321	296	26	1.8	\N	2022-10-05 22:04:19.067347	2022-10-05 22:04:19.067347
322	322	296	27	2.0	\N	2022-10-05 22:04:19.073459	2022-10-05 22:04:19.073459
323	323	296	28	1.8	\N	2022-10-05 22:04:19.080627	2022-10-05 22:04:19.080627
324	324	296	29	1.5	\N	2022-10-05 22:04:19.086751	2022-10-05 22:04:19.086751
325	325	296	30	1.6	\N	2022-10-05 22:04:19.09914	2022-10-05 22:04:19.09914
326	326	296	31	1.9	\N	2022-10-05 22:04:19.104913	2022-10-05 22:04:19.104913
327	327	296	32	1.5	\N	2022-10-05 22:04:19.113194	2022-10-05 22:04:19.113194
328	328	296	33	1.7	\N	2022-10-05 22:04:19.120158	2022-10-05 22:04:19.120158
329	329	296	34	1.9	\N	2022-10-05 22:04:19.128467	2022-10-05 22:04:19.128467
330	330	296	35	1.7	\N	2022-10-05 22:04:19.135106	2022-10-05 22:04:19.135106
331	331	296	36	1.9	\N	2022-10-05 22:04:19.141902	2022-10-05 22:04:19.141902
332	332	296	37	1.7	\N	2022-10-05 22:04:19.148529	2022-10-05 22:04:19.148529
333	333	296	38	1.8	\N	2022-10-05 22:04:19.154834	2022-10-05 22:04:19.154834
334	334	296	39	1.6	\N	2022-10-05 22:04:19.16276	2022-10-05 22:04:19.16276
335	335	296	40	0.05	\N	2022-10-05 22:04:19.172595	2022-10-05 22:04:19.172595
336	336	296	41	0.06	\N	2022-10-05 22:04:19.178617	2022-10-05 22:04:19.178617
337	337	296	43	2.0	\N	2022-10-05 22:04:19.184811	2022-10-05 22:04:19.184811
338	338	296	44	2.0	\N	2022-10-05 22:04:19.190776	2022-10-05 22:04:19.190776
339	339	296	45	2.0	\N	2022-10-05 22:04:19.196685	2022-10-05 22:04:19.196685
340	340	296	46	0.3	\N	2022-10-05 22:04:19.202715	2022-10-05 22:04:19.202715
341	341	296	47	1.7	\N	2022-10-05 22:04:19.209084	2022-10-05 22:04:19.209084
342	342	296	48	2.0	\N	2022-10-05 22:04:19.215733	2022-10-05 22:04:19.215733
343	343	296	49	1.9	\N	2022-10-05 22:04:19.222148	2022-10-05 22:04:19.222148
344	344	296	50	1.8	\N	2022-10-05 22:04:19.2287	2022-10-05 22:04:19.2287
345	345	296	51	2.0	\N	2022-10-05 22:04:19.234586	2022-10-05 22:04:19.234586
346	346	296	52	1.9	\N	2022-10-05 22:04:19.240725	2022-10-05 22:04:19.240725
347	347	296	53	2.0	\N	2022-10-05 22:04:19.247226	2022-10-05 22:04:19.247226
348	348	296	54	1.9	\N	2022-10-05 22:04:19.253311	2022-10-05 22:04:19.253311
349	349	296	55	1.9	\N	2022-10-05 22:04:19.259189	2022-10-05 22:04:19.259189
350	350	296	56	2.0	\N	2022-10-05 22:04:19.265946	2022-10-05 22:04:19.265946
351	351	296	57	2.0	\N	2022-10-05 22:04:19.272956	2022-10-05 22:04:19.272956
352	352	296	58	0.6	\N	2022-10-05 22:04:19.280163	2022-10-05 22:04:19.280163
353	353	296	59	1.7	\N	2022-10-05 22:04:19.286919	2022-10-05 22:04:19.286919
354	354	296	60	1.8	\N	2022-10-05 22:04:19.296646	2022-10-05 22:04:19.296646
355	355	296	61	1.4	\N	2022-10-05 22:04:19.302805	2022-10-05 22:04:19.302805
356	356	296	62	1.8	\N	2022-10-05 22:04:19.310744	2022-10-05 22:04:19.310744
357	357	296	63	1.4	\N	2022-10-05 22:04:19.317312	2022-10-05 22:04:19.317312
358	358	296	64	1.5	\N	2022-10-05 22:04:19.323928	2022-10-05 22:04:19.323928
359	359	296	65	1.8	\N	2022-10-05 22:04:19.330734	2022-10-05 22:04:19.330734
360	360	296	66	2.0	\N	2022-10-05 22:04:19.338298	2022-10-05 22:04:19.338298
361	361	296	67	1.4	\N	2022-10-05 22:04:19.345612	2022-10-05 22:04:19.345612
362	362	296	68	2.0	\N	2022-10-05 22:04:19.353989	2022-10-05 22:04:19.353989
363	363	296	69	2.0	\N	2022-10-05 22:04:19.361308	2022-10-05 22:04:19.361308
364	364	296	70	1.5	\N	2022-10-05 22:04:19.368154	2022-10-05 22:04:19.368154
365	365	296	71	1.9	\N	2022-10-05 22:04:19.374162	2022-10-05 22:04:19.374162
366	366	296	72	1.9	\N	2022-10-05 22:04:19.382029	2022-10-05 22:04:19.382029
367	367	296	73	1.5	\N	2022-10-05 22:04:19.388559	2022-10-05 22:04:19.388559
368	368	296	74	1.8	\N	2022-10-05 22:04:19.394665	2022-10-05 22:04:19.394665
369	369	296	75	2.0	\N	2022-10-05 22:04:19.40072	2022-10-05 22:04:19.40072
370	370	296	76	2.0	\N	2022-10-05 22:04:19.409941	2022-10-05 22:04:19.409941
371	371	296	77	2.0	\N	2022-10-05 22:04:19.415821	2022-10-05 22:04:19.415821
372	372	296	78	2.0	\N	2022-10-05 22:04:19.421394	2022-10-05 22:04:19.421394
373	373	296	79	1.5	\N	2022-10-05 22:04:19.427257	2022-10-05 22:04:19.427257
374	374	296	80	1.7	\N	2022-10-05 22:04:19.433672	2022-10-05 22:04:19.433672
375	375	296	81	0.8	\N	2022-10-05 22:04:19.439919	2022-10-05 22:04:19.439919
376	376	296	82	1.8	\N	2022-10-05 22:04:19.448605	2022-10-05 22:04:19.448605
377	377	296	83	2.0	\N	2022-10-05 22:04:19.454775	2022-10-05 22:04:19.454775
378	378	296	84	2.0	\N	2022-10-05 22:04:19.46157	2022-10-05 22:04:19.46157
379	379	296	85	1.0	\N	2022-10-05 22:04:19.467436	2022-10-05 22:04:19.467436
380	380	296	86	1.5	\N	2022-10-05 22:04:19.473171	2022-10-05 22:04:19.473171
381	381	296	87	1.9	\N	2022-10-05 22:04:19.480135	2022-10-05 22:04:19.480135
382	382	296	88	1.7	\N	2022-10-05 22:04:19.486327	2022-10-05 22:04:19.486327
383	383	296	89	1.8	\N	2022-10-05 22:04:19.493458	2022-10-05 22:04:19.493458
384	384	296	90	2.0	\N	2022-10-05 22:04:19.500103	2022-10-05 22:04:19.500103
385	385	296	91	1.8	\N	2022-10-05 22:04:19.505925	2022-10-05 22:04:19.505925
386	386	296	92	1.9	\N	2022-10-05 22:04:19.512633	2022-10-05 22:04:19.512633
387	387	296	93	2.0	\N	2022-10-05 22:04:19.518545	2022-10-05 22:04:19.518545
388	388	296	94	2.0	\N	2022-10-05 22:04:19.524516	2022-10-05 22:04:19.524516
389	389	296	96	1.6	\N	2022-10-05 22:04:19.53042	2022-10-05 22:04:19.53042
390	390	296	97	2.0	\N	2022-10-05 22:04:19.537058	2022-10-05 22:04:19.537058
391	391	296	98	1.8	\N	2022-10-05 22:04:19.544249	2022-10-05 22:04:19.544249
392	392	296	99	1.7	\N	2022-10-05 22:04:19.550025	2022-10-05 22:04:19.550025
393	393	296	100	1.7	\N	2022-10-05 22:04:19.555611	2022-10-05 22:04:19.555611
394	394	394	1	2.0	\N	2022-10-05 22:04:19.563425	2022-10-05 22:04:19.563425
395	395	394	2	2.0	\N	2022-10-05 22:04:19.569041	2022-10-05 22:04:19.569041
396	396	394	3	1.5	\N	2022-10-05 22:04:19.574924	2022-10-05 22:04:19.574924
397	397	394	4	1.0	\N	2022-10-05 22:04:19.581016	2022-10-05 22:04:19.581016
398	398	394	5	2.0	\N	2022-10-05 22:04:19.586324	2022-10-05 22:04:19.586324
399	399	394	6	1.3	\N	2022-10-05 22:04:19.592284	2022-10-05 22:04:19.592284
400	400	394	7	2.0	\N	2022-10-05 22:04:19.598657	2022-10-05 22:04:19.598657
401	401	394	8	2.0	\N	2022-10-05 22:04:19.603935	2022-10-05 22:04:19.603935
402	402	394	9	2.0	\N	2022-10-05 22:04:19.611152	2022-10-05 22:04:19.611152
403	403	394	10	1.9	\N	2022-10-05 22:04:19.616974	2022-10-05 22:04:19.616974
404	404	394	11	1.8	\N	2022-10-05 22:04:19.622514	2022-10-05 22:04:19.622514
405	405	394	12	2.0	\N	2022-10-05 22:04:19.628825	2022-10-05 22:04:19.628825
406	406	394	13	2.0	\N	2022-10-05 22:04:19.635241	2022-10-05 22:04:19.635241
407	407	394	16	2.0	\N	2022-10-05 22:04:19.642653	2022-10-05 22:04:19.642653
408	408	394	17	2.0	\N	2022-10-05 22:04:19.649263	2022-10-05 22:04:19.649263
409	409	394	18	1.3	\N	2022-10-05 22:04:19.656061	2022-10-05 22:04:19.656061
410	410	394	19	1.8	\N	2022-10-05 22:04:19.662823	2022-10-05 22:04:19.662823
411	411	394	20	1.3	\N	2022-10-05 22:04:19.668902	2022-10-05 22:04:19.668902
412	412	394	21	2.0	\N	2022-10-05 22:04:19.674844	2022-10-05 22:04:19.674844
413	413	394	22	1.9	\N	2022-10-05 22:04:19.680778	2022-10-05 22:04:19.680778
414	414	394	23	1.6	\N	2022-10-05 22:04:19.687251	2022-10-05 22:04:19.687251
415	415	394	24	1.7	\N	2022-10-05 22:04:19.693584	2022-10-05 22:04:19.693584
416	416	394	25	1.4	\N	2022-10-05 22:04:19.700147	2022-10-05 22:04:19.700147
417	417	394	26	1.6	\N	2022-10-05 22:04:19.70536	2022-10-05 22:04:19.70536
418	418	394	27	1.0	\N	2022-10-05 22:04:19.713014	2022-10-05 22:04:19.713014
419	419	394	28	2.0	\N	2022-10-05 22:04:19.718326	2022-10-05 22:04:19.718326
420	420	394	29	1.7	\N	2022-10-05 22:04:19.724737	2022-10-05 22:04:19.724737
421	421	394	30	1.9	\N	2022-10-05 22:04:19.730321	2022-10-05 22:04:19.730321
422	422	394	31	1.5	\N	2022-10-05 22:04:19.7356	2022-10-05 22:04:19.7356
423	423	394	32	2.0	\N	2022-10-05 22:04:19.741309	2022-10-05 22:04:19.741309
424	424	394	33	1.6	\N	2022-10-05 22:04:19.747072	2022-10-05 22:04:19.747072
425	425	394	34	2.0	\N	2022-10-05 22:04:19.752315	2022-10-05 22:04:19.752315
426	426	394	35	2.0	\N	2022-10-05 22:04:19.757745	2022-10-05 22:04:19.757745
427	427	394	36	1.9	\N	2022-10-05 22:04:19.764454	2022-10-05 22:04:19.764454
428	428	394	37	2.0	\N	2022-10-05 22:04:19.770238	2022-10-05 22:04:19.770238
429	429	394	38	1.9	\N	2022-10-05 22:04:19.776125	2022-10-05 22:04:19.776125
430	430	394	39	2.0	\N	2022-10-05 22:04:19.784148	2022-10-05 22:04:19.784148
431	431	394	40	2.0	\N	2022-10-05 22:04:19.789559	2022-10-05 22:04:19.789559
432	432	394	41	1.0	\N	2022-10-05 22:04:19.795924	2022-10-05 22:04:19.795924
433	433	394	42	2.0	\N	2022-10-05 22:04:19.801695	2022-10-05 22:04:19.801695
434	434	394	43	2.0	\N	2022-10-05 22:04:19.807392	2022-10-05 22:04:19.807392
435	435	394	44	1.9	\N	2022-10-05 22:04:19.813323	2022-10-05 22:04:19.813323
436	436	394	45	1.5	\N	2022-10-05 22:04:19.818951	2022-10-05 22:04:19.818951
437	437	394	46	2.0	\N	2022-10-05 22:04:19.824571	2022-10-05 22:04:19.824571
438	438	394	47	2.0	\N	2022-10-05 22:04:19.83196	2022-10-05 22:04:19.83196
439	439	394	48	1.8	\N	2022-10-05 22:04:19.838936	2022-10-05 22:04:19.838936
440	440	394	49	1.6	\N	2022-10-05 22:04:19.845265	2022-10-05 22:04:19.845265
441	441	394	50	1.8	\N	2022-10-05 22:04:19.855553	2022-10-05 22:04:19.855553
442	442	394	51	1.8	\N	2022-10-05 22:04:19.861467	2022-10-05 22:04:19.861467
443	443	394	52	2.0	\N	2022-10-05 22:04:19.867144	2022-10-05 22:04:19.867144
444	444	394	53	2.0	\N	2022-10-05 22:04:19.872577	2022-10-05 22:04:19.872577
445	445	394	54	2.0	\N	2022-10-05 22:04:19.878165	2022-10-05 22:04:19.878165
446	446	394	55	1.5	\N	2022-10-05 22:04:19.884458	2022-10-05 22:04:19.884458
447	447	394	56	2.0	\N	2022-10-05 22:04:19.889975	2022-10-05 22:04:19.889975
448	448	394	57	2.0	\N	2022-10-05 22:04:19.896337	2022-10-05 22:04:19.896337
449	449	394	58	1.9	\N	2022-10-05 22:04:19.902613	2022-10-05 22:04:19.902613
450	450	394	60	0.5	\N	2022-10-05 22:04:19.909878	2022-10-05 22:04:19.909878
451	451	394	61	2.0	\N	2022-10-05 22:04:19.916753	2022-10-05 22:04:19.916753
452	452	394	62	0.1	\N	2022-10-05 22:04:19.922998	2022-10-05 22:04:19.922998
453	453	394	63	2.0	\N	2022-10-05 22:04:19.92904	2022-10-05 22:04:19.92904
454	454	394	64	0.06	\N	2022-10-05 22:04:19.935448	2022-10-05 22:04:19.935448
455	455	394	65	1.9	\N	2022-10-05 22:04:19.942871	2022-10-05 22:04:19.942871
456	456	394	66	1.9	\N	2022-10-05 22:04:19.949164	2022-10-05 22:04:19.949164
457	457	394	67	0.02	\N	2022-10-05 22:04:19.954921	2022-10-05 22:04:19.954921
458	458	394	68	2.0	\N	2022-10-05 22:04:19.962445	2022-10-05 22:04:19.962445
459	459	394	69	2.0	\N	2022-10-05 22:04:19.969167	2022-10-05 22:04:19.969167
460	460	394	70	0.5	\N	2022-10-05 22:04:19.975151	2022-10-05 22:04:19.975151
461	461	394	71	0.8	\N	2022-10-05 22:04:19.985587	2022-10-05 22:04:19.985587
462	462	394	72	0.7	\N	2022-10-05 22:04:19.992512	2022-10-05 22:04:19.992512
463	463	394	73	0.5	\N	2022-10-05 22:04:19.998643	2022-10-05 22:04:19.998643
464	464	394	74	1.3	\N	2022-10-05 22:04:20.004721	2022-10-05 22:04:20.004721
465	465	394	75	0.7	\N	2022-10-05 22:04:20.012311	2022-10-05 22:04:20.012311
466	466	394	76	2.0	\N	2022-10-05 22:04:20.01863	2022-10-05 22:04:20.01863
467	467	394	77	1.4	\N	2022-10-05 22:04:20.025185	2022-10-05 22:04:20.025185
468	468	394	78	0.12	\N	2022-10-05 22:04:20.031468	2022-10-05 22:04:20.031468
469	469	394	79	1.6	\N	2022-10-05 22:04:20.037038	2022-10-05 22:04:20.037038
470	470	394	80	1.7	\N	2022-10-05 22:04:20.044191	2022-10-05 22:04:20.044191
471	471	394	81	1.6	\N	2022-10-05 22:04:20.050575	2022-10-05 22:04:20.050575
472	472	394	82	1.6	\N	2022-10-05 22:04:20.057244	2022-10-05 22:04:20.057244
473	473	394	83	2.0	\N	2022-10-05 22:04:20.064127	2022-10-05 22:04:20.064127
474	474	394	84	1.7	\N	2022-10-05 22:04:20.071041	2022-10-05 22:04:20.071041
475	475	394	85	2.0	\N	2022-10-05 22:04:20.078017	2022-10-05 22:04:20.078017
476	476	394	86	1.9	\N	2022-10-05 22:04:20.084142	2022-10-05 22:04:20.084142
477	477	394	87	2.0	\N	2022-10-05 22:04:20.093495	2022-10-05 22:04:20.093495
478	478	394	88	2.0	\N	2022-10-05 22:04:20.100835	2022-10-05 22:04:20.100835
479	479	394	89	2.0	\N	2022-10-05 22:04:20.10768	2022-10-05 22:04:20.10768
480	480	394	90	1.6	\N	2022-10-05 22:04:20.117231	2022-10-05 22:04:20.117231
481	481	394	91	2.0	\N	2022-10-05 22:04:20.123956	2022-10-05 22:04:20.123956
482	482	394	92	1.9	\N	2022-10-05 22:04:20.131175	2022-10-05 22:04:20.131175
483	483	394	93	1.5	\N	2022-10-05 22:04:20.13733	2022-10-05 22:04:20.13733
484	484	394	94	1.8	\N	2022-10-05 22:04:20.144613	2022-10-05 22:04:20.144613
485	485	394	95	2.0	\N	2022-10-05 22:04:20.152387	2022-10-05 22:04:20.152387
486	486	394	96	2.0	\N	2022-10-05 22:04:20.158776	2022-10-05 22:04:20.158776
487	487	394	97	1.9	\N	2022-10-05 22:04:20.168662	2022-10-05 22:04:20.168662
488	488	394	98	2.0	\N	2022-10-05 22:04:20.175285	2022-10-05 22:04:20.175285
489	489	394	99	1.9	\N	2022-10-05 22:04:20.182001	2022-10-05 22:04:20.182001
490	490	490	1	1.6	\N	2022-10-05 22:04:20.18827	2022-10-05 22:04:20.18827
491	491	490	2	2.0	\N	2022-10-05 22:04:20.195279	2022-10-05 22:04:20.195279
492	492	490	3	1.0	\N	2022-10-05 22:04:20.20152	2022-10-05 22:04:20.20152
493	493	490	4	2.0	\N	2022-10-05 22:04:20.208687	2022-10-05 22:04:20.208687
494	494	490	5	2.0	\N	2022-10-05 22:04:20.215165	2022-10-05 22:04:20.215165
495	495	490	6	1.6	\N	2022-10-05 22:04:20.221179	2022-10-05 22:04:20.221179
496	496	490	7	1.0	\N	2022-10-05 22:04:20.229677	2022-10-05 22:04:20.229677
497	497	490	8	1.2	\N	2022-10-05 22:04:20.235842	2022-10-05 22:04:20.235842
498	498	490	9	1.9	\N	2022-10-05 22:04:20.243039	2022-10-05 22:04:20.243039
499	499	490	10	0.9	\N	2022-10-05 22:04:20.253367	2022-10-05 22:04:20.253367
500	500	490	12	2.0	\N	2022-10-05 22:04:20.263496	2022-10-05 22:04:20.263496
501	501	490	13	1.7	\N	2022-10-05 22:04:20.272049	2022-10-05 22:04:20.272049
502	502	490	14	2.0	\N	2022-10-05 22:04:20.284494	2022-10-05 22:04:20.284494
503	503	490	15	2.0	\N	2022-10-05 22:04:20.291346	2022-10-05 22:04:20.291346
504	504	490	16	1.7	\N	2022-10-05 22:04:20.298423	2022-10-05 22:04:20.298423
505	505	490	17	1.8	\N	2022-10-05 22:04:20.304575	2022-10-05 22:04:20.304575
506	506	490	18	2.0	\N	2022-10-05 22:04:20.311667	2022-10-05 22:04:20.311667
507	507	490	19	1.7	\N	2022-10-05 22:04:20.317683	2022-10-05 22:04:20.317683
508	508	490	20	2.0	\N	2022-10-05 22:04:20.323719	2022-10-05 22:04:20.323719
509	509	490	21	1.7	\N	2022-10-05 22:04:20.331335	2022-10-05 22:04:20.331335
510	510	490	22	2.0	\N	2022-10-05 22:04:20.338077	2022-10-05 22:04:20.338077
511	511	490	23	2.0	\N	2022-10-05 22:04:20.344333	2022-10-05 22:04:20.344333
512	512	490	24	2.0	\N	2022-10-05 22:04:20.350527	2022-10-05 22:04:20.350527
513	513	490	25	0.8	\N	2022-10-05 22:04:20.356644	2022-10-05 22:04:20.356644
514	514	490	26	1.4	\N	2022-10-05 22:04:20.361686	2022-10-05 22:04:20.361686
515	515	490	27	2.0	\N	2022-10-05 22:04:20.366608	2022-10-05 22:04:20.366608
516	516	490	28	1.9	\N	2022-10-05 22:04:20.371906	2022-10-05 22:04:20.371906
517	517	490	29	1.7	\N	2022-10-05 22:04:20.37717	2022-10-05 22:04:20.37717
518	518	490	30	2.0	\N	2022-10-05 22:04:20.382845	2022-10-05 22:04:20.382845
519	519	490	31	1.8	\N	2022-10-05 22:04:20.387931	2022-10-05 22:04:20.387931
520	520	490	32	1.5	\N	2022-10-05 22:04:20.393038	2022-10-05 22:04:20.393038
521	521	490	33	0.3	\N	2022-10-05 22:04:20.39846	2022-10-05 22:04:20.39846
522	522	490	34	1.8	\N	2022-10-05 22:04:20.403769	2022-10-05 22:04:20.403769
523	523	490	35	0.5	\N	2022-10-05 22:04:20.409786	2022-10-05 22:04:20.409786
524	524	490	36	0.5	\N	2022-10-05 22:04:20.416395	2022-10-05 22:04:20.416395
525	525	490	37	1.9	\N	2022-10-05 22:04:20.421643	2022-10-05 22:04:20.421643
526	526	490	38	1.6	\N	2022-10-05 22:04:20.427608	2022-10-05 22:04:20.427608
527	527	490	39	0.5	\N	2022-10-05 22:04:20.433441	2022-10-05 22:04:20.433441
528	528	490	40	1.0	\N	2022-10-05 22:04:20.438468	2022-10-05 22:04:20.438468
529	529	490	41	0.6	\N	2022-10-05 22:04:20.445551	2022-10-05 22:04:20.445551
530	530	490	42	2.0	\N	2022-10-05 22:04:20.4513	2022-10-05 22:04:20.4513
531	531	490	43	0.5	\N	2022-10-05 22:04:20.45736	2022-10-05 22:04:20.45736
532	532	490	44	0.6	\N	2022-10-05 22:04:20.463311	2022-10-05 22:04:20.463311
533	533	490	45	1.5	\N	2022-10-05 22:04:20.468655	2022-10-05 22:04:20.468655
534	534	490	46	1.8	\N	2022-10-05 22:04:20.474423	2022-10-05 22:04:20.474423
535	535	490	47	2.0	\N	2022-10-05 22:04:20.480528	2022-10-05 22:04:20.480528
536	536	490	48	1.8	\N	2022-10-05 22:04:20.485789	2022-10-05 22:04:20.485789
537	537	490	49	1.6	\N	2022-10-05 22:04:20.493491	2022-10-05 22:04:20.493491
538	538	490	50	1.8	\N	2022-10-05 22:04:20.499665	2022-10-05 22:04:20.499665
539	539	490	51	1.9	\N	2022-10-05 22:04:20.504679	2022-10-05 22:04:20.504679
540	540	490	52	2.0	\N	2022-10-05 22:04:20.514629	2022-10-05 22:04:20.514629
541	541	490	53	2.0	\N	2022-10-05 22:04:20.520239	2022-10-05 22:04:20.520239
542	542	490	54	1.7	\N	2022-10-05 22:04:20.526217	2022-10-05 22:04:20.526217
543	543	490	55	1.6	\N	2022-10-05 22:04:20.532187	2022-10-05 22:04:20.532187
544	544	490	56	1.6	\N	2022-10-05 22:04:20.537154	2022-10-05 22:04:20.537154
545	545	490	57	1.8	\N	2022-10-05 22:04:20.543002	2022-10-05 22:04:20.543002
546	546	490	58	1.7	\N	2022-10-05 22:04:20.548402	2022-10-05 22:04:20.548402
547	547	490	59	1.5	\N	2022-10-05 22:04:20.553466	2022-10-05 22:04:20.553466
548	548	490	60	1.8	\N	2022-10-05 22:04:20.559145	2022-10-05 22:04:20.559145
549	549	490	61	2.0	\N	2022-10-05 22:04:20.56574	2022-10-05 22:04:20.56574
550	550	490	62	1.5	\N	2022-10-05 22:04:20.571039	2022-10-05 22:04:20.571039
551	551	490	63	2.0	\N	2022-10-05 22:04:20.577027	2022-10-05 22:04:20.577027
552	552	490	64	2.0	\N	2022-10-05 22:04:20.583142	2022-10-05 22:04:20.583142
553	553	490	65	2.0	\N	2022-10-05 22:04:20.587945	2022-10-05 22:04:20.587945
554	554	490	66	1.9	\N	2022-10-05 22:04:20.594341	2022-10-05 22:04:20.594341
555	555	490	67	2.0	\N	2022-10-05 22:04:20.599401	2022-10-05 22:04:20.599401
556	556	490	68	1.8	\N	2022-10-05 22:04:20.604545	2022-10-05 22:04:20.604545
557	557	490	69	0.7	\N	2022-10-05 22:04:20.6095	2022-10-05 22:04:20.6095
558	558	490	70	1.8	\N	2022-10-05 22:04:20.614866	2022-10-05 22:04:20.614866
559	559	490	71	1.8	\N	2022-10-05 22:04:20.619695	2022-10-05 22:04:20.619695
560	560	490	72	1.6	\N	2022-10-05 22:04:20.625114	2022-10-05 22:04:20.625114
561	561	490	73	0.8	\N	2022-10-05 22:04:20.633052	2022-10-05 22:04:20.633052
562	562	490	74	1.2	\N	2022-10-05 22:04:20.638242	2022-10-05 22:04:20.638242
563	563	490	75	1.6	\N	2022-10-05 22:04:20.644034	2022-10-05 22:04:20.644034
564	564	490	76	0.5	\N	2022-10-05 22:04:20.649389	2022-10-05 22:04:20.649389
565	565	490	77	1.0	\N	2022-10-05 22:04:20.654576	2022-10-05 22:04:20.654576
566	566	490	78	2.0	\N	2022-10-05 22:04:20.662295	2022-10-05 22:04:20.662295
567	567	490	79	2.0	\N	2022-10-05 22:04:20.669884	2022-10-05 22:04:20.669884
568	568	490	80	2.0	\N	2022-10-05 22:04:20.674902	2022-10-05 22:04:20.674902
569	569	490	81	1.8	\N	2022-10-05 22:04:20.681265	2022-10-05 22:04:20.681265
570	570	490	82	2.0	\N	2022-10-05 22:04:20.686428	2022-10-05 22:04:20.686428
571	571	490	83	2.0	\N	2022-10-05 22:04:20.691638	2022-10-05 22:04:20.691638
572	572	490	85	2.0	\N	2022-10-05 22:04:20.697045	2022-10-05 22:04:20.697045
573	573	490	86	2.0	\N	2022-10-05 22:04:20.70246	2022-10-05 22:04:20.70246
574	574	490	91	2.0	\N	2022-10-05 22:04:20.707818	2022-10-05 22:04:20.707818
575	575	490	92	1.7	\N	2022-10-05 22:04:20.713248	2022-10-05 22:04:20.713248
576	576	490	93	1.8	\N	2022-10-05 22:04:20.719142	2022-10-05 22:04:20.719142
577	577	490	94	1.6	\N	2022-10-05 22:04:20.724179	2022-10-05 22:04:20.724179
578	578	490	95	1.9	\N	2022-10-05 22:04:20.730033	2022-10-05 22:04:20.730033
579	579	490	96	0.8	\N	2022-10-05 22:04:20.735604	2022-10-05 22:04:20.735604
580	580	490	97	2.0	\N	2022-10-05 22:04:20.741775	2022-10-05 22:04:20.741775
581	581	490	98	2.0	\N	2022-10-05 22:04:20.749078	2022-10-05 22:04:20.749078
582	582	490	99	1.5	\N	2022-10-05 22:04:20.754368	2022-10-05 22:04:20.754368
583	583	490	100	0.6	\N	2022-10-05 22:04:20.759699	2022-10-05 22:04:20.759699
584	144	584	1	0.8	\N	2022-10-05 22:04:20.765662	2022-10-05 22:04:20.765662
585	32	584	2	0.5	\N	2022-10-05 22:04:20.770818	2022-10-05 22:04:20.770818
586	92	584	3	0.9	\N	2022-10-05 22:04:20.777093	2022-10-05 22:04:20.777093
587	136	584	4	1.6	\N	2022-10-05 22:04:20.782533	2022-10-05 22:04:20.782533
588	137	584	5	1.1	\N	2022-10-05 22:04:20.787534	2022-10-05 22:04:20.787534
589	202	584	6	0.4	\N	2022-10-05 22:04:20.79335	2022-10-05 22:04:20.79335
590	208	584	7	1.8	\N	2022-10-05 22:04:20.799183	2022-10-05 22:04:20.799183
591	118	584	8	1.5	\N	2022-10-05 22:04:20.804425	2022-10-05 22:04:20.804425
592	70	584	9	1.4	\N	2022-10-05 22:04:20.811216	2022-10-05 22:04:20.811216
593	231	584	10	0.7	\N	2022-10-05 22:04:20.817584	2022-10-05 22:04:20.817584
594	279	584	11	0.6	\N	2022-10-05 22:04:20.82294	2022-10-05 22:04:20.82294
595	305	584	12	0.7	\N	2022-10-05 22:04:20.828965	2022-10-05 22:04:20.828965
596	305	584	13	1.7	\N	2022-10-05 22:04:20.835855	2022-10-05 22:04:20.835855
597	305	584	14	0.7	\N	2022-10-05 22:04:20.8463	2022-10-05 22:04:20.8463
598	332	584	15	0.9	\N	2022-10-05 22:04:20.856765	2022-10-05 22:04:20.856765
599	333	584	16	0.8	\N	2022-10-05 22:04:20.861859	2022-10-05 22:04:20.861859
600	353	584	17	1.6	\N	2022-10-05 22:04:20.86745	2022-10-05 22:04:20.86745
601	354	584	18	1.7	\N	2022-10-05 22:04:20.872115	2022-10-05 22:04:20.872115
602	356	584	19	1.3	\N	2022-10-05 22:04:20.879272	2022-10-05 22:04:20.879272
603	357	584	20	1.7	\N	2022-10-05 22:04:20.884068	2022-10-05 22:04:20.884068
604	361	584	21	1.7	\N	2022-10-05 22:04:20.889947	2022-10-05 22:04:20.889947
605	364	584	22	1.5	\N	2022-10-05 22:04:20.895666	2022-10-05 22:04:20.895666
606	368	584	23	1.1	\N	2022-10-05 22:04:20.90135	2022-10-05 22:04:20.90135
607	378	584	24	2.0	\N	2022-10-05 22:04:20.906935	2022-10-05 22:04:20.906935
608	436	584	25	1.9	\N	2022-10-05 22:04:20.912067	2022-10-05 22:04:20.912067
609	436	584	26	1.5	\N	2022-10-05 22:04:20.918165	2022-10-05 22:04:20.918165
610	439	584	27	0.3	\N	2022-10-05 22:04:20.924032	2022-10-05 22:04:20.924032
611	440	584	28	0.5	\N	2022-10-05 22:04:20.930163	2022-10-05 22:04:20.930163
612	471	584	29	1.5	\N	2022-10-05 22:04:20.935497	2022-10-05 22:04:20.935497
613	472	584	30	1.2	\N	2022-10-05 22:04:20.941538	2022-10-05 22:04:20.941538
614	495	584	31	1.0	\N	2022-10-05 22:04:20.947107	2022-10-05 22:04:20.947107
615	508	584	32	2.0	\N	2022-10-05 22:04:20.952227	2022-10-05 22:04:20.952227
616	508	584	33	1.1	\N	2022-10-05 22:04:20.961287	2022-10-05 22:04:20.961287
617	517	584	34	1.2	\N	2022-10-05 22:04:20.966805	2022-10-05 22:04:20.966805
618	526	584	35	1.6	\N	2022-10-05 22:04:20.971813	2022-10-05 22:04:20.971813
619	530	584	36	1.9	\N	2022-10-05 22:04:20.978143	2022-10-05 22:04:20.978143
620	533	584	37	1.1	\N	2022-10-05 22:04:20.983962	2022-10-05 22:04:20.983962
621	557	584	38	0.7	\N	2022-10-05 22:04:20.989172	2022-10-05 22:04:20.989172
622	574	584	39	0.9	\N	2022-10-05 22:04:20.996119	2022-10-05 22:04:20.996119
623	1	584	40	2.0	\N	2022-10-05 22:04:21.001618	2022-10-05 22:04:21.001618
624	4	584	41	2.0	\N	2022-10-05 22:04:21.006703	2022-10-05 22:04:21.006703
625	4	584	42	1.7	\N	2022-10-05 22:04:21.012855	2022-10-05 22:04:21.012855
626	330	584	43	1.2	\N	2022-10-05 22:04:21.01815	2022-10-05 22:04:21.01815
627	380	584	44	1.7	\N	2022-10-05 22:04:21.024235	2022-10-05 22:04:21.024235
628	392	584	45	1.1	\N	2022-10-05 22:04:21.029603	2022-10-05 22:04:21.029603
629	422	584	46	0.9	\N	2022-10-05 22:04:21.034834	2022-10-05 22:04:21.034834
630	424	584	47	1.0	\N	2022-10-05 22:04:21.039927	2022-10-05 22:04:21.039927
631	435	584	48	1.8	\N	2022-10-05 22:04:21.045754	2022-10-05 22:04:21.045754
632	441	584	49	1.2	\N	2022-10-05 22:04:21.051255	2022-10-05 22:04:21.051255
633	556	584	50	1.8	\N	2022-10-05 22:04:21.056651	2022-10-05 22:04:21.056651
634	537	584	51	1.1	\N	2022-10-05 22:04:21.062008	2022-10-05 22:04:21.062008
635	538	584	52	1.6	\N	2022-10-05 22:04:21.06738	2022-10-05 22:04:21.06738
636	542	584	53	1.0	\N	2022-10-05 22:04:21.072704	2022-10-05 22:04:21.072704
637	544	584	54	1.7	\N	2022-10-05 22:04:21.078286	2022-10-05 22:04:21.078286
638	516	584	55	2.0	\N	2022-10-05 22:04:21.084384	2022-10-05 22:04:21.084384
639	93	584	56	2.0	\N	2022-10-05 22:04:21.089768	2022-10-05 22:04:21.089768
640	140	584	57	2.0	\N	2022-10-05 22:04:21.097257	2022-10-05 22:04:21.097257
641	142	584	58	1.9	\N	2022-10-05 22:04:21.103219	2022-10-05 22:04:21.103219
642	3	584	59	1.0	\N	2022-10-05 22:04:21.109358	2022-10-05 22:04:21.109358
643	306	584	60	1.8	\N	2022-10-05 22:04:21.114592	2022-10-05 22:04:21.114592
644	398	584	61	0.5	\N	2022-10-05 22:04:21.120075	2022-10-05 22:04:21.120075
645	407	584	62	2.0	\N	2022-10-05 22:04:21.125992	2022-10-05 22:04:21.125992
646	410	584	63	1.0	\N	2022-10-05 22:04:21.131018	2022-10-05 22:04:21.131018
647	420	584	64	0.7	\N	2022-10-05 22:04:21.136086	2022-10-05 22:04:21.136086
648	421	584	65	2.0	\N	2022-10-05 22:04:21.141308	2022-10-05 22:04:21.141308
649	209	584	66	2.0	\N	2022-10-05 22:04:21.14693	2022-10-05 22:04:21.14693
650	374	584	67	2.0	\N	2022-10-05 22:04:21.152136	2022-10-05 22:04:21.152136
651	5	584	68	2.0	\N	2022-10-05 22:04:21.158527	2022-10-05 22:04:21.158527
652	10	584	69	2.0	\N	2022-10-05 22:04:21.164136	2022-10-05 22:04:21.164136
653	10	584	70	1.9	\N	2022-10-05 22:04:21.169507	2022-10-05 22:04:21.169507
654	12	584	71	2.0	\N	2022-10-05 22:04:21.176075	2022-10-05 22:04:21.176075
655	17	584	72	2.0	\N	2022-10-05 22:04:21.181979	2022-10-05 22:04:21.181979
656	95	584	73	2.0	\N	2022-10-05 22:04:21.186857	2022-10-05 22:04:21.186857
657	96	584	74	2.0	\N	2022-10-05 22:04:21.194182	2022-10-05 22:04:21.194182
658	99	584	75	2.0	\N	2022-10-05 22:04:21.20018	2022-10-05 22:04:21.20018
659	99	584	76	2.0	\N	2022-10-05 22:04:21.205168	2022-10-05 22:04:21.205168
660	101	584	77	2.0	\N	2022-10-05 22:04:21.210713	2022-10-05 22:04:21.210713
661	114	584	78	1.7	\N	2022-10-05 22:04:21.215983	2022-10-05 22:04:21.215983
662	275	584	79	2.0	\N	2022-10-05 22:04:21.220823	2022-10-05 22:04:21.220823
663	331	584	80	1.9	\N	2022-10-05 22:04:21.226005	2022-10-05 22:04:21.226005
664	365	584	81	1.2	\N	2022-10-05 22:04:21.231346	2022-10-05 22:04:21.231346
665	388	584	82	2.0	\N	2022-10-05 22:04:21.236303	2022-10-05 22:04:21.236303
666	442	584	83	1.3	\N	2022-10-05 22:04:21.241498	2022-10-05 22:04:21.241498
667	667	584	84	0.005	\N	2022-10-05 22:04:21.247048	2022-10-05 22:04:21.247048
668	55	584	85	1.3	\N	2022-10-05 22:04:21.252069	2022-10-05 22:04:21.252069
669	67	584	86	2.0	\N	2022-10-05 22:04:21.257203	2022-10-05 22:04:21.257203
670	68	584	87	2.0	\N	2022-10-05 22:04:21.262031	2022-10-05 22:04:21.262031
671	68	584	88	0.7	\N	2022-10-05 22:04:21.267322	2022-10-05 22:04:21.267322
672	76	584	89	2.0	\N	2022-10-05 22:04:21.272349	2022-10-05 22:04:21.272349
673	76	584	90	2.0	\N	2022-10-05 22:04:21.278047	2022-10-05 22:04:21.278047
674	105	584	91	2.0	\N	2022-10-05 22:04:21.283121	2022-10-05 22:04:21.283121
675	106	584	92	0.7	\N	2022-10-05 22:04:21.288727	2022-10-05 22:04:21.288727
676	110	584	93	1.8	\N	2022-10-05 22:04:21.293923	2022-10-05 22:04:21.293923
677	110	584	94	1.0	\N	2022-10-05 22:04:21.299631	2022-10-05 22:04:21.299631
678	9	584	95	2.0	\N	2022-10-05 22:04:21.304715	2022-10-05 22:04:21.304715
679	50	584	96	2.0	\N	2022-10-05 22:04:21.31017	2022-10-05 22:04:21.31017
680	205	584	97	2.0	\N	2022-10-05 22:04:21.315738	2022-10-05 22:04:21.315738
681	277	584	98	2.0	\N	2022-10-05 22:04:21.32085	2022-10-05 22:04:21.32085
682	75	584	99	2.0	\N	2022-10-05 22:04:21.327408	2022-10-05 22:04:21.327408
683	108	584	100	1.3	\N	2022-10-05 22:04:21.333544	2022-10-05 22:04:21.333544
684	395	684	1	2.0	\N	2022-10-05 22:04:21.339067	2022-10-05 22:04:21.339067
685	480	684	2	0.6	\N	2022-10-05 22:04:21.344892	2022-10-05 22:04:21.344892
686	489	684	3	2.0	\N	2022-10-05 22:04:21.352134	2022-10-05 22:04:21.352134
687	502	684	4	2.0	\N	2022-10-05 22:04:21.358071	2022-10-05 22:04:21.358071
688	503	684	5	2.0	\N	2022-10-05 22:04:21.36375	2022-10-05 22:04:21.36375
689	504	684	6	1.8	\N	2022-10-05 22:04:21.368639	2022-10-05 22:04:21.368639
690	506	684	7	2.0	\N	2022-10-05 22:04:21.374407	2022-10-05 22:04:21.374407
691	507	684	8	1.7	\N	2022-10-05 22:04:21.37997	2022-10-05 22:04:21.37997
692	518	684	9	1.6	\N	2022-10-05 22:04:21.385541	2022-10-05 22:04:21.385541
693	525	684	10	1.0	\N	2022-10-05 22:04:21.391276	2022-10-05 22:04:21.391276
694	535	684	11	2.0	\N	2022-10-05 22:04:21.396473	2022-10-05 22:04:21.396473
695	31	684	12	0.7	\N	2022-10-05 22:04:21.401663	2022-10-05 22:04:21.401663
696	54	684	13	0.5	\N	2022-10-05 22:04:21.407594	2022-10-05 22:04:21.407594
697	102	684	14	0.5	\N	2022-10-05 22:04:21.41272	2022-10-05 22:04:21.41272
698	103	684	15	2.0	\N	2022-10-05 22:04:21.419616	2022-10-05 22:04:21.419616
699	229	684	16	0.6	\N	2022-10-05 22:04:21.432511	2022-10-05 22:04:21.432511
700	482	684	17	1.0	\N	2022-10-05 22:04:21.438077	2022-10-05 22:04:21.438077
701	485	684	18	2.0	\N	2022-10-05 22:04:21.443666	2022-10-05 22:04:21.443666
702	11	684	19	1.7	\N	2022-10-05 22:04:21.449626	2022-10-05 22:04:21.449626
703	48	684	20	1.5	\N	2022-10-05 22:04:21.454578	2022-10-05 22:04:21.454578
704	52	684	21	1.1	\N	2022-10-05 22:04:21.460925	2022-10-05 22:04:21.460925
705	53	684	22	0.8	\N	2022-10-05 22:04:21.467269	2022-10-05 22:04:21.467269
706	94	684	23	2.0	\N	2022-10-05 22:04:21.472141	2022-10-05 22:04:21.472141
707	115	684	24	2.0	\N	2022-10-05 22:04:21.477644	2022-10-05 22:04:21.477644
708	138	684	25	2.0	\N	2022-10-05 22:04:21.48284	2022-10-05 22:04:21.48284
709	227	684	26	1.8	\N	2022-10-05 22:04:21.488042	2022-10-05 22:04:21.488042
710	228	684	27	1.8	\N	2022-10-05 22:04:21.493871	2022-10-05 22:04:21.493871
711	313	684	28	0.9	\N	2022-10-05 22:04:21.499588	2022-10-05 22:04:21.499588
712	712	684	29	1.6	\N	2022-10-05 22:04:21.504547	2022-10-05 22:04:21.504547
713	381	684	30	1.1	\N	2022-10-05 22:04:21.510515	2022-10-05 22:04:21.510515
714	382	684	31	1.4	\N	2022-10-05 22:04:21.515978	2022-10-05 22:04:21.515978
715	393	684	32	2.0	\N	2022-10-05 22:04:21.520984	2022-10-05 22:04:21.520984
716	408	684	33	1.8	\N	2022-10-05 22:04:21.526635	2022-10-05 22:04:21.526635
717	486	684	34	1.8	\N	2022-10-05 22:04:21.531752	2022-10-05 22:04:21.531752
718	487	684	35	2.0	\N	2022-10-05 22:04:21.538824	2022-10-05 22:04:21.538824
719	488	684	36	1.6	\N	2022-10-05 22:04:21.543795	2022-10-05 22:04:21.543795
720	534	684	37	1.8	\N	2022-10-05 22:04:21.549583	2022-10-05 22:04:21.549583
721	545	684	38	1.5	\N	2022-10-05 22:04:21.55431	2022-10-05 22:04:21.55431
722	558	684	39	1.9	\N	2022-10-05 22:04:21.562146	2022-10-05 22:04:21.562146
723	558	684	40	2.0	\N	2022-10-05 22:04:21.567256	2022-10-05 22:04:21.567256
724	2	684	41	1.1	\N	2022-10-05 22:04:21.572178	2022-10-05 22:04:21.572178
725	6	684	42	1.8	\N	2022-10-05 22:04:21.580089	2022-10-05 22:04:21.580089
726	19	684	43	2.0	\N	2022-10-05 22:04:21.585556	2022-10-05 22:04:21.585556
727	20	684	44	1.6	\N	2022-10-05 22:04:21.591261	2022-10-05 22:04:21.591261
728	21	684	45	1.9	\N	2022-10-05 22:04:21.597368	2022-10-05 22:04:21.597368
729	26	684	46	1.5	\N	2022-10-05 22:04:21.6022	2022-10-05 22:04:21.6022
730	35	684	47	2.0	\N	2022-10-05 22:04:21.606929	2022-10-05 22:04:21.606929
731	71	684	48	1.0	\N	2022-10-05 22:04:21.613196	2022-10-05 22:04:21.613196
732	273	684	49	1.2	\N	2022-10-05 22:04:21.618024	2022-10-05 22:04:21.618024
733	733	684	50	1.8	\N	2022-10-05 22:04:21.622845	2022-10-05 22:04:21.622845
734	326	684	51	0.5	\N	2022-10-05 22:04:21.629415	2022-10-05 22:04:21.629415
735	329	684	52	0.8	\N	2022-10-05 22:04:21.634504	2022-10-05 22:04:21.634504
736	386	684	53	1.8	\N	2022-10-05 22:04:21.639403	2022-10-05 22:04:21.639403
737	387	684	54	2.0	\N	2022-10-05 22:04:21.645014	2022-10-05 22:04:21.645014
738	474	684	55	1.5	\N	2022-10-05 22:04:21.650915	2022-10-05 22:04:21.650915
739	476	684	56	1.5	\N	2022-10-05 22:04:21.655991	2022-10-05 22:04:21.655991
740	478	684	57	1.1	\N	2022-10-05 22:04:21.661707	2022-10-05 22:04:21.661707
741	509	684	58	1.0	\N	2022-10-05 22:04:21.668753	2022-10-05 22:04:21.668753
742	515	684	59	1.0	\N	2022-10-05 22:04:21.674791	2022-10-05 22:04:21.674791
743	536	684	60	1.0	\N	2022-10-05 22:04:21.679688	2022-10-05 22:04:21.679688
744	540	684	61	2.0	\N	2022-10-05 22:04:21.685717	2022-10-05 22:04:21.685717
745	541	684	62	1.5	\N	2022-10-05 22:04:21.691258	2022-10-05 22:04:21.691258
746	16	684	63	2.0	\N	2022-10-05 22:04:21.697715	2022-10-05 22:04:21.697715
747	22	684	64	0.5	\N	2022-10-05 22:04:21.702773	2022-10-05 22:04:21.702773
748	29	684	65	1.7	\N	2022-10-05 22:04:21.708106	2022-10-05 22:04:21.708106
749	30	684	66	1.0	\N	2022-10-05 22:04:21.713317	2022-10-05 22:04:21.713317
750	111	684	67	0.8	\N	2022-10-05 22:04:21.718463	2022-10-05 22:04:21.718463
751	113	684	68	0.7	\N	2022-10-05 22:04:21.724063	2022-10-05 22:04:21.724063
752	141	684	69	0.5	\N	2022-10-05 22:04:21.729232	2022-10-05 22:04:21.729232
753	158	684	70	1.4	\N	2022-10-05 22:04:21.734606	2022-10-05 22:04:21.734606
754	389	684	71	0.7	\N	2022-10-05 22:04:21.739573	2022-10-05 22:04:21.739573
755	491	684	72	0.9	\N	2022-10-05 22:04:21.74488	2022-10-05 22:04:21.74488
756	575	684	73	1.0	\N	2022-10-05 22:04:21.75135	2022-10-05 22:04:21.75135
757	475	684	74	1.7	\N	2022-10-05 22:04:21.756302	2022-10-05 22:04:21.756302
758	117	684	75	0.5	\N	2022-10-05 22:04:21.761604	2022-10-05 22:04:21.761604
759	580	684	76	1.0	\N	2022-10-05 22:04:21.767723	2022-10-05 22:04:21.767723
760	454	684	77	1.9	\N	2022-10-05 22:04:21.772622	2022-10-05 22:04:21.772622
761	157	684	78	1.4	\N	2022-10-05 22:04:21.778613	2022-10-05 22:04:21.778613
762	98	684	79	0.7	\N	2022-10-05 22:04:21.783956	2022-10-05 22:04:21.783956
763	112	684	80	0.7	\N	2022-10-05 22:04:21.789658	2022-10-05 22:04:21.789658
764	112	684	81	1.7	\N	2022-10-05 22:04:21.79557	2022-10-05 22:04:21.79557
765	120	684	82	1.7	\N	2022-10-05 22:04:21.802415	2022-10-05 22:04:21.802415
766	120	684	83	1.1	\N	2022-10-05 22:04:21.808648	2022-10-05 22:04:21.808648
767	120	684	84	1.0	\N	2022-10-05 22:04:21.814247	2022-10-05 22:04:21.814247
768	193	684	85	1.5	\N	2022-10-05 22:04:21.819516	2022-10-05 22:04:21.819516
769	463	684	86	1.4	\N	2022-10-05 22:04:21.826738	2022-10-05 22:04:21.826738
770	234	684	87	1.8	\N	2022-10-05 22:04:21.835195	2022-10-05 22:04:21.835195
771	234	684	88	1.6	\N	2022-10-05 22:04:21.840859	2022-10-05 22:04:21.840859
772	234	684	89	1.1	\N	2022-10-05 22:04:21.84653	2022-10-05 22:04:21.84653
773	460	684	90	0.5	\N	2022-10-05 22:04:21.853436	2022-10-05 22:04:21.853436
774	462	684	91	1.0	\N	2022-10-05 22:04:21.858999	2022-10-05 22:04:21.858999
775	468	684	92	0.04	\N	2022-10-05 22:04:21.864789	2022-10-05 22:04:21.864789
776	452	684	93	0.08	\N	2022-10-05 22:04:21.86977	2022-10-05 22:04:21.86977
777	458	684	94	0.17	\N	2022-10-05 22:04:21.874605	2022-10-05 22:04:21.874605
778	309	684	95	2.0	\N	2022-10-05 22:04:21.880464	2022-10-05 22:04:21.880464
779	303	684	96	1.7	\N	2022-10-05 22:04:21.886539	2022-10-05 22:04:21.886539
780	521	684	97	0.8	\N	2022-10-05 22:04:21.891981	2022-10-05 22:04:21.891981
781	564	684	98	1.2	\N	2022-10-05 22:04:21.897787	2022-10-05 22:04:21.897787
782	527	684	99	2.0	\N	2022-10-05 22:04:21.902942	2022-10-05 22:04:21.902942
783	529	684	100	1.6	\N	2022-10-05 22:04:21.909032	2022-10-05 22:04:21.909032
784	531	784	1	0.7	\N	2022-10-05 22:04:21.915248	2022-10-05 22:04:21.915248
785	192	784	2	2.0	\N	2022-10-05 22:04:21.92078	2022-10-05 22:04:21.92078
786	195	784	3	1.9	\N	2022-10-05 22:04:21.927698	2022-10-05 22:04:21.927698
787	203	784	4	2.0	\N	2022-10-05 22:04:21.933069	2022-10-05 22:04:21.933069
788	204	784	5	2.0	\N	2022-10-05 22:04:21.9383	2022-10-05 22:04:21.9383
789	375	784	6	2.0	\N	2022-10-05 22:04:21.944687	2022-10-05 22:04:21.944687
790	790	784	7	1.6	\N	2022-10-05 22:04:21.951774	2022-10-05 22:04:21.951774
791	790	784	8	1.8	\N	2022-10-05 22:04:21.957742	2022-10-05 22:04:21.957742
792	28	784	9	1.8	\N	2022-10-05 22:04:21.963612	2022-10-05 22:04:21.963612
793	28	784	10	1.0	\N	2022-10-05 22:04:21.969377	2022-10-05 22:04:21.969377
794	116	784	11	1.8	\N	2022-10-05 22:04:21.97473	2022-10-05 22:04:21.97473
795	116	784	12	1.6	\N	2022-10-05 22:04:21.980335	2022-10-05 22:04:21.980335
796	143	784	13	0.3	\N	2022-10-05 22:04:21.985365	2022-10-05 22:04:21.985365
797	154	784	14	1.2	\N	2022-10-05 22:04:21.99037	2022-10-05 22:04:21.99037
798	159	784	15	1.8	\N	2022-10-05 22:04:21.995922	2022-10-05 22:04:21.995922
799	159	784	16	1.0	\N	2022-10-05 22:04:22.001221	2022-10-05 22:04:22.001221
800	162	784	17	1.8	\N	2022-10-05 22:04:22.007287	2022-10-05 22:04:22.007287
801	162	784	18	0.9	\N	2022-10-05 22:04:22.01254	2022-10-05 22:04:22.01254
802	163	784	19	1.8	\N	2022-10-05 22:04:22.017823	2022-10-05 22:04:22.017823
803	803	784	20	1.4	\N	2022-10-05 22:04:22.023026	2022-10-05 22:04:22.023026
804	274	784	21	1.2	\N	2022-10-05 22:04:22.028797	2022-10-05 22:04:22.028797
805	276	784	22	2.0	\N	2022-10-05 22:04:22.033709	2022-10-05 22:04:22.033709
806	280	784	23	1.7	\N	2022-10-05 22:04:22.038402	2022-10-05 22:04:22.038402
807	280	784	24	0.9	\N	2022-10-05 22:04:22.043555	2022-10-05 22:04:22.043555
808	281	784	25	1.5	\N	2022-10-05 22:04:22.048646	2022-10-05 22:04:22.048646
809	281	784	26	0.8	\N	2022-10-05 22:04:22.053567	2022-10-05 22:04:22.053567
810	282	784	27	1.5	\N	2022-10-05 22:04:22.058898	2022-10-05 22:04:22.058898
811	282	784	28	1.0	\N	2022-10-05 22:04:22.064504	2022-10-05 22:04:22.064504
812	307	784	29	1.5	\N	2022-10-05 22:04:22.069303	2022-10-05 22:04:22.069303
813	311	784	30	1.4	\N	2022-10-05 22:04:22.075015	2022-10-05 22:04:22.075015
814	328	784	31	1.8	\N	2022-10-05 22:04:22.080495	2022-10-05 22:04:22.080495
815	367	784	32	1.7	\N	2022-10-05 22:04:22.085478	2022-10-05 22:04:22.085478
816	367	784	33	1.2	\N	2022-10-05 22:04:22.090222	2022-10-05 22:04:22.090222
817	369	784	34	1.8	\N	2022-10-05 22:04:22.096527	2022-10-05 22:04:22.096527
818	369	784	35	0.7	\N	2022-10-05 22:04:22.101599	2022-10-05 22:04:22.101599
819	383	784	36	0.8	\N	2022-10-05 22:04:22.106466	2022-10-05 22:04:22.106466
820	383	784	37	2.0	\N	2022-10-05 22:04:22.112356	2022-10-05 22:04:22.112356
821	385	784	38	1.9	\N	2022-10-05 22:04:22.117256	2022-10-05 22:04:22.117256
822	385	784	39	1.2	\N	2022-10-05 22:04:22.122272	2022-10-05 22:04:22.122272
823	394	784	40	2.0	\N	2022-10-05 22:04:22.13053	2022-10-05 22:04:22.13053
824	399	784	41	1.7	\N	2022-10-05 22:04:22.135558	2022-10-05 22:04:22.135558
825	399	784	42	1.7	\N	2022-10-05 22:04:22.142032	2022-10-05 22:04:22.142032
826	418	784	43	1.8	\N	2022-10-05 22:04:22.148524	2022-10-05 22:04:22.148524
827	437	784	44	1.0	\N	2022-10-05 22:04:22.153701	2022-10-05 22:04:22.153701
828	438	784	45	0.8	\N	2022-10-05 22:04:22.159978	2022-10-05 22:04:22.159978
829	496	784	46	1.3	\N	2022-10-05 22:04:22.166597	2022-10-05 22:04:22.166597
830	500	784	47	1.7	\N	2022-10-05 22:04:22.171667	2022-10-05 22:04:22.171667
831	510	784	48	1.7	\N	2022-10-05 22:04:22.178211	2022-10-05 22:04:22.178211
832	510	784	49	0.8	\N	2022-10-05 22:04:22.184042	2022-10-05 22:04:22.184042
833	512	784	50	2.0	\N	2022-10-05 22:04:22.189134	2022-10-05 22:04:22.189134
834	561	784	51	1.8	\N	2022-10-05 22:04:22.195472	2022-10-05 22:04:22.195472
835	561	784	52	0.8	\N	2022-10-05 22:04:22.201173	2022-10-05 22:04:22.201173
836	562	784	53	1.5	\N	2022-10-05 22:04:22.206189	2022-10-05 22:04:22.206189
837	837	784	54	0.3	\N	2022-10-05 22:04:22.212569	2022-10-05 22:04:22.212569
838	838	784	55	0.6	\N	2022-10-05 22:04:22.218311	2022-10-05 22:04:22.218311
839	839	784	56	0.5	\N	2022-10-05 22:04:22.224847	2022-10-05 22:04:22.224847
840	840	784	57	0.8	\N	2022-10-05 22:04:22.231457	2022-10-05 22:04:22.231457
841	314	784	58	1.5	\N	2022-10-05 22:04:22.237582	2022-10-05 22:04:22.237582
842	315	784	59	1.5	\N	2022-10-05 22:04:22.244864	2022-10-05 22:04:22.244864
843	843	784	60	0.5	\N	2022-10-05 22:04:22.252512	2022-10-05 22:04:22.252512
844	844	784	61	1.0	\N	2022-10-05 22:04:22.25855	2022-10-05 22:04:22.25855
845	845	784	62	0.7	\N	2022-10-05 22:04:22.266049	2022-10-05 22:04:22.266049
846	846	784	63	0.8	\N	2022-10-05 22:04:22.271008	2022-10-05 22:04:22.271008
847	847	784	64	0.6	\N	2022-10-05 22:04:22.276948	2022-10-05 22:04:22.276948
848	848	784	65	0.5	\N	2022-10-05 22:04:22.282274	2022-10-05 22:04:22.282274
849	511	784	66	0.5	\N	2022-10-05 22:04:22.287204	2022-10-05 22:04:22.287204
850	121	784	67	2.0	\N	2022-10-05 22:04:22.292956	2022-10-05 22:04:22.292956
851	851	784	68	1.9	\N	2022-10-05 22:04:22.30021	2022-10-05 22:04:22.30021
852	852	784	69	2.0	\N	2022-10-05 22:04:22.305328	2022-10-05 22:04:22.305328
853	251	784	70	0.5	\N	2022-10-05 22:04:22.311175	2022-10-05 22:04:22.311175
854	162	784	71	1.0	\N	2022-10-05 22:04:22.316785	2022-10-05 22:04:22.316785
855	156	784	72	0.5	\N	2022-10-05 22:04:22.321788	2022-10-05 22:04:22.321788
856	856	784	73	0.7	\N	2022-10-05 22:04:22.329419	2022-10-05 22:04:22.329419
857	857	784	74	1.8	\N	2022-10-05 22:04:22.336165	2022-10-05 22:04:22.336165
858	858	784	75	0.1	\N	2022-10-05 22:04:22.342919	2022-10-05 22:04:22.342919
859	83	784	76	0.03	\N	2022-10-05 22:04:22.352327	2022-10-05 22:04:22.352327
860	860	784	77	0.8	\N	2022-10-05 22:04:22.358658	2022-10-05 22:04:22.358658
861	133	784	78	2.0	\N	2022-10-05 22:04:22.36461	2022-10-05 22:04:22.36461
862	862	784	79	2.0	\N	2022-10-05 22:04:22.369644	2022-10-05 22:04:22.369644
863	863	784	80	1.0	\N	2022-10-05 22:04:22.375497	2022-10-05 22:04:22.375497
864	864	784	81	2.0	\N	2022-10-05 22:04:22.381444	2022-10-05 22:04:22.381444
865	865	784	82	0.3	\N	2022-10-05 22:04:22.386714	2022-10-05 22:04:22.386714
866	866	784	83	0.3	\N	2022-10-05 22:04:22.391953	2022-10-05 22:04:22.391953
867	867	784	84	0.8	\N	2022-10-05 22:04:22.3977	2022-10-05 22:04:22.3977
868	868	784	85	0.7	\N	2022-10-05 22:04:22.402844	2022-10-05 22:04:22.402844
869	869	784	86	0.5	\N	2022-10-05 22:04:22.408214	2022-10-05 22:04:22.408214
870	870	784	87	0.7	\N	2022-10-05 22:04:22.413381	2022-10-05 22:04:22.413381
871	871	784	88	0.3	\N	2022-10-05 22:04:22.418342	2022-10-05 22:04:22.418342
872	872	784	89	1.7	\N	2022-10-05 22:04:22.423416	2022-10-05 22:04:22.423416
873	873	784	90	0.9	\N	2022-10-05 22:04:22.429172	2022-10-05 22:04:22.429172
874	874	784	91	0.6	\N	2022-10-05 22:04:22.435281	2022-10-05 22:04:22.435281
875	875	784	92	0.7	\N	2022-10-05 22:04:22.441026	2022-10-05 22:04:22.441026
876	876	784	93	0.7	\N	2022-10-05 22:04:22.446776	2022-10-05 22:04:22.446776
877	66	784	94	2.0	\N	2022-10-05 22:04:22.451955	2022-10-05 22:04:22.451955
878	104	784	95	1.6	\N	2022-10-05 22:04:22.458775	2022-10-05 22:04:22.458775
879	879	784	96	1.9	\N	2022-10-05 22:04:22.464449	2022-10-05 22:04:22.464449
880	268	784	97	1.1	\N	2022-10-05 22:04:22.469585	2022-10-05 22:04:22.469585
881	881	784	98	0.04	\N	2022-10-05 22:04:22.476327	2022-10-05 22:04:22.476327
882	272	784	99	1.5	\N	2022-10-05 22:04:22.481842	2022-10-05 22:04:22.481842
883	883	784	100	1.6	\N	2022-10-05 22:04:22.486847	2022-10-05 22:04:22.486847
884	884	884	1	0.5	\N	2022-10-05 22:04:22.492915	2022-10-05 22:04:22.492915
885	885	884	2	0.6	\N	2022-10-05 22:04:22.499653	2022-10-05 22:04:22.499653
886	886	884	3	0.7	\N	2022-10-05 22:04:22.504526	2022-10-05 22:04:22.504526
887	887	884	4	0.5	\N	2022-10-05 22:04:22.510757	2022-10-05 22:04:22.510757
888	888	884	5	0.5	\N	2022-10-05 22:04:22.516963	2022-10-05 22:04:22.516963
889	889	884	6	1.4	\N	2022-10-05 22:04:22.52204	2022-10-05 22:04:22.52204
890	890	884	7	0.08	\N	2022-10-05 22:04:22.529398	2022-10-05 22:04:22.529398
891	891	884	8	0.4	\N	2022-10-05 22:04:22.535598	2022-10-05 22:04:22.535598
892	892	884	9	0.3	\N	2022-10-05 22:04:22.541241	2022-10-05 22:04:22.541241
893	893	884	10	0.5	\N	2022-10-05 22:04:22.546807	2022-10-05 22:04:22.546807
894	894	884	11	1.6	\N	2022-10-05 22:04:22.552188	2022-10-05 22:04:22.552188
895	895	884	12	0.5	\N	2022-10-05 22:04:22.557904	2022-10-05 22:04:22.557904
896	896	884	13	0.7	\N	2022-10-05 22:04:22.563531	2022-10-05 22:04:22.563531
897	897	884	14	0.75	\N	2022-10-05 22:04:22.568745	2022-10-05 22:04:22.568745
898	898	884	15	0.0	1	2022-10-05 22:04:22.574503	2022-10-05 22:04:22.574503
899	899	884	16	0.0	1	2022-10-05 22:04:22.580504	2022-10-05 22:04:22.580504
900	900	884	17	0.5	\N	2022-10-05 22:04:22.585689	2022-10-05 22:04:22.585689
901	901	884	18	0.2	\N	2022-10-05 22:04:22.59165	2022-10-05 22:04:22.59165
902	902	884	19	0.8	\N	2022-10-05 22:04:22.597474	2022-10-05 22:04:22.597474
903	903	884	20	0.9	\N	2022-10-05 22:04:22.604369	2022-10-05 22:04:22.604369
904	904	884	21	1.5	\N	2022-10-05 22:04:22.610528	2022-10-05 22:04:22.610528
905	905	884	22	0.4	\N	2022-10-05 22:04:22.616515	2022-10-05 22:04:22.616515
906	906	884	23	0.7	\N	2022-10-05 22:04:22.621446	2022-10-05 22:04:22.621446
907	907	884	24	0.7	\N	2022-10-05 22:04:22.629694	2022-10-05 22:04:22.629694
908	908	884	25	0.25	\N	2022-10-05 22:04:22.636317	2022-10-05 22:04:22.636317
909	909	884	26	0.8	\N	2022-10-05 22:04:22.642859	2022-10-05 22:04:22.642859
910	910	884	27	0.2	\N	2022-10-05 22:04:22.648786	2022-10-05 22:04:22.648786
911	911	884	28	0.4	\N	2022-10-05 22:04:22.654055	2022-10-05 22:04:22.654055
912	912	884	29	0.5	\N	2022-10-05 22:04:22.659678	2022-10-05 22:04:22.659678
913	913	884	30	0.5	\N	2022-10-05 22:04:22.665371	2022-10-05 22:04:22.665371
914	914	884	31	0.1	\N	2022-10-05 22:04:22.670745	2022-10-05 22:04:22.670745
915	915	884	33	0.9	\N	2022-10-05 22:04:22.675787	2022-10-05 22:04:22.675787
916	916	884	34	0.3	\N	2022-10-05 22:04:22.681224	2022-10-05 22:04:22.681224
917	917	884	35	0.6	\N	2022-10-05 22:04:22.686094	2022-10-05 22:04:22.686094
918	918	884	36	0.5	\N	2022-10-05 22:04:22.691093	2022-10-05 22:04:22.691093
919	919	884	37	0.3	\N	2022-10-05 22:04:22.696422	2022-10-05 22:04:22.696422
920	920	884	38	0.8	\N	2022-10-05 22:04:22.701291	2022-10-05 22:04:22.701291
921	921	884	39	0.3	\N	2022-10-05 22:04:22.706208	2022-10-05 22:04:22.706208
922	922	884	40	1.9	\N	2022-10-05 22:04:22.711584	2022-10-05 22:04:22.711584
923	923	884	41	0.0	12	2022-10-05 22:04:22.716649	2022-10-05 22:04:22.716649
924	924	884	42	0.0	30	2022-10-05 22:04:22.733756	2022-10-05 22:04:22.733756
925	925	884	43	0.06	\N	2022-10-05 22:04:22.738396	2022-10-05 22:04:22.738396
926	926	884	44	0.2	\N	2022-10-05 22:04:22.744476	2022-10-05 22:04:22.744476
927	927	884	45	0.7	\N	2022-10-05 22:04:22.750227	2022-10-05 22:04:22.750227
928	928	884	46	1.2	\N	2022-10-05 22:04:22.755052	2022-10-05 22:04:22.755052
929	929	884	47	0.1	\N	2022-10-05 22:04:22.760412	2022-10-05 22:04:22.760412
930	930	884	48	0.2	\N	2022-10-05 22:04:22.765326	2022-10-05 22:04:22.765326
931	931	884	49	0.7	\N	2022-10-05 22:04:22.770176	2022-10-05 22:04:22.770176
932	932	884	50	0.03	\N	2022-10-05 22:04:22.775141	2022-10-05 22:04:22.775141
933	933	884	51	0.0	20	2022-10-05 22:04:22.780388	2022-10-05 22:04:22.780388
934	934	884	52	1.5	\N	2022-10-05 22:04:22.785183	2022-10-05 22:04:22.785183
935	935	884	53	0.4	\N	2022-10-05 22:04:22.791205	2022-10-05 22:04:22.791205
936	936	884	54	0.2	\N	2022-10-05 22:04:22.797414	2022-10-05 22:04:22.797414
937	937	884	55	0.3	\N	2022-10-05 22:04:22.802618	2022-10-05 22:04:22.802618
938	938	884	56	0.15	\N	2022-10-05 22:04:22.808454	2022-10-05 22:04:22.808454
939	939	884	57	0.3	\N	2022-10-05 22:04:22.813979	2022-10-05 22:04:22.813979
940	940	884	59	0.3	\N	2022-10-05 22:04:22.819009	2022-10-05 22:04:22.819009
941	941	884	60	0.0	20	2022-10-05 22:04:22.834355	2022-10-05 22:04:22.834355
942	942	884	61	0.8	\N	2022-10-05 22:04:22.839657	2022-10-05 22:04:22.839657
943	943	884	62	0.2	\N	2022-10-05 22:04:22.844967	2022-10-05 22:04:22.844967
944	944	884	63	0.4	\N	2022-10-05 22:04:22.850664	2022-10-05 22:04:22.850664
945	945	884	64	0.3	\N	2022-10-05 22:04:22.855683	2022-10-05 22:04:22.855683
946	946	884	65	0.04	\N	2022-10-05 22:04:22.8613	2022-10-05 22:04:22.8613
947	947	884	66	0.1	\N	2022-10-05 22:04:22.867018	2022-10-05 22:04:22.867018
948	948	884	67	0.25	\N	2022-10-05 22:04:22.872554	2022-10-05 22:04:22.872554
949	949	884	68	0.8	\N	2022-10-05 22:04:22.877748	2022-10-05 22:04:22.877748
950	950	884	69	0.25	\N	2022-10-05 22:04:22.88352	2022-10-05 22:04:22.88352
951	951	884	70	0.9	\N	2022-10-05 22:04:22.888609	2022-10-05 22:04:22.888609
952	952	884	72	0.0	1	2022-10-05 22:04:22.8941	2022-10-05 22:04:22.8941
953	953	884	74	0.4	\N	2022-10-05 22:04:22.89933	2022-10-05 22:04:22.89933
954	954	884	75	0.7	\N	2022-10-05 22:04:22.904461	2022-10-05 22:04:22.904461
955	955	884	76	0.03	\N	2022-10-05 22:04:22.910729	2022-10-05 22:04:22.910729
956	956	884	77	0.75	\N	2022-10-05 22:04:22.916133	2022-10-05 22:04:22.916133
957	957	884	78	0.07	\N	2022-10-05 22:04:22.921165	2022-10-05 22:04:22.921165
958	958	884	79	0.05	\N	2022-10-05 22:04:22.927881	2022-10-05 22:04:22.927881
959	959	884	80	0.1	\N	2022-10-05 22:04:22.934551	2022-10-05 22:04:22.934551
960	960	884	81	0.15	\N	2022-10-05 22:04:22.94055	2022-10-05 22:04:22.94055
961	961	884	82	0.8	\N	2022-10-05 22:04:22.94696	2022-10-05 22:04:22.94696
962	962	884	83	0.3	\N	2022-10-05 22:04:22.951943	2022-10-05 22:04:22.951943
963	963	884	84	0.8	\N	2022-10-05 22:04:22.959091	2022-10-05 22:04:22.959091
964	964	884	85	0.5	\N	2022-10-05 22:04:22.965208	2022-10-05 22:04:22.965208
965	965	884	86	0.4	\N	2022-10-05 22:04:22.970445	2022-10-05 22:04:22.970445
966	966	884	87	0.5	\N	2022-10-05 22:04:22.97669	2022-10-05 22:04:22.97669
967	967	884	88	0.2	\N	2022-10-05 22:04:22.982507	2022-10-05 22:04:22.982507
968	968	884	89	0.1	\N	2022-10-05 22:04:22.987655	2022-10-05 22:04:22.987655
969	969	884	90	0.1	\N	2022-10-05 22:04:22.993403	2022-10-05 22:04:22.993403
970	970	884	91	0.25	\N	2022-10-05 22:04:22.998739	2022-10-05 22:04:22.998739
971	971	884	92	0.02	\N	2022-10-05 22:04:23.003766	2022-10-05 22:04:23.003766
972	972	884	93	0.25	\N	2022-10-05 22:04:23.008876	2022-10-05 22:04:23.008876
973	973	884	94	0.2	\N	2022-10-05 22:04:23.017056	2022-10-05 22:04:23.017056
974	974	884	95	0.3	\N	2022-10-05 22:04:23.022073	2022-10-05 22:04:23.022073
975	975	884	96	1.5	\N	2022-10-05 22:04:23.028771	2022-10-05 22:04:23.028771
976	976	884	97	1.3	\N	2022-10-05 22:04:23.034465	2022-10-05 22:04:23.034465
977	977	884	98	1.0	\N	2022-10-05 22:04:23.039292	2022-10-05 22:04:23.039292
978	978	884	99	1.3	\N	2022-10-05 22:04:23.045115	2022-10-05 22:04:23.045115
979	979	884	100	0.15	\N	2022-10-05 22:04:23.050523	2022-10-05 22:04:23.050523
980	980	980	1	0.4	\N	2022-10-05 22:04:23.055584	2022-10-05 22:04:23.055584
981	981	980	2	0.7	\N	2022-10-05 22:04:23.060739	2022-10-05 22:04:23.060739
982	982	980	3	1.0	\N	2022-10-05 22:04:23.066918	2022-10-05 22:04:23.066918
983	983	980	4	0.3	\N	2022-10-05 22:04:23.072126	2022-10-05 22:04:23.072126
984	984	980	5	0.8	\N	2022-10-05 22:04:23.077725	2022-10-05 22:04:23.077725
985	985	980	6	0.3	\N	2022-10-05 22:04:23.083311	2022-10-05 22:04:23.083311
986	986	980	7	0.5	\N	2022-10-05 22:04:23.087915	2022-10-05 22:04:23.087915
987	987	980	8	0.6	\N	2022-10-05 22:04:23.094653	2022-10-05 22:04:23.094653
988	988	980	9	0.5	\N	2022-10-05 22:04:23.100283	2022-10-05 22:04:23.100283
989	989	980	10	2.0	\N	2022-10-05 22:04:23.105374	2022-10-05 22:04:23.105374
990	990	980	11	0.7	\N	2022-10-05 22:04:23.111619	2022-10-05 22:04:23.111619
991	991	980	12	0.0	10	2022-10-05 22:04:23.117138	2022-10-05 22:04:23.117138
992	992	980	13	0.5	\N	2022-10-05 22:04:23.122038	2022-10-05 22:04:23.122038
993	993	980	14	0.25	\N	2022-10-05 22:04:23.129607	2022-10-05 22:04:23.129607
994	994	980	15	0.1	\N	2022-10-05 22:04:23.136223	2022-10-05 22:04:23.136223
995	995	980	16	0.0	10	2022-10-05 22:04:23.141272	2022-10-05 22:04:23.141272
996	996	980	17	0.2	\N	2022-10-05 22:04:23.146334	2022-10-05 22:04:23.146334
997	997	980	18	0.2	\N	2022-10-05 22:04:23.151334	2022-10-05 22:04:23.151334
998	998	980	19	0.7	\N	2022-10-05 22:04:23.156729	2022-10-05 22:04:23.156729
999	999	980	20	0.2	\N	2022-10-05 22:04:23.162343	2022-10-05 22:04:23.162343
1000	1000	980	21	0.25	\N	2022-10-05 22:04:23.169807	2022-10-05 22:04:23.169807
1001	1001	980	22	0.15	\N	2022-10-05 22:04:23.176523	2022-10-05 22:04:23.176523
1002	1002	980	23	0.2	\N	2022-10-05 22:04:23.182652	2022-10-05 22:04:23.182652
1003	1003	980	24	0.15	\N	2022-10-05 22:04:23.187714	2022-10-05 22:04:23.187714
1004	1004	980	25	0.2	\N	2022-10-05 22:04:23.193823	2022-10-05 22:04:23.193823
1005	1005	980	26	0.2	\N	2022-10-05 22:04:23.199632	2022-10-05 22:04:23.199632
1006	1006	980	27	0.1	\N	2022-10-05 22:04:23.205538	2022-10-05 22:04:23.205538
1007	1007	980	28	0.25	\N	2022-10-05 22:04:23.211755	2022-10-05 22:04:23.211755
1008	1008	980	29	1.5	\N	2022-10-05 22:04:23.217493	2022-10-05 22:04:23.217493
1009	1009	980	30	1.2	\N	2022-10-05 22:04:23.222676	2022-10-05 22:04:23.222676
1010	1010	980	31	0.5	\N	2022-10-05 22:04:23.229223	2022-10-05 22:04:23.229223
1011	1011	980	32	0.8	\N	2022-10-05 22:04:23.234566	2022-10-05 22:04:23.234566
1012	1012	980	33	1.4	\N	2022-10-05 22:04:23.240717	2022-10-05 22:04:23.240717
1013	1013	980	34	0.3	\N	2022-10-05 22:04:23.246386	2022-10-05 22:04:23.246386
1014	1014	980	35	1.6	\N	2022-10-05 22:04:23.252122	2022-10-05 22:04:23.252122
1015	1015	980	36	0.5	\N	2022-10-05 22:04:23.258103	2022-10-05 22:04:23.258103
1016	1016	980	37	0.7	\N	2022-10-05 22:04:23.263454	2022-10-05 22:04:23.263454
1017	1017	980	38	0.8	\N	2022-10-05 22:04:23.268446	2022-10-05 22:04:23.268446
1018	1018	980	39	0.4	\N	2022-10-05 22:04:23.273254	2022-10-05 22:04:23.273254
1019	1019	980	40	0.4	\N	2022-10-05 22:04:23.27833	2022-10-05 22:04:23.27833
1020	1020	980	41	0.75	\N	2022-10-05 22:04:23.283323	2022-10-05 22:04:23.283323
1021	1021	980	42	0.06	\N	2022-10-05 22:04:23.288346	2022-10-05 22:04:23.288346
1022	1022	980	43	0.25	\N	2022-10-05 22:04:23.294321	2022-10-05 22:04:23.294321
1023	1023	980	44	0.6	\N	2022-10-05 22:04:23.300339	2022-10-05 22:04:23.300339
1024	1024	980	45	0.5	\N	2022-10-05 22:04:23.305279	2022-10-05 22:04:23.305279
1025	1025	980	46	0.25	\N	2022-10-05 22:04:23.312128	2022-10-05 22:04:23.312128
1026	1026	980	47	0.7	\N	2022-10-05 22:04:23.317033	2022-10-05 22:04:23.317033
1027	1027	980	48	0.5	\N	2022-10-05 22:04:23.321729	2022-10-05 22:04:23.321729
1028	1028	980	49	0.75	\N	2022-10-05 22:04:23.32785	2022-10-05 22:04:23.32785
1029	1029	980	50	0.5	\N	2022-10-05 22:04:23.334328	2022-10-05 22:04:23.334328
1030	1030	980	51	0.7	\N	2022-10-05 22:04:23.340182	2022-10-05 22:04:23.340182
1031	1031	980	52	1.2	\N	2022-10-05 22:04:23.345691	2022-10-05 22:04:23.345691
1032	1032	980	53	0.25	\N	2022-10-05 22:04:23.351779	2022-10-05 22:04:23.351779
1033	1033	980	54	0.6	\N	2022-10-05 22:04:23.357916	2022-10-05 22:04:23.357916
1034	1034	980	55	0.5	\N	2022-10-05 22:04:23.363848	2022-10-05 22:04:23.363848
1035	1035	980	56	0.7	\N	2022-10-05 22:04:23.3692	2022-10-05 22:04:23.3692
1036	1036	980	57	0.1	\N	2022-10-05 22:04:23.374057	2022-10-05 22:04:23.374057
1037	1037	980	58	0.0	15	2022-10-05 22:04:23.379106	2022-10-05 22:04:23.379106
1038	1038	980	59	0.75	\N	2022-10-05 22:04:23.384183	2022-10-05 22:04:23.384183
1039	1039	980	60	0.8	\N	2022-10-05 22:04:23.389376	2022-10-05 22:04:23.389376
1040	1040	980	61	0.4	\N	2022-10-05 22:04:23.395153	2022-10-05 22:04:23.395153
1041	1041	980	62	0.9	\N	2022-10-05 22:04:23.400231	2022-10-05 22:04:23.400231
1042	1042	980	63	0.4	\N	2022-10-05 22:04:23.405601	2022-10-05 22:04:23.405601
1043	1043	980	64	0.5	\N	2022-10-05 22:04:23.410929	2022-10-05 22:04:23.410929
1044	1044	980	65	0.2	\N	2022-10-05 22:04:23.416559	2022-10-05 22:04:23.416559
1045	1045	980	66	0.4	\N	2022-10-05 22:04:23.421644	2022-10-05 22:04:23.421644
1046	1046	980	67	0.3	\N	2022-10-05 22:04:23.428392	2022-10-05 22:04:23.428392
1047	1047	980	68	0.6	\N	2022-10-05 22:04:23.433584	2022-10-05 22:04:23.433584
1048	1048	980	69	0.15	\N	2022-10-05 22:04:23.438747	2022-10-05 22:04:23.438747
1049	1049	980	70	0.3	\N	2022-10-05 22:04:23.444359	2022-10-05 22:04:23.444359
1050	1050	980	71	0.2	\N	2022-10-05 22:04:23.449794	2022-10-05 22:04:23.449794
1051	1051	980	72	0.25	\N	2022-10-05 22:04:23.454918	2022-10-05 22:04:23.454918
1052	1052	980	73	0.5	\N	2022-10-05 22:04:23.460772	2022-10-05 22:04:23.460772
1053	1053	980	74	0.25	\N	2022-10-05 22:04:23.466704	2022-10-05 22:04:23.466704
1054	1054	980	75	0.75	\N	2022-10-05 22:04:23.47252	2022-10-05 22:04:23.47252
1055	1055	980	76	0.2	\N	2022-10-05 22:04:23.478364	2022-10-05 22:04:23.478364
1056	1056	980	77	0.0	15	2022-10-05 22:04:23.48419	2022-10-05 22:04:23.48419
1057	1057	980	78	0.15	\N	2022-10-05 22:04:23.488922	2022-10-05 22:04:23.488922
1058	1058	980	79	0.7	\N	2022-10-05 22:04:23.494839	2022-10-05 22:04:23.494839
1059	1059	980	80	0.75	\N	2022-10-05 22:04:23.500229	2022-10-05 22:04:23.500229
1060	1060	980	81	0.7	\N	2022-10-05 22:04:23.505267	2022-10-05 22:04:23.505267
1061	1061	980	82	0.0	20	2022-10-05 22:04:23.511093	2022-10-05 22:04:23.511093
1062	1062	980	83	1.9	\N	2022-10-05 22:04:23.516151	2022-10-05 22:04:23.516151
1063	1063	980	84	1.5	\N	2022-10-05 22:04:23.521135	2022-10-05 22:04:23.521135
1064	1064	980	85	0.0	15	2022-10-05 22:04:23.526288	2022-10-05 22:04:23.526288
1065	1065	980	86	1.0	\N	2022-10-05 22:04:23.531481	2022-10-05 22:04:23.531481
1066	1066	980	87	1.8	\N	2022-10-05 22:04:23.537227	2022-10-05 22:04:23.537227
1067	1067	980	88	0.3	\N	2022-10-05 22:04:23.543163	2022-10-05 22:04:23.543163
1068	1068	980	89	0.05	\N	2022-10-05 22:04:23.549431	2022-10-05 22:04:23.549431
1069	1069	980	90	0.04	\N	2022-10-05 22:04:23.554376	2022-10-05 22:04:23.554376
1070	1070	980	91	0.5	\N	2022-10-05 22:04:23.560713	2022-10-05 22:04:23.560713
1071	1071	980	92	0.5	\N	2022-10-05 22:04:23.566583	2022-10-05 22:04:23.566583
1072	1072	980	93	0.0	10	2022-10-05 22:04:23.571657	2022-10-05 22:04:23.571657
1073	1073	980	94	0.5	\N	2022-10-05 22:04:23.577053	2022-10-05 22:04:23.577053
1074	1074	980	95	0.0	10	2022-10-05 22:04:23.582435	2022-10-05 22:04:23.582435
1075	1075	980	96	0.2	\N	2022-10-05 22:04:23.587066	2022-10-05 22:04:23.587066
1076	1076	980	97	1.7	\N	2022-10-05 22:04:23.592848	2022-10-05 22:04:23.592848
1077	1077	980	98	1.2	\N	2022-10-05 22:04:23.598557	2022-10-05 22:04:23.598557
1078	1078	980	99	0.0	10	2022-10-05 22:04:23.603662	2022-10-05 22:04:23.603662
1079	1079	980	100	0.0	20	2022-10-05 22:04:23.608693	2022-10-05 22:04:23.608693
1080	1080	1080	1	0.4	\N	2022-10-05 22:04:23.614617	2022-10-05 22:04:23.614617
1081	1081	1080	2	0.5	\N	2022-10-05 22:04:23.619986	2022-10-05 22:04:23.619986
1082	1082	1080	3	0.04	\N	2022-10-05 22:04:23.626458	2022-10-05 22:04:23.626458
1083	1083	1080	4	0.5	\N	2022-10-05 22:04:23.633325	2022-10-05 22:04:23.633325
1084	1084	1080	5	0.75	\N	2022-10-05 22:04:23.63819	2022-10-05 22:04:23.63819
1085	1085	1080	6	0.7	\N	2022-10-05 22:04:23.647501	2022-10-05 22:04:23.647501
1086	1086	1080	7	0.75	\N	2022-10-05 22:04:23.652327	2022-10-05 22:04:23.652327
1087	1087	1080	8	1.0	\N	2022-10-05 22:04:23.661093	2022-10-05 22:04:23.661093
1088	1088	1080	9	0.4	\N	2022-10-05 22:04:23.666402	2022-10-05 22:04:23.666402
1089	1089	1080	10	0.6	\N	2022-10-05 22:04:23.672422	2022-10-05 22:04:23.672422
1090	1090	1080	11	0.5	\N	2022-10-05 22:04:23.681059	2022-10-05 22:04:23.681059
1091	1091	1080	12	0.1	\N	2022-10-05 22:04:23.687277	2022-10-05 22:04:23.687277
1092	1092	1080	13	0.4	\N	2022-10-05 22:04:23.693886	2022-10-05 22:04:23.693886
1093	1093	1080	14	0.75	\N	2022-10-05 22:04:23.699787	2022-10-05 22:04:23.699787
1094	1094	1080	15	1.2	\N	2022-10-05 22:04:23.704852	2022-10-05 22:04:23.704852
1095	1095	1080	16	0.05	\N	2022-10-05 22:04:23.710815	2022-10-05 22:04:23.710815
1096	1096	1080	17	1.4	\N	2022-10-05 22:04:23.716752	2022-10-05 22:04:23.716752
1097	1097	1080	18	2.0	\N	2022-10-05 22:04:23.722237	2022-10-05 22:04:23.722237
1098	1098	1080	19	0.5	\N	2022-10-05 22:04:23.72834	2022-10-05 22:04:23.72834
1099	1099	1080	20	0.0	20	2022-10-05 22:04:23.733631	2022-10-05 22:04:23.733631
1100	1100	1080	21	1.6	\N	2022-10-05 22:04:23.738746	2022-10-05 22:04:23.738746
1101	1101	1080	22	0.7	\N	2022-10-05 22:04:23.746431	2022-10-05 22:04:23.746431
1102	1102	1080	23	1.2	\N	2022-10-05 22:04:23.752003	2022-10-05 22:04:23.752003
1103	1103	1080	24	1.8	\N	2022-10-05 22:04:23.757919	2022-10-05 22:04:23.757919
1104	1104	1080	25	1.6	\N	2022-10-05 22:04:23.76343	2022-10-05 22:04:23.76343
1105	1105	1080	26	1.0	\N	2022-10-05 22:04:23.769193	2022-10-05 22:04:23.769193
1106	1106	1080	27	1.7	\N	2022-10-05 22:04:23.775544	2022-10-05 22:04:23.775544
1107	1107	1080	28	0.0	15	2022-10-05 22:04:23.780887	2022-10-05 22:04:23.780887
1108	1108	1080	29	0.5	\N	2022-10-05 22:04:23.78638	2022-10-05 22:04:23.78638
1109	1109	1080	30	0.0	40	2022-10-05 22:04:23.79217	2022-10-05 22:04:23.79217
1110	1110	1080	31	1.5	\N	2022-10-05 22:04:23.79731	2022-10-05 22:04:23.79731
1111	1111	1080	32	0.0	60	2022-10-05 22:04:23.802395	2022-10-05 22:04:23.802395
1112	1112	1080	33	0.5	\N	2022-10-05 22:04:23.807923	2022-10-05 22:04:23.807923
1113	1113	1080	34	1.2	\N	2022-10-05 22:04:23.81345	2022-10-05 22:04:23.81345
1114	1114	1080	35	0.3	\N	2022-10-05 22:04:23.818535	2022-10-05 22:04:23.818535
1115	1115	1080	36	0.8	\N	2022-10-05 22:04:23.823756	2022-10-05 22:04:23.823756
1116	1116	1080	37	0.6	\N	2022-10-05 22:04:23.828761	2022-10-05 22:04:23.828761
1117	1117	1080	38	0.6	\N	2022-10-05 22:04:23.836331	2022-10-05 22:04:23.836331
1118	1118	1080	39	0.6	\N	2022-10-05 22:04:23.854396	2022-10-05 22:04:23.854396
1119	1119	1080	40	0.0	40	2022-10-05 22:04:23.864733	2022-10-05 22:04:23.864733
1120	1120	1080	41	0.5	\N	2022-10-05 22:04:23.870116	2022-10-05 22:04:23.870116
1121	1121	1080	42	0.3	\N	2022-10-05 22:04:23.877615	2022-10-05 22:04:23.877615
1122	1122	1080	43	0.4	\N	2022-10-05 22:04:23.883492	2022-10-05 22:04:23.883492
1123	1123	1080	44	0.6	\N	2022-10-05 22:04:23.888773	2022-10-05 22:04:23.888773
1124	1124	1080	45	0.5	\N	2022-10-05 22:04:23.894734	2022-10-05 22:04:23.894734
1125	1125	1080	46	0.8	\N	2022-10-05 22:04:23.901754	2022-10-05 22:04:23.901754
1126	1126	1080	47	0.0	5	2022-10-05 22:04:23.907341	2022-10-05 22:04:23.907341
1127	1127	1080	48	0.1	\N	2022-10-05 22:04:23.912923	2022-10-05 22:04:23.912923
1128	1128	1080	49	0.8	\N	2022-10-05 22:04:23.918436	2022-10-05 22:04:23.918436
1129	1129	1080	50	0.5	\N	2022-10-05 22:04:23.925002	2022-10-05 22:04:23.925002
1130	1130	1080	51	0.3	\N	2022-10-05 22:04:23.930924	2022-10-05 22:04:23.930924
1131	1131	1080	52	0.8	\N	2022-10-05 22:04:23.936181	2022-10-05 22:04:23.936181
1132	1132	1080	53	0.02	\N	2022-10-05 22:04:23.941409	2022-10-05 22:04:23.941409
1133	1133	1080	54	0.3	\N	2022-10-05 22:04:23.947201	2022-10-05 22:04:23.947201
1134	1134	1080	55	0.5	\N	2022-10-05 22:04:23.952471	2022-10-05 22:04:23.952471
1135	1135	1080	56	0.06	\N	2022-10-05 22:04:23.958381	2022-10-05 22:04:23.958381
1136	1136	1080	57	0.5	\N	2022-10-05 22:04:23.964097	2022-10-05 22:04:23.964097
1137	1137	1080	58	0.3	\N	2022-10-05 22:04:23.969098	2022-10-05 22:04:23.969098
1138	1138	1080	59	0.2	\N	2022-10-05 22:04:23.974853	2022-10-05 22:04:23.974853
1139	1139	1080	60	0.5	\N	2022-10-05 22:04:23.981103	2022-10-05 22:04:23.981103
1140	1140	1080	61	0.7	\N	2022-10-05 22:04:23.987289	2022-10-05 22:04:23.987289
1141	1141	1080	62	0.7	\N	2022-10-05 22:04:23.993107	2022-10-05 22:04:23.993107
1142	1142	1080	63	0.5	\N	2022-10-05 22:04:23.998638	2022-10-05 22:04:23.998638
1143	1143	1080	64	0.4	\N	2022-10-05 22:04:24.003589	2022-10-05 22:04:24.003589
1144	1144	1080	65	0.8	\N	2022-10-05 22:04:24.009539	2022-10-05 22:04:24.009539
1145	1145	1080	66	0.75	\N	2022-10-05 22:04:24.015181	2022-10-05 22:04:24.015181
1146	1146	1080	67	0.6	\N	2022-10-05 22:04:24.020243	2022-10-05 22:04:24.020243
1147	1147	1080	68	1.0	\N	2022-10-05 22:04:24.02696	2022-10-05 22:04:24.02696
1148	1148	1080	69	0.75	\N	2022-10-05 22:04:24.033975	2022-10-05 22:04:24.033975
1149	1149	1080	70	0.7	\N	2022-10-05 22:04:24.03938	2022-10-05 22:04:24.03938
1150	1150	1080	71	0.75	\N	2022-10-05 22:04:24.045465	2022-10-05 22:04:24.045465
1151	1151	1080	72	0.25	\N	2022-10-05 22:04:24.051251	2022-10-05 22:04:24.051251
1152	1152	1080	73	0.6	\N	2022-10-05 22:04:24.057117	2022-10-05 22:04:24.057117
1153	1153	1080	74	0.6	\N	2022-10-05 22:04:24.063238	2022-10-05 22:04:24.063238
1154	1154	1080	75	0.9	\N	2022-10-05 22:04:24.068271	2022-10-05 22:04:24.068271
1155	1155	1080	76	0.05	\N	2022-10-05 22:04:24.073373	2022-10-05 22:04:24.073373
1156	1156	1080	77	0.25	\N	2022-10-05 22:04:24.078896	2022-10-05 22:04:24.078896
1157	1157	1080	78	0.7	\N	2022-10-05 22:04:24.084789	2022-10-05 22:04:24.084789
1158	1158	1080	79	0.6	\N	2022-10-05 22:04:24.089787	2022-10-05 22:04:24.089787
1159	1159	1080	80	0.4	\N	2022-10-05 22:04:24.095436	2022-10-05 22:04:24.095436
1160	1160	1080	81	0.3	\N	2022-10-05 22:04:24.101708	2022-10-05 22:04:24.101708
1161	1161	1080	82	0.1	\N	2022-10-05 22:04:24.107685	2022-10-05 22:04:24.107685
1162	1162	1080	83	0.05	\N	2022-10-05 22:04:24.113742	2022-10-05 22:04:24.113742
1163	1163	1080	84	0.8	\N	2022-10-05 22:04:24.119056	2022-10-05 22:04:24.119056
1164	1164	1080	85	0.4	\N	2022-10-05 22:04:24.124566	2022-10-05 22:04:24.124566
1165	1165	1080	86	0.25	\N	2022-10-05 22:04:24.131643	2022-10-05 22:04:24.131643
1166	1166	1080	87	0.25	\N	2022-10-05 22:04:24.137113	2022-10-05 22:04:24.137113
1167	1167	1080	88	0.15	\N	2022-10-05 22:04:24.142781	2022-10-05 22:04:24.142781
1168	1168	1080	89	0.3	\N	2022-10-05 22:04:24.148162	2022-10-05 22:04:24.148162
1169	1169	1080	90	0.5	\N	2022-10-05 22:04:24.15313	2022-10-05 22:04:24.15313
1170	1170	1080	91	1.3	\N	2022-10-05 22:04:24.158077	2022-10-05 22:04:24.158077
1171	1171	1080	92	0.07	\N	2022-10-05 22:04:24.163544	2022-10-05 22:04:24.163544
1172	1172	1080	93	0.6	\N	2022-10-05 22:04:24.171915	2022-10-05 22:04:24.171915
1173	1173	1080	94	0.0	20	2022-10-05 22:04:24.182788	2022-10-05 22:04:24.182788
1174	1174	1080	95	0.05	\N	2022-10-05 22:04:24.18906	2022-10-05 22:04:24.18906
1175	1175	1080	96	0.5	\N	2022-10-05 22:04:24.196065	2022-10-05 22:04:24.196065
1176	1176	1080	97	0.0	15	2022-10-05 22:04:24.202336	2022-10-05 22:04:24.202336
1177	1177	1080	98	1.5	\N	2022-10-05 22:04:24.208252	2022-10-05 22:04:24.208252
1178	1178	1080	99	0.0	25	2022-10-05 22:04:24.214245	2022-10-05 22:04:24.214245
1179	1179	1179	1	0.25	\N	2022-10-05 22:04:24.22001	2022-10-05 22:04:24.22001
1180	1180	1179	2	0.8	\N	2022-10-05 22:04:24.226864	2022-10-05 22:04:24.226864
1181	1181	1179	3	0.2	\N	2022-10-05 22:04:24.232672	2022-10-05 22:04:24.232672
1182	1182	1179	4	1.0	\N	2022-10-05 22:04:24.238638	2022-10-05 22:04:24.238638
1183	1183	1179	5	0.5	\N	2022-10-05 22:04:24.247289	2022-10-05 22:04:24.247289
1184	1184	1179	6	0.8	\N	2022-10-05 22:04:24.253632	2022-10-05 22:04:24.253632
1185	1185	1179	7	0.5	\N	2022-10-05 22:04:24.26068	2022-10-05 22:04:24.26068
1186	1186	1179	8	0.3	\N	2022-10-05 22:04:24.267616	2022-10-05 22:04:24.267616
1187	1187	1179	9	0.7	\N	2022-10-05 22:04:24.273316	2022-10-05 22:04:24.273316
1188	1188	1179	10	0.5	\N	2022-10-05 22:04:24.279963	2022-10-05 22:04:24.279963
1189	1189	1179	11	0.6	\N	2022-10-05 22:04:24.287842	2022-10-05 22:04:24.287842
1190	1190	1179	12	0.8	\N	2022-10-05 22:04:24.295252	2022-10-05 22:04:24.295252
1191	1191	1179	13	0.3	\N	2022-10-05 22:04:24.302004	2022-10-05 22:04:24.302004
1192	1192	1179	14	0.6	\N	2022-10-05 22:04:24.308221	2022-10-05 22:04:24.308221
1193	1193	1179	15	0.8	\N	2022-10-05 22:04:24.31489	2022-10-05 22:04:24.31489
1194	1194	1179	16	0.3	\N	2022-10-05 22:04:24.321422	2022-10-05 22:04:24.321422
1195	1195	1179	17	0.8	\N	2022-10-05 22:04:24.328284	2022-10-05 22:04:24.328284
1196	1196	1179	18	0.75	\N	2022-10-05 22:04:24.336475	2022-10-05 22:04:24.336475
1197	1197	1179	19	1.2	\N	2022-10-05 22:04:24.345167	2022-10-05 22:04:24.345167
1198	1198	1179	20	1.1	\N	2022-10-05 22:04:24.351323	2022-10-05 22:04:24.351323
1199	1199	1179	21	0.06	\N	2022-10-05 22:04:24.357963	2022-10-05 22:04:24.357963
1200	1200	1179	22	0.0	30	2022-10-05 22:04:24.36557	2022-10-05 22:04:24.36557
1201	1201	1179	23	0.04	\N	2022-10-05 22:04:24.371715	2022-10-05 22:04:24.371715
1202	1202	1179	24	0.0	3	2022-10-05 22:04:24.378481	2022-10-05 22:04:24.378481
1203	1203	1179	25	0.0	10	2022-10-05 22:04:24.384523	2022-10-05 22:04:24.384523
1204	1204	1179	26	0.15	\N	2022-10-05 22:04:24.390866	2022-10-05 22:04:24.390866
1205	1205	1179	27	0.05	\N	2022-10-05 22:04:24.396939	2022-10-05 22:04:24.396939
1206	1206	1179	28	0.0	5	2022-10-05 22:04:24.403889	2022-10-05 22:04:24.403889
1207	1207	1179	29	0.3	\N	2022-10-05 22:04:24.40967	2022-10-05 22:04:24.40967
1208	1208	1179	30	0.25	\N	2022-10-05 22:04:24.415726	2022-10-05 22:04:24.415726
1209	1209	1179	31	0.8	\N	2022-10-05 22:04:24.422339	2022-10-05 22:04:24.422339
1210	1210	1179	32	0.6	\N	2022-10-05 22:04:24.429889	2022-10-05 22:04:24.429889
1211	1211	1179	33	0.4	\N	2022-10-05 22:04:24.436334	2022-10-05 22:04:24.436334
1212	1212	1179	34	0.04	\N	2022-10-05 22:04:24.443949	2022-10-05 22:04:24.443949
1213	1213	1179	35	0.7	\N	2022-10-05 22:04:24.450745	2022-10-05 22:04:24.450745
1214	1214	1179	36	0.5	\N	2022-10-05 22:04:24.456517	2022-10-05 22:04:24.456517
1215	1215	1179	37	0.3	\N	2022-10-05 22:04:24.463604	2022-10-05 22:04:24.463604
1216	1216	1179	38	1.2	\N	2022-10-05 22:04:24.470533	2022-10-05 22:04:24.470533
1217	1217	1179	39	0.2	\N	2022-10-05 22:04:24.47718	2022-10-05 22:04:24.47718
1218	1218	1179	40	0.3	\N	2022-10-05 22:04:24.483335	2022-10-05 22:04:24.483335
1219	1219	1179	41	0.8	\N	2022-10-05 22:04:24.490273	2022-10-05 22:04:24.490273
1220	1220	1179	42	0.5	\N	2022-10-05 22:04:24.497724	2022-10-05 22:04:24.497724
1221	1221	1179	43	0.25	\N	2022-10-05 22:04:24.5041	2022-10-05 22:04:24.5041
1222	1222	1179	44	0.7	\N	2022-10-05 22:04:24.512715	2022-10-05 22:04:24.512715
1223	1223	1179	45	0.7	\N	2022-10-05 22:04:24.51923	2022-10-05 22:04:24.51923
1224	1224	1179	46	0.2	\N	2022-10-05 22:04:24.526157	2022-10-05 22:04:24.526157
1225	1225	1179	47	0.25	\N	2022-10-05 22:04:24.532904	2022-10-05 22:04:24.532904
1226	1226	1179	48	0.7	\N	2022-10-05 22:04:24.539127	2022-10-05 22:04:24.539127
1227	1227	1179	49	0.2	\N	2022-10-05 22:04:24.547041	2022-10-05 22:04:24.547041
1228	1228	1179	50	0.5	\N	2022-10-05 22:04:24.553088	2022-10-05 22:04:24.553088
1229	1229	1179	51	0.4	\N	2022-10-05 22:04:24.559818	2022-10-05 22:04:24.559818
1230	1230	1179	52	0.25	\N	2022-10-05 22:04:24.566181	2022-10-05 22:04:24.566181
1231	1231	1179	53	0.4	\N	2022-10-05 22:04:24.572389	2022-10-05 22:04:24.572389
1232	1232	1179	54	0.4	\N	2022-10-05 22:04:24.580561	2022-10-05 22:04:24.580561
1233	1233	1179	55	0.3	\N	2022-10-05 22:04:24.586789	2022-10-05 22:04:24.586789
1234	1234	1179	56	0.6	\N	2022-10-05 22:04:24.594495	2022-10-05 22:04:24.594495
1235	1235	1179	57	0.7	\N	2022-10-05 22:04:24.601082	2022-10-05 22:04:24.601082
1236	1236	1179	58	0.15	\N	2022-10-05 22:04:24.609332	2022-10-05 22:04:24.609332
1237	1237	1179	59	0.0	10	2022-10-05 22:04:24.616693	2022-10-05 22:04:24.616693
1238	1238	1179	60	0.2	\N	2022-10-05 22:04:24.623098	2022-10-05 22:04:24.623098
1239	1239	1179	61	0.0	15	2022-10-05 22:04:24.635944	2022-10-05 22:04:24.635944
1240	1240	1179	62	0.7	\N	2022-10-05 22:04:24.641875	2022-10-05 22:04:24.641875
1241	1241	1179	63	0.0	5	2022-10-05 22:04:24.648538	2022-10-05 22:04:24.648538
1242	1242	1179	64	0.7	\N	2022-10-05 22:04:24.654243	2022-10-05 22:04:24.654243
1243	1243	1179	65	1.4	\N	2022-10-05 22:04:24.661958	2022-10-05 22:04:24.661958
1244	1244	1179	66	0.8	\N	2022-10-05 22:04:24.669761	2022-10-05 22:04:24.669761
1245	1245	1179	67	0.0	5	2022-10-05 22:04:24.677659	2022-10-05 22:04:24.677659
1246	1246	1179	68	1.5	\N	2022-10-05 22:04:24.696162	2022-10-05 22:04:24.696162
1247	1247	1179	69	0.0	3	2022-10-05 22:04:24.702572	2022-10-05 22:04:24.702572
1248	1248	1179	70	0.0	4	2022-10-05 22:04:24.709692	2022-10-05 22:04:24.709692
1249	1249	1179	71	0.6	\N	2022-10-05 22:04:24.717096	2022-10-05 22:04:24.717096
1250	1250	1179	72	0.3	\N	2022-10-05 22:04:24.724267	2022-10-05 22:04:24.724267
1251	1251	1179	73	1.0	\N	2022-10-05 22:04:24.732045	2022-10-05 22:04:24.732045
1252	1252	1179	74	0.0	2	2022-10-05 22:04:24.7393	2022-10-05 22:04:24.7393
1253	1253	1179	76	0.0	5	2022-10-05 22:04:24.746224	2022-10-05 22:04:24.746224
1254	1254	1179	77	0.25	\N	2022-10-05 22:04:24.753468	2022-10-05 22:04:24.753468
1255	1255	1179	78	0.0	10	2022-10-05 22:04:24.760798	2022-10-05 22:04:24.760798
1256	1256	1179	79	0.3	\N	2022-10-05 22:04:24.768582	2022-10-05 22:04:24.768582
1257	1257	1179	80	0.75	\N	2022-10-05 22:04:24.776005	2022-10-05 22:04:24.776005
1258	1258	1179	81	0.3	\N	2022-10-05 22:04:24.783546	2022-10-05 22:04:24.783546
1259	1259	1179	82	0.7	\N	2022-10-05 22:04:24.790588	2022-10-05 22:04:24.790588
1260	1260	1179	83	0.25	\N	2022-10-05 22:04:24.798174	2022-10-05 22:04:24.798174
1261	1261	1179	85	0.0	15	2022-10-05 22:04:24.805321	2022-10-05 22:04:24.805321
1262	1262	1179	86	0.0	25	2022-10-05 22:04:24.812956	2022-10-05 22:04:24.812956
1263	1263	1179	87	0.75	\N	2022-10-05 22:04:24.819591	2022-10-05 22:04:24.819591
1264	1264	1179	88	0.5	\N	2022-10-05 22:04:24.827167	2022-10-05 22:04:24.827167
1265	1265	1179	89	0.15	\N	2022-10-05 22:04:24.834497	2022-10-05 22:04:24.834497
1266	1266	1179	90	0.8	\N	2022-10-05 22:04:24.841879	2022-10-05 22:04:24.841879
1267	1267	1179	91	0.6	\N	2022-10-05 22:04:24.849738	2022-10-05 22:04:24.849738
1268	1268	1179	92	0.0	5	2022-10-05 22:04:24.856447	2022-10-05 22:04:24.856447
1269	1269	1179	93	0.9	\N	2022-10-05 22:04:24.862836	2022-10-05 22:04:24.862836
1270	1270	1179	94	0.0	10	2022-10-05 22:04:24.869434	2022-10-05 22:04:24.869434
1271	1271	1179	96	1.8	\N	2022-10-05 22:04:24.876038	2022-10-05 22:04:24.876038
1272	1272	1179	97	1.5	\N	2022-10-05 22:04:24.882513	2022-10-05 22:04:24.882513
1273	1273	1179	98	1.2	\N	2022-10-05 22:04:24.888579	2022-10-05 22:04:24.888579
1274	1274	1179	99	1.0	\N	2022-10-05 22:04:24.895355	2022-10-05 22:04:24.895355
1275	1275	1179	100	1.7	\N	2022-10-05 22:04:24.901723	2022-10-05 22:04:24.901723
1276	1276	1276	1	0.5	\N	2022-10-05 22:04:24.908063	2022-10-05 22:04:24.908063
1277	1277	1276	2	0.5	\N	2022-10-05 22:04:24.914816	2022-10-05 22:04:24.914816
1278	1278	1276	3	0.7	\N	2022-10-05 22:04:24.920822	2022-10-05 22:04:24.920822
1279	1279	1276	5	0.75	\N	2022-10-05 22:04:24.927365	2022-10-05 22:04:24.927365
1280	1280	1276	7	0.7	\N	2022-10-05 22:04:24.935895	2022-10-05 22:04:24.935895
1281	1281	1276	8	0.05	\N	2022-10-05 22:04:24.943476	2022-10-05 22:04:24.943476
1282	1282	1276	9	1.5	\N	2022-10-05 22:04:24.950075	2022-10-05 22:04:24.950075
1283	1283	1276	10	1.5	\N	2022-10-05 22:04:24.955737	2022-10-05 22:04:24.955737
1284	1284	1276	11	0.02	\N	2022-10-05 22:04:24.962757	2022-10-05 22:04:24.962757
1285	1285	1276	12	0.5	\N	2022-10-05 22:04:24.969119	2022-10-05 22:04:24.969119
1286	1286	1276	13	1.6	\N	2022-10-05 22:04:24.975306	2022-10-05 22:04:24.975306
1287	1287	1276	14	0.5	\N	2022-10-05 22:04:24.981241	2022-10-05 22:04:24.981241
1288	1288	1276	15	0.6	\N	2022-10-05 22:04:24.986806	2022-10-05 22:04:24.986806
1289	1289	1276	16	0.5	\N	2022-10-05 22:04:24.993734	2022-10-05 22:04:24.993734
1290	1290	1276	17	1.0	\N	2022-10-05 22:04:25.000471	2022-10-05 22:04:25.000471
1291	1291	1276	18	0.3	\N	2022-10-05 22:04:25.007274	2022-10-05 22:04:25.007274
1292	1292	1276	19	0.5	\N	2022-10-05 22:04:25.013233	2022-10-05 22:04:25.013233
1293	1293	1276	20	0.6	\N	2022-10-05 22:04:25.018612	2022-10-05 22:04:25.018612
1294	1294	1276	21	0.5	\N	2022-10-05 22:04:25.024343	2022-10-05 22:04:25.024343
1295	1295	1276	22	0.0	5	2022-10-05 22:04:25.031969	2022-10-05 22:04:25.031969
1296	1296	1276	23	0.5	\N	2022-10-05 22:04:25.037236	2022-10-05 22:04:25.037236
1297	1297	1276	24	0.3	\N	2022-10-05 22:04:25.043377	2022-10-05 22:04:25.043377
1298	1298	1276	25	0.75	\N	2022-10-05 22:04:25.049021	2022-10-05 22:04:25.049021
1299	1299	1276	26	0.75	\N	2022-10-05 22:04:25.054784	2022-10-05 22:04:25.054784
1300	1300	1276	27	0.4	\N	2022-10-05 22:04:25.061094	2022-10-05 22:04:25.061094
1301	1301	1276	28	0.0	40	2022-10-05 22:04:25.067506	2022-10-05 22:04:25.067506
1302	1302	1276	29	0.25	\N	2022-10-05 22:04:25.072818	2022-10-05 22:04:25.072818
1303	1303	1276	30	0.25	\N	2022-10-05 22:04:25.079818	2022-10-05 22:04:25.079818
1304	1304	1276	31	0.05	\N	2022-10-05 22:04:25.085513	2022-10-05 22:04:25.085513
1305	1305	1276	32	0.5	\N	2022-10-05 22:04:25.091491	2022-10-05 22:04:25.091491
1306	1306	1276	33	0.1	\N	2022-10-05 22:04:25.102056	2022-10-05 22:04:25.102056
1307	1307	1276	34	0.05	\N	2022-10-05 22:04:25.109064	2022-10-05 22:04:25.109064
1308	1308	1276	35	0.4	\N	2022-10-05 22:04:25.116817	2022-10-05 22:04:25.116817
1309	1309	1276	36	0.2	\N	2022-10-05 22:04:25.122746	2022-10-05 22:04:25.122746
1310	1310	1276	37	0.02	\N	2022-10-05 22:04:25.133438	2022-10-05 22:04:25.133438
1311	1311	1276	38	0.5	\N	2022-10-05 22:04:25.139354	2022-10-05 22:04:25.139354
1312	1312	1276	39	0.5	\N	2022-10-05 22:04:25.146622	2022-10-05 22:04:25.146622
1313	1313	1276	40	0.7	\N	2022-10-05 22:04:25.153695	2022-10-05 22:04:25.153695
1314	1314	1276	41	0.25	\N	2022-10-05 22:04:25.1603	2022-10-05 22:04:25.1603
1315	1315	1276	42	0.3	\N	2022-10-05 22:04:25.168363	2022-10-05 22:04:25.168363
1316	1316	1276	43	0.5	\N	2022-10-05 22:04:25.174218	2022-10-05 22:04:25.174218
1317	1317	1276	44	1.0	\N	2022-10-05 22:04:25.180333	2022-10-05 22:04:25.180333
1318	1318	1276	45	0.75	\N	2022-10-05 22:04:25.186611	2022-10-05 22:04:25.186611
1319	1319	1276	46	0.5	\N	2022-10-05 22:04:25.193095	2022-10-05 22:04:25.193095
1320	1320	1276	47	0.2	\N	2022-10-05 22:04:25.199305	2022-10-05 22:04:25.199305
1321	1321	1276	48	0.2	\N	2022-10-05 22:04:25.204933	2022-10-05 22:04:25.204933
1322	1322	1276	49	0.7	\N	2022-10-05 22:04:25.21077	2022-10-05 22:04:25.21077
1323	1323	1276	50	0.7	\N	2022-10-05 22:04:25.217115	2022-10-05 22:04:25.217115
1324	1324	1276	51	0.25	\N	2022-10-05 22:04:25.222928	2022-10-05 22:04:25.222928
1325	1325	1276	52	0.4	\N	2022-10-05 22:04:25.229235	2022-10-05 22:04:25.229235
1326	1326	1276	53	0.4	\N	2022-10-05 22:04:25.235063	2022-10-05 22:04:25.235063
1327	1327	1276	54	0.5	\N	2022-10-05 22:04:25.240828	2022-10-05 22:04:25.240828
1328	1328	1276	55	0.4	\N	2022-10-05 22:04:25.247067	2022-10-05 22:04:25.247067
1329	1329	1276	56	0.5	\N	2022-10-05 22:04:25.253043	2022-10-05 22:04:25.253043
1330	1330	1276	57	0.7	\N	2022-10-05 22:04:25.259355	2022-10-05 22:04:25.259355
1331	1331	1276	58	0.0	6	2022-10-05 22:04:25.265785	2022-10-05 22:04:25.265785
1332	1332	1276	59	0.4	\N	2022-10-05 22:04:25.271101	2022-10-05 22:04:25.271101
1333	1333	1276	60	0.3	\N	2022-10-05 22:04:25.277753	2022-10-05 22:04:25.277753
1334	1334	1276	61	0.05	\N	2022-10-05 22:04:25.283678	2022-10-05 22:04:25.283678
1335	1335	1276	62	0.04	\N	2022-10-05 22:04:25.289009	2022-10-05 22:04:25.289009
1336	1336	1276	63	0.5	\N	2022-10-05 22:04:25.29533	2022-10-05 22:04:25.29533
1337	1337	1276	64	0.6	\N	2022-10-05 22:04:25.301673	2022-10-05 22:04:25.301673
1338	1338	1276	65	0.7	\N	2022-10-05 22:04:25.308723	2022-10-05 22:04:25.308723
1339	1339	1276	66	0.25	\N	2022-10-05 22:04:25.317959	2022-10-05 22:04:25.317959
1340	1340	1276	67	0.5	\N	2022-10-05 22:04:25.323859	2022-10-05 22:04:25.323859
1341	1341	1276	68	0.06	\N	2022-10-05 22:04:25.329966	2022-10-05 22:04:25.329966
1342	1342	1276	69	0.2	\N	2022-10-05 22:04:25.335984	2022-10-05 22:04:25.335984
1343	1343	1276	70	0.25	\N	2022-10-05 22:04:25.342033	2022-10-05 22:04:25.342033
1344	1344	1276	71	0.5	\N	2022-10-05 22:04:25.347903	2022-10-05 22:04:25.347903
1345	1345	1276	72	0.6	\N	2022-10-05 22:04:25.354671	2022-10-05 22:04:25.354671
1346	1346	1276	73	0.3	\N	2022-10-05 22:04:25.360123	2022-10-05 22:04:25.360123
1347	1338	1276	74	0.9	\N	2022-10-05 22:04:25.365577	2022-10-05 22:04:25.365577
1348	1348	1276	75	0.5	\N	2022-10-05 22:04:25.370682	2022-10-05 22:04:25.370682
1349	1349	1276	76	0.5	\N	2022-10-05 22:04:25.376176	2022-10-05 22:04:25.376176
1350	1350	1276	77	0.5	\N	2022-10-05 22:04:25.381397	2022-10-05 22:04:25.381397
1351	1351	1276	78	0.75	\N	2022-10-05 22:04:25.386738	2022-10-05 22:04:25.386738
1352	1352	1276	79	0.2	\N	2022-10-05 22:04:25.392247	2022-10-05 22:04:25.392247
1353	1353	1276	80	0.25	\N	2022-10-05 22:04:25.398318	2022-10-05 22:04:25.398318
1354	1354	1276	81	0.3	\N	2022-10-05 22:04:25.403371	2022-10-05 22:04:25.403371
1355	1355	1276	82	0.5	\N	2022-10-05 22:04:25.410715	2022-10-05 22:04:25.410715
1356	1356	1276	83	0.7	\N	2022-10-05 22:04:25.41574	2022-10-05 22:04:25.41574
1357	1357	1276	84	0.25	\N	2022-10-05 22:04:25.421089	2022-10-05 22:04:25.421089
1358	1358	1276	85	0.04	\N	2022-10-05 22:04:25.426761	2022-10-05 22:04:25.426761
1359	1359	1276	86	0.15	\N	2022-10-05 22:04:25.43219	2022-10-05 22:04:25.43219
1360	1360	1276	87	0.2	\N	2022-10-05 22:04:25.437414	2022-10-05 22:04:25.437414
1361	1361	1276	88	0.4	\N	2022-10-05 22:04:25.444271	2022-10-05 22:04:25.444271
1362	1362	1276	89	0.8	\N	2022-10-05 22:04:25.450386	2022-10-05 22:04:25.450386
1363	1363	1276	90	1.9	\N	2022-10-05 22:04:25.455996	2022-10-05 22:04:25.455996
1364	1364	1276	91	0.02	\N	2022-10-05 22:04:25.461615	2022-10-05 22:04:25.461615
1365	1365	1276	92	0.15	\N	2022-10-05 22:04:25.471772	2022-10-05 22:04:25.471772
1366	1366	1276	93	0.4	\N	2022-10-05 22:04:25.477413	2022-10-05 22:04:25.477413
1367	1367	1276	94	0.5	\N	2022-10-05 22:04:25.482802	2022-10-05 22:04:25.482802
1368	1368	1276	95	0.5	\N	2022-10-05 22:04:25.488038	2022-10-05 22:04:25.488038
1369	1369	1276	96	0.1	\N	2022-10-05 22:04:25.493419	2022-10-05 22:04:25.493419
1370	1370	1276	97	0.6	\N	2022-10-05 22:04:25.499185	2022-10-05 22:04:25.499185
1371	1371	1276	98	1.2	\N	2022-10-05 22:04:25.504384	2022-10-05 22:04:25.504384
1372	1372	1276	99	0.8	\N	2022-10-05 22:04:25.509742	2022-10-05 22:04:25.509742
1373	1373	1276	100	0.5	\N	2022-10-05 22:04:25.515647	2022-10-05 22:04:25.515647
1374	1374	1374	2	0.3	\N	2022-10-05 22:04:25.521091	2022-10-05 22:04:25.521091
1375	1375	1374	8	0.05	\N	2022-10-05 22:04:25.527123	2022-10-05 22:04:25.527123
1376	1376	1374	10	0.1	\N	2022-10-05 22:04:25.533024	2022-10-05 22:04:25.533024
1377	1377	1374	11	1.2	\N	2022-10-05 22:04:25.538224	2022-10-05 22:04:25.538224
1378	1378	1374	12	0.7	\N	2022-10-05 22:04:25.544737	2022-10-05 22:04:25.544737
1379	1379	1374	13	0.06	\N	2022-10-05 22:04:25.550474	2022-10-05 22:04:25.550474
1380	1380	1374	14	0.25	\N	2022-10-05 22:04:25.557653	2022-10-05 22:04:25.557653
1381	1381	1374	15	0.2	\N	2022-10-05 22:04:25.570431	2022-10-05 22:04:25.570431
1382	1382	1374	16	0.25	\N	2022-10-05 22:04:25.581991	2022-10-05 22:04:25.581991
1383	1383	1374	17	0.25	\N	2022-10-05 22:04:25.587756	2022-10-05 22:04:25.587756
1384	1384	1374	18	0.5	\N	2022-10-05 22:04:25.593942	2022-10-05 22:04:25.593942
1385	1385	1374	19	0.25	\N	2022-10-05 22:04:25.600466	2022-10-05 22:04:25.600466
1386	1386	1374	21	0.2	\N	2022-10-05 22:04:25.606063	2022-10-05 22:04:25.606063
1387	1378	1374	22	0.5	\N	2022-10-05 22:04:25.613455	2022-10-05 22:04:25.613455
1388	1388	1374	24	0.6	\N	2022-10-05 22:04:25.618909	2022-10-05 22:04:25.618909
1389	1389	1374	25	1.0	\N	2022-10-05 22:04:25.625781	2022-10-05 22:04:25.625781
1390	1390	1374	26	0.75	\N	2022-10-05 22:04:25.63151	2022-10-05 22:04:25.63151
1391	1391	1374	42	0.0	5	2022-10-05 22:04:25.636691	2022-10-05 22:04:25.636691
1392	1392	1374	43	0.0	2	2022-10-05 22:04:25.64158	2022-10-05 22:04:25.64158
1393	1393	1374	44	0.0	5	2022-10-05 22:04:25.647032	2022-10-05 22:04:25.647032
1394	1394	1374	45	0.0	1	2022-10-05 22:04:25.653108	2022-10-05 22:04:25.653108
1395	1395	1374	46	0.0	5	2022-10-05 22:04:25.658918	2022-10-05 22:04:25.658918
1396	1396	1374	47	0.0	15	2022-10-05 22:04:25.666205	2022-10-05 22:04:25.666205
1397	1397	1374	48	0.0	40	2022-10-05 22:04:25.672285	2022-10-05 22:04:25.672285
1398	1398	1374	49	0.0	5	2022-10-05 22:04:25.678879	2022-10-05 22:04:25.678879
1399	1399	1374	61	0.0	20	2022-10-05 22:04:25.684974	2022-10-05 22:04:25.684974
1400	1400	1374	62	0.0	8	2022-10-05 22:04:25.691397	2022-10-05 22:04:25.691397
1401	1401	1401	1	0.5	\N	2022-10-05 22:04:25.697733	2022-10-05 22:04:25.697733
1402	885	1401	2	0.25	\N	2022-10-05 22:04:25.703829	2022-10-05 22:04:25.703829
1403	888	1401	3	0.5	\N	2022-10-05 22:04:25.709879	2022-10-05 22:04:25.709879
1404	889	1401	4	0.6	\N	2022-10-05 22:04:25.715933	2022-10-05 22:04:25.715933
1405	892	1401	5	0.5	\N	2022-10-05 22:04:25.721162	2022-10-05 22:04:25.721162
1406	1406	1401	6	0.25	\N	2022-10-05 22:04:25.727555	2022-10-05 22:04:25.727555
1407	1407	1401	7	1.6	\N	2022-10-05 22:04:25.733581	2022-10-05 22:04:25.733581
1408	1408	1401	8	0.5	\N	2022-10-05 22:04:25.739335	2022-10-05 22:04:25.739335
1409	1409	1401	9	0.25	\N	2022-10-05 22:04:25.751124	2022-10-05 22:04:25.751124
1410	902	1401	10	0.2	\N	2022-10-05 22:04:25.757196	2022-10-05 22:04:25.757196
1411	910	1401	11	0.25	\N	2022-10-05 22:04:25.765444	2022-10-05 22:04:25.765444
1412	1412	1401	12	0.25	\N	2022-10-05 22:04:25.770526	2022-10-05 22:04:25.770526
1413	1413	1401	13	1.4	\N	2022-10-05 22:04:25.778881	2022-10-05 22:04:25.778881
1414	915	1401	14	0.5	\N	2022-10-05 22:04:25.784376	2022-10-05 22:04:25.784376
1415	1415	1401	15	0.3	\N	2022-10-05 22:04:25.789533	2022-10-05 22:04:25.789533
1416	918	1401	16	0.06	\N	2022-10-05 22:04:25.79877	2022-10-05 22:04:25.79877
1417	1417	1401	18	0.4	\N	2022-10-05 22:04:25.80401	2022-10-05 22:04:25.80401
1418	1418	1401	19	0.6	\N	2022-10-05 22:04:25.810882	2022-10-05 22:04:25.810882
1419	928	1401	20	0.5	\N	2022-10-05 22:04:25.817058	2022-10-05 22:04:25.817058
1420	1420	1401	21	0.2	\N	2022-10-05 22:04:25.822378	2022-10-05 22:04:25.822378
1421	950	1401	22	0.15	\N	2022-10-05 22:04:25.828696	2022-10-05 22:04:25.828696
1422	1422	1401	23	0.7	\N	2022-10-05 22:04:25.839342	2022-10-05 22:04:25.839342
1423	962	1401	24	0.25	\N	2022-10-05 22:04:25.845377	2022-10-05 22:04:25.845377
1424	964	1401	25	0.4	\N	2022-10-05 22:04:25.851218	2022-10-05 22:04:25.851218
1425	970	1401	26	0.1	\N	2022-10-05 22:04:25.857136	2022-10-05 22:04:25.857136
1426	1426	1401	27	0.3	\N	2022-10-05 22:04:25.865382	2022-10-05 22:04:25.865382
1427	987	1401	28	0.1	\N	2022-10-05 22:04:25.870581	2022-10-05 22:04:25.870581
1428	979	1401	29	0.5	\N	2022-10-05 22:04:25.876174	2022-10-05 22:04:25.876174
1429	980	1401	30	0.6	\N	2022-10-05 22:04:25.881725	2022-10-05 22:04:25.881725
1430	981	1401	31	0.9	\N	2022-10-05 22:04:25.886842	2022-10-05 22:04:25.886842
1431	1431	1401	32	0.06	\N	2022-10-05 22:04:25.892766	2022-10-05 22:04:25.892766
1432	997	1401	33	0.06	\N	2022-10-05 22:04:25.898047	2022-10-05 22:04:25.898047
1433	1433	1401	34	1.7	\N	2022-10-05 22:04:25.903782	2022-10-05 22:04:25.903782
1434	1434	1401	35	1.8	\N	2022-10-05 22:04:25.909211	2022-10-05 22:04:25.909211
1435	1435	1401	36	0.8	\N	2022-10-05 22:04:25.914539	2022-10-05 22:04:25.914539
1436	1436	1401	37	1.0	\N	2022-10-05 22:04:25.919793	2022-10-05 22:04:25.919793
1437	1005	1401	38	0.5	\N	2022-10-05 22:04:25.925247	2022-10-05 22:04:25.925247
1438	1010	1401	39	0.5	\N	2022-10-05 22:04:25.930991	2022-10-05 22:04:25.930991
1439	1439	1401	40	0.8	\N	2022-10-05 22:04:25.936201	2022-10-05 22:04:25.936201
1440	1013	1401	41	0.7	\N	2022-10-05 22:04:25.942731	2022-10-05 22:04:25.942731
1441	1015	1401	42	0.7	\N	2022-10-05 22:04:25.948218	2022-10-05 22:04:25.948218
1442	1043	1401	43	0.4	\N	2022-10-05 22:04:25.953581	2022-10-05 22:04:25.953581
1443	1052	1401	44	0.06	\N	2022-10-05 22:04:25.958788	2022-10-05 22:04:25.958788
1444	1044	1401	45	0.25	\N	2022-10-05 22:04:25.968259	2022-10-05 22:04:25.968259
1445	1046	1401	46	0.5	\N	2022-10-05 22:04:25.973727	2022-10-05 22:04:25.973727
1446	1047	1401	47	1.2	\N	2022-10-05 22:04:25.979176	2022-10-05 22:04:25.979176
1447	1447	1401	48	0.7	\N	2022-10-05 22:04:25.985176	2022-10-05 22:04:25.985176
1448	1050	1401	49	0.7	\N	2022-10-05 22:04:25.991307	2022-10-05 22:04:25.991307
1449	1058	1401	50	0.6	\N	2022-10-05 22:04:25.996871	2022-10-05 22:04:25.996871
1450	1060	1401	51	0.5	\N	2022-10-05 22:04:26.002368	2022-10-05 22:04:26.002368
1451	1451	1401	52	0.7	\N	2022-10-05 22:04:26.00858	2022-10-05 22:04:26.00858
1452	1118	1401	53	0.25	\N	2022-10-05 22:04:26.014022	2022-10-05 22:04:26.014022
1453	1453	1401	54	1.6	\N	2022-10-05 22:04:26.019296	2022-10-05 22:04:26.019296
1454	1143	1401	55	0.6	\N	2022-10-05 22:04:26.024763	2022-10-05 22:04:26.024763
1455	1144	1401	56	0.6	\N	2022-10-05 22:04:26.031409	2022-10-05 22:04:26.031409
1456	1456	1401	57	1.8	\N	2022-10-05 22:04:26.037657	2022-10-05 22:04:26.037657
1457	1146	1401	58	0.4	\N	2022-10-05 22:04:26.044228	2022-10-05 22:04:26.044228
1458	1458	1401	59	1.8	\N	2022-10-05 22:04:26.049881	2022-10-05 22:04:26.049881
1459	1154	1401	60	0.15	\N	2022-10-05 22:04:26.055438	2022-10-05 22:04:26.055438
1460	1460	1401	61	0.25	\N	2022-10-05 22:04:26.061648	2022-10-05 22:04:26.061648
1461	1461	1401	62	1.0	\N	2022-10-05 22:04:26.067066	2022-10-05 22:04:26.067066
1462	1462	1401	63	0.4	\N	2022-10-05 22:04:26.073216	2022-10-05 22:04:26.073216
1463	1194	1401	64	0.5	\N	2022-10-05 22:04:26.080165	2022-10-05 22:04:26.080165
1464	1464	1401	65	0.7	\N	2022-10-05 22:04:26.08573	2022-10-05 22:04:26.08573
1465	1465	1401	66	0.25	\N	2022-10-05 22:04:26.091233	2022-10-05 22:04:26.091233
1466	1466	1401	67	0.06	\N	2022-10-05 22:04:26.098665	2022-10-05 22:04:26.098665
1467	1220	1401	68	0.15	\N	2022-10-05 22:04:26.10407	2022-10-05 22:04:26.10407
1468	1221	1401	69	0.4	\N	2022-10-05 22:04:26.110983	2022-10-05 22:04:26.110983
1469	1469	1401	70	0.3	\N	2022-10-05 22:04:26.117378	2022-10-05 22:04:26.117378
1470	1470	1401	72	1.2	\N	2022-10-05 22:04:26.124285	2022-10-05 22:04:26.124285
1471	1471	1401	73	1.0	\N	2022-10-05 22:04:26.13383	2022-10-05 22:04:26.13383
1472	1274	1401	74	1.2	\N	2022-10-05 22:04:26.138925	2022-10-05 22:04:26.138925
1473	1473	1401	75	0.3	\N	2022-10-05 22:04:26.14467	2022-10-05 22:04:26.14467
1474	1474	1401	76	0.2	\N	2022-10-05 22:04:26.149798	2022-10-05 22:04:26.149798
1475	1279	1401	77	0.7	\N	2022-10-05 22:04:26.155567	2022-10-05 22:04:26.155567
1476	1286	1401	78	0.3	\N	2022-10-05 22:04:26.161529	2022-10-05 22:04:26.161529
1477	1477	1401	79	0.05	\N	2022-10-05 22:04:26.168287	2022-10-05 22:04:26.168287
1478	1478	1401	80	0.8	\N	2022-10-05 22:04:26.17332	2022-10-05 22:04:26.17332
1479	1308	1401	81	0.5	\N	2022-10-05 22:04:26.180794	2022-10-05 22:04:26.180794
1480	1311	1401	82	0.25	\N	2022-10-05 22:04:26.186616	2022-10-05 22:04:26.186616
1481	1327	1401	83	0.5	\N	2022-10-05 22:04:26.193192	2022-10-05 22:04:26.193192
1482	1329	1401	84	0.4	\N	2022-10-05 22:04:26.198808	2022-10-05 22:04:26.198808
1483	1483	1401	85	0.2	\N	2022-10-05 22:04:26.203804	2022-10-05 22:04:26.203804
1484	1484	1401	86	0.25	\N	2022-10-05 22:04:26.21002	2022-10-05 22:04:26.21002
1485	1341	1401	87	0.6	\N	2022-10-05 22:04:26.21514	2022-10-05 22:04:26.21514
1486	1486	1401	88	0.3	\N	2022-10-05 22:04:26.220136	2022-10-05 22:04:26.220136
1487	1487	1401	89	0.75	\N	2022-10-05 22:04:26.225455	2022-10-05 22:04:26.225455
1488	1346	1401	90	0.8	\N	2022-10-05 22:04:26.231115	2022-10-05 22:04:26.231115
1489	1489	1401	91	0.2	\N	2022-10-05 22:04:26.236377	2022-10-05 22:04:26.236377
1490	1490	1401	92	0.6	\N	2022-10-05 22:04:26.242066	2022-10-05 22:04:26.242066
1491	1366	1401	93	0.75	\N	2022-10-05 22:04:26.247954	2022-10-05 22:04:26.247954
1492	1492	1401	94	0.3	\N	2022-10-05 22:04:26.253579	2022-10-05 22:04:26.253579
1493	1493	1401	95	0.4	\N	2022-10-05 22:04:26.259684	2022-10-05 22:04:26.259684
1494	1494	1401	97	0.25	\N	2022-10-05 22:04:26.266364	2022-10-05 22:04:26.266364
1495	1495	1495	1	0.5	\N	2022-10-05 22:04:26.271585	2022-10-05 22:04:26.271585
1496	1496	1495	2	0.1	\N	2022-10-05 22:04:26.277501	2022-10-05 22:04:26.277501
1497	1497	1495	4	0.2	\N	2022-10-05 22:04:26.283149	2022-10-05 22:04:26.283149
1498	1426	1495	5	0.5	\N	2022-10-05 22:04:26.288302	2022-10-05 22:04:26.288302
1499	1499	1495	6	0.3	\N	2022-10-05 22:04:26.293863	2022-10-05 22:04:26.293863
1500	1500	1495	7	0.25	\N	2022-10-05 22:04:26.299693	2022-10-05 22:04:26.299693
1501	1501	1495	8	0.05	\N	2022-10-05 22:04:26.305013	2022-10-05 22:04:26.305013
1502	1502	1495	9	0.05	\N	2022-10-05 22:04:26.310399	2022-10-05 22:04:26.310399
1503	1503	1495	10	0.3	\N	2022-10-05 22:04:26.316304	2022-10-05 22:04:26.316304
1504	1003	1495	11	0.2	\N	2022-10-05 22:04:26.321749	2022-10-05 22:04:26.321749
1505	1505	1495	12	0.75	\N	2022-10-05 22:04:26.327848	2022-10-05 22:04:26.327848
1506	1506	1495	13	0.05	\N	2022-10-05 22:04:26.334445	2022-10-05 22:04:26.334445
1507	1507	1495	14	0.1	\N	2022-10-05 22:04:26.342864	2022-10-05 22:04:26.342864
1508	1508	1495	15	0.2	\N	2022-10-05 22:04:26.349786	2022-10-05 22:04:26.349786
1509	1509	1495	16	0.2	\N	2022-10-05 22:04:26.356709	2022-10-05 22:04:26.356709
1510	1510	1495	17	0.04	\N	2022-10-05 22:04:26.36174	2022-10-05 22:04:26.36174
1511	1511	1495	18	0.5	\N	2022-10-05 22:04:26.367592	2022-10-05 22:04:26.367592
1512	1512	1495	19	0.15	\N	2022-10-05 22:04:26.372447	2022-10-05 22:04:26.372447
1513	1513	1495	20	0.25	\N	2022-10-05 22:04:26.378538	2022-10-05 22:04:26.378538
1514	1514	1495	21	0.03	\N	2022-10-05 22:04:26.384039	2022-10-05 22:04:26.384039
1515	1515	1495	22	0.03	\N	2022-10-05 22:04:26.389321	2022-10-05 22:04:26.389321
1516	1516	1495	23	0.03	\N	2022-10-05 22:04:26.394956	2022-10-05 22:04:26.394956
1517	1517	1495	24	0.4	\N	2022-10-05 22:04:26.400642	2022-10-05 22:04:26.400642
1518	1518	1495	25	0.5	\N	2022-10-05 22:04:26.406389	2022-10-05 22:04:26.406389
1519	1519	1495	26	0.4	\N	2022-10-05 22:04:26.411771	2022-10-05 22:04:26.411771
1520	1520	1495	27	0.02	\N	2022-10-05 22:04:26.417516	2022-10-05 22:04:26.417516
1521	1521	1495	28	1.7	\N	2022-10-05 22:04:26.422818	2022-10-05 22:04:26.422818
1522	1522	1495	29	0.5	\N	2022-10-05 22:04:26.430343	2022-10-05 22:04:26.430343
1523	1523	1495	30	0.4	\N	2022-10-05 22:04:26.436094	2022-10-05 22:04:26.436094
1524	1524	1495	31	0.2	\N	2022-10-05 22:04:26.443071	2022-10-05 22:04:26.443071
1525	1525	1495	32	0.1	\N	2022-10-05 22:04:26.448943	2022-10-05 22:04:26.448943
1526	1526	1495	33	0.7	\N	2022-10-05 22:04:26.4543	2022-10-05 22:04:26.4543
1527	1527	1495	34	0.1	\N	2022-10-05 22:04:26.461298	2022-10-05 22:04:26.461298
1528	1528	1495	35	0.5	\N	2022-10-05 22:04:26.467031	2022-10-05 22:04:26.467031
1529	1529	1495	36	0.25	\N	2022-10-05 22:04:26.473462	2022-10-05 22:04:26.473462
1530	1530	1495	37	0.2	\N	2022-10-05 22:04:26.48006	2022-10-05 22:04:26.48006
1531	1531	1495	38	0.7	\N	2022-10-05 22:04:26.485718	2022-10-05 22:04:26.485718
1532	1532	1495	39	0.05	\N	2022-10-05 22:04:26.492164	2022-10-05 22:04:26.492164
1533	1533	1495	40	0.04	\N	2022-10-05 22:04:26.497981	2022-10-05 22:04:26.497981
1534	1534	1495	41	0.05	\N	2022-10-05 22:04:26.503083	2022-10-05 22:04:26.503083
1535	1535	1495	42	0.3	\N	2022-10-05 22:04:26.509176	2022-10-05 22:04:26.509176
1536	1469	1495	43	0.25	\N	2022-10-05 22:04:26.515323	2022-10-05 22:04:26.515323
1537	1537	1495	44	0.03	\N	2022-10-05 22:04:26.520418	2022-10-05 22:04:26.520418
1538	1538	1495	45	0.4	\N	2022-10-05 22:04:26.526604	2022-10-05 22:04:26.526604
1539	1539	1495	46	0.3	\N	2022-10-05 22:04:26.531947	2022-10-05 22:04:26.531947
1540	1540	1495	47	0.05	\N	2022-10-05 22:04:26.537193	2022-10-05 22:04:26.537193
1541	1541	1495	48	0.3	\N	2022-10-05 22:04:26.545117	2022-10-05 22:04:26.545117
1542	1542	1495	49	0.75	\N	2022-10-05 22:04:26.55152	2022-10-05 22:04:26.55152
1543	1543	1495	50	0.05	\N	2022-10-05 22:04:26.557117	2022-10-05 22:04:26.557117
1544	1544	1495	51	0.5	\N	2022-10-05 22:04:26.562828	2022-10-05 22:04:26.562828
1545	1545	1495	52	0.1	\N	2022-10-05 22:04:26.568424	2022-10-05 22:04:26.568424
1546	1546	1495	53	0.03	\N	2022-10-05 22:04:26.574098	2022-10-05 22:04:26.574098
1547	1547	1495	54	0.75	\N	2022-10-05 22:04:26.579849	2022-10-05 22:04:26.579849
1548	1548	1495	55	0.3	\N	2022-10-05 22:04:26.586199	2022-10-05 22:04:26.586199
1549	1549	1495	56	0.25	\N	2022-10-05 22:04:26.591543	2022-10-05 22:04:26.591543
1550	1550	1495	57	0.03	\N	2022-10-05 22:04:26.598738	2022-10-05 22:04:26.598738
1551	1551	1495	61	0.75	\N	2022-10-05 22:04:26.604497	2022-10-05 22:04:26.604497
1552	1299	1495	62	0.5	\N	2022-10-05 22:04:26.610573	2022-10-05 22:04:26.610573
1553	1553	1495	63	0.05	\N	2022-10-05 22:04:26.618194	2022-10-05 22:04:26.618194
1554	1554	1495	64	0.4	\N	2022-10-05 22:04:26.624219	2022-10-05 22:04:26.624219
1555	1555	1495	65	0.3	\N	2022-10-05 22:04:26.634726	2022-10-05 22:04:26.634726
1556	1556	1495	66	0.4	\N	2022-10-05 22:04:26.641332	2022-10-05 22:04:26.641332
1557	1557	1495	67	0.5	\N	2022-10-05 22:04:26.648121	2022-10-05 22:04:26.648121
1558	1558	1495	69	1.1	\N	2022-10-05 22:04:26.653912	2022-10-05 22:04:26.653912
1559	1559	1495	70	0.75	\N	2022-10-05 22:04:26.661385	2022-10-05 22:04:26.661385
1560	1559	1495	71	1.0	\N	2022-10-05 22:04:26.667825	2022-10-05 22:04:26.667825
1561	1561	1561	2	0.0	25	2022-10-05 22:04:26.674128	2022-10-05 22:04:26.674128
1562	1562	1561	3	0.4	\N	2022-10-05 22:04:26.680333	2022-10-05 22:04:26.680333
1563	1563	1561	4	0.0	5	2022-10-05 22:04:26.686952	2022-10-05 22:04:26.686952
1564	1564	1561	5	0.0	5	2022-10-05 22:04:26.693555	2022-10-05 22:04:26.693555
1565	1565	1561	6	0.0	5	2022-10-05 22:04:26.699277	2022-10-05 22:04:26.699277
1566	1566	1561	7	1.3	\N	2022-10-05 22:04:26.704791	2022-10-05 22:04:26.704791
1567	1567	1561	8	1.6	\N	2022-10-05 22:04:26.712427	2022-10-05 22:04:26.712427
1568	1568	1561	9	0.75	\N	2022-10-05 22:04:26.718117	2022-10-05 22:04:26.718117
1569	1569	1561	10	1.4	\N	2022-10-05 22:04:26.725229	2022-10-05 22:04:26.725229
1570	1570	1561	11	0.8	\N	2022-10-05 22:04:26.731365	2022-10-05 22:04:26.731365
1571	1571	1561	12	1.3	\N	2022-10-05 22:04:26.736969	2022-10-05 22:04:26.736969
1572	1572	1561	13	0.5	\N	2022-10-05 22:04:26.743748	2022-10-05 22:04:26.743748
1573	1573	1561	14	0.6	\N	2022-10-05 22:04:26.750192	2022-10-05 22:04:26.750192
1574	1574	1561	15	0.5	\N	2022-10-05 22:04:26.758595	2022-10-05 22:04:26.758595
1575	1575	1561	16	0.9	\N	2022-10-05 22:04:26.765684	2022-10-05 22:04:26.765684
1576	1576	1561	17	1.3	\N	2022-10-05 22:04:26.771223	2022-10-05 22:04:26.771223
1577	1577	1561	18	1.6	\N	2022-10-05 22:04:26.777277	2022-10-05 22:04:26.777277
1578	1578	1561	19	1.25	\N	2022-10-05 22:04:26.783215	2022-10-05 22:04:26.783215
1579	1579	1561	20	1.0	\N	2022-10-05 22:04:26.78858	2022-10-05 22:04:26.78858
1580	1580	1561	21	1.4	\N	2022-10-05 22:04:26.794349	2022-10-05 22:04:26.794349
1581	1581	1561	22	0.0	5	2022-10-05 22:04:26.801861	2022-10-05 22:04:26.801861
1582	1582	1561	23	0.0	15	2022-10-05 22:04:26.807756	2022-10-05 22:04:26.807756
1583	1583	1561	24	1.7	\N	2022-10-05 22:04:26.813539	2022-10-05 22:04:26.813539
1584	1584	1561	25	1.1	\N	2022-10-05 22:04:26.819218	2022-10-05 22:04:26.819218
1585	1585	1561	26	1.25	\N	2022-10-05 22:04:26.824704	2022-10-05 22:04:26.824704
1586	1586	1561	27	0.02	\N	2022-10-05 22:04:26.83079	2022-10-05 22:04:26.83079
1587	1587	1561	28	0.02	\N	2022-10-05 22:04:26.836859	2022-10-05 22:04:26.836859
1588	1588	1561	29	0.0	40	2022-10-05 22:04:26.843126	2022-10-05 22:04:26.843126
1589	1589	1561	30	0.0	5	2022-10-05 22:04:26.848494	2022-10-05 22:04:26.848494
1590	1590	1561	32	0.1	\N	2022-10-05 22:04:26.85317	2022-10-05 22:04:26.85317
1591	1591	1561	35	0.25	\N	2022-10-05 22:04:26.859296	2022-10-05 22:04:26.859296
1592	1592	1561	36	0.7	\N	2022-10-05 22:04:26.864747	2022-10-05 22:04:26.864747
1593	1593	1561	38	0.06	\N	2022-10-05 22:04:26.869661	2022-10-05 22:04:26.869661
1594	1594	1561	39	0.04	\N	2022-10-05 22:04:26.874943	2022-10-05 22:04:26.874943
1595	1595	1561	41	0.25	\N	2022-10-05 22:04:26.880309	2022-10-05 22:04:26.880309
1596	1596	1561	42	1.3	\N	2022-10-05 22:04:26.885473	2022-10-05 22:04:26.885473
1597	1597	1561	43	0.75	\N	2022-10-05 22:04:26.890984	2022-10-05 22:04:26.890984
1598	1598	1561	44	2.0	\N	2022-10-05 22:04:26.897186	2022-10-05 22:04:26.897186
1599	1599	1561	45	0.5	\N	2022-10-05 22:04:26.903887	2022-10-05 22:04:26.903887
1600	1600	1561	46	0.6	\N	2022-10-05 22:04:26.909887	2022-10-05 22:04:26.909887
1601	1601	1561	47	0.75	\N	2022-10-05 22:04:26.915932	2022-10-05 22:04:26.915932
1602	1602	1561	48	1.0	\N	2022-10-05 22:04:26.921321	2022-10-05 22:04:26.921321
1603	1603	1561	49	1.2	\N	2022-10-05 22:04:26.927391	2022-10-05 22:04:26.927391
1604	1604	1561	50	0.0	15	2022-10-05 22:04:26.932909	2022-10-05 22:04:26.932909
1605	1605	1561	51	1.1	\N	2022-10-05 22:04:26.937902	2022-10-05 22:04:26.937902
1606	1606	1561	52	0.25	\N	2022-10-05 22:04:26.943724	2022-10-05 22:04:26.943724
1607	1607	1561	53	0.01	\N	2022-10-05 22:04:26.949178	2022-10-05 22:04:26.949178
1608	1608	1561	54	0.0	5	2022-10-05 22:04:26.95437	2022-10-05 22:04:26.95437
1609	1609	1561	56	0.5	\N	2022-10-05 22:04:26.95988	2022-10-05 22:04:26.95988
1610	1610	1561	57	0.0	5	2022-10-05 22:04:26.966312	2022-10-05 22:04:26.966312
1611	1611	1561	58	0.05	\N	2022-10-05 22:04:26.971292	2022-10-05 22:04:26.971292
1612	1612	1561	59	0.0	10	2022-10-05 22:04:26.976976	2022-10-05 22:04:26.976976
1613	1613	1561	60	0.4	\N	2022-10-05 22:04:26.984452	2022-10-05 22:04:26.984452
1614	1614	1561	62	0.0	25	2022-10-05 22:04:26.990876	2022-10-05 22:04:26.990876
1615	1615	1561	63	0.0	25	2022-10-05 22:04:26.996754	2022-10-05 22:04:26.996754
1616	1616	1561	64	0.0	10	2022-10-05 22:04:27.003147	2022-10-05 22:04:27.003147
1617	1617	1561	65	0.0	45	2022-10-05 22:04:27.009123	2022-10-05 22:04:27.009123
1618	1618	1561	66	0.0	10	2022-10-05 22:04:27.015655	2022-10-05 22:04:27.015655
1619	1619	1561	71	0.06	\N	2022-10-05 22:04:27.020935	2022-10-05 22:04:27.020935
1620	1620	1561	72	0.02	\N	2022-10-05 22:04:27.027519	2022-10-05 22:04:27.027519
1621	1621	1561	73	0.02	\N	2022-10-05 22:04:27.034138	2022-10-05 22:04:27.034138
1622	1622	1561	75	0.04	\N	2022-10-05 22:04:27.041884	2022-10-05 22:04:27.041884
1623	1623	1561	76	0.25	\N	2022-10-05 22:04:27.048223	2022-10-05 22:04:27.048223
1624	1624	1561	77	0.02	\N	2022-10-05 22:04:27.05378	2022-10-05 22:04:27.05378
1625	1625	1561	78	0.04	\N	2022-10-05 22:04:27.060837	2022-10-05 22:04:27.060837
1626	1626	1561	79	0.04	\N	2022-10-05 22:04:27.066909	2022-10-05 22:04:27.066909
1627	1627	1561	80	0.25	\N	2022-10-05 22:04:27.072525	2022-10-05 22:04:27.072525
1628	1628	1561	81	0.04	\N	2022-10-05 22:04:27.079664	2022-10-05 22:04:27.079664
1629	1629	1561	83	0.2	\N	2022-10-05 22:04:27.085785	2022-10-05 22:04:27.085785
1630	1630	1561	84	0.0	10	2022-10-05 22:04:27.092186	2022-10-05 22:04:27.092186
1631	1631	1561	85	0.01	\N	2022-10-05 22:04:27.098174	2022-10-05 22:04:27.098174
1632	1632	1561	86	0.75	\N	2022-10-05 22:04:27.103814	2022-10-05 22:04:27.103814
1633	1633	1561	87	0.01	\N	2022-10-05 22:04:27.110184	2022-10-05 22:04:27.110184
1634	1634	1561	88	0.05	\N	2022-10-05 22:04:27.115666	2022-10-05 22:04:27.115666
1635	1635	1561	89	0.6	\N	2022-10-05 22:04:27.121155	2022-10-05 22:04:27.121155
1636	1636	1561	90	0.04	\N	2022-10-05 22:04:27.128672	2022-10-05 22:04:27.128672
1637	1637	1561	91	0.01	\N	2022-10-05 22:04:27.134578	2022-10-05 22:04:27.134578
1638	1638	1561	92	0.05	\N	2022-10-05 22:04:27.14034	2022-10-05 22:04:27.14034
1639	1639	1561	93	0.03	\N	2022-10-05 22:04:27.146231	2022-10-05 22:04:27.146231
1640	1640	1561	94	0.06	\N	2022-10-05 22:04:27.152347	2022-10-05 22:04:27.152347
1641	1641	1561	95	0.06	\N	2022-10-05 22:04:27.158181	2022-10-05 22:04:27.158181
1642	1642	1561	96	0.01	\N	2022-10-05 22:04:27.165368	2022-10-05 22:04:27.165368
1643	1643	1561	97	0.25	\N	2022-10-05 22:04:27.170799	2022-10-05 22:04:27.170799
1644	1644	1561	98	0.75	\N	2022-10-05 22:04:27.176815	2022-10-05 22:04:27.176815
1645	1645	1561	99	0.7	\N	2022-10-05 22:04:27.183024	2022-10-05 22:04:27.183024
1646	1646	1561	100	0.3	\N	2022-10-05 22:04:27.18886	2022-10-05 22:04:27.18886
1647	1647	1647	1	0.75	\N	2022-10-05 22:04:27.194933	2022-10-05 22:04:27.194933
1648	1648	1647	2	1.0	\N	2022-10-05 22:04:27.200736	2022-10-05 22:04:27.200736
1649	1649	1647	3	0.7	\N	2022-10-05 22:04:27.206387	2022-10-05 22:04:27.206387
1650	1650	1647	4	0.7	\N	2022-10-05 22:04:27.212802	2022-10-05 22:04:27.212802
1651	1651	1647	5	0.5	\N	2022-10-05 22:04:27.219299	2022-10-05 22:04:27.219299
1652	1652	1647	6	0.75	\N	2022-10-05 22:04:27.225857	2022-10-05 22:04:27.225857
1653	1653	1647	7	0.2	\N	2022-10-05 22:04:27.232125	2022-10-05 22:04:27.232125
1654	1654	1647	8	0.7	\N	2022-10-05 22:04:27.237694	2022-10-05 22:04:27.237694
1655	1655	1647	9	0.1	\N	2022-10-05 22:04:27.243555	2022-10-05 22:04:27.243555
1656	1656	1647	10	1.2	\N	2022-10-05 22:04:27.249519	2022-10-05 22:04:27.249519
1657	1657	1647	14	0.3	\N	2022-10-05 22:04:27.255591	2022-10-05 22:04:27.255591
1658	1658	1647	16	0.25	\N	2022-10-05 22:04:27.261058	2022-10-05 22:04:27.261058
1659	1659	1647	17	0.6	\N	2022-10-05 22:04:27.267429	2022-10-05 22:04:27.267429
1660	1660	1647	18	0.4	\N	2022-10-05 22:04:27.272576	2022-10-05 22:04:27.272576
1661	1661	1647	19	0.5	\N	2022-10-05 22:04:27.278364	2022-10-05 22:04:27.278364
1662	1662	1647	20	0.15	\N	2022-10-05 22:04:27.284269	2022-10-05 22:04:27.284269
1663	1663	1647	22	2.0	\N	2022-10-05 22:04:27.289438	2022-10-05 22:04:27.289438
1664	1664	1647	23	1.2	\N	2022-10-05 22:04:27.295272	2022-10-05 22:04:27.295272
1665	1665	1647	24	1.8	\N	2022-10-05 22:04:27.300834	2022-10-05 22:04:27.300834
1666	1666	1647	25	1.25	\N	2022-10-05 22:04:27.306246	2022-10-05 22:04:27.306246
1667	1667	1647	26	1.1	\N	2022-10-05 22:04:27.311985	2022-10-05 22:04:27.311985
1668	1668	1647	27	1.1	\N	2022-10-05 22:04:27.318026	2022-10-05 22:04:27.318026
1669	1669	1647	28	0.3	\N	2022-10-05 22:04:27.324232	2022-10-05 22:04:27.324232
1670	1670	1647	29	0.8	\N	2022-10-05 22:04:27.329956	2022-10-05 22:04:27.329956
1671	1671	1647	30	1.0	\N	2022-10-05 22:04:27.338149	2022-10-05 22:04:27.338149
1672	1672	1647	31	1.8	\N	2022-10-05 22:04:27.34496	2022-10-05 22:04:27.34496
1673	1673	1647	32	0.01	\N	2022-10-05 22:04:27.351359	2022-10-05 22:04:27.351359
1674	1674	1647	33	0.0	5	2022-10-05 22:04:27.361281	2022-10-05 22:04:27.361281
1675	1675	1647	34	1.0	\N	2022-10-05 22:04:27.367367	2022-10-05 22:04:27.367367
1676	1676	1647	35	0.2	\N	2022-10-05 22:04:27.37343	2022-10-05 22:04:27.37343
1677	1677	1647	36	1.4	\N	2022-10-05 22:04:27.381212	2022-10-05 22:04:27.381212
1678	1678	1647	37	1.4	\N	2022-10-05 22:04:27.386579	2022-10-05 22:04:27.386579
1679	1679	1647	38	1.9	\N	2022-10-05 22:04:27.39311	2022-10-05 22:04:27.39311
1680	1680	1647	39	0.2	\N	2022-10-05 22:04:27.399033	2022-10-05 22:04:27.399033
1681	1681	1647	40	1.8	\N	2022-10-05 22:04:27.404283	2022-10-05 22:04:27.404283
1682	1682	1647	41	0.7	\N	2022-10-05 22:04:27.410631	2022-10-05 22:04:27.410631
1683	1683	1647	42	0.4	\N	2022-10-05 22:04:27.416401	2022-10-05 22:04:27.416401
1684	1684	1647	43	0.0	10	2022-10-05 22:04:27.421647	2022-10-05 22:04:27.421647
1685	1685	1647	44	0.2	\N	2022-10-05 22:04:27.427632	2022-10-05 22:04:27.427632
1686	1686	1647	47	0.1	\N	2022-10-05 22:04:27.433666	2022-10-05 22:04:27.433666
1687	1687	1647	48	0.0	40	2022-10-05 22:04:27.438885	2022-10-05 22:04:27.438885
1688	1688	1647	51	0.25	\N	2022-10-05 22:04:27.444898	2022-10-05 22:04:27.444898
1689	1689	1647	52	0.25	\N	2022-10-05 22:04:27.45017	2022-10-05 22:04:27.45017
1690	1690	1647	54	0.06	\N	2022-10-05 22:04:27.455638	2022-10-05 22:04:27.455638
1691	1691	1647	55	0.5	\N	2022-10-05 22:04:27.461526	2022-10-05 22:04:27.461526
1692	1692	1647	57	0.75	\N	2022-10-05 22:04:27.468237	2022-10-05 22:04:27.468237
1693	1693	1647	58	0.8	\N	2022-10-05 22:04:27.474929	2022-10-05 22:04:27.474929
1694	1694	1647	59	0.75	\N	2022-10-05 22:04:27.480777	2022-10-05 22:04:27.480777
1695	1695	1647	60	0.7	\N	2022-10-05 22:04:27.48648	2022-10-05 22:04:27.48648
1696	1696	1647	61	1.2	\N	2022-10-05 22:04:27.492654	2022-10-05 22:04:27.492654
1697	1697	1647	62	0.9	\N	2022-10-05 22:04:27.499278	2022-10-05 22:04:27.499278
1698	1698	1647	63	0.01	\N	2022-10-05 22:04:27.50481	2022-10-05 22:04:27.50481
1699	1699	1647	64	0.4	\N	2022-10-05 22:04:27.510845	2022-10-05 22:04:27.510845
1700	1700	1647	67	0.75	\N	2022-10-05 22:04:27.516628	2022-10-05 22:04:27.516628
1701	1701	1647	69	0.3	\N	2022-10-05 22:04:27.521905	2022-10-05 22:04:27.521905
1702	1702	1647	70	0.2	\N	2022-10-05 22:04:27.527364	2022-10-05 22:04:27.527364
1703	1703	1647	71	0.01	\N	2022-10-05 22:04:27.533456	2022-10-05 22:04:27.533456
1704	1704	1647	72	1.0	\N	2022-10-05 22:04:27.538694	2022-10-05 22:04:27.538694
1705	1705	1647	73	0.5	\N	2022-10-05 22:04:27.544478	2022-10-05 22:04:27.544478
1706	1706	1647	74	0.0	50	2022-10-05 22:04:27.550023	2022-10-05 22:04:27.550023
1707	1707	1647	76	1.3	\N	2022-10-05 22:04:27.554956	2022-10-05 22:04:27.554956
1708	1708	1647	77	1.5	\N	2022-10-05 22:04:27.560592	2022-10-05 22:04:27.560592
1709	1709	1647	78	1.0	\N	2022-10-05 22:04:27.567346	2022-10-05 22:04:27.567346
1710	1710	1647	79	0.5	\N	2022-10-05 22:04:27.57254	2022-10-05 22:04:27.57254
1711	1711	1647	80	1.2	\N	2022-10-05 22:04:27.581326	2022-10-05 22:04:27.581326
1712	1712	1647	81	0.1	\N	2022-10-05 22:04:27.58678	2022-10-05 22:04:27.58678
1713	1713	1647	82	1.0	\N	2022-10-05 22:04:27.593095	2022-10-05 22:04:27.593095
1714	1714	1647	83	0.75	\N	2022-10-05 22:04:27.600162	2022-10-05 22:04:27.600162
1715	1715	1647	84	0.8	\N	2022-10-05 22:04:27.605346	2022-10-05 22:04:27.605346
1716	1716	1647	85	1.3	\N	2022-10-05 22:04:27.611782	2022-10-05 22:04:27.611782
1717	1717	1647	86	1.25	\N	2022-10-05 22:04:27.618286	2022-10-05 22:04:27.618286
1718	1718	1647	87	1.3	\N	2022-10-05 22:04:27.625602	2022-10-05 22:04:27.625602
1719	1719	1647	88	1.9	\N	2022-10-05 22:04:27.631241	2022-10-05 22:04:27.631241
1720	1720	1647	89	2.0	\N	2022-10-05 22:04:27.636676	2022-10-05 22:04:27.636676
1721	1721	1647	90	0.0	15	2022-10-05 22:04:27.642606	2022-10-05 22:04:27.642606
1722	1722	1647	91	0.5	\N	2022-10-05 22:04:27.647539	2022-10-05 22:04:27.647539
1723	1723	1647	92	0.07	\N	2022-10-05 22:04:27.652859	2022-10-05 22:04:27.652859
1724	1724	1647	93	0.0	5	2022-10-05 22:04:27.657932	2022-10-05 22:04:27.657932
1725	1725	1647	95	0.6	\N	2022-10-05 22:04:27.663121	2022-10-05 22:04:27.663121
1726	1726	1647	96	0.5	\N	2022-10-05 22:04:27.668707	2022-10-05 22:04:27.668707
1727	1727	1647	99	0.6	\N	2022-10-05 22:04:27.673822	2022-10-05 22:04:27.673822
1728	1728	1728	1	1.2	\N	2022-10-05 22:04:27.679178	2022-10-05 22:04:27.679178
1729	1729	1728	2	1.0	\N	2022-10-05 22:04:27.684592	2022-10-05 22:04:27.684592
1730	1730	1728	3	1.5	\N	2022-10-05 22:04:27.689485	2022-10-05 22:04:27.689485
1731	1731	1728	4	0.5	\N	2022-10-05 22:04:27.694747	2022-10-05 22:04:27.694747
1732	1732	1728	5	0.75	\N	2022-10-05 22:04:27.69993	2022-10-05 22:04:27.69993
1733	1733	1728	6	1.0	\N	2022-10-05 22:04:27.704838	2022-10-05 22:04:27.704838
1734	1734	1728	7	0.75	\N	2022-10-05 22:04:27.710981	2022-10-05 22:04:27.710981
1735	1735	1728	9	1.1	\N	2022-10-05 22:04:27.717058	2022-10-05 22:04:27.717058
1736	1736	1728	10	1.25	\N	2022-10-05 22:04:27.72269	2022-10-05 22:04:27.72269
1737	1737	1728	11	0.25	\N	2022-10-05 22:04:27.728444	2022-10-05 22:04:27.728444
1738	1738	1728	12	0.5	\N	2022-10-05 22:04:27.733696	2022-10-05 22:04:27.733696
1739	1739	1728	13	1.6	\N	2022-10-05 22:04:27.738644	2022-10-05 22:04:27.738644
1740	1740	1728	14	0.75	\N	2022-10-05 22:04:27.744928	2022-10-05 22:04:27.744928
1741	1741	1728	15	0.0	35	2022-10-05 22:04:27.75	2022-10-05 22:04:27.75
1742	1742	1728	16	2.0	\N	2022-10-05 22:04:27.75472	2022-10-05 22:04:27.75472
1743	1743	1728	17	1.25	\N	2022-10-05 22:04:27.760059	2022-10-05 22:04:27.760059
1744	1744	1728	18	1.1	\N	2022-10-05 22:04:27.765715	2022-10-05 22:04:27.765715
1745	1745	1728	19	1.3	\N	2022-10-05 22:04:27.770441	2022-10-05 22:04:27.770441
1746	1746	1728	20	1.25	\N	2022-10-05 22:04:27.77678	2022-10-05 22:04:27.77678
1747	1747	1728	21	1.7	\N	2022-10-05 22:04:27.782226	2022-10-05 22:04:27.782226
1748	1748	1728	22	0.01	\N	2022-10-05 22:04:27.787003	2022-10-05 22:04:27.787003
1749	1749	1728	23	0.5	\N	2022-10-05 22:04:27.792494	2022-10-05 22:04:27.792494
1750	1750	1728	24	0.25	\N	2022-10-05 22:04:27.799001	2022-10-05 22:04:27.799001
1751	1751	1728	25	0.25	\N	2022-10-05 22:04:27.803619	2022-10-05 22:04:27.803619
1752	1752	1728	26	0.5	\N	2022-10-05 22:04:27.810053	2022-10-05 22:04:27.810053
1753	1753	1728	27	0.25	\N	2022-10-05 22:04:27.815237	2022-10-05 22:04:27.815237
1754	1754	1728	28	0.0	35	2022-10-05 22:04:27.820556	2022-10-05 22:04:27.820556
1755	1755	1728	29	0.04	\N	2022-10-05 22:04:27.835403	2022-10-05 22:04:27.835403
1756	1756	1728	30	0.25	\N	2022-10-05 22:04:27.84156	2022-10-05 22:04:27.84156
1757	1757	1728	31	0.25	\N	2022-10-05 22:04:27.847143	2022-10-05 22:04:27.847143
1758	1758	1728	32	0.7	\N	2022-10-05 22:04:27.853859	2022-10-05 22:04:27.853859
1759	1759	1728	33	0.3	\N	2022-10-05 22:04:27.859408	2022-10-05 22:04:27.859408
1760	1760	1728	34	0.0	10	2022-10-05 22:04:27.864559	2022-10-05 22:04:27.864559
1761	1761	1728	35	0.0	20	2022-10-05 22:04:27.869625	2022-10-05 22:04:27.869625
1762	1762	1728	36	0.2	\N	2022-10-05 22:04:27.878362	2022-10-05 22:04:27.878362
1763	1763	1728	37	0.01	\N	2022-10-05 22:04:27.884186	2022-10-05 22:04:27.884186
1764	1764	1728	38	0.25	\N	2022-10-05 22:04:27.889487	2022-10-05 22:04:27.889487
1765	1765	1728	39	0.25	\N	2022-10-05 22:04:27.89825	2022-10-05 22:04:27.89825
1766	1766	1728	40	0.02	\N	2022-10-05 22:04:27.903339	2022-10-05 22:04:27.903339
1767	1767	1728	41	1.0	\N	2022-10-05 22:04:27.908418	2022-10-05 22:04:27.908418
1768	1768	1728	42	1.0	\N	2022-10-05 22:04:27.914476	2022-10-05 22:04:27.914476
1769	1769	1728	43	1.25	\N	2022-10-05 22:04:27.920057	2022-10-05 22:04:27.920057
1770	1770	1728	44	1.4	\N	2022-10-05 22:04:27.925132	2022-10-05 22:04:27.925132
1771	1771	1728	45	1.0	\N	2022-10-05 22:04:27.930392	2022-10-05 22:04:27.930392
1772	1772	1728	46	1.8	\N	2022-10-05 22:04:27.936202	2022-10-05 22:04:27.936202
1773	1773	1728	47	1.5	\N	2022-10-05 22:04:27.941818	2022-10-05 22:04:27.941818
1774	1774	1728	48	0.75	\N	2022-10-05 22:04:27.948349	2022-10-05 22:04:27.948349
1775	1775	1728	49	2.0	\N	2022-10-05 22:04:27.953624	2022-10-05 22:04:27.953624
1776	1776	1728	50	2.0	\N	2022-10-05 22:04:27.959283	2022-10-05 22:04:27.959283
1777	1777	1728	51	0.3	\N	2022-10-05 22:04:27.965063	2022-10-05 22:04:27.965063
1778	1778	1728	52	0.05	\N	2022-10-05 22:04:27.97058	2022-10-05 22:04:27.97058
1779	1779	1728	53	0.05	\N	2022-10-05 22:04:27.976526	2022-10-05 22:04:27.976526
1780	1780	1728	54	1.2	\N	2022-10-05 22:04:27.981803	2022-10-05 22:04:27.981803
1781	1781	1728	56	0.1	\N	2022-10-05 22:04:27.987033	2022-10-05 22:04:27.987033
1782	1782	1728	57	1.3	\N	2022-10-05 22:04:27.993045	2022-10-05 22:04:27.993045
1783	1783	1728	58	0.01	\N	2022-10-05 22:04:27.99837	2022-10-05 22:04:27.99837
1784	1784	1728	59	0.3	\N	2022-10-05 22:04:28.003399	2022-10-05 22:04:28.003399
1785	1785	1728	60	0.25	\N	2022-10-05 22:04:28.008604	2022-10-05 22:04:28.008604
1786	1786	1728	61	0.3	\N	2022-10-05 22:04:28.013953	2022-10-05 22:04:28.013953
1787	1787	1728	62	0.02	\N	2022-10-05 22:04:28.019656	2022-10-05 22:04:28.019656
1788	1788	1728	64	0.0	30	2022-10-05 22:04:28.025437	2022-10-05 22:04:28.025437
1789	1789	1728	66	0.4	\N	2022-10-05 22:04:28.031832	2022-10-05 22:04:28.031832
1790	1790	1728	67	0.01	\N	2022-10-05 22:04:28.037272	2022-10-05 22:04:28.037272
1791	1791	1728	69	0.01	\N	2022-10-05 22:04:28.043537	2022-10-05 22:04:28.043537
1792	1792	1728	70	0.3	\N	2022-10-05 22:04:28.051302	2022-10-05 22:04:28.051302
1793	1793	1728	71	0.04	\N	2022-10-05 22:04:28.058458	2022-10-05 22:04:28.058458
1794	1794	1728	72	1.0	\N	2022-10-05 22:04:28.064415	2022-10-05 22:04:28.064415
1795	1795	1728	73	0.0	30	2022-10-05 22:04:28.070478	2022-10-05 22:04:28.070478
1796	1796	1728	74	1.3	\N	2022-10-05 22:04:28.078014	2022-10-05 22:04:28.078014
1797	1797	1728	75	0.4	\N	2022-10-05 22:04:28.08404	2022-10-05 22:04:28.08404
1798	1798	1728	76	1.1	\N	2022-10-05 22:04:28.090584	2022-10-05 22:04:28.090584
1799	1799	1728	77	1.9	\N	2022-10-05 22:04:28.096734	2022-10-05 22:04:28.096734
1800	1800	1728	78	2.0	\N	2022-10-05 22:04:28.103221	2022-10-05 22:04:28.103221
1801	1801	1728	79	2.0	\N	2022-10-05 22:04:28.109181	2022-10-05 22:04:28.109181
1802	1802	1728	80	2.0	\N	2022-10-05 22:04:28.115358	2022-10-05 22:04:28.115358
1803	1803	1728	81	0.1	\N	2022-10-05 22:04:28.120566	2022-10-05 22:04:28.120566
1804	1804	1728	82	0.04	\N	2022-10-05 22:04:28.128512	2022-10-05 22:04:28.128512
1805	1805	1728	85	0.6	\N	2022-10-05 22:04:28.134783	2022-10-05 22:04:28.134783
1806	1806	1728	86	0.25	\N	2022-10-05 22:04:28.140183	2022-10-05 22:04:28.140183
1807	1807	1728	87	0.0	5	2022-10-05 22:04:28.145604	2022-10-05 22:04:28.145604
1808	1808	1728	91	0.1	\N	2022-10-05 22:04:28.151169	2022-10-05 22:04:28.151169
1809	1809	1728	92	0.0	25	2022-10-05 22:04:28.156484	2022-10-05 22:04:28.156484
1810	1810	1728	93	0.0	5	2022-10-05 22:04:28.163069	2022-10-05 22:04:28.163069
1811	1811	1728	94	0.0	10	2022-10-05 22:04:28.168409	2022-10-05 22:04:28.168409
1812	1812	1728	95	0.07	\N	2022-10-05 22:04:28.17404	2022-10-05 22:04:28.17404
1813	1813	1728	96	0.0	30	2022-10-05 22:04:28.180102	2022-10-05 22:04:28.180102
1814	1814	1728	97	0.5	\N	2022-10-05 22:04:28.185906	2022-10-05 22:04:28.185906
1815	1815	1728	98	0.9	\N	2022-10-05 22:04:28.192057	2022-10-05 22:04:28.192057
1816	1816	1728	99	0.0	1	2022-10-05 22:04:28.198038	2022-10-05 22:04:28.198038
1817	1817	1728	100	0.07	\N	2022-10-05 22:04:28.203174	2022-10-05 22:04:28.203174
1818	1818	1818	1	0.8	\N	2022-10-05 22:04:28.208764	2022-10-05 22:04:28.208764
1819	1819	1818	2	0.05	\N	2022-10-05 22:04:28.214545	2022-10-05 22:04:28.214545
1820	1820	1818	4	1.0	\N	2022-10-05 22:04:28.219873	2022-10-05 22:04:28.219873
1821	1821	1818	5	0.5	\N	2022-10-05 22:04:28.225366	2022-10-05 22:04:28.225366
1822	1822	1818	6	1.2	\N	2022-10-05 22:04:28.23126	2022-10-05 22:04:28.23126
1823	1823	1818	14	1.3	\N	2022-10-05 22:04:28.236771	2022-10-05 22:04:28.236771
1824	1824	1818	16	1.2	\N	2022-10-05 22:04:28.243345	2022-10-05 22:04:28.243345
1825	1825	1818	17	0.04	\N	2022-10-05 22:04:28.251479	2022-10-05 22:04:28.251479
1826	1826	1818	18	0.05	\N	2022-10-05 22:04:28.25673	2022-10-05 22:04:28.25673
1827	1827	1818	19	0.8	\N	2022-10-05 22:04:28.262767	2022-10-05 22:04:28.262767
1828	1828	1818	20	1.0	\N	2022-10-05 22:04:28.268844	2022-10-05 22:04:28.268844
1829	1829	1818	21	0.6	\N	2022-10-05 22:04:28.274461	2022-10-05 22:04:28.274461
1830	1830	1818	22	0.0	4	2022-10-05 22:04:28.27998	2022-10-05 22:04:28.27998
1831	1831	1818	23	0.5	\N	2022-10-05 22:04:28.2855	2022-10-05 22:04:28.2855
1832	1832	1818	24	0.75	\N	2022-10-05 22:04:28.29109	2022-10-05 22:04:28.29109
1833	1833	1818	25	0.8	\N	2022-10-05 22:04:28.297174	2022-10-05 22:04:28.297174
1834	1834	1818	26	0.8	\N	2022-10-05 22:04:28.304369	2022-10-05 22:04:28.304369
1835	1835	1818	27	0.7	\N	2022-10-05 22:04:28.312624	2022-10-05 22:04:28.312624
1836	1836	1818	28	0.8	\N	2022-10-05 22:04:28.318696	2022-10-05 22:04:28.318696
1837	1837	1818	29	0.0	2	2022-10-05 22:04:28.325582	2022-10-05 22:04:28.325582
1838	1838	1818	30	0.75	\N	2022-10-05 22:04:28.332368	2022-10-05 22:04:28.332368
1839	1839	1818	31	0.8	\N	2022-10-05 22:04:28.339035	2022-10-05 22:04:28.339035
1840	1840	1818	32	0.8	\N	2022-10-05 22:04:28.345172	2022-10-05 22:04:28.345172
1841	1841	1818	33	1.0	\N	2022-10-05 22:04:28.351635	2022-10-05 22:04:28.351635
1842	1842	1818	34	0.0	25	2022-10-05 22:04:28.357599	2022-10-05 22:04:28.357599
1843	1843	1818	35	1.0	\N	2022-10-05 22:04:28.362896	2022-10-05 22:04:28.362896
1844	1844	1818	36	0.5	\N	2022-10-05 22:04:28.36916	2022-10-05 22:04:28.36916
1845	1845	1818	37	0.8	\N	2022-10-05 22:04:28.375372	2022-10-05 22:04:28.375372
1846	1846	1818	38	0.9	\N	2022-10-05 22:04:28.383297	2022-10-05 22:04:28.383297
1847	1847	1818	39	1.2	\N	2022-10-05 22:04:28.389012	2022-10-05 22:04:28.389012
1848	1848	1818	40	0.9	\N	2022-10-05 22:04:28.395321	2022-10-05 22:04:28.395321
1849	1849	1818	41	0.0	40	2022-10-05 22:04:28.401292	2022-10-05 22:04:28.401292
1850	1850	1818	42	1.0	\N	2022-10-05 22:04:28.406941	2022-10-05 22:04:28.406941
1851	1851	1818	43	0.0	30	2022-10-05 22:04:28.4129	2022-10-05 22:04:28.4129
1852	1852	1818	44	1.0	\N	2022-10-05 22:04:28.418766	2022-10-05 22:04:28.418766
1853	1853	1818	45	0.0	30	2022-10-05 22:04:28.425166	2022-10-05 22:04:28.425166
1854	1854	1818	46	1.1	\N	2022-10-05 22:04:28.431012	2022-10-05 22:04:28.431012
1855	1855	1818	47	1.0	\N	2022-10-05 22:04:28.436891	2022-10-05 22:04:28.436891
1856	1856	1818	48	0.75	\N	2022-10-05 22:04:28.442882	2022-10-05 22:04:28.442882
1857	1857	1818	49	0.0	100	2022-10-05 22:04:28.449538	2022-10-05 22:04:28.449538
1858	1858	1818	50	0.01	\N	2022-10-05 22:04:28.457664	2022-10-05 22:04:28.457664
1859	1859	1818	51	0.01	\N	2022-10-05 22:04:28.464851	2022-10-05 22:04:28.464851
1860	1860	1818	52	1.1	\N	2022-10-05 22:04:28.471357	2022-10-05 22:04:28.471357
1861	1861	1818	54	0.0	40	2022-10-05 22:04:28.477915	2022-10-05 22:04:28.477915
1862	1862	1818	55	1.2	\N	2022-10-05 22:04:28.483543	2022-10-05 22:04:28.483543
1863	1863	1818	56	1.9	\N	2022-10-05 22:04:28.490067	2022-10-05 22:04:28.490067
1864	1864	1818	57	0.1	\N	2022-10-05 22:04:28.496601	2022-10-05 22:04:28.496601
1865	1865	1818	58	1.25	\N	2022-10-05 22:04:28.50215	2022-10-05 22:04:28.50215
1866	1866	1818	59	1.3	\N	2022-10-05 22:04:28.508291	2022-10-05 22:04:28.508291
1867	1867	1818	60	0.75	\N	2022-10-05 22:04:28.514709	2022-10-05 22:04:28.514709
1868	1868	1818	61	0.4	\N	2022-10-05 22:04:28.520234	2022-10-05 22:04:28.520234
1869	1869	1818	62	0.04	\N	2022-10-05 22:04:28.526235	2022-10-05 22:04:28.526235
1870	1870	1818	63	0.04	\N	2022-10-05 22:04:28.532425	2022-10-05 22:04:28.532425
1871	1871	1818	64	1.25	\N	2022-10-05 22:04:28.537859	2022-10-05 22:04:28.537859
1872	1872	1818	65	0.8	\N	2022-10-05 22:04:28.544462	2022-10-05 22:04:28.544462
1873	1873	1818	66	1.3	\N	2022-10-05 22:04:28.550777	2022-10-05 22:04:28.550777
1874	1874	1818	67	0.75	\N	2022-10-05 22:04:28.556321	2022-10-05 22:04:28.556321
1875	1875	1818	68	1.5	\N	2022-10-05 22:04:28.562841	2022-10-05 22:04:28.562841
1876	1876	1818	69	1.5	\N	2022-10-05 22:04:28.568655	2022-10-05 22:04:28.568655
1877	1877	1818	70	1.0	\N	2022-10-05 22:04:28.575837	2022-10-05 22:04:28.575837
1878	1878	1818	71	0.0	50	2022-10-05 22:04:28.581871	2022-10-05 22:04:28.581871
1879	1879	1818	72	1.1	\N	2022-10-05 22:04:28.58764	2022-10-05 22:04:28.58764
1880	1880	1818	74	0.75	\N	2022-10-05 22:04:28.594159	2022-10-05 22:04:28.594159
1881	1881	1818	75	1.1	\N	2022-10-05 22:04:28.601134	2022-10-05 22:04:28.601134
1882	1882	1818	76	1.1	\N	2022-10-05 22:04:28.608106	2022-10-05 22:04:28.608106
1883	1883	1818	77	0.01	\N	2022-10-05 22:04:28.614639	2022-10-05 22:04:28.614639
1884	1884	1818	78	0.01	\N	2022-10-05 22:04:28.620963	2022-10-05 22:04:28.620963
1885	1885	1818	79	0.8	\N	2022-10-05 22:04:28.632503	2022-10-05 22:04:28.632503
1886	1886	1818	80	0.0	5	2022-10-05 22:04:28.638465	2022-10-05 22:04:28.638465
1887	1887	1818	81	0.4	\N	2022-10-05 22:04:28.64477	2022-10-05 22:04:28.64477
1888	1888	1818	82	0.01	\N	2022-10-05 22:04:28.651618	2022-10-05 22:04:28.651618
1889	1889	1818	84	1.25	\N	2022-10-05 22:04:28.65856	2022-10-05 22:04:28.65856
1890	1890	1818	85	0.1	\N	2022-10-05 22:04:28.665298	2022-10-05 22:04:28.665298
1891	1891	1818	86	0.6	\N	2022-10-05 22:04:28.671856	2022-10-05 22:04:28.671856
1892	1892	1818	87	0.0	10	2022-10-05 22:04:28.678467	2022-10-05 22:04:28.678467
1893	1893	1818	88	0.4	\N	2022-10-05 22:04:28.684546	2022-10-05 22:04:28.684546
1894	1894	1818	90	0.0	10	2022-10-05 22:04:28.691008	2022-10-05 22:04:28.691008
1895	1895	1818	91	0.0	20	2022-10-05 22:04:28.696652	2022-10-05 22:04:28.696652
1896	1896	1818	92	0.07	\N	2022-10-05 22:04:28.702074	2022-10-05 22:04:28.702074
1897	1897	1818	93	0.0	3	2022-10-05 22:04:28.707986	2022-10-05 22:04:28.707986
1898	1898	1818	94	0.1	\N	2022-10-05 22:04:28.71341	2022-10-05 22:04:28.71341
1899	1899	1818	95	0.2	\N	2022-10-05 22:04:28.719284	2022-10-05 22:04:28.719284
1900	1900	1818	96	0.0	15	2022-10-05 22:04:28.725561	2022-10-05 22:04:28.725561
1901	1901	1818	97	0.0	10	2022-10-05 22:04:28.73133	2022-10-05 22:04:28.73133
1902	1902	1818	98	0.0	5	2022-10-05 22:04:28.737058	2022-10-05 22:04:28.737058
1903	1903	1818	99	0.25	\N	2022-10-05 22:04:28.743623	2022-10-05 22:04:28.743623
1904	1904	1818	100	0.05	\N	2022-10-05 22:04:28.750523	2022-10-05 22:04:28.750523
1905	1905	1905	1	0.02	\N	2022-10-05 22:04:28.758467	2022-10-05 22:04:28.758467
1906	1906	1905	3	0.8	\N	2022-10-05 22:04:28.765059	2022-10-05 22:04:28.765059
1907	1907	1905	4	0.0	10	2022-10-05 22:04:28.771173	2022-10-05 22:04:28.771173
1908	1908	1905	5	0.0	10	2022-10-05 22:04:28.780608	2022-10-05 22:04:28.780608
1909	1909	1905	6	0.0	1	2022-10-05 22:04:28.786761	2022-10-05 22:04:28.786761
1910	1910	1905	7	1.2	\N	2022-10-05 22:04:28.793961	2022-10-05 22:04:28.793961
1911	1911	1905	8	0.2	\N	2022-10-05 22:04:28.800465	2022-10-05 22:04:28.800465
1912	1912	1905	9	1.2	\N	2022-10-05 22:04:28.806103	2022-10-05 22:04:28.806103
1913	1913	1905	10	0.8	\N	2022-10-05 22:04:28.813337	2022-10-05 22:04:28.813337
1914	1914	1905	11	0.5	\N	2022-10-05 22:04:28.81942	2022-10-05 22:04:28.81942
1915	1915	1905	12	0.0	20	2022-10-05 22:04:28.826954	2022-10-05 22:04:28.826954
1916	1916	1905	13	0.9	\N	2022-10-05 22:04:28.837537	2022-10-05 22:04:28.837537
1917	1917	1905	14	0.6	\N	2022-10-05 22:04:28.862231	2022-10-05 22:04:28.862231
1918	1918	1905	15	0.7	\N	2022-10-05 22:04:28.868745	2022-10-05 22:04:28.868745
1919	1919	1905	16	0.01	\N	2022-10-05 22:04:28.876751	2022-10-05 22:04:28.876751
1920	1920	1905	17	1.25	\N	2022-10-05 22:04:28.88593	2022-10-05 22:04:28.88593
1921	1921	1905	18	1.3	\N	2022-10-05 22:04:28.893017	2022-10-05 22:04:28.893017
1922	1922	1905	19	1.1	\N	2022-10-05 22:04:28.899639	2022-10-05 22:04:28.899639
1923	1923	1905	20	0.03	\N	2022-10-05 22:04:28.905552	2022-10-05 22:04:28.905552
1924	1924	1905	21	0.5	\N	2022-10-05 22:04:28.911989	2022-10-05 22:04:28.911989
1925	1925	1905	22	0.4	\N	2022-10-05 22:04:28.919573	2022-10-05 22:04:28.919573
1926	1926	1905	23	0.3	\N	2022-10-05 22:04:28.926248	2022-10-05 22:04:28.926248
1927	1927	1905	24	0.04	\N	2022-10-05 22:04:28.932551	2022-10-05 22:04:28.932551
1928	1928	1905	25	0.25	\N	2022-10-05 22:04:28.938723	2022-10-05 22:04:28.938723
1929	1929	1905	26	0.6	\N	2022-10-05 22:04:28.94654	2022-10-05 22:04:28.94654
1930	1930	1905	28	0.3	\N	2022-10-05 22:04:28.954648	2022-10-05 22:04:28.954648
1931	1931	1905	29	0.0	20	2022-10-05 22:04:28.96121	2022-10-05 22:04:28.96121
1932	1932	1905	32	0.2	\N	2022-10-05 22:04:28.967224	2022-10-05 22:04:28.967224
1933	1933	1905	33	0.6	\N	2022-10-05 22:04:28.973255	2022-10-05 22:04:28.973255
1934	1934	1905	34	0.4	\N	2022-10-05 22:04:28.980855	2022-10-05 22:04:28.980855
1935	1935	1905	35	1.4	\N	2022-10-05 22:04:28.98702	2022-10-05 22:04:28.98702
1936	1936	1905	36	1.25	\N	2022-10-05 22:04:28.993193	2022-10-05 22:04:28.993193
1937	1937	1905	37	0.6	\N	2022-10-05 22:04:28.99928	2022-10-05 22:04:28.99928
1938	1938	1905	38	1.25	\N	2022-10-05 22:04:29.005416	2022-10-05 22:04:29.005416
1939	1939	1905	39	1.25	\N	2022-10-05 22:04:29.011787	2022-10-05 22:04:29.011787
1940	1940	1905	40	0.0	10	2022-10-05 22:04:29.018171	2022-10-05 22:04:29.018171
1941	1941	1905	41	0.3	\N	2022-10-05 22:04:29.024095	2022-10-05 22:04:29.024095
1942	1942	1905	42	0.6	\N	2022-10-05 22:04:29.030777	2022-10-05 22:04:29.030777
1943	1943	1905	43	1.25	\N	2022-10-05 22:04:29.037533	2022-10-05 22:04:29.037533
1944	1944	1905	44	0.8	\N	2022-10-05 22:04:29.044146	2022-10-05 22:04:29.044146
1945	1945	1905	45	0.5	\N	2022-10-05 22:04:29.052271	2022-10-05 22:04:29.052271
1946	1946	1905	46	0.75	\N	2022-10-05 22:04:29.058396	2022-10-05 22:04:29.058396
1947	1947	1905	47	0.9	\N	2022-10-05 22:04:29.064868	2022-10-05 22:04:29.064868
1948	1948	1905	48	1.0	\N	2022-10-05 22:04:29.070838	2022-10-05 22:04:29.070838
1949	1949	1905	49	0.5	\N	2022-10-05 22:04:29.077634	2022-10-05 22:04:29.077634
1950	1950	1905	50	1.0	\N	2022-10-05 22:04:29.083906	2022-10-05 22:04:29.083906
1951	1951	1905	51	0.0	2	2022-10-05 22:04:29.089974	2022-10-05 22:04:29.089974
1952	1952	1905	53	1.4	\N	2022-10-05 22:04:29.097936	2022-10-05 22:04:29.097936
1953	1953	1905	54	0.0	25	2022-10-05 22:04:29.104784	2022-10-05 22:04:29.104784
1954	1954	1905	55	0.0	10	2022-10-05 22:04:29.111017	2022-10-05 22:04:29.111017
1955	1955	1905	56	1.25	\N	2022-10-05 22:04:29.117412	2022-10-05 22:04:29.117412
1956	1956	1905	57	1.3	\N	2022-10-05 22:04:29.123972	2022-10-05 22:04:29.123972
1957	1957	1905	58	1.5	\N	2022-10-05 22:04:29.132098	2022-10-05 22:04:29.132098
1958	1958	1905	59	0.0	3	2022-10-05 22:04:29.138032	2022-10-05 22:04:29.138032
1959	1959	1905	60	0.3	\N	2022-10-05 22:04:29.144968	2022-10-05 22:04:29.144968
1960	1960	1905	61	0.5	\N	2022-10-05 22:04:29.15116	2022-10-05 22:04:29.15116
1961	1961	1905	62	0.2	\N	2022-10-05 22:04:29.158213	2022-10-05 22:04:29.158213
1962	1962	1905	63	0.25	\N	2022-10-05 22:04:29.166015	2022-10-05 22:04:29.166015
1963	1963	1905	64	0.7	\N	2022-10-05 22:04:29.172254	2022-10-05 22:04:29.172254
1964	1964	1905	65	0.75	\N	2022-10-05 22:04:29.181348	2022-10-05 22:04:29.181348
1965	1965	1905	66	0.0	25	2022-10-05 22:04:29.187425	2022-10-05 22:04:29.187425
1966	1966	1905	67	1.0	\N	2022-10-05 22:04:29.196818	2022-10-05 22:04:29.196818
1967	1967	1905	68	0.25	\N	2022-10-05 22:04:29.204208	2022-10-05 22:04:29.204208
1968	1968	1905	69	0.25	\N	2022-10-05 22:04:29.21121	2022-10-05 22:04:29.21121
1969	1969	1905	70	1.0	\N	2022-10-05 22:04:29.217227	2022-10-05 22:04:29.217227
1970	1970	1905	71	0.0	40	2022-10-05 22:04:29.223374	2022-10-05 22:04:29.223374
1971	1971	1905	72	0.0	5	2022-10-05 22:04:29.230047	2022-10-05 22:04:29.230047
1972	1972	1905	73	0.75	\N	2022-10-05 22:04:29.23574	2022-10-05 22:04:29.23574
1973	1973	1905	74	0.0	100	2022-10-05 22:04:29.242696	2022-10-05 22:04:29.242696
1974	1974	1905	75	0.01	\N	2022-10-05 22:04:29.249221	2022-10-05 22:04:29.249221
1975	1975	1905	76	0.07	\N	2022-10-05 22:04:29.256297	2022-10-05 22:04:29.256297
1976	1976	1905	77	0.01	\N	2022-10-05 22:04:29.264596	2022-10-05 22:04:29.264596
1977	1977	1905	78	0.03	\N	2022-10-05 22:04:29.270982	2022-10-05 22:04:29.270982
1978	1978	1905	80	0.2	\N	2022-10-05 22:04:29.278405	2022-10-05 22:04:29.278405
1979	1979	1905	81	0.5	\N	2022-10-05 22:04:29.284731	2022-10-05 22:04:29.284731
1980	1980	1905	82	0.0	6	2022-10-05 22:04:29.291095	2022-10-05 22:04:29.291095
1981	1981	1905	84	0.0	5	2022-10-05 22:04:29.297702	2022-10-05 22:04:29.297702
1982	1982	1905	85	0.06	\N	2022-10-05 22:04:29.303788	2022-10-05 22:04:29.303788
1983	1983	1905	86	0.25	\N	2022-10-05 22:04:29.310692	2022-10-05 22:04:29.310692
1984	1984	1905	88	0.0	40	2022-10-05 22:04:29.31782	2022-10-05 22:04:29.31782
1985	1985	1905	89	1.1	\N	2022-10-05 22:04:29.325115	2022-10-05 22:04:29.325115
1986	1986	1905	90	0.4	\N	2022-10-05 22:04:29.333796	2022-10-05 22:04:29.333796
1987	1987	1905	91	0.04	\N	2022-10-05 22:04:29.340165	2022-10-05 22:04:29.340165
1988	1988	1905	92	0.05	\N	2022-10-05 22:04:29.346889	2022-10-05 22:04:29.346889
1989	1989	1905	93	0.0	2	2022-10-05 22:04:29.353507	2022-10-05 22:04:29.353507
1990	1990	1905	95	0.2	\N	2022-10-05 22:04:29.359292	2022-10-05 22:04:29.359292
1991	1991	1905	96	0.2	\N	2022-10-05 22:04:29.366179	2022-10-05 22:04:29.366179
1992	1992	1905	97	2.0	\N	2022-10-05 22:04:29.37327	2022-10-05 22:04:29.37327
1993	1992	1905	98	2.0	\N	2022-10-05 22:04:29.381287	2022-10-05 22:04:29.381287
1994	1992	1905	99	0.8	\N	2022-10-05 22:04:29.387152	2022-10-05 22:04:29.387152
1995	1995	1995	1	0.1	\N	2022-10-05 22:04:29.395113	2022-10-05 22:04:29.395113
1996	1996	1995	2	0.01	\N	2022-10-05 22:04:29.401597	2022-10-05 22:04:29.401597
1997	1997	1995	3	0.7	\N	2022-10-05 22:04:29.408098	2022-10-05 22:04:29.408098
1998	1998	1995	4	0.01	\N	2022-10-05 22:04:29.41461	2022-10-05 22:04:29.41461
1999	1999	1995	5	0.6	\N	2022-10-05 22:04:29.420897	2022-10-05 22:04:29.420897
2000	2000	1995	6	0.0	100	2022-10-05 22:04:29.428705	2022-10-05 22:04:29.428705
2001	2001	1995	7	0.75	\N	2022-10-05 22:04:29.435066	2022-10-05 22:04:29.435066
2002	2002	1995	8	0.0	100	2022-10-05 22:04:29.44138	2022-10-05 22:04:29.44138
2003	2003	1995	9	0.0	60	2022-10-05 22:04:29.448322	2022-10-05 22:04:29.448322
2004	2004	1995	10	0.02	\N	2022-10-05 22:04:29.454082	2022-10-05 22:04:29.454082
2005	2005	1995	11	0.5	\N	2022-10-05 22:04:29.461362	2022-10-05 22:04:29.461362
2006	2006	1995	12	0.7	\N	2022-10-05 22:04:29.467716	2022-10-05 22:04:29.467716
2007	2007	1995	13	0.03	\N	2022-10-05 22:04:29.475213	2022-10-05 22:04:29.475213
2008	2008	1995	14	0.0	100	2022-10-05 22:04:29.481484	2022-10-05 22:04:29.481484
2009	2009	1995	15	0.0	150	2022-10-05 22:04:29.487513	2022-10-05 22:04:29.487513
2010	2010	1995	16	0.07	\N	2022-10-05 22:04:29.494135	2022-10-05 22:04:29.494135
2011	2011	1995	17	0.6	\N	2022-10-05 22:04:29.500852	2022-10-05 22:04:29.500852
2012	2012	1995	18	0.5	\N	2022-10-05 22:04:29.507262	2022-10-05 22:04:29.507262
2013	2013	1995	19	0.8	\N	2022-10-05 22:04:29.51363	2022-10-05 22:04:29.51363
2014	2014	1995	20	0.0	50	2022-10-05 22:04:29.519555	2022-10-05 22:04:29.519555
2015	2015	1995	21	0.0	150	2022-10-05 22:04:29.525483	2022-10-05 22:04:29.525483
2016	2016	1995	22	0.0	30	2022-10-05 22:04:29.531329	2022-10-05 22:04:29.531329
2017	2017	1995	23	0.0	25	2022-10-05 22:04:29.537275	2022-10-05 22:04:29.537275
2018	2018	1995	24	0.0	100	2022-10-05 22:04:29.543754	2022-10-05 22:04:29.543754
2019	2019	1995	25	0.1	\N	2022-10-05 22:04:29.549825	2022-10-05 22:04:29.549825
2020	2020	1995	26	0.0	25	2022-10-05 22:04:29.556659	2022-10-05 22:04:29.556659
2021	2021	1995	27	0.3	\N	2022-10-05 22:04:29.563337	2022-10-05 22:04:29.563337
2022	2022	1995	28	0.25	\N	2022-10-05 22:04:29.569689	2022-10-05 22:04:29.569689
2023	2023	1995	29	0.0	50	2022-10-05 22:04:29.576645	2022-10-05 22:04:29.576645
2024	2024	1995	30	0.05	\N	2022-10-05 22:04:29.584251	2022-10-05 22:04:29.584251
2025	2025	1995	31	0.0	10	2022-10-05 22:04:29.591746	2022-10-05 22:04:29.591746
2026	2026	1995	32	0.0	25	2022-10-05 22:04:29.598528	2022-10-05 22:04:29.598528
2027	2027	1995	33	0.0	20	2022-10-05 22:04:29.605066	2022-10-05 22:04:29.605066
2028	2028	1995	34	0.02	\N	2022-10-05 22:04:29.611754	2022-10-05 22:04:29.611754
2029	2029	1995	35	0.02	\N	2022-10-05 22:04:29.618494	2022-10-05 22:04:29.618494
2030	2030	1995	36	0.07	\N	2022-10-05 22:04:29.626257	2022-10-05 22:04:29.626257
2031	2031	1995	37	0.25	\N	2022-10-05 22:04:29.634187	2022-10-05 22:04:29.634187
2032	2032	1995	38	0.2	\N	2022-10-05 22:04:29.641325	2022-10-05 22:04:29.641325
2033	2033	1995	39	0.04	\N	2022-10-05 22:04:29.647375	2022-10-05 22:04:29.647375
2034	2034	1995	40	0.02	\N	2022-10-05 22:04:29.653463	2022-10-05 22:04:29.653463
2035	2035	1995	41	0.2	\N	2022-10-05 22:04:29.659878	2022-10-05 22:04:29.659878
2036	2036	1995	42	0.25	\N	2022-10-05 22:04:29.668419	2022-10-05 22:04:29.668419
2037	2037	1995	43	0.07	\N	2022-10-05 22:04:29.674949	2022-10-05 22:04:29.674949
2038	2038	1995	44	0.2	\N	2022-10-05 22:04:29.681461	2022-10-05 22:04:29.681461
2039	2039	1995	45	0.3	\N	2022-10-05 22:04:29.687668	2022-10-05 22:04:29.687668
2040	2040	1995	46	0.05	\N	2022-10-05 22:04:29.694148	2022-10-05 22:04:29.694148
2041	2041	1995	47	0.02	\N	2022-10-05 22:04:29.700533	2022-10-05 22:04:29.700533
2042	2042	1995	48	0.01	\N	2022-10-05 22:04:29.70651	2022-10-05 22:04:29.70651
2043	2043	1995	49	0.25	\N	2022-10-05 22:04:29.712831	2022-10-05 22:04:29.712831
2044	2044	1995	50	0.04	\N	2022-10-05 22:04:29.719924	2022-10-05 22:04:29.719924
2045	2045	1995	51	1.0	\N	2022-10-05 22:04:29.727285	2022-10-05 22:04:29.727285
2046	2046	1995	52	0.75	\N	2022-10-05 22:04:29.733581	2022-10-05 22:04:29.733581
2047	2047	1995	53	0.25	\N	2022-10-05 22:04:29.740315	2022-10-05 22:04:29.740315
2048	2048	1995	54	0.8	\N	2022-10-05 22:04:29.748105	2022-10-05 22:04:29.748105
2049	2049	1995	55	0.3	\N	2022-10-05 22:04:29.75471	2022-10-05 22:04:29.75471
2050	2050	1995	56	0.0	150	2022-10-05 22:04:29.761416	2022-10-05 22:04:29.761416
2051	2051	1995	57	0.01	\N	2022-10-05 22:04:29.768008	2022-10-05 22:04:29.768008
2052	2052	1995	58	0.1	\N	2022-10-05 22:04:29.775256	2022-10-05 22:04:29.775256
2053	2053	1995	59	0.05	\N	2022-10-05 22:04:29.783238	2022-10-05 22:04:29.783238
2054	2054	1995	60	0.2	\N	2022-10-05 22:04:29.789172	2022-10-05 22:04:29.789172
2055	2055	1995	61	0.04	\N	2022-10-05 22:04:29.795438	2022-10-05 22:04:29.795438
2056	2056	1995	62	0.04	\N	2022-10-05 22:04:29.801484	2022-10-05 22:04:29.801484
2057	2057	1995	63	0.15	\N	2022-10-05 22:04:29.808003	2022-10-05 22:04:29.808003
2058	2058	1995	64	0.0	150	2022-10-05 22:04:29.813982	2022-10-05 22:04:29.813982
2059	2059	1995	65	0.25	\N	2022-10-05 22:04:29.819738	2022-10-05 22:04:29.819738
2060	2060	1995	66	1.25	\N	2022-10-05 22:04:29.826211	2022-10-05 22:04:29.826211
2061	2061	1995	67	0.7	\N	2022-10-05 22:04:29.834286	2022-10-05 22:04:29.834286
2062	2062	1995	68	0.8	\N	2022-10-05 22:04:29.841382	2022-10-05 22:04:29.841382
2063	2063	1995	69	0.15	\N	2022-10-05 22:04:29.848385	2022-10-05 22:04:29.848385
2064	2064	1995	70	0.3	\N	2022-10-05 22:04:29.854535	2022-10-05 22:04:29.854535
2065	2065	1995	71	0.25	\N	2022-10-05 22:04:29.861533	2022-10-05 22:04:29.861533
2066	2066	1995	72	0.01	\N	2022-10-05 22:04:29.868027	2022-10-05 22:04:29.868027
2067	2067	1995	73	0.07	\N	2022-10-05 22:04:29.874371	2022-10-05 22:04:29.874371
2068	2068	1995	74	0.15	\N	2022-10-05 22:04:29.879969	2022-10-05 22:04:29.879969
2069	2069	1995	75	0.2	\N	2022-10-05 22:04:29.88534	2022-10-05 22:04:29.88534
2070	2070	1995	76	0.4	\N	2022-10-05 22:04:29.890747	2022-10-05 22:04:29.890747
2071	2071	1995	77	0.25	\N	2022-10-05 22:04:29.897192	2022-10-05 22:04:29.897192
2072	2072	1995	78	0.05	\N	2022-10-05 22:04:29.902787	2022-10-05 22:04:29.902787
2073	2073	1995	79	0.2	\N	2022-10-05 22:04:29.909085	2022-10-05 22:04:29.909085
2074	2074	1995	80	0.25	\N	2022-10-05 22:04:29.915533	2022-10-05 22:04:29.915533
2075	2075	1995	81	0.08	\N	2022-10-05 22:04:29.921123	2022-10-05 22:04:29.921123
2076	2076	1995	82	0.3	\N	2022-10-05 22:04:29.926827	2022-10-05 22:04:29.926827
2077	2077	1995	83	0.03	\N	2022-10-05 22:04:29.932304	2022-10-05 22:04:29.932304
2078	2078	1995	84	0.25	\N	2022-10-05 22:04:29.937847	2022-10-05 22:04:29.937847
2079	2079	1995	85	0.4	\N	2022-10-05 22:04:29.943689	2022-10-05 22:04:29.943689
2080	2080	1995	86	0.3	\N	2022-10-05 22:04:29.949184	2022-10-05 22:04:29.949184
2081	2081	1995	87	0.3	\N	2022-10-05 22:04:29.95412	2022-10-05 22:04:29.95412
2082	2082	1995	88	0.06	\N	2022-10-05 22:04:29.961928	2022-10-05 22:04:29.961928
2083	2083	1995	89	0.0	30	2022-10-05 22:04:29.967256	2022-10-05 22:04:29.967256
2084	2084	1995	90	0.25	\N	2022-10-05 22:04:29.971854	2022-10-05 22:04:29.971854
2085	2085	1995	91	0.06	\N	2022-10-05 22:04:29.982635	2022-10-05 22:04:29.982635
2086	2086	1995	92	0.25	\N	2022-10-05 22:04:29.987713	2022-10-05 22:04:29.987713
2087	2087	1995	93	0.25	\N	2022-10-05 22:04:29.993098	2022-10-05 22:04:29.993098
2088	2088	1995	94	0.02	\N	2022-10-05 22:04:29.99808	2022-10-05 22:04:29.99808
2089	2089	1995	95	0.25	\N	2022-10-05 22:04:30.004696	2022-10-05 22:04:30.004696
2090	2090	1995	96	0.2	\N	2022-10-05 22:04:30.010445	2022-10-05 22:04:30.010445
2091	2091	1995	97	0.1	\N	2022-10-05 22:04:30.015863	2022-10-05 22:04:30.015863
2092	2092	1995	98	0.0	30	2022-10-05 22:04:30.020954	2022-10-05 22:04:30.020954
2093	2093	1995	99	0.25	\N	2022-10-05 22:04:30.026441	2022-10-05 22:04:30.026441
2094	2094	2094	1	0.05	\N	2022-10-05 22:04:30.032418	2022-10-05 22:04:30.032418
2095	2095	2094	2	0.04	\N	2022-10-05 22:04:30.037706	2022-10-05 22:04:30.037706
2096	2096	2094	3	0.05	\N	2022-10-05 22:04:30.042947	2022-10-05 22:04:30.042947
2097	2097	2094	4	0.04	\N	2022-10-05 22:04:30.048287	2022-10-05 22:04:30.048287
2098	2098	2094	5	0.06	\N	2022-10-05 22:04:30.053358	2022-10-05 22:04:30.053358
2099	2099	2094	6	0.4	\N	2022-10-05 22:04:30.058813	2022-10-05 22:04:30.058813
2100	2100	2094	7	0.05	\N	2022-10-05 22:04:30.064057	2022-10-05 22:04:30.064057
2101	2101	2094	8	0.25	\N	2022-10-05 22:04:30.068879	2022-10-05 22:04:30.068879
2102	2102	2094	9	0.25	\N	2022-10-05 22:04:30.081338	2022-10-05 22:04:30.081338
2103	2103	2094	10	0.25	\N	2022-10-05 22:04:30.08791	2022-10-05 22:04:30.08791
2104	2104	2094	11	0.04	\N	2022-10-05 22:04:30.093858	2022-10-05 22:04:30.093858
2105	2105	2094	12	0.02	\N	2022-10-05 22:04:30.099067	2022-10-05 22:04:30.099067
2106	2106	2094	13	0.04	\N	2022-10-05 22:04:30.104225	2022-10-05 22:04:30.104225
2107	2107	2094	14	0.04	\N	2022-10-05 22:04:30.110672	2022-10-05 22:04:30.110672
2108	2108	2094	15	1.0	\N	2022-10-05 22:04:30.118097	2022-10-05 22:04:30.118097
2109	2109	2094	16	0.2	\N	2022-10-05 22:04:30.125933	2022-10-05 22:04:30.125933
2110	2110	2094	17	0.7	\N	2022-10-05 22:04:30.131995	2022-10-05 22:04:30.131995
2111	2111	2094	18	0.6	\N	2022-10-05 22:04:30.137056	2022-10-05 22:04:30.137056
2112	2112	2094	19	0.2	\N	2022-10-05 22:04:30.144788	2022-10-05 22:04:30.144788
2113	2113	2094	20	0.01	\N	2022-10-05 22:04:30.151381	2022-10-05 22:04:30.151381
2114	2114	2094	21	0.0	25	2022-10-05 22:04:30.157508	2022-10-05 22:04:30.157508
2115	2115	2094	22	0.03	\N	2022-10-05 22:04:30.163027	2022-10-05 22:04:30.163027
2116	2116	2094	23	0.7	\N	2022-10-05 22:04:30.168813	2022-10-05 22:04:30.168813
2117	2117	2094	24	0.05	\N	2022-10-05 22:04:30.174279	2022-10-05 22:04:30.174279
2118	2118	2094	25	0.08	\N	2022-10-05 22:04:30.180976	2022-10-05 22:04:30.180976
2119	2119	2094	26	0.2	\N	2022-10-05 22:04:30.186668	2022-10-05 22:04:30.186668
2120	2120	2094	27	0.25	\N	2022-10-05 22:04:30.192331	2022-10-05 22:04:30.192331
2121	2121	2094	28	0.5	\N	2022-10-05 22:04:30.199131	2022-10-05 22:04:30.199131
2122	2122	2094	29	0.1	\N	2022-10-05 22:04:30.204824	2022-10-05 22:04:30.204824
2123	2123	2094	30	0.1	\N	2022-10-05 22:04:30.211331	2022-10-05 22:04:30.211331
2124	2124	2094	31	0.0	150	2022-10-05 22:04:30.217503	2022-10-05 22:04:30.217503
2125	2125	2094	32	0.0	40	2022-10-05 22:04:30.22399	2022-10-05 22:04:30.22399
2126	2126	2094	33	0.0	40	2022-10-05 22:04:30.229453	2022-10-05 22:04:30.229453
2127	2127	2094	34	0.0	40	2022-10-05 22:04:30.235128	2022-10-05 22:04:30.235128
2128	2128	2094	35	0.0	200	2022-10-05 22:04:30.240646	2022-10-05 22:04:30.240646
2129	2129	2094	36	0.01	\N	2022-10-05 22:04:30.246621	2022-10-05 22:04:30.246621
2130	2130	2094	37	0.0	40	2022-10-05 22:04:30.252685	2022-10-05 22:04:30.252685
2131	2131	2094	38	0.0	40	2022-10-05 22:04:30.258232	2022-10-05 22:04:30.258232
2132	2132	2094	39	0.0	35	2022-10-05 22:04:30.264582	2022-10-05 22:04:30.264582
2133	2133	2094	40	0.0	25	2022-10-05 22:04:30.269756	2022-10-05 22:04:30.269756
2134	2134	2094	41	0.0	35	2022-10-05 22:04:30.27532	2022-10-05 22:04:30.27532
2135	2135	2094	42	0.05	\N	2022-10-05 22:04:30.280556	2022-10-05 22:04:30.280556
2136	2136	2094	43	0.0	35	2022-10-05 22:04:30.286667	2022-10-05 22:04:30.286667
2137	2137	2094	44	0.0	20	2022-10-05 22:04:30.292404	2022-10-05 22:04:30.292404
2138	2138	2094	45	0.0	15	2022-10-05 22:04:30.297947	2022-10-05 22:04:30.297947
2139	2139	2094	46	0.06	\N	2022-10-05 22:04:30.303082	2022-10-05 22:04:30.303082
2140	2140	2094	47	0.03	\N	2022-10-05 22:04:30.309144	2022-10-05 22:04:30.309144
2141	2141	2094	48	0.25	\N	2022-10-05 22:04:30.315464	2022-10-05 22:04:30.315464
2142	1591	2094	49	0.75	\N	2022-10-05 22:04:30.322082	2022-10-05 22:04:30.322082
2143	1594	2094	50	0.25	\N	2022-10-05 22:04:30.329406	2022-10-05 22:04:30.329406
2144	1606	2094	51	0.25	\N	2022-10-05 22:04:30.336155	2022-10-05 22:04:30.336155
2145	2145	2094	52	0.06	\N	2022-10-05 22:04:30.341968	2022-10-05 22:04:30.341968
2146	2146	2094	53	0.25	\N	2022-10-05 22:04:30.351423	2022-10-05 22:04:30.351423
2147	2147	2094	54	0.5	\N	2022-10-05 22:04:30.357669	2022-10-05 22:04:30.357669
2148	2148	2094	55	0.4	\N	2022-10-05 22:04:30.364272	2022-10-05 22:04:30.364272
2149	2149	2094	56	0.05	\N	2022-10-05 22:04:30.370729	2022-10-05 22:04:30.370729
2150	2150	2094	57	0.2	\N	2022-10-05 22:04:30.37761	2022-10-05 22:04:30.37761
2151	2151	2094	58	0.05	\N	2022-10-05 22:04:30.383928	2022-10-05 22:04:30.383928
2152	2152	2094	59	0.5	\N	2022-10-05 22:04:30.390717	2022-10-05 22:04:30.390717
2153	2153	2094	60	0.3	\N	2022-10-05 22:04:30.397185	2022-10-05 22:04:30.397185
2154	1676	2094	61	0.5	\N	2022-10-05 22:04:30.403111	2022-10-05 22:04:30.403111
2155	2155	2094	62	0.05	\N	2022-10-05 22:04:30.409649	2022-10-05 22:04:30.409649
2156	2156	2094	63	0.25	\N	2022-10-05 22:04:30.415618	2022-10-05 22:04:30.415618
2157	2157	2094	64	0.2	\N	2022-10-05 22:04:30.421075	2022-10-05 22:04:30.421075
2158	2158	2094	66	0.04	\N	2022-10-05 22:04:30.427376	2022-10-05 22:04:30.427376
2159	2159	2094	67	0.25	\N	2022-10-05 22:04:30.432999	2022-10-05 22:04:30.432999
2160	2160	2094	68	0.01	\N	2022-10-05 22:04:30.438559	2022-10-05 22:04:30.438559
2161	2161	2094	69	0.02	\N	2022-10-05 22:04:30.444957	2022-10-05 22:04:30.444957
2162	2162	2094	70	0.7	\N	2022-10-05 22:04:30.450925	2022-10-05 22:04:30.450925
2163	2163	2094	71	0.25	\N	2022-10-05 22:04:30.456932	2022-10-05 22:04:30.456932
2164	1904	2094	72	0.75	\N	2022-10-05 22:04:30.463266	2022-10-05 22:04:30.463266
2165	2165	2094	73	0.1	\N	2022-10-05 22:04:30.469268	2022-10-05 22:04:30.469268
2166	2166	2094	74	0.2	\N	2022-10-05 22:04:30.475786	2022-10-05 22:04:30.475786
2167	2167	2094	75	0.5	\N	2022-10-05 22:04:30.481493	2022-10-05 22:04:30.481493
2168	2168	2094	76	0.5	\N	2022-10-05 22:04:30.486527	2022-10-05 22:04:30.486527
2169	2169	2094	91	0.01	\N	2022-10-05 22:04:30.491831	2022-10-05 22:04:30.491831
2170	84	2094	97	0.4	\N	2022-10-05 22:04:30.497426	2022-10-05 22:04:30.497426
2171	2171	2094	98	0.01	\N	2022-10-05 22:04:30.502377	2022-10-05 22:04:30.502377
2172	2172	2094	99	0.6	\N	2022-10-05 22:04:30.507611	2022-10-05 22:04:30.507611
2173	89	2094	100	0.01	\N	2022-10-05 22:04:30.513632	2022-10-05 22:04:30.513632
2174	2174	2174	1	0.03	\N	2022-10-05 22:04:30.518747	2022-10-05 22:04:30.518747
2175	2175	2174	2	0.1	\N	2022-10-05 22:04:30.524054	2022-10-05 22:04:30.524054
2176	2176	2174	3	0.4	\N	2022-10-05 22:04:30.529579	2022-10-05 22:04:30.529579
2177	2176	2174	4	0.12	\N	2022-10-05 22:04:30.535369	2022-10-05 22:04:30.535369
2178	2178	2174	5	0.4	\N	2022-10-05 22:04:30.540801	2022-10-05 22:04:30.540801
2179	2179	2174	6	0.5	\N	2022-10-05 22:04:30.54777	2022-10-05 22:04:30.54777
2180	2180	2174	7	0.25	\N	2022-10-05 22:04:30.552953	2022-10-05 22:04:30.552953
2181	2178	2174	8	0.2	\N	2022-10-05 22:04:30.569395	2022-10-05 22:04:30.569395
2182	2182	2174	9	0.03	\N	2022-10-05 22:04:30.577962	2022-10-05 22:04:30.577962
2183	2183	2174	10	0.11	\N	2022-10-05 22:04:30.583621	2022-10-05 22:04:30.583621
2184	2184	2174	11	0.18	\N	2022-10-05 22:04:30.588972	2022-10-05 22:04:30.588972
2185	2185	2174	12	0.02	\N	2022-10-05 22:04:30.595103	2022-10-05 22:04:30.595103
2186	2186	2174	13	0.03	\N	2022-10-05 22:04:30.601691	2022-10-05 22:04:30.601691
2187	2187	2174	14	0.19	\N	2022-10-05 22:04:30.607834	2022-10-05 22:04:30.607834
2188	2186	2174	21	0.12	\N	2022-10-05 22:04:30.614192	2022-10-05 22:04:30.614192
2189	2187	2174	22	0.02	\N	2022-10-05 22:04:30.620144	2022-10-05 22:04:30.620144
2190	2190	2174	23	0.06	\N	2022-10-05 22:04:30.626682	2022-10-05 22:04:30.626682
2191	2191	2174	24	0.13	\N	2022-10-05 22:04:30.633158	2022-10-05 22:04:30.633158
2192	2192	2174	25	0.18	\N	2022-10-05 22:04:30.638334	2022-10-05 22:04:30.638334
2193	1992	2174	28	0.4	\N	2022-10-05 22:04:30.645075	2022-10-05 22:04:30.645075
2194	1992	2174	29	0.1	\N	2022-10-05 22:04:30.651056	2022-10-05 22:04:30.651056
2195	2195	2174	30	0.13	\N	2022-10-05 22:04:30.657793	2022-10-05 22:04:30.657793
2196	2196	2196	12	0.0	13	2022-10-05 22:04:30.66457	2022-10-05 22:04:30.66457
2197	2197	2196	13	0.0	200	2022-10-05 22:04:30.670155	2022-10-05 22:04:30.670155
2198	2198	2196	14	0.0	30	2022-10-05 22:04:30.67583	2022-10-05 22:04:30.67583
2199	2199	2196	15	0.0	3	2022-10-05 22:04:30.683619	2022-10-05 22:04:30.683619
2200	2200	2196	16	0.0	3	2022-10-05 22:04:30.688895	2022-10-05 22:04:30.688895
2201	2201	2196	17	0.0	150	2022-10-05 22:04:30.69499	2022-10-05 22:04:30.69499
2202	2202	2196	18	0.0	100	2022-10-05 22:04:30.700317	2022-10-05 22:04:30.700317
2203	2203	2196	19	0.0	10	2022-10-05 22:04:30.705207	2022-10-05 22:04:30.705207
2204	2204	2196	20	0.02	\N	2022-10-05 22:04:30.711709	2022-10-05 22:04:30.711709
2205	2205	2196	32	0.0	3	2022-10-05 22:04:30.717164	2022-10-05 22:04:30.717164
2206	2206	2196	33	0.0	0	2022-10-05 22:04:30.722255	2022-10-05 22:04:30.722255
2207	2207	2196	34	0.0	60	2022-10-05 22:04:30.728657	2022-10-05 22:04:30.728657
2208	2208	2196	35	0.0	125	2022-10-05 22:04:30.734321	2022-10-05 22:04:30.734321
2209	2209	2196	36	0.0	120	2022-10-05 22:04:30.740515	2022-10-05 22:04:30.740515
2210	2210	2196	37	0.0	2	2022-10-05 22:04:30.746843	2022-10-05 22:04:30.746843
2211	2211	2196	38	0.0	10	2022-10-05 22:04:30.752102	2022-10-05 22:04:30.752102
2212	2212	2196	39	0.0	50	2022-10-05 22:04:30.758404	2022-10-05 22:04:30.758404
2213	2213	2196	40	0.01	\N	2022-10-05 22:04:30.766287	2022-10-05 22:04:30.766287
2214	2214	2196	52	0.0	25	2022-10-05 22:04:30.771709	2022-10-05 22:04:30.771709
2215	2215	2196	53	0.0	5	2022-10-05 22:04:30.778231	2022-10-05 22:04:30.778231
2216	2216	2196	54	0.0	100	2022-10-05 22:04:30.784123	2022-10-05 22:04:30.784123
2217	2217	2196	55	0.0	\N	2022-10-05 22:04:30.789505	2022-10-05 22:04:30.789505
2218	2218	2196	56	0.0	120	2022-10-05 22:04:30.795477	2022-10-05 22:04:30.795477
2219	2219	2196	57	0.0	10	2022-10-05 22:04:30.80062	2022-10-05 22:04:30.80062
2220	2220	2196	58	0.0	0	2022-10-05 22:04:30.805457	2022-10-05 22:04:30.805457
2221	2221	2196	59	0.0	30	2022-10-05 22:04:30.810622	2022-10-05 22:04:30.810622
2222	2222	2196	60	0.02	\N	2022-10-05 22:04:30.81612	2022-10-05 22:04:30.81612
2223	2223	2196	72	0.0	0	2022-10-05 22:04:30.821264	2022-10-05 22:04:30.821264
2224	2224	2196	73	0.02	\N	2022-10-05 22:04:30.828886	2022-10-05 22:04:30.828886
2225	2225	2196	74	0.01	\N	2022-10-05 22:04:30.836545	2022-10-05 22:04:30.836545
2226	2226	2196	75	0.0	10	2022-10-05 22:04:30.843237	2022-10-05 22:04:30.843237
2227	2227	2196	76	0.01	\N	2022-10-05 22:04:30.849344	2022-10-05 22:04:30.849344
2228	2228	2196	77	0.0	120	2022-10-05 22:04:30.855527	2022-10-05 22:04:30.855527
2229	2229	2196	78	0.0	30	2022-10-05 22:04:30.860522	2022-10-05 22:04:30.860522
2230	2230	2196	79	0.01	\N	2022-10-05 22:04:30.865915	2022-10-05 22:04:30.865915
2231	2231	2196	80	0.0	20	2022-10-05 22:04:30.871135	2022-10-05 22:04:30.871135
2232	2232	2196	92	0.0	7	2022-10-05 22:04:30.876358	2022-10-05 22:04:30.876358
2233	2233	2196	93	0.005	\N	2022-10-05 22:04:30.882137	2022-10-05 22:04:30.882137
2234	2234	2196	94	0.01	\N	2022-10-05 22:04:30.887424	2022-10-05 22:04:30.887424
2235	2235	2196	95	0.01	\N	2022-10-05 22:04:30.892931	2022-10-05 22:04:30.892931
2236	2236	2196	96	0.0	70	2022-10-05 22:04:30.898868	2022-10-05 22:04:30.898868
2237	2237	2196	97	0.01	\N	2022-10-05 22:04:30.905648	2022-10-05 22:04:30.905648
2238	2238	2196	98	0.01	\N	2022-10-05 22:04:30.911852	2022-10-05 22:04:30.911852
2239	2239	2196	99	0.0	10	2022-10-05 22:04:30.918412	2022-10-05 22:04:30.918412
2240	2145	1561	67	0.65	\N	2022-10-05 22:04:30.924198	2022-10-05 22:04:30.924198
2241	2241	1561	68	0.5	\N	2022-10-05 22:04:30.930025	2022-10-05 22:04:30.930025
2242	2242	1561	69	1.2	\N	2022-10-05 22:04:30.936309	2022-10-05 22:04:30.936309
2243	2243	1561	70	0.9	\N	2022-10-05 22:04:30.941654	2022-10-05 22:04:30.941654
2244	2244	1561	74	0.45	\N	2022-10-05 22:04:30.957235	2022-10-05 22:04:30.957235
2245	2245	1647	11	0.75	\N	2022-10-05 22:04:30.962965	2022-10-05 22:04:30.962965
2246	2246	1647	12	0.5	\N	2022-10-05 22:04:30.973285	2022-10-05 22:04:30.973285
2247	2247	1647	13	0.6	\N	2022-10-05 22:04:30.979898	2022-10-05 22:04:30.979898
2248	2248	1647	15	0.5	\N	2022-10-05 22:04:30.985789	2022-10-05 22:04:30.985789
2249	2249	1647	21	0.25	\N	2022-10-05 22:04:30.992106	2022-10-05 22:04:30.992106
2250	2250	1647	45	1.0	\N	2022-10-05 22:04:30.997988	2022-10-05 22:04:30.997988
2251	2251	1647	46	0.4	\N	2022-10-05 22:04:31.003976	2022-10-05 22:04:31.003976
2252	2252	1647	49	1.25	\N	2022-10-05 22:04:31.010523	2022-10-05 22:04:31.010523
2253	2253	1647	50	1.25	\N	2022-10-05 22:04:31.016647	2022-10-05 22:04:31.016647
2254	2254	1647	53	1.2	\N	2022-10-05 22:04:31.023532	2022-10-05 22:04:31.023532
2255	2255	1728	83	0.75	\N	2022-10-05 22:04:31.02916	2022-10-05 22:04:31.02916
2256	2256	1728	84	1.7	\N	2022-10-05 22:04:31.035067	2022-10-05 22:04:31.035067
2257	2257	1728	88	1.3	\N	2022-10-05 22:04:31.0405	2022-10-05 22:04:31.0405
2258	2258	1728	89	1.5	\N	2022-10-05 22:04:31.047769	2022-10-05 22:04:31.047769
2259	2259	1728	90	1.4	\N	2022-10-05 22:04:31.053557	2022-10-05 22:04:31.053557
2260	2260	1818	7	1.2	\N	2022-10-05 22:04:31.071204	2022-10-05 22:04:31.071204
2261	2261	1818	9	1.3	\N	2022-10-05 22:04:31.077858	2022-10-05 22:04:31.077858
2262	2262	1818	10	1.25	\N	2022-10-05 22:04:31.083615	2022-10-05 22:04:31.083615
2263	2263	1818	12	1.0	\N	2022-10-05 22:04:31.088954	2022-10-05 22:04:31.088954
2264	2264	1818	13	1.2	\N	2022-10-05 22:04:31.094328	2022-10-05 22:04:31.094328
\.


--
-- Name: accessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.accessions_id_seq', 2264, true);


--
-- Name: cytometry_readings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cytometry_readings_id_seq', 304, true);


--
-- Name: leaf_communities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.leaf_communities_id_seq', 168, true);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.locations_id_seq', 168, true);


--
-- Name: plant_neighborhoods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plant_neighborhoods_id_seq', 168, true);


--
-- Name: plant_samples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plant_samples_id_seq', 1681, true);


--
-- Name: populations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.populations_id_seq', 2936, true);


--
-- Name: root_communities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.root_communities_id_seq', 168, true);


--
-- Name: seedboxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seedboxes_id_seq', 2264, true);


--
-- Name: seeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seeds_id_seq', 2264, true);


--
-- Name: seeds_plant_samples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seeds_plant_samples_id_seq', 2178, true);


--
-- Name: tubes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tubes_id_seq', 2264, true);


--
-- Name: accessions accessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessions
    ADD CONSTRAINT accessions_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cytometry_readings cytometry_readings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cytometry_readings
    ADD CONSTRAINT cytometry_readings_pkey PRIMARY KEY (id);


--
-- Name: leaf_communities leaf_communities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.leaf_communities
    ADD CONSTRAINT leaf_communities_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: plant_neighborhoods plant_neighborhoods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plant_neighborhoods
    ADD CONSTRAINT plant_neighborhoods_pkey PRIMARY KEY (id);


--
-- Name: plant_samples plant_samples_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plant_samples
    ADD CONSTRAINT plant_samples_pkey PRIMARY KEY (id);


--
-- Name: populations populations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.populations
    ADD CONSTRAINT populations_pkey PRIMARY KEY (id);


--
-- Name: root_communities root_communities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.root_communities
    ADD CONSTRAINT root_communities_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: seedboxes seedboxes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seedboxes
    ADD CONSTRAINT seedboxes_pkey PRIMARY KEY (id);


--
-- Name: seeds seeds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds
    ADD CONSTRAINT seeds_pkey PRIMARY KEY (id);


--
-- Name: seeds_plant_samples seeds_plant_samples_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds_plant_samples
    ADD CONSTRAINT seeds_plant_samples_pkey PRIMARY KEY (id);


--
-- Name: tubes tubes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tubes
    ADD CONSTRAINT tubes_pkey PRIMARY KEY (id);


--
-- Name: index_accessions_on_population_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_accessions_on_population_id ON public.accessions USING btree (population_id);


--
-- Name: index_accessions_on_population_id_and_accession_number; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_accessions_on_population_id_and_accession_number ON public.accessions USING btree (population_id, accession_number);


--
-- Name: index_cytometry_readings_on_accession_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cytometry_readings_on_accession_id ON public.cytometry_readings USING btree (accession_id);


--
-- Name: index_leaf_communities_on_population_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_leaf_communities_on_population_id ON public.leaf_communities USING btree (population_id);


--
-- Name: index_locations_on_population_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_locations_on_population_id ON public.locations USING btree (population_id);


--
-- Name: index_plant_neighborhoods_on_population_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_plant_neighborhoods_on_population_id ON public.plant_neighborhoods USING btree (population_id);


--
-- Name: index_plant_samples_on_accession_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_plant_samples_on_accession_id ON public.plant_samples USING btree (accession_id);


--
-- Name: index_populations_on_population_name_and_subpopulation; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_populations_on_population_name_and_subpopulation ON public.populations USING btree (population_name, subpopulation);


--
-- Name: index_root_communities_on_population_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_root_communities_on_population_id ON public.root_communities USING btree (population_id);


--
-- Name: index_seedboxes_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_seedboxes_on_name ON public.seedboxes USING btree (name);


--
-- Name: index_seeds_on_accession_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_seeds_on_accession_id ON public.seeds USING btree (accession_id);


--
-- Name: index_seeds_on_parent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_seeds_on_parent_id ON public.seeds USING btree (parent_id);


--
-- Name: index_seeds_plant_samples_on_plant_sample_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_seeds_plant_samples_on_plant_sample_id ON public.seeds_plant_samples USING btree (plant_sample_id);


--
-- Name: index_seeds_plant_samples_on_seed_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_seeds_plant_samples_on_seed_id ON public.seeds_plant_samples USING btree (seed_id);


--
-- Name: index_seeds_plant_samples_on_seed_id_and_plant_sample_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_seeds_plant_samples_on_seed_id_and_plant_sample_id ON public.seeds_plant_samples USING btree (seed_id, plant_sample_id);


--
-- Name: index_tubes_on_seed_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_tubes_on_seed_id ON public.tubes USING btree (seed_id);


--
-- Name: index_tubes_on_seedbox_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_tubes_on_seedbox_id ON public.tubes USING btree (seedbox_id);


--
-- Name: index_tubes_on_seedbox_id_and_position; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_tubes_on_seedbox_id_and_position ON public.tubes USING btree (seedbox_id, "position");


--
-- Name: uniqueness_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uniqueness_index ON public.seeds USING btree (species, generation, accession_id);


--
-- Name: accessions fk_rails_09301936b7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessions
    ADD CONSTRAINT fk_rails_09301936b7 FOREIGN KEY (population_id) REFERENCES public.populations(id);


--
-- Name: tubes fk_rails_2245654ee7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tubes
    ADD CONSTRAINT fk_rails_2245654ee7 FOREIGN KEY (seed_id) REFERENCES public.seeds(id);


--
-- Name: tubes fk_rails_2e5b257f3d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tubes
    ADD CONSTRAINT fk_rails_2e5b257f3d FOREIGN KEY (seedbox_id) REFERENCES public.seedboxes(id);


--
-- Name: seeds fk_rails_31c0030856; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds
    ADD CONSTRAINT fk_rails_31c0030856 FOREIGN KEY (accession_id) REFERENCES public.accessions(id);


--
-- Name: root_communities fk_rails_4120daadf7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.root_communities
    ADD CONSTRAINT fk_rails_4120daadf7 FOREIGN KEY (population_id) REFERENCES public.populations(id);


--
-- Name: plant_neighborhoods fk_rails_60685ee906; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plant_neighborhoods
    ADD CONSTRAINT fk_rails_60685ee906 FOREIGN KEY (population_id) REFERENCES public.populations(id);


--
-- Name: leaf_communities fk_rails_7b1fe30d6f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.leaf_communities
    ADD CONSTRAINT fk_rails_7b1fe30d6f FOREIGN KEY (population_id) REFERENCES public.populations(id);


--
-- Name: plant_samples fk_rails_9724c4b944; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plant_samples
    ADD CONSTRAINT fk_rails_9724c4b944 FOREIGN KEY (accession_id) REFERENCES public.accessions(id);


--
-- Name: locations fk_rails_adfd3b9a1a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk_rails_adfd3b9a1a FOREIGN KEY (population_id) REFERENCES public.populations(id);


--
-- Name: cytometry_readings fk_rails_c567e03e4e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cytometry_readings
    ADD CONSTRAINT fk_rails_c567e03e4e FOREIGN KEY (accession_id) REFERENCES public.accessions(id);


--
-- Name: seeds fk_rails_f84fa5df54; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds
    ADD CONSTRAINT fk_rails_f84fa5df54 FOREIGN KEY (parent_id) REFERENCES public.seeds(id);


--
-- PostgreSQL database dump complete
--

