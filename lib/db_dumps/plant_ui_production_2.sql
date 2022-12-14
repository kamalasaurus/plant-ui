--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
    accession_id bigint,
    species_id bigint
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
    generation integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    parent_id bigint,
    accession_id bigint,
    species_id bigint
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
-- Name: species; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.species (
    id bigint NOT NULL,
    genus character varying,
    species character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: species_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.species_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.species_id_seq OWNED BY public.species.id;


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
-- Name: species id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.species ALTER COLUMN id SET DEFAULT nextval('public.species_id_seq'::regclass);


--
-- Name: tubes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tubes ALTER COLUMN id SET DEFAULT nextval('public.tubes_id_seq'::regclass);


--
-- Data for Name: accessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.accessions (id, population_id, accession_number, created_at, updated_at) FROM stdin;
1	1	1	2022-12-14 20:05:32.929841	2022-12-14 20:05:32.929841
2	1	2	2022-12-14 20:05:33.0109	2022-12-14 20:05:33.0109
3	1	3	2022-12-14 20:05:33.019692	2022-12-14 20:05:33.019692
4	1	4	2022-12-14 20:05:33.027051	2022-12-14 20:05:33.027051
5	1	5	2022-12-14 20:05:33.036898	2022-12-14 20:05:33.036898
6	1	6	2022-12-14 20:05:33.045591	2022-12-14 20:05:33.045591
7	1	7	2022-12-14 20:05:33.053579	2022-12-14 20:05:33.053579
8	1	8	2022-12-14 20:05:33.06148	2022-12-14 20:05:33.06148
9	1	9	2022-12-14 20:05:33.068295	2022-12-14 20:05:33.068295
10	1	10	2022-12-14 20:05:33.075711	2022-12-14 20:05:33.075711
11	11	1	2022-12-14 20:05:33.083601	2022-12-14 20:05:33.083601
12	11	2	2022-12-14 20:05:33.091747	2022-12-14 20:05:33.091747
13	11	3	2022-12-14 20:05:33.099465	2022-12-14 20:05:33.099465
14	11	4	2022-12-14 20:05:33.115097	2022-12-14 20:05:33.115097
15	11	6	2022-12-14 20:05:33.122958	2022-12-14 20:05:33.122958
16	11	10	2022-12-14 20:05:33.130743	2022-12-14 20:05:33.130743
17	11	11	2022-12-14 20:05:33.138717	2022-12-14 20:05:33.138717
18	11	13	2022-12-14 20:05:33.14619	2022-12-14 20:05:33.14619
19	19	2	2022-12-14 20:05:33.153077	2022-12-14 20:05:33.153077
20	19	4	2022-12-14 20:05:33.160709	2022-12-14 20:05:33.160709
21	19	5	2022-12-14 20:05:33.167898	2022-12-14 20:05:33.167898
22	19	7	2022-12-14 20:05:33.174712	2022-12-14 20:05:33.174712
23	19	8	2022-12-14 20:05:33.181374	2022-12-14 20:05:33.181374
24	19	9	2022-12-14 20:05:33.189085	2022-12-14 20:05:33.189085
25	19	10	2022-12-14 20:05:33.195484	2022-12-14 20:05:33.195484
26	19	11	2022-12-14 20:05:33.203417	2022-12-14 20:05:33.203417
27	27	1	2022-12-14 20:05:33.210161	2022-12-14 20:05:33.210161
28	27	2	2022-12-14 20:05:33.216842	2022-12-14 20:05:33.216842
29	27	3	2022-12-14 20:05:33.225928	2022-12-14 20:05:33.225928
30	27	4	2022-12-14 20:05:33.232042	2022-12-14 20:05:33.232042
31	27	5	2022-12-14 20:05:33.239766	2022-12-14 20:05:33.239766
32	27	6	2022-12-14 20:05:33.246058	2022-12-14 20:05:33.246058
33	27	7	2022-12-14 20:05:33.25242	2022-12-14 20:05:33.25242
34	27	8	2022-12-14 20:05:33.259806	2022-12-14 20:05:33.259806
35	27	9	2022-12-14 20:05:33.266433	2022-12-14 20:05:33.266433
36	27	10	2022-12-14 20:05:33.275051	2022-12-14 20:05:33.275051
37	37	2	2022-12-14 20:05:33.282966	2022-12-14 20:05:33.282966
38	37	3	2022-12-14 20:05:33.291253	2022-12-14 20:05:33.291253
39	37	4	2022-12-14 20:05:33.298408	2022-12-14 20:05:33.298408
40	37	5	2022-12-14 20:05:33.306257	2022-12-14 20:05:33.306257
41	37	8	2022-12-14 20:05:33.313351	2022-12-14 20:05:33.313351
42	37	14	2022-12-14 20:05:33.321279	2022-12-14 20:05:33.321279
43	37	15	2022-12-14 20:05:33.327883	2022-12-14 20:05:33.327883
44	37	16	2022-12-14 20:05:33.335008	2022-12-14 20:05:33.335008
45	37	17	2022-12-14 20:05:33.342354	2022-12-14 20:05:33.342354
46	46	1	2022-12-14 20:05:33.350048	2022-12-14 20:05:33.350048
47	46	2	2022-12-14 20:05:33.35714	2022-12-14 20:05:33.35714
48	46	3	2022-12-14 20:05:33.36322	2022-12-14 20:05:33.36322
49	46	4	2022-12-14 20:05:33.369803	2022-12-14 20:05:33.369803
50	46	5	2022-12-14 20:05:33.376544	2022-12-14 20:05:33.376544
51	46	6	2022-12-14 20:05:33.38227	2022-12-14 20:05:33.38227
52	46	7	2022-12-14 20:05:33.388843	2022-12-14 20:05:33.388843
53	46	8	2022-12-14 20:05:33.394661	2022-12-14 20:05:33.394661
54	46	9	2022-12-14 20:05:33.400363	2022-12-14 20:05:33.400363
55	46	10	2022-12-14 20:05:33.407472	2022-12-14 20:05:33.407472
56	56	1	2022-12-14 20:05:33.413611	2022-12-14 20:05:33.413611
57	56	2	2022-12-14 20:05:33.420229	2022-12-14 20:05:33.420229
58	56	3	2022-12-14 20:05:33.427704	2022-12-14 20:05:33.427704
59	56	4	2022-12-14 20:05:33.434616	2022-12-14 20:05:33.434616
60	56	5	2022-12-14 20:05:33.441873	2022-12-14 20:05:33.441873
61	56	6	2022-12-14 20:05:33.448841	2022-12-14 20:05:33.448841
62	56	7	2022-12-14 20:05:33.456295	2022-12-14 20:05:33.456295
63	56	8	2022-12-14 20:05:33.462443	2022-12-14 20:05:33.462443
64	56	9	2022-12-14 20:05:33.469104	2022-12-14 20:05:33.469104
65	56	10	2022-12-14 20:05:33.476365	2022-12-14 20:05:33.476365
66	56	11	2022-12-14 20:05:33.483391	2022-12-14 20:05:33.483391
67	67	1	2022-12-14 20:05:33.490454	2022-12-14 20:05:33.490454
68	67	2	2022-12-14 20:05:33.497099	2022-12-14 20:05:33.497099
69	67	3	2022-12-14 20:05:33.503857	2022-12-14 20:05:33.503857
70	67	4	2022-12-14 20:05:33.510781	2022-12-14 20:05:33.510781
71	67	5	2022-12-14 20:05:33.517718	2022-12-14 20:05:33.517718
72	67	6	2022-12-14 20:05:33.525528	2022-12-14 20:05:33.525528
73	67	7	2022-12-14 20:05:33.533538	2022-12-14 20:05:33.533538
74	67	8	2022-12-14 20:05:33.540879	2022-12-14 20:05:33.540879
75	67	9	2022-12-14 20:05:33.548892	2022-12-14 20:05:33.548892
76	67	10	2022-12-14 20:05:33.556583	2022-12-14 20:05:33.556583
77	77	1	2022-12-14 20:05:33.563683	2022-12-14 20:05:33.563683
78	77	9	2022-12-14 20:05:33.57164	2022-12-14 20:05:33.57164
79	77	10	2022-12-14 20:05:33.578564	2022-12-14 20:05:33.578564
80	80	1	2022-12-14 20:05:33.587194	2022-12-14 20:05:33.587194
81	80	2	2022-12-14 20:05:33.594912	2022-12-14 20:05:33.594912
82	80	3	2022-12-14 20:05:33.602279	2022-12-14 20:05:33.602279
83	80	4	2022-12-14 20:05:33.609581	2022-12-14 20:05:33.609581
84	80	5	2022-12-14 20:05:33.616577	2022-12-14 20:05:33.616577
85	80	6	2022-12-14 20:05:33.624831	2022-12-14 20:05:33.624831
86	80	9	2022-12-14 20:05:33.631805	2022-12-14 20:05:33.631805
87	80	11	2022-12-14 20:05:33.638611	2022-12-14 20:05:33.638611
88	88	1	2022-12-14 20:05:33.645924	2022-12-14 20:05:33.645924
89	88	2	2022-12-14 20:05:33.652271	2022-12-14 20:05:33.652271
90	88	7	2022-12-14 20:05:33.659248	2022-12-14 20:05:33.659248
91	88	9	2022-12-14 20:05:33.664995	2022-12-14 20:05:33.664995
92	92	1	2022-12-14 20:05:33.672247	2022-12-14 20:05:33.672247
93	92	2	2022-12-14 20:05:33.683762	2022-12-14 20:05:33.683762
94	92	3	2022-12-14 20:05:33.692705	2022-12-14 20:05:33.692705
95	92	4	2022-12-14 20:05:33.699836	2022-12-14 20:05:33.699836
96	92	5	2022-12-14 20:05:33.707717	2022-12-14 20:05:33.707717
97	92	6	2022-12-14 20:05:33.715588	2022-12-14 20:05:33.715588
98	92	7	2022-12-14 20:05:33.723231	2022-12-14 20:05:33.723231
99	92	8	2022-12-14 20:05:33.73127	2022-12-14 20:05:33.73127
100	92	9	2022-12-14 20:05:33.73865	2022-12-14 20:05:33.73865
101	92	10	2022-12-14 20:05:33.747335	2022-12-14 20:05:33.747335
102	102	3	2022-12-14 20:05:33.754833	2022-12-14 20:05:33.754833
103	102	4	2022-12-14 20:05:33.763303	2022-12-14 20:05:33.763303
104	102	6	2022-12-14 20:05:33.772916	2022-12-14 20:05:33.772916
105	102	7	2022-12-14 20:05:33.782064	2022-12-14 20:05:33.782064
106	102	8	2022-12-14 20:05:33.789797	2022-12-14 20:05:33.789797
107	102	9	2022-12-14 20:05:33.797631	2022-12-14 20:05:33.797631
108	102	10	2022-12-14 20:05:33.804962	2022-12-14 20:05:33.804962
109	102	12	2022-12-14 20:05:33.812419	2022-12-14 20:05:33.812419
110	102	16	2022-12-14 20:05:33.819072	2022-12-14 20:05:33.819072
111	111	1	2022-12-14 20:05:33.825763	2022-12-14 20:05:33.825763
112	111	2	2022-12-14 20:05:33.833274	2022-12-14 20:05:33.833274
113	111	4	2022-12-14 20:05:33.840599	2022-12-14 20:05:33.840599
114	111	6	2022-12-14 20:05:33.847812	2022-12-14 20:05:33.847812
115	111	7	2022-12-14 20:05:33.855789	2022-12-14 20:05:33.855789
116	111	9	2022-12-14 20:05:33.864112	2022-12-14 20:05:33.864112
117	111	10	2022-12-14 20:05:33.871073	2022-12-14 20:05:33.871073
118	111	11	2022-12-14 20:05:33.877908	2022-12-14 20:05:33.877908
119	111	12	2022-12-14 20:05:33.885676	2022-12-14 20:05:33.885676
120	111	13	2022-12-14 20:05:33.892925	2022-12-14 20:05:33.892925
121	121	1	2022-12-14 20:05:33.900538	2022-12-14 20:05:33.900538
122	121	2	2022-12-14 20:05:33.908876	2022-12-14 20:05:33.908876
123	121	3	2022-12-14 20:05:33.916492	2022-12-14 20:05:33.916492
124	121	11	2022-12-14 20:05:33.924976	2022-12-14 20:05:33.924976
125	121	12	2022-12-14 20:05:33.933202	2022-12-14 20:05:33.933202
126	126	1	2022-12-14 20:05:33.940193	2022-12-14 20:05:33.940193
127	126	2	2022-12-14 20:05:33.9478	2022-12-14 20:05:33.9478
128	126	4	2022-12-14 20:05:33.95476	2022-12-14 20:05:33.95476
129	126	5	2022-12-14 20:05:33.963152	2022-12-14 20:05:33.963152
130	126	6	2022-12-14 20:05:33.969764	2022-12-14 20:05:33.969764
131	126	7	2022-12-14 20:05:33.977241	2022-12-14 20:05:33.977241
132	126	8	2022-12-14 20:05:33.983902	2022-12-14 20:05:33.983902
133	126	10	2022-12-14 20:05:33.991038	2022-12-14 20:05:33.991038
134	126	11	2022-12-14 20:05:33.998074	2022-12-14 20:05:33.998074
135	126	12	2022-12-14 20:05:34.005729	2022-12-14 20:05:34.005729
136	136	2	2022-12-14 20:05:34.013223	2022-12-14 20:05:34.013223
137	136	3	2022-12-14 20:05:34.019386	2022-12-14 20:05:34.019386
138	136	4	2022-12-14 20:05:34.026026	2022-12-14 20:05:34.026026
139	136	6	2022-12-14 20:05:34.033862	2022-12-14 20:05:34.033862
140	136	9	2022-12-14 20:05:34.041108	2022-12-14 20:05:34.041108
141	136	10	2022-12-14 20:05:34.047409	2022-12-14 20:05:34.047409
142	136	11	2022-12-14 20:05:34.054676	2022-12-14 20:05:34.054676
143	136	13	2022-12-14 20:05:34.061908	2022-12-14 20:05:34.061908
144	136	15	2022-12-14 20:05:34.069506	2022-12-14 20:05:34.069506
145	145	1	2022-12-14 20:05:34.076676	2022-12-14 20:05:34.076676
146	145	2	2022-12-14 20:05:34.0844	2022-12-14 20:05:34.0844
147	145	3	2022-12-14 20:05:34.091999	2022-12-14 20:05:34.091999
148	145	5	2022-12-14 20:05:34.100266	2022-12-14 20:05:34.100266
149	145	6	2022-12-14 20:05:34.107058	2022-12-14 20:05:34.107058
150	145	8	2022-12-14 20:05:34.115106	2022-12-14 20:05:34.115106
151	145	9	2022-12-14 20:05:34.123155	2022-12-14 20:05:34.123155
152	145	10	2022-12-14 20:05:34.131204	2022-12-14 20:05:34.131204
153	145	11	2022-12-14 20:05:34.138068	2022-12-14 20:05:34.138068
154	154	1	2022-12-14 20:05:34.145186	2022-12-14 20:05:34.145186
155	154	2	2022-12-14 20:05:34.153515	2022-12-14 20:05:34.153515
156	154	3	2022-12-14 20:05:34.160956	2022-12-14 20:05:34.160956
157	154	4	2022-12-14 20:05:34.167658	2022-12-14 20:05:34.167658
158	154	5	2022-12-14 20:05:34.174852	2022-12-14 20:05:34.174852
159	154	6	2022-12-14 20:05:34.181985	2022-12-14 20:05:34.181985
160	154	7	2022-12-14 20:05:34.189109	2022-12-14 20:05:34.189109
161	154	8	2022-12-14 20:05:34.197036	2022-12-14 20:05:34.197036
162	154	9	2022-12-14 20:05:34.204193	2022-12-14 20:05:34.204193
163	154	10	2022-12-14 20:05:34.210661	2022-12-14 20:05:34.210661
164	164	1	2022-12-14 20:05:34.218685	2022-12-14 20:05:34.218685
165	164	2	2022-12-14 20:05:34.227425	2022-12-14 20:05:34.227425
166	164	3	2022-12-14 20:05:34.234277	2022-12-14 20:05:34.234277
167	164	4	2022-12-14 20:05:34.242459	2022-12-14 20:05:34.242459
168	164	5	2022-12-14 20:05:34.250526	2022-12-14 20:05:34.250526
169	164	6	2022-12-14 20:05:34.257669	2022-12-14 20:05:34.257669
170	164	8	2022-12-14 20:05:34.265723	2022-12-14 20:05:34.265723
171	164	9	2022-12-14 20:05:34.273667	2022-12-14 20:05:34.273667
172	164	10	2022-12-14 20:05:34.28053	2022-12-14 20:05:34.28053
173	173	1	2022-12-14 20:05:34.288001	2022-12-14 20:05:34.288001
174	173	2	2022-12-14 20:05:34.295817	2022-12-14 20:05:34.295817
175	173	3	2022-12-14 20:05:34.302179	2022-12-14 20:05:34.302179
176	173	4	2022-12-14 20:05:34.309249	2022-12-14 20:05:34.309249
177	173	5	2022-12-14 20:05:34.315907	2022-12-14 20:05:34.315907
178	173	6	2022-12-14 20:05:34.323012	2022-12-14 20:05:34.323012
179	173	7	2022-12-14 20:05:34.330373	2022-12-14 20:05:34.330373
180	173	8	2022-12-14 20:05:34.337353	2022-12-14 20:05:34.337353
181	173	9	2022-12-14 20:05:34.344369	2022-12-14 20:05:34.344369
182	173	11	2022-12-14 20:05:34.351648	2022-12-14 20:05:34.351648
183	183	1	2022-12-14 20:05:34.358275	2022-12-14 20:05:34.358275
184	183	2	2022-12-14 20:05:34.364825	2022-12-14 20:05:34.364825
185	183	3	2022-12-14 20:05:34.372304	2022-12-14 20:05:34.372304
186	183	4	2022-12-14 20:05:34.378683	2022-12-14 20:05:34.378683
187	183	6	2022-12-14 20:05:34.385627	2022-12-14 20:05:34.385627
188	183	8	2022-12-14 20:05:34.393335	2022-12-14 20:05:34.393335
189	183	10	2022-12-14 20:05:34.401902	2022-12-14 20:05:34.401902
190	183	11	2022-12-14 20:05:34.410308	2022-12-14 20:05:34.410308
191	191	1	2022-12-14 20:05:34.418863	2022-12-14 20:05:34.418863
192	191	3	2022-12-14 20:05:34.427246	2022-12-14 20:05:34.427246
193	191	4	2022-12-14 20:05:34.439901	2022-12-14 20:05:34.439901
194	191	5	2022-12-14 20:05:34.447892	2022-12-14 20:05:34.447892
195	191	6	2022-12-14 20:05:34.455903	2022-12-14 20:05:34.455903
196	191	7	2022-12-14 20:05:34.463663	2022-12-14 20:05:34.463663
197	191	8	2022-12-14 20:05:34.471492	2022-12-14 20:05:34.471492
198	191	9	2022-12-14 20:05:34.479749	2022-12-14 20:05:34.479749
199	191	10	2022-12-14 20:05:34.487078	2022-12-14 20:05:34.487078
200	191	11	2022-12-14 20:05:34.494213	2022-12-14 20:05:34.494213
201	201	1	2022-12-14 20:05:34.501877	2022-12-14 20:05:34.501877
202	201	2	2022-12-14 20:05:34.509705	2022-12-14 20:05:34.509705
203	201	3	2022-12-14 20:05:34.51709	2022-12-14 20:05:34.51709
204	201	4	2022-12-14 20:05:34.524886	2022-12-14 20:05:34.524886
205	201	7	2022-12-14 20:05:34.53271	2022-12-14 20:05:34.53271
206	201	8	2022-12-14 20:05:34.540129	2022-12-14 20:05:34.540129
207	201	9	2022-12-14 20:05:34.54742	2022-12-14 20:05:34.54742
208	201	10	2022-12-14 20:05:34.555067	2022-12-14 20:05:34.555067
209	201	11	2022-12-14 20:05:34.562116	2022-12-14 20:05:34.562116
210	201	12	2022-12-14 20:05:34.569536	2022-12-14 20:05:34.569536
211	211	1	2022-12-14 20:05:34.577632	2022-12-14 20:05:34.577632
212	211	2	2022-12-14 20:05:34.585561	2022-12-14 20:05:34.585561
213	211	3	2022-12-14 20:05:34.593252	2022-12-14 20:05:34.593252
214	211	4	2022-12-14 20:05:34.600568	2022-12-14 20:05:34.600568
215	211	5	2022-12-14 20:05:34.609155	2022-12-14 20:05:34.609155
216	211	6	2022-12-14 20:05:34.616038	2022-12-14 20:05:34.616038
217	211	7	2022-12-14 20:05:34.623539	2022-12-14 20:05:34.623539
218	211	8	2022-12-14 20:05:34.632037	2022-12-14 20:05:34.632037
219	211	9	2022-12-14 20:05:34.639586	2022-12-14 20:05:34.639586
220	211	10	2022-12-14 20:05:34.646939	2022-12-14 20:05:34.646939
221	221	2	2022-12-14 20:05:34.65482	2022-12-14 20:05:34.65482
222	221	3	2022-12-14 20:05:34.662309	2022-12-14 20:05:34.662309
223	221	6	2022-12-14 20:05:34.669124	2022-12-14 20:05:34.669124
224	221	11	2022-12-14 20:05:34.676927	2022-12-14 20:05:34.676927
225	221	12	2022-12-14 20:05:34.686441	2022-12-14 20:05:34.686441
226	226	1	2022-12-14 20:05:34.694971	2022-12-14 20:05:34.694971
227	226	2	2022-12-14 20:05:34.702287	2022-12-14 20:05:34.702287
228	226	3	2022-12-14 20:05:34.713355	2022-12-14 20:05:34.713355
229	226	5	2022-12-14 20:05:34.721455	2022-12-14 20:05:34.721455
230	226	6	2022-12-14 20:05:34.728515	2022-12-14 20:05:34.728515
231	226	7	2022-12-14 20:05:34.737501	2022-12-14 20:05:34.737501
232	226	8	2022-12-14 20:05:34.74472	2022-12-14 20:05:34.74472
233	226	9	2022-12-14 20:05:34.751638	2022-12-14 20:05:34.751638
234	226	10	2022-12-14 20:05:34.760501	2022-12-14 20:05:34.760501
235	235	2	2022-12-14 20:05:34.767846	2022-12-14 20:05:34.767846
236	235	4	2022-12-14 20:05:34.77529	2022-12-14 20:05:34.77529
237	235	5	2022-12-14 20:05:34.782417	2022-12-14 20:05:34.782417
238	235	10	2022-12-14 20:05:34.790827	2022-12-14 20:05:34.790827
239	235	11	2022-12-14 20:05:34.79744	2022-12-14 20:05:34.79744
240	235	14	2022-12-14 20:05:34.804974	2022-12-14 20:05:34.804974
241	241	1	2022-12-14 20:05:34.812288	2022-12-14 20:05:34.812288
242	241	2	2022-12-14 20:05:34.820115	2022-12-14 20:05:34.820115
243	241	3	2022-12-14 20:05:34.826551	2022-12-14 20:05:34.826551
244	241	4	2022-12-14 20:05:34.834951	2022-12-14 20:05:34.834951
245	241	5	2022-12-14 20:05:34.841974	2022-12-14 20:05:34.841974
246	241	6	2022-12-14 20:05:34.848714	2022-12-14 20:05:34.848714
247	241	7	2022-12-14 20:05:34.85623	2022-12-14 20:05:34.85623
248	241	8	2022-12-14 20:05:34.862796	2022-12-14 20:05:34.862796
249	241	9	2022-12-14 20:05:34.87105	2022-12-14 20:05:34.87105
250	241	10	2022-12-14 20:05:34.877405	2022-12-14 20:05:34.877405
251	241	15	2022-12-14 20:05:34.883979	2022-12-14 20:05:34.883979
252	252	1	2022-12-14 20:05:34.89119	2022-12-14 20:05:34.89119
253	252	2	2022-12-14 20:05:34.897664	2022-12-14 20:05:34.897664
254	252	3	2022-12-14 20:05:34.906398	2022-12-14 20:05:34.906398
255	252	4	2022-12-14 20:05:34.914465	2022-12-14 20:05:34.914465
256	252	5	2022-12-14 20:05:34.922776	2022-12-14 20:05:34.922776
257	252	6	2022-12-14 20:05:34.930439	2022-12-14 20:05:34.930439
258	252	7	2022-12-14 20:05:34.940816	2022-12-14 20:05:34.940816
259	252	8	2022-12-14 20:05:34.948835	2022-12-14 20:05:34.948835
260	252	9	2022-12-14 20:05:34.958346	2022-12-14 20:05:34.958346
261	252	10	2022-12-14 20:05:34.96516	2022-12-14 20:05:34.96516
262	262	1	2022-12-14 20:05:34.972298	2022-12-14 20:05:34.972298
263	262	2	2022-12-14 20:05:34.97912	2022-12-14 20:05:34.97912
264	262	3	2022-12-14 20:05:34.985831	2022-12-14 20:05:34.985831
265	262	4	2022-12-14 20:05:34.992917	2022-12-14 20:05:34.992917
266	262	5	2022-12-14 20:05:34.999864	2022-12-14 20:05:34.999864
267	262	6	2022-12-14 20:05:35.007676	2022-12-14 20:05:35.007676
268	262	7	2022-12-14 20:05:35.014756	2022-12-14 20:05:35.014756
269	262	8	2022-12-14 20:05:35.021922	2022-12-14 20:05:35.021922
270	262	9	2022-12-14 20:05:35.028291	2022-12-14 20:05:35.028291
271	262	10	2022-12-14 20:05:35.035555	2022-12-14 20:05:35.035555
272	262	11	2022-12-14 20:05:35.042982	2022-12-14 20:05:35.042982
273	273	1	2022-12-14 20:05:35.050405	2022-12-14 20:05:35.050405
274	273	2	2022-12-14 20:05:35.057889	2022-12-14 20:05:35.057889
275	273	3	2022-12-14 20:05:35.06499	2022-12-14 20:05:35.06499
276	273	4	2022-12-14 20:05:35.072179	2022-12-14 20:05:35.072179
277	273	5	2022-12-14 20:05:35.08162	2022-12-14 20:05:35.08162
278	273	6	2022-12-14 20:05:35.089639	2022-12-14 20:05:35.089639
279	273	7	2022-12-14 20:05:35.097446	2022-12-14 20:05:35.097446
280	273	8	2022-12-14 20:05:35.105441	2022-12-14 20:05:35.105441
281	273	9	2022-12-14 20:05:35.112933	2022-12-14 20:05:35.112933
282	273	10	2022-12-14 20:05:35.120779	2022-12-14 20:05:35.120779
283	283	1	2022-12-14 20:05:35.127725	2022-12-14 20:05:35.127725
284	283	2	2022-12-14 20:05:35.134702	2022-12-14 20:05:35.134702
285	283	3	2022-12-14 20:05:35.142504	2022-12-14 20:05:35.142504
286	283	4	2022-12-14 20:05:35.149975	2022-12-14 20:05:35.149975
287	283	5	2022-12-14 20:05:35.157004	2022-12-14 20:05:35.157004
288	283	6	2022-12-14 20:05:35.164126	2022-12-14 20:05:35.164126
289	283	7	2022-12-14 20:05:35.171446	2022-12-14 20:05:35.171446
290	283	8	2022-12-14 20:05:35.178886	2022-12-14 20:05:35.178886
291	283	9	2022-12-14 20:05:35.186455	2022-12-14 20:05:35.186455
292	283	10	2022-12-14 20:05:35.193799	2022-12-14 20:05:35.193799
293	293	1	2022-12-14 20:05:35.201344	2022-12-14 20:05:35.201344
294	293	2	2022-12-14 20:05:35.209171	2022-12-14 20:05:35.209171
295	293	3	2022-12-14 20:05:35.216612	2022-12-14 20:05:35.216612
296	293	4	2022-12-14 20:05:35.225831	2022-12-14 20:05:35.225831
297	293	5	2022-12-14 20:05:35.236178	2022-12-14 20:05:35.236178
298	293	6	2022-12-14 20:05:35.243247	2022-12-14 20:05:35.243247
299	293	7	2022-12-14 20:05:35.25103	2022-12-14 20:05:35.25103
300	293	8	2022-12-14 20:05:35.258983	2022-12-14 20:05:35.258983
301	293	9	2022-12-14 20:05:35.266741	2022-12-14 20:05:35.266741
302	293	10	2022-12-14 20:05:35.274094	2022-12-14 20:05:35.274094
303	303	1	2022-12-14 20:05:35.282702	2022-12-14 20:05:35.282702
304	303	2	2022-12-14 20:05:35.290749	2022-12-14 20:05:35.290749
305	303	3	2022-12-14 20:05:35.298547	2022-12-14 20:05:35.298547
306	303	4	2022-12-14 20:05:35.306194	2022-12-14 20:05:35.306194
307	303	5	2022-12-14 20:05:35.313801	2022-12-14 20:05:35.313801
308	303	6	2022-12-14 20:05:35.321997	2022-12-14 20:05:35.321997
309	303	7	2022-12-14 20:05:35.329594	2022-12-14 20:05:35.329594
310	303	8	2022-12-14 20:05:35.335984	2022-12-14 20:05:35.335984
311	303	9	2022-12-14 20:05:35.343005	2022-12-14 20:05:35.343005
312	303	10	2022-12-14 20:05:35.350446	2022-12-14 20:05:35.350446
313	313	8	2022-12-14 20:05:35.358233	2022-12-14 20:05:35.358233
314	314	1	2022-12-14 20:05:35.365827	2022-12-14 20:05:35.365827
315	314	4	2022-12-14 20:05:35.373793	2022-12-14 20:05:35.373793
316	314	5	2022-12-14 20:05:35.380531	2022-12-14 20:05:35.380531
317	314	6	2022-12-14 20:05:35.388661	2022-12-14 20:05:35.388661
318	314	7	2022-12-14 20:05:35.395835	2022-12-14 20:05:35.395835
319	314	8	2022-12-14 20:05:35.401791	2022-12-14 20:05:35.401791
320	314	9	2022-12-14 20:05:35.409456	2022-12-14 20:05:35.409456
321	314	10	2022-12-14 20:05:35.417071	2022-12-14 20:05:35.417071
322	314	11	2022-12-14 20:05:35.424217	2022-12-14 20:05:35.424217
323	314	12	2022-12-14 20:05:35.432492	2022-12-14 20:05:35.432492
324	324	1	2022-12-14 20:05:35.441286	2022-12-14 20:05:35.441286
325	324	2	2022-12-14 20:05:35.448287	2022-12-14 20:05:35.448287
326	324	3	2022-12-14 20:05:35.456236	2022-12-14 20:05:35.456236
327	324	4	2022-12-14 20:05:35.463376	2022-12-14 20:05:35.463376
328	324	5	2022-12-14 20:05:35.471021	2022-12-14 20:05:35.471021
329	324	6	2022-12-14 20:05:35.478119	2022-12-14 20:05:35.478119
330	324	7	2022-12-14 20:05:35.485323	2022-12-14 20:05:35.485323
331	324	8	2022-12-14 20:05:35.492766	2022-12-14 20:05:35.492766
332	324	9	2022-12-14 20:05:35.500305	2022-12-14 20:05:35.500305
333	324	10	2022-12-14 20:05:35.508588	2022-12-14 20:05:35.508588
334	334	1	2022-12-14 20:05:35.515578	2022-12-14 20:05:35.515578
335	334	2	2022-12-14 20:05:35.523135	2022-12-14 20:05:35.523135
336	334	3	2022-12-14 20:05:35.529103	2022-12-14 20:05:35.529103
337	334	5	2022-12-14 20:05:35.53519	2022-12-14 20:05:35.53519
338	334	6	2022-12-14 20:05:35.541717	2022-12-14 20:05:35.541717
339	334	7	2022-12-14 20:05:35.54749	2022-12-14 20:05:35.54749
340	334	8	2022-12-14 20:05:35.554237	2022-12-14 20:05:35.554237
341	334	9	2022-12-14 20:05:35.560517	2022-12-14 20:05:35.560517
342	334	10	2022-12-14 20:05:35.566496	2022-12-14 20:05:35.566496
343	343	1	2022-12-14 20:05:35.574944	2022-12-14 20:05:35.574944
344	343	2	2022-12-14 20:05:35.581256	2022-12-14 20:05:35.581256
345	343	3	2022-12-14 20:05:35.588561	2022-12-14 20:05:35.588561
346	343	4	2022-12-14 20:05:35.594926	2022-12-14 20:05:35.594926
347	343	5	2022-12-14 20:05:35.601038	2022-12-14 20:05:35.601038
348	343	6	2022-12-14 20:05:35.608212	2022-12-14 20:05:35.608212
349	343	7	2022-12-14 20:05:35.615148	2022-12-14 20:05:35.615148
350	343	8	2022-12-14 20:05:35.622142	2022-12-14 20:05:35.622142
351	343	9	2022-12-14 20:05:35.629296	2022-12-14 20:05:35.629296
352	343	10	2022-12-14 20:05:35.636128	2022-12-14 20:05:35.636128
353	353	1	2022-12-14 20:05:35.642936	2022-12-14 20:05:35.642936
354	353	2	2022-12-14 20:05:35.649208	2022-12-14 20:05:35.649208
355	353	3	2022-12-14 20:05:35.656342	2022-12-14 20:05:35.656342
356	353	4	2022-12-14 20:05:35.663608	2022-12-14 20:05:35.663608
357	353	5	2022-12-14 20:05:35.671545	2022-12-14 20:05:35.671545
358	353	6	2022-12-14 20:05:35.679182	2022-12-14 20:05:35.679182
359	353	7	2022-12-14 20:05:35.692204	2022-12-14 20:05:35.692204
360	353	8	2022-12-14 20:05:35.69991	2022-12-14 20:05:35.69991
361	353	9	2022-12-14 20:05:35.70778	2022-12-14 20:05:35.70778
362	353	10	2022-12-14 20:05:35.715399	2022-12-14 20:05:35.715399
363	363	1	2022-12-14 20:05:35.723032	2022-12-14 20:05:35.723032
364	363	2	2022-12-14 20:05:35.735535	2022-12-14 20:05:35.735535
365	363	3	2022-12-14 20:05:35.744609	2022-12-14 20:05:35.744609
366	363	4	2022-12-14 20:05:35.752247	2022-12-14 20:05:35.752247
367	363	5	2022-12-14 20:05:35.759945	2022-12-14 20:05:35.759945
368	363	6	2022-12-14 20:05:35.76796	2022-12-14 20:05:35.76796
369	363	7	2022-12-14 20:05:35.776133	2022-12-14 20:05:35.776133
370	363	8	2022-12-14 20:05:35.783371	2022-12-14 20:05:35.783371
371	363	9	2022-12-14 20:05:35.789978	2022-12-14 20:05:35.789978
372	363	10	2022-12-14 20:05:35.797995	2022-12-14 20:05:35.797995
373	373	1	2022-12-14 20:05:35.806874	2022-12-14 20:05:35.806874
374	373	2	2022-12-14 20:05:35.815473	2022-12-14 20:05:35.815473
375	373	3	2022-12-14 20:05:35.822615	2022-12-14 20:05:35.822615
376	373	4	2022-12-14 20:05:35.829847	2022-12-14 20:05:35.829847
377	373	5	2022-12-14 20:05:35.837568	2022-12-14 20:05:35.837568
378	373	6	2022-12-14 20:05:35.844597	2022-12-14 20:05:35.844597
379	373	7	2022-12-14 20:05:35.851813	2022-12-14 20:05:35.851813
380	373	9	2022-12-14 20:05:35.858788	2022-12-14 20:05:35.858788
381	373	10	2022-12-14 20:05:35.866796	2022-12-14 20:05:35.866796
382	373	11	2022-12-14 20:05:35.873956	2022-12-14 20:05:35.873956
383	383	1	2022-12-14 20:05:35.88134	2022-12-14 20:05:35.88134
384	383	2	2022-12-14 20:05:35.889037	2022-12-14 20:05:35.889037
385	383	3	2022-12-14 20:05:35.896452	2022-12-14 20:05:35.896452
386	383	4	2022-12-14 20:05:35.904125	2022-12-14 20:05:35.904125
387	383	5	2022-12-14 20:05:35.912955	2022-12-14 20:05:35.912955
388	383	6	2022-12-14 20:05:35.920591	2022-12-14 20:05:35.920591
389	383	8	2022-12-14 20:05:35.928391	2022-12-14 20:05:35.928391
390	383	9	2022-12-14 20:05:35.936509	2022-12-14 20:05:35.936509
391	383	10	2022-12-14 20:05:35.944594	2022-12-14 20:05:35.944594
392	392	1	2022-12-14 20:05:35.952935	2022-12-14 20:05:35.952935
393	392	2	2022-12-14 20:05:35.959786	2022-12-14 20:05:35.959786
394	392	3	2022-12-14 20:05:35.968267	2022-12-14 20:05:35.968267
395	392	4	2022-12-14 20:05:35.975339	2022-12-14 20:05:35.975339
396	392	5	2022-12-14 20:05:35.982039	2022-12-14 20:05:35.982039
397	392	6	2022-12-14 20:05:35.989497	2022-12-14 20:05:35.989497
398	392	7	2022-12-14 20:05:35.996636	2022-12-14 20:05:35.996636
399	392	8	2022-12-14 20:05:36.003444	2022-12-14 20:05:36.003444
400	392	9	2022-12-14 20:05:36.010391	2022-12-14 20:05:36.010391
401	392	10	2022-12-14 20:05:36.016942	2022-12-14 20:05:36.016942
402	402	2	2022-12-14 20:05:36.023742	2022-12-14 20:05:36.023742
403	402	5	2022-12-14 20:05:36.031604	2022-12-14 20:05:36.031604
404	402	7	2022-12-14 20:05:36.039864	2022-12-14 20:05:36.039864
405	402	8	2022-12-14 20:05:36.046593	2022-12-14 20:05:36.046593
406	402	9	2022-12-14 20:05:36.052569	2022-12-14 20:05:36.052569
407	407	1	2022-12-14 20:05:36.060048	2022-12-14 20:05:36.060048
408	407	2	2022-12-14 20:05:36.067041	2022-12-14 20:05:36.067041
409	407	3	2022-12-14 20:05:36.0772	2022-12-14 20:05:36.0772
410	407	4	2022-12-14 20:05:36.084963	2022-12-14 20:05:36.084963
411	407	5	2022-12-14 20:05:36.092315	2022-12-14 20:05:36.092315
412	407	6	2022-12-14 20:05:36.100371	2022-12-14 20:05:36.100371
413	407	7	2022-12-14 20:05:36.108184	2022-12-14 20:05:36.108184
414	407	9	2022-12-14 20:05:36.115837	2022-12-14 20:05:36.115837
415	407	10	2022-12-14 20:05:36.122869	2022-12-14 20:05:36.122869
416	407	11	2022-12-14 20:05:36.130506	2022-12-14 20:05:36.130506
417	417	2	2022-12-14 20:05:36.137829	2022-12-14 20:05:36.137829
418	417	4	2022-12-14 20:05:36.145667	2022-12-14 20:05:36.145667
419	417	5	2022-12-14 20:05:36.152785	2022-12-14 20:05:36.152785
420	417	9	2022-12-14 20:05:36.159383	2022-12-14 20:05:36.159383
421	417	10	2022-12-14 20:05:36.167017	2022-12-14 20:05:36.167017
422	417	12	2022-12-14 20:05:36.174417	2022-12-14 20:05:36.174417
423	417	13	2022-12-14 20:05:36.181739	2022-12-14 20:05:36.181739
424	417	14	2022-12-14 20:05:36.189486	2022-12-14 20:05:36.189486
425	425	1	2022-12-14 20:05:36.197334	2022-12-14 20:05:36.197334
426	425	2	2022-12-14 20:05:36.203834	2022-12-14 20:05:36.203834
427	425	3	2022-12-14 20:05:36.211023	2022-12-14 20:05:36.211023
428	425	4	2022-12-14 20:05:36.218623	2022-12-14 20:05:36.218623
429	425	5	2022-12-14 20:05:36.259305	2022-12-14 20:05:36.259305
430	425	6	2022-12-14 20:05:36.278063	2022-12-14 20:05:36.278063
431	425	7	2022-12-14 20:05:36.298818	2022-12-14 20:05:36.298818
432	425	8	2022-12-14 20:05:36.316838	2022-12-14 20:05:36.316838
433	425	9	2022-12-14 20:05:36.333706	2022-12-14 20:05:36.333706
434	425	10	2022-12-14 20:05:36.357528	2022-12-14 20:05:36.357528
435	435	1	2022-12-14 20:05:36.377811	2022-12-14 20:05:36.377811
436	435	3	2022-12-14 20:05:36.399395	2022-12-14 20:05:36.399395
437	435	4	2022-12-14 20:05:36.421419	2022-12-14 20:05:36.421419
438	435	6	2022-12-14 20:05:36.43863	2022-12-14 20:05:36.43863
439	435	9	2022-12-14 20:05:36.457571	2022-12-14 20:05:36.457571
440	435	10	2022-12-14 20:05:36.475466	2022-12-14 20:05:36.475466
441	435	11	2022-12-14 20:05:36.492405	2022-12-14 20:05:36.492405
442	435	12	2022-12-14 20:05:36.511495	2022-12-14 20:05:36.511495
443	443	1	2022-12-14 20:05:36.526121	2022-12-14 20:05:36.526121
444	443	2	2022-12-14 20:05:36.541967	2022-12-14 20:05:36.541967
445	443	3	2022-12-14 20:05:36.557648	2022-12-14 20:05:36.557648
446	443	4	2022-12-14 20:05:36.572251	2022-12-14 20:05:36.572251
447	443	6	2022-12-14 20:05:36.58765	2022-12-14 20:05:36.58765
448	443	7	2022-12-14 20:05:36.597663	2022-12-14 20:05:36.597663
449	443	8	2022-12-14 20:05:36.604682	2022-12-14 20:05:36.604682
450	450	1	2022-12-14 20:05:36.612411	2022-12-14 20:05:36.612411
451	450	2	2022-12-14 20:05:36.619612	2022-12-14 20:05:36.619612
452	450	3	2022-12-14 20:05:36.627493	2022-12-14 20:05:36.627493
453	450	5	2022-12-14 20:05:36.63584	2022-12-14 20:05:36.63584
454	450	7	2022-12-14 20:05:36.643156	2022-12-14 20:05:36.643156
455	450	8	2022-12-14 20:05:36.653255	2022-12-14 20:05:36.653255
456	450	9	2022-12-14 20:05:36.66747	2022-12-14 20:05:36.66747
457	450	10	2022-12-14 20:05:36.67679	2022-12-14 20:05:36.67679
458	450	11	2022-12-14 20:05:36.683201	2022-12-14 20:05:36.683201
459	450	12	2022-12-14 20:05:36.689858	2022-12-14 20:05:36.689858
460	460	1	2022-12-14 20:05:36.715026	2022-12-14 20:05:36.715026
461	460	2	2022-12-14 20:05:36.731703	2022-12-14 20:05:36.731703
462	460	3	2022-12-14 20:05:36.743697	2022-12-14 20:05:36.743697
463	460	4	2022-12-14 20:05:36.751022	2022-12-14 20:05:36.751022
464	460	5	2022-12-14 20:05:36.763078	2022-12-14 20:05:36.763078
465	460	6	2022-12-14 20:05:36.772405	2022-12-14 20:05:36.772405
466	460	8	2022-12-14 20:05:36.779943	2022-12-14 20:05:36.779943
467	460	9	2022-12-14 20:05:36.787354	2022-12-14 20:05:36.787354
468	460	10	2022-12-14 20:05:36.795259	2022-12-14 20:05:36.795259
469	460	11	2022-12-14 20:05:36.80747	2022-12-14 20:05:36.80747
470	470	1	2022-12-14 20:05:36.820407	2022-12-14 20:05:36.820407
471	470	2	2022-12-14 20:05:36.828268	2022-12-14 20:05:36.828268
472	470	3	2022-12-14 20:05:36.834859	2022-12-14 20:05:36.834859
473	470	4	2022-12-14 20:05:36.841467	2022-12-14 20:05:36.841467
474	470	5	2022-12-14 20:05:36.849962	2022-12-14 20:05:36.849962
475	470	6	2022-12-14 20:05:36.857141	2022-12-14 20:05:36.857141
476	470	7	2022-12-14 20:05:36.862807	2022-12-14 20:05:36.862807
477	470	8	2022-12-14 20:05:36.868583	2022-12-14 20:05:36.868583
478	470	9	2022-12-14 20:05:36.875075	2022-12-14 20:05:36.875075
479	470	10	2022-12-14 20:05:36.881845	2022-12-14 20:05:36.881845
480	480	1	2022-12-14 20:05:36.889377	2022-12-14 20:05:36.889377
481	480	2	2022-12-14 20:05:36.896179	2022-12-14 20:05:36.896179
482	480	3	2022-12-14 20:05:36.903673	2022-12-14 20:05:36.903673
483	480	5	2022-12-14 20:05:36.910898	2022-12-14 20:05:36.910898
484	480	7	2022-12-14 20:05:36.919314	2022-12-14 20:05:36.919314
485	480	8	2022-12-14 20:05:36.926769	2022-12-14 20:05:36.926769
486	480	9	2022-12-14 20:05:36.93393	2022-12-14 20:05:36.93393
487	480	11	2022-12-14 20:05:36.942194	2022-12-14 20:05:36.942194
488	480	13	2022-12-14 20:05:36.949077	2022-12-14 20:05:36.949077
489	480	14	2022-12-14 20:05:36.957578	2022-12-14 20:05:36.957578
490	490	1	2022-12-14 20:05:36.965819	2022-12-14 20:05:36.965819
491	490	2	2022-12-14 20:05:36.973775	2022-12-14 20:05:36.973775
492	490	3	2022-12-14 20:05:36.980008	2022-12-14 20:05:36.980008
493	490	4	2022-12-14 20:05:36.98706	2022-12-14 20:05:36.98706
494	490	5	2022-12-14 20:05:36.995199	2022-12-14 20:05:36.995199
495	490	6	2022-12-14 20:05:37.001877	2022-12-14 20:05:37.001877
496	490	7	2022-12-14 20:05:37.009882	2022-12-14 20:05:37.009882
497	490	8	2022-12-14 20:05:37.01898	2022-12-14 20:05:37.01898
498	490	9	2022-12-14 20:05:37.026432	2022-12-14 20:05:37.026432
499	490	10	2022-12-14 20:05:37.033333	2022-12-14 20:05:37.033333
500	500	2	2022-12-14 20:05:37.040936	2022-12-14 20:05:37.040936
501	500	3	2022-12-14 20:05:37.048276	2022-12-14 20:05:37.048276
502	500	4	2022-12-14 20:05:37.055339	2022-12-14 20:05:37.055339
503	500	5	2022-12-14 20:05:37.062675	2022-12-14 20:05:37.062675
504	500	6	2022-12-14 20:05:37.07033	2022-12-14 20:05:37.07033
505	500	7	2022-12-14 20:05:37.077877	2022-12-14 20:05:37.077877
506	500	8	2022-12-14 20:05:37.08582	2022-12-14 20:05:37.08582
507	500	9	2022-12-14 20:05:37.093603	2022-12-14 20:05:37.093603
508	500	10	2022-12-14 20:05:37.101643	2022-12-14 20:05:37.101643
509	509	1	2022-12-14 20:05:37.109275	2022-12-14 20:05:37.109275
510	509	2	2022-12-14 20:05:37.116795	2022-12-14 20:05:37.116795
511	509	4	2022-12-14 20:05:37.124287	2022-12-14 20:05:37.124287
512	509	5	2022-12-14 20:05:37.13126	2022-12-14 20:05:37.13126
513	509	7	2022-12-14 20:05:37.138988	2022-12-14 20:05:37.138988
514	509	8	2022-12-14 20:05:37.146162	2022-12-14 20:05:37.146162
515	509	9	2022-12-14 20:05:37.154313	2022-12-14 20:05:37.154313
516	509	10	2022-12-14 20:05:37.160488	2022-12-14 20:05:37.160488
517	517	1	2022-12-14 20:05:37.167896	2022-12-14 20:05:37.167896
518	517	2	2022-12-14 20:05:37.175891	2022-12-14 20:05:37.175891
519	517	3	2022-12-14 20:05:37.183458	2022-12-14 20:05:37.183458
520	517	4	2022-12-14 20:05:37.190955	2022-12-14 20:05:37.190955
521	517	5	2022-12-14 20:05:37.197714	2022-12-14 20:05:37.197714
522	517	6	2022-12-14 20:05:37.20494	2022-12-14 20:05:37.20494
523	517	8	2022-12-14 20:05:37.212078	2022-12-14 20:05:37.212078
524	517	9	2022-12-14 20:05:37.219923	2022-12-14 20:05:37.219923
525	517	10	2022-12-14 20:05:37.22815	2022-12-14 20:05:37.22815
526	526	1	2022-12-14 20:05:37.237468	2022-12-14 20:05:37.237468
527	526	2	2022-12-14 20:05:37.244755	2022-12-14 20:05:37.244755
528	526	3	2022-12-14 20:05:37.251002	2022-12-14 20:05:37.251002
529	526	4	2022-12-14 20:05:37.25863	2022-12-14 20:05:37.25863
530	526	5	2022-12-14 20:05:37.26562	2022-12-14 20:05:37.26562
531	526	6	2022-12-14 20:05:37.273165	2022-12-14 20:05:37.273165
532	526	7	2022-12-14 20:05:37.280497	2022-12-14 20:05:37.280497
533	526	8	2022-12-14 20:05:37.28871	2022-12-14 20:05:37.28871
534	526	9	2022-12-14 20:05:37.296285	2022-12-14 20:05:37.296285
535	526	10	2022-12-14 20:05:37.303248	2022-12-14 20:05:37.303248
536	536	1	2022-12-14 20:05:37.310678	2022-12-14 20:05:37.310678
537	536	2	2022-12-14 20:05:37.317707	2022-12-14 20:05:37.317707
538	536	3	2022-12-14 20:05:37.326068	2022-12-14 20:05:37.326068
539	536	4	2022-12-14 20:05:37.333589	2022-12-14 20:05:37.333589
540	536	5	2022-12-14 20:05:37.342406	2022-12-14 20:05:37.342406
541	536	6	2022-12-14 20:05:37.350228	2022-12-14 20:05:37.350228
542	536	7	2022-12-14 20:05:37.358519	2022-12-14 20:05:37.358519
543	536	8	2022-12-14 20:05:37.366056	2022-12-14 20:05:37.366056
544	536	9	2022-12-14 20:05:37.374449	2022-12-14 20:05:37.374449
545	536	10	2022-12-14 20:05:37.381929	2022-12-14 20:05:37.381929
546	546	1	2022-12-14 20:05:37.389189	2022-12-14 20:05:37.389189
547	546	2	2022-12-14 20:05:37.396042	2022-12-14 20:05:37.396042
548	546	3	2022-12-14 20:05:37.402544	2022-12-14 20:05:37.402544
549	546	4	2022-12-14 20:05:37.409413	2022-12-14 20:05:37.409413
550	546	5	2022-12-14 20:05:37.416827	2022-12-14 20:05:37.416827
551	546	6	2022-12-14 20:05:37.4236	2022-12-14 20:05:37.4236
552	546	7	2022-12-14 20:05:37.430955	2022-12-14 20:05:37.430955
553	546	8	2022-12-14 20:05:37.438497	2022-12-14 20:05:37.438497
554	546	9	2022-12-14 20:05:37.447702	2022-12-14 20:05:37.447702
555	546	10	2022-12-14 20:05:37.454519	2022-12-14 20:05:37.454519
556	556	1	2022-12-14 20:05:37.460765	2022-12-14 20:05:37.460765
557	556	2	2022-12-14 20:05:37.466451	2022-12-14 20:05:37.466451
558	556	3	2022-12-14 20:05:37.472853	2022-12-14 20:05:37.472853
559	556	4	2022-12-14 20:05:37.478916	2022-12-14 20:05:37.478916
560	556	5	2022-12-14 20:05:37.485789	2022-12-14 20:05:37.485789
561	556	6	2022-12-14 20:05:37.492796	2022-12-14 20:05:37.492796
562	556	7	2022-12-14 20:05:37.500042	2022-12-14 20:05:37.500042
563	556	9	2022-12-14 20:05:37.507193	2022-12-14 20:05:37.507193
564	556	10	2022-12-14 20:05:37.513789	2022-12-14 20:05:37.513789
565	556	11	2022-12-14 20:05:37.520914	2022-12-14 20:05:37.520914
566	566	2	2022-12-14 20:05:37.52775	2022-12-14 20:05:37.52775
567	566	5	2022-12-14 20:05:37.53473	2022-12-14 20:05:37.53473
568	566	6	2022-12-14 20:05:37.541738	2022-12-14 20:05:37.541738
569	566	8	2022-12-14 20:05:37.548098	2022-12-14 20:05:37.548098
570	566	9	2022-12-14 20:05:37.555478	2022-12-14 20:05:37.555478
571	566	10	2022-12-14 20:05:37.562178	2022-12-14 20:05:37.562178
572	566	12	2022-12-14 20:05:37.569907	2022-12-14 20:05:37.569907
573	566	13	2022-12-14 20:05:37.576679	2022-12-14 20:05:37.576679
574	574	1	2022-12-14 20:05:37.582609	2022-12-14 20:05:37.582609
575	574	2	2022-12-14 20:05:37.589547	2022-12-14 20:05:37.589547
576	574	3	2022-12-14 20:05:37.59644	2022-12-14 20:05:37.59644
577	574	4	2022-12-14 20:05:37.604295	2022-12-14 20:05:37.604295
578	574	5	2022-12-14 20:05:37.611601	2022-12-14 20:05:37.611601
579	574	6	2022-12-14 20:05:37.619337	2022-12-14 20:05:37.619337
580	574	7	2022-12-14 20:05:37.626991	2022-12-14 20:05:37.626991
581	574	8	2022-12-14 20:05:37.63532	2022-12-14 20:05:37.63532
582	574	9	2022-12-14 20:05:37.642804	2022-12-14 20:05:37.642804
583	574	10	2022-12-14 20:05:37.649826	2022-12-14 20:05:37.649826
898	11	5	2022-12-14 20:05:40.001961	2022-12-14 20:05:40.001961
900	11	7	2022-12-14 20:05:40.017841	2022-12-14 20:05:40.017841
901	11	8	2022-12-14 20:05:40.025929	2022-12-14 20:05:40.025929
902	11	9	2022-12-14 20:05:40.033768	2022-12-14 20:05:40.033768
904	19	1	2022-12-14 20:05:40.048653	2022-12-14 20:05:40.048653
906	19	3	2022-12-14 20:05:40.063319	2022-12-14 20:05:40.063319
909	19	6	2022-12-14 20:05:40.087416	2022-12-14 20:05:40.087416
954	80	10	2022-12-14 20:05:40.434974	2022-12-14 20:05:40.434974
956	88	5	2022-12-14 20:05:40.450436	2022-12-14 20:05:40.450436
957	88	6	2022-12-14 20:05:40.456759	2022-12-14 20:05:40.456759
959	88	10	2022-12-14 20:05:40.471616	2022-12-14 20:05:40.471616
970	102	1	2022-12-14 20:05:40.559341	2022-12-14 20:05:40.559341
971	102	2	2022-12-14 20:05:40.565729	2022-12-14 20:05:40.565729
980	111	3	2022-12-14 20:05:40.634151	2022-12-14 20:05:40.634151
982	111	5	2022-12-14 20:05:40.647794	2022-12-14 20:05:40.647794
985	111	8	2022-12-14 20:05:40.667759	2022-12-14 20:05:40.667759
988	121	5	2022-12-14 20:05:40.689399	2022-12-14 20:05:40.689399
989	121	6	2022-12-14 20:05:40.696483	2022-12-14 20:05:40.696483
991	126	3	2022-12-14 20:05:40.715561	2022-12-14 20:05:40.715561
997	136	1	2022-12-14 20:05:40.762562	2022-12-14 20:05:40.762562
1001	136	5	2022-12-14 20:05:40.791855	2022-12-14 20:05:40.791855
1003	136	7	2022-12-14 20:05:40.806778	2022-12-14 20:05:40.806778
1004	136	8	2022-12-14 20:05:40.813903	2022-12-14 20:05:40.813903
1023	164	7	2022-12-14 20:05:40.957651	2022-12-14 20:05:40.957651
1035	173	10	2022-12-14 20:05:41.046555	2022-12-14 20:05:41.046555
1040	183	7	2022-12-14 20:05:41.084052	2022-12-14 20:05:41.084052
1042	183	9	2022-12-14 20:05:41.111244	2022-12-14 20:05:41.111244
1044	191	2	2022-12-14 20:05:41.128254	2022-12-14 20:05:41.128254
1056	201	5	2022-12-14 20:05:41.24672	2022-12-14 20:05:41.24672
1057	201	6	2022-12-14 20:05:41.257419	2022-12-14 20:05:41.257419
1071	221	1	2022-12-14 20:05:41.368812	2022-12-14 20:05:41.368812
1074	221	4	2022-12-14 20:05:41.390937	2022-12-14 20:05:41.390937
1075	221	5	2022-12-14 20:05:41.397545	2022-12-14 20:05:41.397545
1077	221	7	2022-12-14 20:05:41.414636	2022-12-14 20:05:41.414636
1078	221	8	2022-12-14 20:05:41.422774	2022-12-14 20:05:41.422774
1079	221	9	2022-12-14 20:05:41.429561	2022-12-14 20:05:41.429561
1080	221	10	2022-12-14 20:05:41.436482	2022-12-14 20:05:41.436482
1084	226	4	2022-12-14 20:05:41.465756	2022-12-14 20:05:41.465756
1087	235	1	2022-12-14 20:05:41.490948	2022-12-14 20:05:41.490948
1089	235	3	2022-12-14 20:05:41.50572	2022-12-14 20:05:41.50572
1092	235	6	2022-12-14 20:05:41.528966	2022-12-14 20:05:41.528966
1093	235	7	2022-12-14 20:05:41.537574	2022-12-14 20:05:41.537574
1094	235	8	2022-12-14 20:05:41.545928	2022-12-14 20:05:41.545928
1095	235	9	2022-12-14 20:05:41.55594	2022-12-14 20:05:41.55594
1147	313	1	2022-12-14 20:05:41.963459	2022-12-14 20:05:41.963459
1148	313	2	2022-12-14 20:05:41.975267	2022-12-14 20:05:41.975267
1149	313	3	2022-12-14 20:05:41.989378	2022-12-14 20:05:41.989378
1150	313	4	2022-12-14 20:05:42.0018	2022-12-14 20:05:42.0018
1151	313	5	2022-12-14 20:05:42.015367	2022-12-14 20:05:42.015367
1152	313	6	2022-12-14 20:05:42.02471	2022-12-14 20:05:42.02471
1153	313	7	2022-12-14 20:05:42.033415	2022-12-14 20:05:42.033415
1154	313	10	2022-12-14 20:05:42.041037	2022-12-14 20:05:42.041037
1156	314	2	2022-12-14 20:05:42.055969	2022-12-14 20:05:42.055969
1157	314	3	2022-12-14 20:05:42.0639	2022-12-14 20:05:42.0639
1176	334	4	2022-12-14 20:05:42.20397	2022-12-14 20:05:42.20397
1212	373	8	2022-12-14 20:05:42.468511	2022-12-14 20:05:42.468511
1220	383	7	2022-12-14 20:05:42.525883	2022-12-14 20:05:42.525883
1235	407	8	2022-12-14 20:05:42.633781	2022-12-14 20:05:42.633781
1237	1237	1	2022-12-14 20:05:42.648214	2022-12-14 20:05:42.648214
1238	1237	2	2022-12-14 20:05:42.655266	2022-12-14 20:05:42.655266
1239	1237	3	2022-12-14 20:05:42.662597	2022-12-14 20:05:42.662597
1240	1237	4	2022-12-14 20:05:42.670439	2022-12-14 20:05:42.670439
1241	1237	6	2022-12-14 20:05:42.677713	2022-12-14 20:05:42.677713
1242	1237	7	2022-12-14 20:05:42.686063	2022-12-14 20:05:42.686063
1243	1237	8	2022-12-14 20:05:42.693546	2022-12-14 20:05:42.693546
1244	1237	9	2022-12-14 20:05:42.701324	2022-12-14 20:05:42.701324
1245	1237	10	2022-12-14 20:05:42.710183	2022-12-14 20:05:42.710183
1247	417	3	2022-12-14 20:05:42.725136	2022-12-14 20:05:42.725136
1250	417	6	2022-12-14 20:05:42.74629	2022-12-14 20:05:42.74629
1251	417	7	2022-12-14 20:05:42.754534	2022-12-14 20:05:42.754534
1254	435	2	2022-12-14 20:05:42.780845	2022-12-14 20:05:42.780845
1257	435	5	2022-12-14 20:05:42.802157	2022-12-14 20:05:42.802157
1259	435	7	2022-12-14 20:05:42.818136	2022-12-14 20:05:42.818136
1260	435	8	2022-12-14 20:05:42.825872	2022-12-14 20:05:42.825872
1266	443	5	2022-12-14 20:05:42.868986	2022-12-14 20:05:42.868986
1270	443	9	2022-12-14 20:05:42.898896	2022-12-14 20:05:42.898896
1274	450	4	2022-12-14 20:05:42.930428	2022-12-14 20:05:42.930428
1276	450	6	2022-12-14 20:05:42.945298	2022-12-14 20:05:42.945298
1296	480	4	2022-12-14 20:05:43.099788	2022-12-14 20:05:43.099788
1298	480	6	2022-12-14 20:05:43.115219	2022-12-14 20:05:43.115219
1302	480	10	2022-12-14 20:05:43.145139	2022-12-14 20:05:43.145139
1313	500	1	2022-12-14 20:05:43.308938	2022-12-14 20:05:43.308938
1323	509	3	2022-12-14 20:05:43.481219	2022-12-14 20:05:43.481219
1326	509	6	2022-12-14 20:05:43.529159	2022-12-14 20:05:43.529159
1333	517	7	2022-12-14 20:05:43.629805	2022-12-14 20:05:43.629805
1371	556	8	2022-12-14 20:05:43.956289	2022-12-14 20:05:43.956289
1377	183	5	2022-12-14 20:05:44.003776	2022-12-14 20:05:44.003776
1391	102	5	2022-12-14 20:05:44.103475	2022-12-14 20:05:44.103475
1392	121	4	2022-12-14 20:05:44.11077	2022-12-14 20:05:44.11077
1393	121	8	2022-12-14 20:05:44.118777	2022-12-14 20:05:44.118777
1394	121	9	2022-12-14 20:05:44.125936	2022-12-14 20:05:44.125936
1566	1	11	2022-12-14 20:05:45.400912	2022-12-14 20:05:45.400912
1593	27	11	2022-12-14 20:05:45.619656	2022-12-14 20:05:45.619656
1594	27	12	2022-12-14 20:05:45.627345	2022-12-14 20:05:45.627345
1595	27	14	2022-12-14 20:05:45.63423	2022-12-14 20:05:45.63423
1596	37	1	2022-12-14 20:05:45.64254	2022-12-14 20:05:45.64254
1601	37	6	2022-12-14 20:05:45.680924	2022-12-14 20:05:45.680924
1602	37	7	2022-12-14 20:05:45.6887	2022-12-14 20:05:45.6887
1604	37	9	2022-12-14 20:05:45.70299	2022-12-14 20:05:45.70299
1605	37	10	2022-12-14 20:05:45.7129	2022-12-14 20:05:45.7129
1606	37	11	2022-12-14 20:05:45.721168	2022-12-14 20:05:45.721168
1614	46	11	2022-12-14 20:05:45.78511	2022-12-14 20:05:45.78511
1615	46	12	2022-12-14 20:05:45.795641	2022-12-14 20:05:45.795641
1616	46	13	2022-12-14 20:05:45.802706	2022-12-14 20:05:45.802706
1617	46	14	2022-12-14 20:05:45.810005	2022-12-14 20:05:45.810005
1618	46	15	2022-12-14 20:05:45.817052	2022-12-14 20:05:45.817052
1624	56	12	2022-12-14 20:05:45.864756	2022-12-14 20:05:45.864756
1626	77	2	2022-12-14 20:05:45.879471	2022-12-14 20:05:45.879471
1627	77	3	2022-12-14 20:05:45.887447	2022-12-14 20:05:45.887447
1628	77	4	2022-12-14 20:05:45.894644	2022-12-14 20:05:45.894644
1634	88	3	2022-12-14 20:05:45.939924	2022-12-14 20:05:45.939924
1635	88	4	2022-12-14 20:05:45.947264	2022-12-14 20:05:45.947264
1638	88	8	2022-12-14 20:05:45.970961	2022-12-14 20:05:45.970961
1641	88	11	2022-12-14 20:05:45.993665	2022-12-14 20:05:45.993665
1642	88	12	2022-12-14 20:05:46.001606	2022-12-14 20:05:46.001606
1661	126	9	2022-12-14 20:05:46.148469	2022-12-14 20:05:46.148469
1677	145	4	2022-12-14 20:05:46.270767	2022-12-14 20:05:46.270767
1680	145	7	2022-12-14 20:05:46.302097	2022-12-14 20:05:46.302097
1690	154	11	2022-12-14 20:05:46.376292	2022-12-14 20:05:46.376292
1706	1706	1	2022-12-14 20:05:46.503052	2022-12-14 20:05:46.503052
1707	1706	4	2022-12-14 20:05:46.510488	2022-12-14 20:05:46.510488
1708	1706	5	2022-12-14 20:05:46.517618	2022-12-14 20:05:46.517618
1720	191	12	2022-12-14 20:05:46.611984	2022-12-14 20:05:46.611984
1748	226	11	2022-12-14 20:05:46.849357	2022-12-14 20:05:46.849357
1762	241	11	2022-12-14 20:05:46.958207	2022-12-14 20:05:46.958207
1763	241	12	2022-12-14 20:05:46.967436	2022-12-14 20:05:46.967436
1764	241	13	2022-12-14 20:05:46.976016	2022-12-14 20:05:46.976016
1765	241	14	2022-12-14 20:05:46.983249	2022-12-14 20:05:46.983249
1783	273	11	2022-12-14 20:05:47.121656	2022-12-14 20:05:47.121656
1784	273	12	2022-12-14 20:05:47.129448	2022-12-14 20:05:47.129448
1785	273	13	2022-12-14 20:05:47.136186	2022-12-14 20:05:47.136186
1786	273	14	2022-12-14 20:05:47.144255	2022-12-14 20:05:47.144255
1787	273	15	2022-12-14 20:05:47.151288	2022-12-14 20:05:47.151288
1794	1794	1	2022-12-14 20:05:47.201709	2022-12-14 20:05:47.201709
1795	1794	2	2022-12-14 20:05:47.209257	2022-12-14 20:05:47.209257
1796	1794	3	2022-12-14 20:05:47.216434	2022-12-14 20:05:47.216434
1797	1794	4	2022-12-14 20:05:47.225058	2022-12-14 20:05:47.225058
1798	1794	5	2022-12-14 20:05:47.232201	2022-12-14 20:05:47.232201
1799	1794	6	2022-12-14 20:05:47.239997	2022-12-14 20:05:47.239997
1800	1794	7	2022-12-14 20:05:47.246074	2022-12-14 20:05:47.246074
1801	1794	8	2022-12-14 20:05:47.253596	2022-12-14 20:05:47.253596
1802	1794	9	2022-12-14 20:05:47.261721	2022-12-14 20:05:47.261721
1803	1794	10	2022-12-14 20:05:47.269031	2022-12-14 20:05:47.269031
1809	303	11	2022-12-14 20:05:47.313843	2022-12-14 20:05:47.313843
1810	303	12	2022-12-14 20:05:47.320624	2022-12-14 20:05:47.320624
1811	303	13	2022-12-14 20:05:47.327005	2022-12-14 20:05:47.327005
1812	303	14	2022-12-14 20:05:47.333092	2022-12-14 20:05:47.333092
1813	303	15	2022-12-14 20:05:47.340457	2022-12-14 20:05:47.340457
1821	313	9	2022-12-14 20:05:47.394508	2022-12-14 20:05:47.394508
1837	334	11	2022-12-14 20:05:47.515483	2022-12-14 20:05:47.515483
1838	334	12	2022-12-14 20:05:47.52228	2022-12-14 20:05:47.52228
1839	1839	1	2022-12-14 20:05:47.529284	2022-12-14 20:05:47.529284
1840	1839	2	2022-12-14 20:05:47.536377	2022-12-14 20:05:47.536377
1841	1839	3	2022-12-14 20:05:47.544036	2022-12-14 20:05:47.544036
1842	1839	4	2022-12-14 20:05:47.558848	2022-12-14 20:05:47.558848
1843	1839	5	2022-12-14 20:05:47.566504	2022-12-14 20:05:47.566504
1844	1839	6	2022-12-14 20:05:47.575219	2022-12-14 20:05:47.575219
1845	1839	7	2022-12-14 20:05:47.583081	2022-12-14 20:05:47.583081
1846	1839	8	2022-12-14 20:05:47.591588	2022-12-14 20:05:47.591588
1858	373	12	2022-12-14 20:05:47.689475	2022-12-14 20:05:47.689475
1859	373	13	2022-12-14 20:05:47.697864	2022-12-14 20:05:47.697864
1869	392	11	2022-12-14 20:05:47.781072	2022-12-14 20:05:47.781072
1870	392	12	2022-12-14 20:05:47.78993	2022-12-14 20:05:47.78993
1875	1237	5	2022-12-14 20:05:47.829178	2022-12-14 20:05:47.829178
1896	435	13	2022-12-14 20:05:47.994782	2022-12-14 20:05:47.994782
1906	443	11	2022-12-14 20:05:48.070264	2022-12-14 20:05:48.070264
1907	443	12	2022-12-14 20:05:48.079406	2022-12-14 20:05:48.079406
1908	443	13	2022-12-14 20:05:48.085306	2022-12-14 20:05:48.085306
1909	443	14	2022-12-14 20:05:48.092244	2022-12-14 20:05:48.092244
1941	490	11	2022-12-14 20:05:48.324441	2022-12-14 20:05:48.324441
1959	509	11	2022-12-14 20:05:48.454296	2022-12-14 20:05:48.454296
1960	509	12	2022-12-14 20:05:48.462237	2022-12-14 20:05:48.462237
1971	546	11	2022-12-14 20:05:48.543991	2022-12-14 20:05:48.543991
1972	546	12	2022-12-14 20:05:48.552029	2022-12-14 20:05:48.552029
1973	546	13	2022-12-14 20:05:48.559106	2022-12-14 20:05:48.559106
1974	546	14	2022-12-14 20:05:48.566818	2022-12-14 20:05:48.566818
1984	556	13	2022-12-14 20:05:48.647809	2022-12-14 20:05:48.647809
1985	556	14	2022-12-14 20:05:48.653798	2022-12-14 20:05:48.653798
1986	566	1	2022-12-14 20:05:48.660073	2022-12-14 20:05:48.660073
1988	566	3	2022-12-14 20:05:48.674113	2022-12-14 20:05:48.674113
1989	566	4	2022-12-14 20:05:48.681358	2022-12-14 20:05:48.681358
1991	566	7	2022-12-14 20:05:48.696386	2022-12-14 20:05:48.696386
2196	11	12	2022-12-14 20:05:50.382515	2022-12-14 20:05:50.382515
2199	80	8	2022-12-14 20:05:50.405491	2022-12-14 20:05:50.405491
2201	80	12	2022-12-14 20:05:50.421798	2022-12-14 20:05:50.421798
2202	80	14	2022-12-14 20:05:50.428885	2022-12-14 20:05:50.428885
2204	88	14	2022-12-14 20:05:50.442805	2022-12-14 20:05:50.442805
2205	102	15	2022-12-14 20:05:50.44919	2022-12-14 20:05:50.44919
2206	121	15	2022-12-14 20:05:50.456489	2022-12-14 20:05:50.456489
2208	126	13	2022-12-14 20:05:50.469532	2022-12-14 20:05:50.469532
2209	126	14	2022-12-14 20:05:50.476285	2022-12-14 20:05:50.476285
2210	136	12	2022-12-14 20:05:50.48323	2022-12-14 20:05:50.48323
2212	164	11	2022-12-14 20:05:50.496822	2022-12-14 20:05:50.496822
2213	164	12	2022-12-14 20:05:50.503309	2022-12-14 20:05:50.503309
2216	183	12	2022-12-14 20:05:50.52407	2022-12-14 20:05:50.52407
2217	183	13	2022-12-14 20:05:50.5311	2022-12-14 20:05:50.5311
2222	221	13	2022-12-14 20:05:50.567831	2022-12-14 20:05:50.567831
2224	262	12	2022-12-14 20:05:50.582543	2022-12-14 20:05:50.582543
2225	262	13	2022-12-14 20:05:50.58995	2022-12-14 20:05:50.58995
2229	402	10	2022-12-14 20:05:50.620552	2022-12-14 20:05:50.620552
2234	443	15	2022-12-14 20:05:50.657452	2022-12-14 20:05:50.657452
2239	566	17	2022-12-14 20:05:50.695568	2022-12-14 20:05:50.695568
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-12-14 20:05:28.195631	2022-12-14 20:05:28.195631
\.


--
-- Data for Name: cytometry_readings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cytometry_readings (id, accession_id, minimum_peak, mean_f2, peak_pattern, chromosome_count, chromosome_count_certain, created_at, updated_at) FROM stdin;
1	1566	180	270	{180,360}	{}	t	2022-12-14 20:06:08.455489	2022-12-14 20:06:08.455489
2	11	180	280	{180,380}	{}	t	2022-12-14 20:06:08.468162	2022-12-14 20:06:08.468162
3	12	100	170	{100,240,480}	{}	t	2022-12-14 20:06:08.471166	2022-12-14 20:06:08.471166
4	13	180	270	{180,360}	{}	t	2022-12-14 20:06:08.473734	2022-12-14 20:06:08.473734
5	14	120	185	{120,250,500}	{}	t	2022-12-14 20:06:08.476067	2022-12-14 20:06:08.476067
6	901	100	170	{100,240,480}	{}	t	2022-12-14 20:06:08.479183	2022-12-14 20:06:08.479183
7	904	180	270	{180,360}	{}	t	2022-12-14 20:06:08.483684	2022-12-14 20:06:08.483684
8	19	180	270	{180,360}	{36,38}	t	2022-12-14 20:06:08.486116	2022-12-14 20:06:08.486116
9	906	180	270	{180,360}	{}	t	2022-12-14 20:06:08.488646	2022-12-14 20:06:08.488646
10	20	180	270	{180,360}	{}	t	2022-12-14 20:06:08.491096	2022-12-14 20:06:08.491096
11	21	180	280	{180,380}	{}	t	2022-12-14 20:06:08.493545	2022-12-14 20:06:08.493545
12	23	180	270	{180,360}	{}	t	2022-12-14 20:06:08.496213	2022-12-14 20:06:08.496213
13	24	207	303.5	{207,400}	{}	t	2022-12-14 20:06:08.498937	2022-12-14 20:06:08.498937
14	25	207	303.5	{207,400}	{}	t	2022-12-14 20:06:08.501467	2022-12-14 20:06:08.501467
15	26	180	270	{180,360}	{}	t	2022-12-14 20:06:08.50411	2022-12-14 20:06:08.50411
16	31	200	300	{200,400}	{}	t	2022-12-14 20:06:08.507307	2022-12-14 20:06:08.507307
17	34	207	313.5	{207,420,840}	{}	t	2022-12-14 20:06:08.510302	2022-12-14 20:06:08.510302
18	35	207	293.5	{207,380,740}	{36,38}	t	2022-12-14 20:06:08.512945	2022-12-14 20:06:08.512945
19	1594	200	290	{200,380,740}	{}	t	2022-12-14 20:06:08.515644	2022-12-14 20:06:08.515644
20	1595	200	300	{200,400,760}	{36,38}	t	2022-12-14 20:06:08.518196	2022-12-14 20:06:08.518196
21	1596	180	260	{180,340}	{}	t	2022-12-14 20:06:08.520699	2022-12-14 20:06:08.520699
22	37	180	280	{180,380}	{}	t	2022-12-14 20:06:08.522984	2022-12-14 20:06:08.522984
23	38	220	335	{220,450}	{}	t	2022-12-14 20:06:08.525737	2022-12-14 20:06:08.525737
24	39	180	270	{180,360}	{}	t	2022-12-14 20:06:08.527748	2022-12-14 20:06:08.527748
25	40	180	270	{180,360}	{}	t	2022-12-14 20:06:08.530574	2022-12-14 20:06:08.530574
26	1601	180	270	{180,360}	{}	t	2022-12-14 20:06:08.534478	2022-12-14 20:06:08.534478
27	1602	240	360	{240,480}	{}	t	2022-12-14 20:06:08.539282	2022-12-14 20:06:08.539282
28	1605	180	270	{180,360}	{}	t	2022-12-14 20:06:08.541477	2022-12-14 20:06:08.541477
29	1606	180	265	{180,350}	{}	t	2022-12-14 20:06:08.543865	2022-12-14 20:06:08.543865
30	50	140	210	{140,280,520}	{}	t	2022-12-14 20:06:08.547132	2022-12-14 20:06:08.547132
31	54	180	270	{180,360,720}	{}	t	2022-12-14 20:06:08.549965	2022-12-14 20:06:08.549965
32	56	180	270	{180,360}	{}	t	2022-12-14 20:06:08.552551	2022-12-14 20:06:08.552551
33	66	160	240	{160,320}	{}	t	2022-12-14 20:06:08.555124	2022-12-14 20:06:08.555124
34	77	220	330	{220,440}	{}	t	2022-12-14 20:06:08.558142	2022-12-14 20:06:08.558142
35	1627	200	290	{200,380}	{}	t	2022-12-14 20:06:08.562091	2022-12-14 20:06:08.562091
36	1628	340	510	{340,680}	{}	t	2022-12-14 20:06:08.567361	2022-12-14 20:06:08.567361
37	81	210	315	{210,420}	{}	t	2022-12-14 20:06:08.575569	2022-12-14 20:06:08.575569
38	83	200	290	{200,380}	{}	t	2022-12-14 20:06:08.58025	2022-12-14 20:06:08.58025
39	88	160	240	{160,320}	{}	t	2022-12-14 20:06:08.584363	2022-12-14 20:06:08.584363
40	89	160	240	{160,320}	{}	t	2022-12-14 20:06:08.588546	2022-12-14 20:06:08.588546
41	1634	210	305	{210,400}	{}	t	2022-12-14 20:06:08.592872	2022-12-14 20:06:08.592872
42	1635	200	290	{200,380}	{}	t	2022-12-14 20:06:08.597138	2022-12-14 20:06:08.597138
43	956	140	220	{140,300}	{}	t	2022-12-14 20:06:08.601624	2022-12-14 20:06:08.601624
44	957	220	330	{220,440}	{}	t	2022-12-14 20:06:08.605936	2022-12-14 20:06:08.605936
45	1638	200	300	{200,400}	{}	t	2022-12-14 20:06:08.610262	2022-12-14 20:06:08.610262
46	91	200	300	{200,400}	{}	t	2022-12-14 20:06:08.614909	2022-12-14 20:06:08.614909
47	959	200	300	{200,400}	{}	t	2022-12-14 20:06:08.618847	2022-12-14 20:06:08.618847
48	1641	200	300	{200,400}	{}	t	2022-12-14 20:06:08.623181	2022-12-14 20:06:08.623181
49	1642	180	270	{180,360}	{}	t	2022-12-14 20:06:08.627382	2022-12-14 20:06:08.627382
50	92	180	270	{180,360}	{}	t	2022-12-14 20:06:08.631686	2022-12-14 20:06:08.631686
51	93	200	300	{200,400}	{28}	t	2022-12-14 20:06:08.635679	2022-12-14 20:06:08.635679
52	95	140	220	{140,300}	{}	t	2022-12-14 20:06:08.64235	2022-12-14 20:06:08.64235
53	971	210	317.5	{210,425}	{}	t	2022-12-14 20:06:08.647211	2022-12-14 20:06:08.647211
54	102	207	303.5	{207,400}	{}	t	2022-12-14 20:06:08.651487	2022-12-14 20:06:08.651487
55	103	240	360	{240,480}	{}	t	2022-12-14 20:06:08.655755	2022-12-14 20:06:08.655755
56	1391	360	520	{360,680}	{50}	t	2022-12-14 20:06:08.660207	2022-12-14 20:06:08.660207
57	104	207	306.5	{207,406}	{}	t	2022-12-14 20:06:08.66464	2022-12-14 20:06:08.66464
58	105	220	330	{220,440}	{36,38}	t	2022-12-14 20:06:08.668832	2022-12-14 20:06:08.668832
59	107	220	330	{220,440}	{}	t	2022-12-14 20:06:08.673002	2022-12-14 20:06:08.673002
60	121	180	270	{180,360}	{}	t	2022-12-14 20:06:08.677013	2022-12-14 20:06:08.677013
61	123	160	240	{160,320}	{}	t	2022-12-14 20:06:08.681573	2022-12-14 20:06:08.681573
62	1392	220	330	{220,440}	{}	t	2022-12-14 20:06:08.685728	2022-12-14 20:06:08.685728
63	128	220	320	{220,420,840}	{}	t	2022-12-14 20:06:08.690057	2022-12-14 20:06:08.690057
64	131	220	330	{220,440,880}	{}	t	2022-12-14 20:06:08.694028	2022-12-14 20:06:08.694028
65	132	220	330	{220,440,880}	{}	t	2022-12-14 20:06:08.698211	2022-12-14 20:06:08.698211
66	1661	220	330	{220,440}	{}	t	2022-12-14 20:06:08.702218	2022-12-14 20:06:08.702218
67	997	220	340	{220,460,880}	{}	t	2022-12-14 20:06:08.707311	2022-12-14 20:06:08.707311
68	136	240	360	{240,480}	{}	t	2022-12-14 20:06:08.709753	2022-12-14 20:06:08.709753
69	137	220	340	{220,460}	{}	t	2022-12-14 20:06:08.712469	2022-12-14 20:06:08.712469
70	138	220	330	{220,440,900}	{}	t	2022-12-14 20:06:08.715045	2022-12-14 20:06:08.715045
71	1001	220	330	{220,440,900}	{}	t	2022-12-14 20:06:08.717418	2022-12-14 20:06:08.717418
72	1003	220	335	{220,450}	{}	t	2022-12-14 20:06:08.719799	2022-12-14 20:06:08.719799
73	1004	240	360	{240,480}	{}	t	2022-12-14 20:06:08.724862	2022-12-14 20:06:08.724862
74	140	240	360	{240,480}	{36,38}	t	2022-12-14 20:06:08.732733	2022-12-14 20:06:08.732733
75	146	210	310	{210,410}	{}	t	2022-12-14 20:06:08.736125	2022-12-14 20:06:08.736125
76	147	75	107.5	{75,140,280,560}	{}	t	2022-12-14 20:06:08.741381	2022-12-14 20:06:08.741381
77	1677	260	390	{260,520}	{}	t	2022-12-14 20:06:08.744796	2022-12-14 20:06:08.744796
78	148	207	293.5	{207,380}	{}	t	2022-12-14 20:06:08.747988	2022-12-14 20:06:08.747988
79	1680	207	293.5	{207,380}	{}	t	2022-12-14 20:06:08.750492	2022-12-14 20:06:08.750492
80	150	210	315	{210,420}	{}	t	2022-12-14 20:06:08.75283	2022-12-14 20:06:08.75283
81	151	160	240	{160,320,640}	{}	t	2022-12-14 20:06:08.755711	2022-12-14 20:06:08.755711
82	152	207	306.5	{207,406}	{}	t	2022-12-14 20:06:08.758411	2022-12-14 20:06:08.758411
83	161	75	107.5	{75,140,280}	{}	t	2022-12-14 20:06:08.763067	2022-12-14 20:06:08.763067
84	162	140	205	{140,270}	{}	t	2022-12-14 20:06:08.767334	2022-12-14 20:06:08.767334
85	164	100	170	{100,240,480}	{}	t	2022-12-14 20:06:08.77198	2022-12-14 20:06:08.77198
86	166	100	150	{100,200,400}	{}	t	2022-12-14 20:06:08.776276	2022-12-14 20:06:08.776276
87	167	100	160	{100,220,440}	{}	t	2022-12-14 20:06:08.781517	2022-12-14 20:06:08.781517
88	168	100	160	{100,220,440}	{}	t	2022-12-14 20:06:08.785696	2022-12-14 20:06:08.785696
89	169	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.790199	2022-12-14 20:06:08.790199
90	173	160	240	{160,320,640}	{}	t	2022-12-14 20:06:08.794522	2022-12-14 20:06:08.794522
91	174	100	160	{100,220,460}	{}	t	2022-12-14 20:06:08.801153	2022-12-14 20:06:08.801153
92	176	100	160	{100,220,460}	{}	t	2022-12-14 20:06:08.805934	2022-12-14 20:06:08.805934
93	180	100	160	{100,220,460}	{}	t	2022-12-14 20:06:08.809961	2022-12-14 20:06:08.809961
94	183	180	270	{180,360}	{}	t	2022-12-14 20:06:08.812754	2022-12-14 20:06:08.812754
95	184	200	290	{200,380}	{}	t	2022-12-14 20:06:08.814879	2022-12-14 20:06:08.814879
96	186	180	270	{180,360,700}	{}	t	2022-12-14 20:06:08.817382	2022-12-14 20:06:08.817382
97	1377	180	270	{180,360}	{}	t	2022-12-14 20:06:08.819797	2022-12-14 20:06:08.819797
98	1707	220	340	{220,460}	{}	t	2022-12-14 20:06:08.822568	2022-12-14 20:06:08.822568
99	1708	220	330	{220,440}	{}	t	2022-12-14 20:06:08.824823	2022-12-14 20:06:08.824823
100	191	180	270	{180,360,720}	{}	t	2022-12-14 20:06:08.826917	2022-12-14 20:06:08.826917
101	1044	180	270	{180,360,700}	{}	t	2022-12-14 20:06:08.828971	2022-12-14 20:06:08.828971
102	192	160	240	{160,320,640}	{}	t	2022-12-14 20:06:08.831142	2022-12-14 20:06:08.831142
103	193	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.833524	2022-12-14 20:06:08.833524
104	194	180	270	{180,360,720}	{}	t	2022-12-14 20:06:08.835911	2022-12-14 20:06:08.835911
105	195	180	270	{180,360,720}	{}	t	2022-12-14 20:06:08.838772	2022-12-14 20:06:08.838772
106	196	200	290	{200,380,760}	{}	t	2022-12-14 20:06:08.841293	2022-12-14 20:06:08.841293
107	197	200	300	{200,400,800}	{}	t	2022-12-14 20:06:08.843463	2022-12-14 20:06:08.843463
108	198	200	300	{200,400,800}	{}	t	2022-12-14 20:06:08.845856	2022-12-14 20:06:08.845856
109	199	200	300	{200,400,760}	{}	t	2022-12-14 20:06:08.848037	2022-12-14 20:06:08.848037
110	200	200	300	{200,400,760}	{}	t	2022-12-14 20:06:08.850526	2022-12-14 20:06:08.850526
111	1720	180	270	{180,360,720}	{}	t	2022-12-14 20:06:08.852926	2022-12-14 20:06:08.852926
112	202	180	270	{180,360,740}	{}	t	2022-12-14 20:06:08.855651	2022-12-14 20:06:08.855651
113	1057	140	200	{140,260,520}	{}	t	2022-12-14 20:06:08.858054	2022-12-14 20:06:08.858054
114	208	140	200	{140,260,520}	{}	t	2022-12-14 20:06:08.860351	2022-12-14 20:06:08.860351
115	211	180	270	{180,360}	{}	t	2022-12-14 20:06:08.862542	2022-12-14 20:06:08.862542
116	212	200	300	{200,400,800}	{}	t	2022-12-14 20:06:08.864585	2022-12-14 20:06:08.864585
117	213	180	270	{180,360,760}	{}	t	2022-12-14 20:06:08.866645	2022-12-14 20:06:08.866645
118	214	180	280	{180,380,760}	{}	t	2022-12-14 20:06:08.868899	2022-12-14 20:06:08.868899
119	1071	140	210	{140,280,540}	{}	t	2022-12-14 20:06:08.871679	2022-12-14 20:06:08.871679
120	222	140	200	{140,260,520}	{}	t	2022-12-14 20:06:08.87403	2022-12-14 20:06:08.87403
121	1074	140	200	{140,260,500}	{}	t	2022-12-14 20:06:08.87616	2022-12-14 20:06:08.87616
122	223	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.878506	2022-12-14 20:06:08.878506
123	1077	200	300	{200,400,800}	{}	t	2022-12-14 20:06:08.880429	2022-12-14 20:06:08.880429
124	1078	120	180	{120,240,500}	{}	t	2022-12-14 20:06:08.882377	2022-12-14 20:06:08.882377
125	1079	200	300	{200,400,800}	{}	t	2022-12-14 20:06:08.884511	2022-12-14 20:06:08.884511
126	226	180	270	{180,360,720}	{}	t	2022-12-14 20:06:08.886888	2022-12-14 20:06:08.886888
127	227	250	375	{250,500,960}	{}	t	2022-12-14 20:06:08.889831	2022-12-14 20:06:08.889831
128	1084	200	300	{200,400,760}	{}	t	2022-12-14 20:06:08.892203	2022-12-14 20:06:08.892203
129	230	240	370	{240,500}	{}	t	2022-12-14 20:06:08.894392	2022-12-14 20:06:08.894392
130	231	240	370	{240,500}	{}	t	2022-12-14 20:06:08.89684	2022-12-14 20:06:08.89684
131	232	300	440	{300,580}	{}	t	2022-12-14 20:06:08.899161	2022-12-14 20:06:08.899161
132	234	200	300	{200,400,780}	{}	t	2022-12-14 20:06:08.902022	2022-12-14 20:06:08.902022
133	1748	300	440	{300,580}	{}	t	2022-12-14 20:06:08.904739	2022-12-14 20:06:08.904739
134	1087	200	290	{200,380}	{}	t	2022-12-14 20:06:08.907429	2022-12-14 20:06:08.907429
135	235	200	290	{200,380}	{}	t	2022-12-14 20:06:08.909572	2022-12-14 20:06:08.909572
136	1089	200	300	{200,400}	{}	t	2022-12-14 20:06:08.911842	2022-12-14 20:06:08.911842
137	244	100	160	{100,220,440}	{}	t	2022-12-14 20:06:08.914322	2022-12-14 20:06:08.914322
138	245	100	160	{100,220,440}	{}	t	2022-12-14 20:06:08.916874	2022-12-14 20:06:08.916874
139	246	100	160	{100,220,440}	{}	t	2022-12-14 20:06:08.919347	2022-12-14 20:06:08.919347
140	247	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.922629	2022-12-14 20:06:08.922629
141	248	100	160	{100,220,440}	{}	t	2022-12-14 20:06:08.925041	2022-12-14 20:06:08.925041
142	1762	180	270	{180,360}	{}	t	2022-12-14 20:06:08.927285	2022-12-14 20:06:08.927285
143	1763	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.930008	2022-12-14 20:06:08.930008
144	1764	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.93239	2022-12-14 20:06:08.93239
145	1765	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.936226	2022-12-14 20:06:08.936226
146	251	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.938731	2022-12-14 20:06:08.938731
147	252	220	330	{220,440}	{}	t	2022-12-14 20:06:08.941663	2022-12-14 20:06:08.941663
148	253	220	330	{220,440}	{}	t	2022-12-14 20:06:08.944572	2022-12-14 20:06:08.944572
149	254	220	330	{220,440}	{}	t	2022-12-14 20:06:08.947361	2022-12-14 20:06:08.947361
150	262	220	330	{220,440}	{}	t	2022-12-14 20:06:08.950698	2022-12-14 20:06:08.950698
151	263	220	330	{220,440}	{}	t	2022-12-14 20:06:08.953501	2022-12-14 20:06:08.953501
152	264	220	330	{220,440}	{}	t	2022-12-14 20:06:08.956008	2022-12-14 20:06:08.956008
153	266	220	330	{220,440}	{}	t	2022-12-14 20:06:08.958292	2022-12-14 20:06:08.958292
154	273	100	160	{100,220,440}	{}	t	2022-12-14 20:06:08.960977	2022-12-14 20:06:08.960977
155	274	180	270	{180,360,660}	{}	t	2022-12-14 20:06:08.964638	2022-12-14 20:06:08.964638
156	275	180	270	{180,360,680}	{}	t	2022-12-14 20:06:08.969478	2022-12-14 20:06:08.969478
157	276	100	160	{100,220,400}	{}	t	2022-12-14 20:06:08.9741	2022-12-14 20:06:08.9741
158	277	100	160	{100,220,400}	{}	t	2022-12-14 20:06:08.978019	2022-12-14 20:06:08.978019
159	278	180	270	{180,360,680}	{}	t	2022-12-14 20:06:08.982165	2022-12-14 20:06:08.982165
160	279	100	160	{100,220,400}	{}	t	2022-12-14 20:06:08.987253	2022-12-14 20:06:08.987253
161	281	100	160	{100,220,400}	{}	t	2022-12-14 20:06:08.991986	2022-12-14 20:06:08.991986
162	282	120	180	{120,240,480}	{}	t	2022-12-14 20:06:08.996705	2022-12-14 20:06:08.996705
163	1783	120	180	{120,240,480}	{}	t	2022-12-14 20:06:09.002965	2022-12-14 20:06:09.002965
164	1784	180	270	{180,360,680}	{}	t	2022-12-14 20:06:09.009362	2022-12-14 20:06:09.009362
165	1785	200	300	{200,400}	{}	t	2022-12-14 20:06:09.01142	2022-12-14 20:06:09.01142
166	1786	100	160	{100,220,400}	{}	t	2022-12-14 20:06:09.013588	2022-12-14 20:06:09.013588
167	1787	100	160	{100,220,400}	{}	t	2022-12-14 20:06:09.016229	2022-12-14 20:06:09.016229
168	286	100	160	{100,220,400}	{}	t	2022-12-14 20:06:09.018636	2022-12-14 20:06:09.018636
169	1794	180	270	{180,360}	{}	t	2022-12-14 20:06:09.021113	2022-12-14 20:06:09.021113
170	1796	200	290	{200,380}	{}	t	2022-12-14 20:06:09.023585	2022-12-14 20:06:09.023585
171	1798	240	360	{240,480}	{}	t	2022-12-14 20:06:09.025823	2022-12-14 20:06:09.025823
172	1799	207	293.5	{207,380}	{}	t	2022-12-14 20:06:09.028006	2022-12-14 20:06:09.028006
173	1800	207	306.5	{207,406}	{}	t	2022-12-14 20:06:09.030339	2022-12-14 20:06:09.030339
174	1801	207	293.5	{207,380}	{}	t	2022-12-14 20:06:09.032559	2022-12-14 20:06:09.032559
175	1802	207	293.5	{207,380}	{}	t	2022-12-14 20:06:09.034814	2022-12-14 20:06:09.034814
176	1803	207	293.5	{207,380}	{}	t	2022-12-14 20:06:09.037302	2022-12-14 20:06:09.037302
177	306	140	200	{140,260,560}	{}	t	2022-12-14 20:06:09.040196	2022-12-14 20:06:09.040196
178	307	140	200	{140,260,560}	{}	t	2022-12-14 20:06:09.042498	2022-12-14 20:06:09.042498
179	1812	260	410	{260,560}	{}	t	2022-12-14 20:06:09.044805	2022-12-14 20:06:09.044805
180	1147	140	200	{140,260,520}	{}	t	2022-12-14 20:06:09.04787	2022-12-14 20:06:09.04787
181	1148	120	170	{120,220,440}	{}	t	2022-12-14 20:06:09.051041	2022-12-14 20:06:09.051041
182	1150	240	360	{240,480}	{}	t	2022-12-14 20:06:09.053627	2022-12-14 20:06:09.053627
183	1151	100	155	{100,210,440}	{}	t	2022-12-14 20:06:09.056232	2022-12-14 20:06:09.056232
184	313	100	155	{100,210,440}	{}	t	2022-12-14 20:06:09.059017	2022-12-14 20:06:09.059017
185	1821	100	155	{100,210,420}	{}	t	2022-12-14 20:06:09.061535	2022-12-14 20:06:09.061535
186	1154	210	315	{210,420}	{38,0}	t	2022-12-14 20:06:09.063674	2022-12-14 20:06:09.063674
187	319	207	293.5	{207,380}	{}	t	2022-12-14 20:06:09.065936	2022-12-14 20:06:09.065936
188	321	207	303.5	{207,400}	{}	t	2022-12-14 20:06:09.068877	2022-12-14 20:06:09.068877
189	323	207	293.5	{207,380}	{}	t	2022-12-14 20:06:09.07174	2022-12-14 20:06:09.07174
190	334	210	317.5	{210,425}	{}	t	2022-12-14 20:06:09.074304	2022-12-14 20:06:09.074304
191	335	210	325	{210,440}	{}	t	2022-12-14 20:06:09.07806	2022-12-14 20:06:09.07806
192	336	210	325	{210,440}	{}	t	2022-12-14 20:06:09.082547	2022-12-14 20:06:09.082547
193	337	210	325	{210,440}	{38,0}	t	2022-12-14 20:06:09.086994	2022-12-14 20:06:09.086994
194	338	210	325	{210,440}	{}	t	2022-12-14 20:06:09.091391	2022-12-14 20:06:09.091391
195	339	210	325	{210,440}	{}	t	2022-12-14 20:06:09.095463	2022-12-14 20:06:09.095463
196	340	210	325	{210,440}	{}	t	2022-12-14 20:06:09.099649	2022-12-14 20:06:09.099649
197	341	210	335	{210,460}	{}	t	2022-12-14 20:06:09.104405	2022-12-14 20:06:09.104405
198	342	210	325	{210,440}	{}	t	2022-12-14 20:06:09.110561	2022-12-14 20:06:09.110561
199	1837	240	360	{240,480}	{}	t	2022-12-14 20:06:09.113404	2022-12-14 20:06:09.113404
200	1839	200	290	{200,380,740}	{}	t	2022-12-14 20:06:09.11564	2022-12-14 20:06:09.11564
201	1840	240	360	{240,480}	{}	t	2022-12-14 20:06:09.118349	2022-12-14 20:06:09.118349
202	1843	180	270	{180,360,680}	{}	t	2022-12-14 20:06:09.120688	2022-12-14 20:06:09.120688
203	1844	180	270	{180,360,680}	{}	t	2022-12-14 20:06:09.123395	2022-12-14 20:06:09.123395
204	1845	200	290	{200,380,720}	{}	t	2022-12-14 20:06:09.125987	2022-12-14 20:06:09.125987
205	1846	200	300	{200,400,720}	{}	t	2022-12-14 20:06:09.128149	2022-12-14 20:06:09.128149
206	373	200	300	{200,400,800}	{}	t	2022-12-14 20:06:09.131106	2022-12-14 20:06:09.131106
207	374	180	270	{180,360,680}	{}	t	2022-12-14 20:06:09.133862	2022-12-14 20:06:09.133862
208	376	180	270	{180,360,680}	{}	t	2022-12-14 20:06:09.136191	2022-12-14 20:06:09.136191
209	378	180	270	{180,360,680}	{}	t	2022-12-14 20:06:09.1388	2022-12-14 20:06:09.1388
210	1212	180	260	{180,340}	{}	t	2022-12-14 20:06:09.141494	2022-12-14 20:06:09.141494
211	380	200	300	{200,400,760}	{}	t	2022-12-14 20:06:09.143873	2022-12-14 20:06:09.143873
212	1858	180	270	{180,360,720}	{}	t	2022-12-14 20:06:09.146657	2022-12-14 20:06:09.146657
213	392	250	375	{250,500,920}	{}	t	2022-12-14 20:06:09.149603	2022-12-14 20:06:09.149603
214	395	280	400	{280,520}	{}	t	2022-12-14 20:06:09.152164	2022-12-14 20:06:09.152164
215	396	260	380	{260,500}	{}	t	2022-12-14 20:06:09.154513	2022-12-14 20:06:09.154513
216	397	180	270	{180,360,800}	{}	t	2022-12-14 20:06:09.157238	2022-12-14 20:06:09.157238
217	398	220	330	{220,440}	{}	t	2022-12-14 20:06:09.159434	2022-12-14 20:06:09.159434
218	399	240	360	{240,480}	{}	t	2022-12-14 20:06:09.161888	2022-12-14 20:06:09.161888
219	400	220	330	{220,440}	{}	t	2022-12-14 20:06:09.164486	2022-12-14 20:06:09.164486
220	401	250	375	{250,500}	{}	t	2022-12-14 20:06:09.166701	2022-12-14 20:06:09.166701
221	1869	220	330	{220,440,800}	{}	t	2022-12-14 20:06:09.169379	2022-12-14 20:06:09.169379
222	1870	200	300	{200,400,760}	{}	t	2022-12-14 20:06:09.172068	2022-12-14 20:06:09.172068
223	1237	180	270	{180,360,760}	{}	t	2022-12-14 20:06:09.174459	2022-12-14 20:06:09.174459
224	1238	180	270	{180,360,640}	{}	t	2022-12-14 20:06:09.176893	2022-12-14 20:06:09.176893
225	1239	180	270	{180,360}	{}	t	2022-12-14 20:06:09.179392	2022-12-14 20:06:09.179392
226	1240	180	270	{180,360}	{}	t	2022-12-14 20:06:09.18159	2022-12-14 20:06:09.18159
227	1875	200	300	{200,400,760}	{}	t	2022-12-14 20:06:09.183803	2022-12-14 20:06:09.183803
228	1241	200	290	{200,380}	{}	t	2022-12-14 20:06:09.186044	2022-12-14 20:06:09.186044
229	1242	200	290	{200,380,760}	{}	t	2022-12-14 20:06:09.188641	2022-12-14 20:06:09.188641
230	426	180	270	{180,360}	{}	t	2022-12-14 20:06:09.191008	2022-12-14 20:06:09.191008
231	428	180	270	{180,360}	{}	t	2022-12-14 20:06:09.193515	2022-12-14 20:06:09.193515
232	429	140	220	{140,300}	{}	t	2022-12-14 20:06:09.195908	2022-12-14 20:06:09.195908
233	430	180	270	{180,360}	{}	t	2022-12-14 20:06:09.198507	2022-12-14 20:06:09.198507
234	433	180	270	{180,360}	{}	t	2022-12-14 20:06:09.201297	2022-12-14 20:06:09.201297
235	1254	180	270	{180,360}	{}	t	2022-12-14 20:06:09.203969	2022-12-14 20:06:09.203969
236	436	180	270	{180,360}	{}	t	2022-12-14 20:06:09.2067	2022-12-14 20:06:09.2067
237	1257	180	270	{180,360}	{}	t	2022-12-14 20:06:09.209078	2022-12-14 20:06:09.209078
238	438	180	270	{180,360}	{}	t	2022-12-14 20:06:09.211401	2022-12-14 20:06:09.211401
239	1259	220	330	{220,440}	{}	t	2022-12-14 20:06:09.213885	2022-12-14 20:06:09.213885
240	439	100	160	{100,220,440}	{}	t	2022-12-14 20:06:09.216457	2022-12-14 20:06:09.216457
241	1896	180	270	{180,360}	{}	t	2022-12-14 20:06:09.218975	2022-12-14 20:06:09.218975
242	444	120	180	{120,240,460}	{}	t	2022-12-14 20:06:09.222016	2022-12-14 20:06:09.222016
243	445	100	160	{100,220,440}	{}	t	2022-12-14 20:06:09.224328	2022-12-14 20:06:09.224328
244	449	120	180	{120,240,460}	{}	t	2022-12-14 20:06:09.226548	2022-12-14 20:06:09.226548
245	1270	100	150	{100,200,400}	{}	t	2022-12-14 20:06:09.228864	2022-12-14 20:06:09.228864
246	1906	100	140	{100,180,360}	{}	t	2022-12-14 20:06:09.231074	2022-12-14 20:06:09.231074
247	450	120	190	{120,260,520}	{}	t	2022-12-14 20:06:09.233072	2022-12-14 20:06:09.233072
248	451	160	240	{160,320,600}	{}	t	2022-12-14 20:06:09.235362	2022-12-14 20:06:09.235362
249	452	140	220	{140,300,600}	{}	t	2022-12-14 20:06:09.23836	2022-12-14 20:06:09.23836
250	1274	200	290	{200,380,720}	{}	t	2022-12-14 20:06:09.241357	2022-12-14 20:06:09.241357
251	453	170	255	{170,340,680}	{}	t	2022-12-14 20:06:09.243817	2022-12-14 20:06:09.243817
252	455	170	255	{170,340,680}	{}	t	2022-12-14 20:06:09.246915	2022-12-14 20:06:09.246915
253	456	150	225	{150,300}	{}	t	2022-12-14 20:06:09.249781	2022-12-14 20:06:09.249781
254	458	140	220	{140,300}	{}	t	2022-12-14 20:06:09.2526	2022-12-14 20:06:09.2526
255	470	220	330	{220,440}	{}	t	2022-12-14 20:06:09.255271	2022-12-14 20:06:09.255271
256	480	170	255	{170,340}	{}	t	2022-12-14 20:06:09.257717	2022-12-14 20:06:09.257717
257	481	180	270	{180,360}	{}	t	2022-12-14 20:06:09.260231	2022-12-14 20:06:09.260231
258	482	200	290	{200,380}	{}	t	2022-12-14 20:06:09.262274	2022-12-14 20:06:09.262274
259	483	200	290	{200,380}	{}	t	2022-12-14 20:06:09.264885	2022-12-14 20:06:09.264885
260	1298	200	300	{200,400}	{}	t	2022-12-14 20:06:09.26757	2022-12-14 20:06:09.26757
261	484	200	300	{200,400}	{}	t	2022-12-14 20:06:09.270314	2022-12-14 20:06:09.270314
262	485	100	170	{100,240,480}	{}	t	2022-12-14 20:06:09.272976	2022-12-14 20:06:09.272976
263	1302	220	330	{220,440}	{}	t	2022-12-14 20:06:09.275301	2022-12-14 20:06:09.275301
264	491	180	270	{180,360}	{}	t	2022-12-14 20:06:09.277793	2022-12-14 20:06:09.277793
265	492	180	260	{180,340}	{}	t	2022-12-14 20:06:09.280244	2022-12-14 20:06:09.280244
266	493	200	290	{200,380}	{}	t	2022-12-14 20:06:09.283366	2022-12-14 20:06:09.283366
267	494	180	270	{180,360}	{}	t	2022-12-14 20:06:09.285903	2022-12-14 20:06:09.285903
268	495	180	260	{180,340}	{}	t	2022-12-14 20:06:09.288441	2022-12-14 20:06:09.288441
269	496	180	270	{180,360}	{}	t	2022-12-14 20:06:09.290911	2022-12-14 20:06:09.290911
270	497	180	270	{180,360}	{}	t	2022-12-14 20:06:09.293492	2022-12-14 20:06:09.293492
271	498	180	270	{180,360}	{}	t	2022-12-14 20:06:09.295944	2022-12-14 20:06:09.295944
272	1941	180	270	{180,360}	{}	t	2022-12-14 20:06:09.298279	2022-12-14 20:06:09.298279
273	1313	180	270	{180,360}	{}	t	2022-12-14 20:06:09.300872	2022-12-14 20:06:09.300872
274	500	200	300	{200,400}	{}	t	2022-12-14 20:06:09.303886	2022-12-14 20:06:09.303886
275	501	180	270	{180,360}	{}	t	2022-12-14 20:06:09.306726	2022-12-14 20:06:09.306726
276	502	180	270	{180,360}	{}	t	2022-12-14 20:06:09.308751	2022-12-14 20:06:09.308751
277	503	180	270	{180,360}	{}	t	2022-12-14 20:06:09.31107	2022-12-14 20:06:09.31107
278	504	180	270	{180,360}	{}	t	2022-12-14 20:06:09.313906	2022-12-14 20:06:09.313906
279	505	180	270	{180,360}	{}	t	2022-12-14 20:06:09.31895	2022-12-14 20:06:09.31895
280	506	180	260	{180,340}	{}	t	2022-12-14 20:06:09.323364	2022-12-14 20:06:09.323364
281	509	180	270	{180,360}	{}	t	2022-12-14 20:06:09.327108	2022-12-14 20:06:09.327108
282	511	180	270	{180,360}	{}	t	2022-12-14 20:06:09.329605	2022-12-14 20:06:09.329605
283	513	180	270	{180,360}	{}	t	2022-12-14 20:06:09.331834	2022-12-14 20:06:09.331834
284	514	180	270	{180,360}	{}	t	2022-12-14 20:06:09.334081	2022-12-14 20:06:09.334081
285	515	180	270	{180,360}	{}	t	2022-12-14 20:06:09.336483	2022-12-14 20:06:09.336483
286	1960	180	270	{180,360}	{}	t	2022-12-14 20:06:09.339234	2022-12-14 20:06:09.339234
287	546	180	270	{180,360}	{}	t	2022-12-14 20:06:09.341437	2022-12-14 20:06:09.341437
288	547	200	300	{200,400,800}	{}	t	2022-12-14 20:06:09.344017	2022-12-14 20:06:09.344017
289	548	160	240	{160,320,640}	{}	t	2022-12-14 20:06:09.346622	2022-12-14 20:06:09.346622
290	549	200	300	{200,400,800}	{}	t	2022-12-14 20:06:09.34913	2022-12-14 20:06:09.34913
291	551	180	270	{180,360,720}	{}	t	2022-12-14 20:06:09.351979	2022-12-14 20:06:09.351979
292	552	200	280	{200,360,720}	{}	t	2022-12-14 20:06:09.354712	2022-12-14 20:06:09.354712
293	553	120	185	{120,250,500}	{}	t	2022-12-14 20:06:09.357027	2022-12-14 20:06:09.357027
294	554	180	270	{180,360}	{}	t	2022-12-14 20:06:09.35938	2022-12-14 20:06:09.35938
295	1972	180	270	{180,360,720}	{}	t	2022-12-14 20:06:09.361939	2022-12-14 20:06:09.361939
296	556	120	180	{120,240,480}	{}	t	2022-12-14 20:06:09.364567	2022-12-14 20:06:09.364567
297	558	200	300	{200,400,800}	{}	t	2022-12-14 20:06:09.367175	2022-12-14 20:06:09.367175
298	560	200	300	{200,400,680}	{}	t	2022-12-14 20:06:09.369803	2022-12-14 20:06:09.369803
299	561	200	300	{200,400,760}	{}	t	2022-12-14 20:06:09.372394	2022-12-14 20:06:09.372394
300	564	160	240	{160,320,640}	{}	t	2022-12-14 20:06:09.374754	2022-12-14 20:06:09.374754
301	565	200	280	{200,360,720}	{}	t	2022-12-14 20:06:09.3769	2022-12-14 20:06:09.3769
302	1986	120	180	{120,240,480}	{}	t	2022-12-14 20:06:09.379137	2022-12-14 20:06:09.379137
303	568	140	210	{140,280,540}	{}	t	2022-12-14 20:06:09.381221	2022-12-14 20:06:09.381221
304	1991	220	320	{220,420,840}	{}	t	2022-12-14 20:06:09.383498	2022-12-14 20:06:09.383498
\.


--
-- Data for Name: leaf_communities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.leaf_communities (id, population_id, leaf_otu_1, leaf_otu_2, leaf_otu_3, leaf_otu_4, leaf_otu_5, leaf_otu_6, leaf_otu_8, leaf_otu_9, leaf_otu_10, leaf_otu_11, leaf_otu_12, leaf_otu_13, leaf_otu_14, leaf_otu_15, leaf_otu_16, leaf_otu_17, leaf_otu_18, leaf_otu_22, leaf_otu_23, leaf_otu_25, leaf_otu_27, leaf_otu_28, leaf_otu_29, leaf_otu_30, leaf_otu_31, leaf_otu_32, leaf_otu_33, leaf_otu_34, leaf_otu_35, leaf_otu_36, leaf_otu_37, leaf_otu_38, leaf_otu_42, leaf_otu_44, leaf_otu_51, leaf_otu_52, leaf_otu_57, leaf_otu_58, leaf_otu_63, leaf_otu_66, leaf_otu_67, leaf_otu_68, leaf_otu_70, leaf_otu_73, leaf_otu_74, leaf_otu_77, leaf_otu_78, leaf_otu_84, leaf_otu_89, leaf_otu_93, leaf_otu_94, leaf_otu_96, leaf_otu_100, leaf_otu_101, leaf_otu_109, leaf_otu_115, leaf_otu_116, leaf_otu_117, leaf_otu_120, leaf_otu_137, leaf_otu_152, leaf_otu_157, leaf_otu_179, leaf_otu_246, leaf_otu_365, leaf_microbiota_richness, leaf_microbiota_shannon, leaf_microbiota_pcoa1, leaf_microbiota_pcoa2, leaf_pathobiota_richness, leaf_pathobiota_shannon, leaf_pathobiota_pcoa1, leaf_pathobiota_pcoa2, created_at, updated_at) FROM stdin;
1	1	t	t	t	f	t	t	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	13.07456016	2.277505138	0.3392549338	0.05156025459	2.91958673	0.7510572654	0.07896689394	-0.114477726	2022-12-14 20:05:51.908054	2022-12-14 20:05:51.908054
2	11	t	f	t	t	t	t	f	t	f	t	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	11.46311016	1.985845138	0.07523493384	0.2296402546	2.33298673	0.3204572654	0.04828689394	0.03573227401	2022-12-14 20:05:51.928259	2022-12-14 20:05:51.928259
3	19	t	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	11.37722016	2.158405138	0.2026349338	0.2275402546	2.15138673	0.4144072654	0.009456893941	-0.155077726	2022-12-14 20:05:51.936127	2022-12-14 20:05:51.936127
4	2268	f	f	t	t	f	f	f	f	f	f	t	t	t	t	f	f	t	t	t	t	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	12.29246016	2.168205138	0.4362549338	0.2103402546	2.60346973	0.4205672654	0.1339468939	-0.09071772599	2022-12-14 20:05:51.944355	2022-12-14 20:05:51.944355
5	2269	t	t	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	11.77966016	1.898905138	0.08711493384	-0.08847974541	2.30298673	0.4341372654	0.04051689394	0.04826227401	2022-12-14 20:05:51.953317	2022-12-14 20:05:51.953317
6	27	t	t	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.33342016	1.928905138	0.1347949338	-0.1382597454	2.41848673	0.3811572654	-0.06636310606	-0.01736772599	2022-12-14 20:05:51.962952	2022-12-14 20:05:51.962952
7	2271	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.74726016	2.183205138	0.1345649338	-0.1085597454	3.15558673	0.6769572654	0.07643689394	-0.006887725993	2022-12-14 20:05:51.972218	2022-12-14 20:05:51.972218
8	2272	f	t	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.89266016	1.865305138	0.1576249338	-0.06789974541	2.88498673	0.5312272654	0.1836368939	-0.136067726	2022-12-14 20:05:51.985027	2022-12-14 20:05:51.985027
9	2273	t	f	t	t	t	t	f	f	f	t	f	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	11.07536016	2.130425138	-0.02654506616	-0.1951597454	2.47828673	0.6525572654	0.09475689394	0.09356227401	2022-12-14 20:05:51.995831	2022-12-14 20:05:51.995831
10	2274	t	f	t	t	t	t	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.31116016	2.013055138	-0.09054506616	-0.3941597454	2.38188673	0.2982572654	0.05013689394	0.04366227401	2022-12-14 20:05:52.002258	2022-12-14 20:05:52.002258
11	2275	t	f	t	t	t	t	f	t	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	10.67826016	2.044459138	-0.05504506616	-0.3558597454	2.72338673	0.5541572654	0.08035689394	-0.03179772599	2022-12-14 20:05:52.009372	2022-12-14 20:05:52.009372
12	2276	t	f	f	f	t	t	f	f	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.58386016	2.052845138	-0.07824506616	-0.3566597454	3.46528673	0.8803572654	0.09743689394	0.03928227401	2022-12-14 20:05:52.020089	2022-12-14 20:05:52.020089
13	2277	t	f	t	t	t	t	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.96896016	2.120265138	-0.04154506616	-0.3224597454	2.51472673	0.6437572654	-0.01234310606	0.03862227401	2022-12-14 20:05:52.033396	2022-12-14 20:05:52.033396
14	2278	f	t	t	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	12.19036016	2.002825138	0.1829349338	-0.06297974541	2.32778673	0.4579772654	0.04055689394	0.01082227401	2022-12-14 20:05:52.044033	2022-12-14 20:05:52.044033
15	2279	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.457160158	1.783505138	0.1782549338	-0.05899974541	2.80088673	0.5555072654	0.1840368939	-0.06794772599	2022-12-14 20:05:52.050688	2022-12-14 20:05:52.050688
16	2280	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.058587	2022-12-14 20:05:52.058587
17	2281	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	14.15246016	2.354105138	0.1557049338	-0.1039597454	2.12808673	0.3808572654	-0.05186310606	-0.08604772599	2022-12-14 20:05:52.069636	2022-12-14 20:05:52.069636
18	2282	t	t	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.80616016	1.988675138	0.1347649338	-0.09485974541	2.25948673	0.4238872654	0.1976368939	-0.08157772599	2022-12-14 20:05:52.077188	2022-12-14 20:05:52.077188
19	2283	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	13.48806016	2.349405138	0.1894649338	-0.05968974541	2.18618673	0.3813572654	0.1532068939	-0.01208772599	2022-12-14 20:05:52.083853	2022-12-14 20:05:52.083853
20	37	t	t	t	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.956660158	1.950615138	0.2281549338	0.02657025459	3.16188673	0.6152572654	0.003806893941	-0.207037726	2022-12-14 20:05:52.090766	2022-12-14 20:05:52.090766
21	2285	f	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.59526016	2.112205138	0.2944549338	0.1050402546	2.17058673	0.4030472654	-0.06586310606	-0.115827726	2022-12-14 20:05:52.100092	2022-12-14 20:05:52.100092
22	46	f	f	t	t	f	f	t	f	t	f	t	f	t	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	12.30396016	2.204605138	0.3143549338	0.1078402546	2.76138673	0.5668472654	0.09714689394	-0.123167726	2022-12-14 20:05:52.107026	2022-12-14 20:05:52.107026
23	2287	t	t	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	14.86976016	2.481005138	0.3121549338	0.1519402546	3.44428673	0.4088272654	0.004146893941	0.03816227401	2022-12-14 20:05:52.11568	2022-12-14 20:05:52.11568
24	2288	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	11.37049016	2.162505138	0.1900449338	-0.02957974541	2.80648673	0.6577572654	0.03362689394	-0.117077726	2022-12-14 20:05:52.123012	2022-12-14 20:05:52.123012
25	2289	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	8.984660158	1.805205138	0.1735649338	-0.03812974541	2.50930673	0.6311572654	0.04466689394	-0.04901872599	2022-12-14 20:05:52.135036	2022-12-14 20:05:52.135036
26	2290	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.29206016	2.081055138	0.2226549338	0.1033402546	2.46698673	0.4430472654	0.1902368939	-0.03025772599	2022-12-14 20:05:52.145581	2022-12-14 20:05:52.145581
27	56	t	t	t	t	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	t	f	f	t	f	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	12.46306016	2.290305138	0.3251549338	0.08751025459	2.88638673	0.4811172654	0.06306689394	0.003082274007	2022-12-14 20:05:52.151817	2022-12-14 20:05:52.151817
28	2292	f	f	t	t	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.85236016	2.083545138	0.1585549338	-0.08936974541	2.41688673	0.4864872654	-0.1289631061	-0.108917726	2022-12-14 20:05:52.158802	2022-12-14 20:05:52.158802
29	2293	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	15.10366016	2.443205138	0.1261449338	-0.02378974541	2.42158673	0.5066032654	0.07778689394	-0.168337726	2022-12-14 20:05:52.166773	2022-12-14 20:05:52.166773
30	2294	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.479860158	1.780005138	0.3087549338	0.1635402546	2.12118673	0.4187672654	0.008666893941	0.122762274	2022-12-14 20:05:52.173432	2022-12-14 20:05:52.173432
31	67	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	t	f	f	t	f	f	f	11.67166016	2.214305138	0.2532549338	-0.02834974541	2.48988673	0.4776272654	-0.03526310606	-0.131857726	2022-12-14 20:05:52.185163	2022-12-14 20:05:52.185163
32	2296	t	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	11.45091016	2.172705138	0.1918849338	0.07019025459	2.55891673	0.6430572654	0.08421389394	-0.09361772599	2022-12-14 20:05:52.197787	2022-12-14 20:05:52.197787
33	2297	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	14.25456016	2.266105138	0.1597149338	-0.02573974541	1.92038673	0.3281572654	0.05515689394	-0.01067772599	2022-12-14 20:05:52.209322	2022-12-14 20:05:52.209322
34	2298	f	t	t	t	f	f	t	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.47626016	1.850505138	0.1346849338	-0.06651974541	2.21038673	0.3640572654	0.2185368939	-0.03724772599	2022-12-14 20:05:52.221413	2022-12-14 20:05:52.221413
35	2299	t	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.29946016	2.188505138	0.1703549338	-0.01787974541	4.31938673	0.5865572654	0.1859368939	-0.05573272599	2022-12-14 20:05:52.22871	2022-12-14 20:05:52.22871
36	77	f	f	t	t	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	13.01046016	2.325605138	0.1777449338	-0.06668974541	2.27748673	0.4536172654	0.2629368939	-0.07557772599	2022-12-14 20:05:52.234885	2022-12-14 20:05:52.234885
37	80	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.12596016	2.222605138	0.1901449338	-0.06125974541	2.80688673	0.4846672654	0.07073689394	-0.06635772599	2022-12-14 20:05:52.242637	2022-12-14 20:05:52.242637
38	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.250359	2022-12-14 20:05:52.250359
39	2303	f	f	t	t	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	13.38366016	2.252605138	0.3227549338	0.09186025459	1.75758673	0.2830572654	0.02541689394	0.114062274	2022-12-14 20:05:52.256876	2022-12-14 20:05:52.256876
40	92	f	f	t	t	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	11.30665016	2.205105138	0.3859549338	0.1343402546	2.02788673	0.3339572654	0.2038368939	-0.08878772599	2022-12-14 20:05:52.265607	2022-12-14 20:05:52.265607
41	102	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	11.45732016	2.172705138	0.1921149338	-0.06963974541	2.46828673	0.5610672654	-0.05826310606	0.02913227401	2022-12-14 20:05:52.275991	2022-12-14 20:05:52.275991
42	111	f	f	t	t	t	t	t	t	f	f	f	t	t	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.10976016	2.134195138	0.4156549338	-0.02467974541	2.24978673	0.4008672654	0.1201468939	-0.208437726	2022-12-14 20:05:52.283228	2022-12-14 20:05:52.283228
43	2307	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.21786016	1.989505138	0.1727949338	-0.08725974541	2.75628673	0.4984972654	0.1357768939	-0.05985772599	2022-12-14 20:05:52.29073	2022-12-14 20:05:52.29073
44	2308	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.2987	2022-12-14 20:05:52.2987
45	2309	t	f	t	t	t	t	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	11.38383016	2.078885138	0.2282549338	-0.1278597454	3.05468673	0.7434572654	0.07627689394	-0.01741772599	2022-12-14 20:05:52.309679	2022-12-14 20:05:52.309679
46	121	f	f	t	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	9.527360158	1.883805138	0.2381549338	0.02836025459	2.78928673	0.6037572654	-0.1047631061	-0.03202772599	2022-12-14 20:05:52.317606	2022-12-14 20:05:52.317606
47	126	t	t	t	t	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	8.879760158	1.778905138	0.2112549338	-0.01888974541	3.92108673	0.8155572654	-0.07076310606	-0.181037726	2022-12-14 20:05:52.324366	2022-12-14 20:05:52.324366
48	2312	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	10.30036016	1.944475138	0.1385949338	-0.1113597454	2.14178673	0.4199072654	-0.02186310606	-0.141347726	2022-12-14 20:05:52.332735	2022-12-14 20:05:52.332735
49	136	t	f	t	t	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	10.32436016	1.876205138	-0.2792450662	-0.03886974541	2.17778673	0.3468572654	0.3091368939	-0.06499772599	2022-12-14 20:05:52.339728	2022-12-14 20:05:52.339728
50	2314	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.54956016	1.717705138	-0.5276450662	0.06485025459	2.80878673	0.5782972654	0.1856368939	-0.09327772599	2022-12-14 20:05:52.348024	2022-12-14 20:05:52.348024
51	2315	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.3557	2022-12-14 20:05:52.3557
52	145	t	f	t	t	t	t	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	10.52886016	2.045567138	-0.07644506616	-0.3936597454	2.60349473	0.6533572654	-0.03376310606	0.02341227401	2022-12-14 20:05:52.364476	2022-12-14 20:05:52.364476
53	154	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.02996016	1.729105138	-0.3200450662	-0.01419974541	2.32808673	0.5088092654	0.04387689394	-0.08655772599	2022-12-14 20:05:52.374848	2022-12-14 20:05:52.374848
54	2318	t	f	f	t	f	f	f	f	t	f	f	t	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	11.07346016	1.872705138	-0.1566450662	0.2150402546	2.24948673	0.4423172654	-0.06986310606	-0.144337726	2022-12-14 20:05:52.381722	2022-12-14 20:05:52.381722
55	164	t	t	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	12.62956016	2.066925138	-0.1769450662	0.1739402546	2.41188673	0.3706572654	-0.06086310606	-0.08027772599	2022-12-14 20:05:52.390726	2022-12-14 20:05:52.390726
56	173	t	f	t	t	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.41986016	2.105555138	-0.04684506616	0.1847402546	1.76898673	0.2891572654	0.1922368939	-0.06352772599	2022-12-14 20:05:52.403098	2022-12-14 20:05:52.403098
57	2321	f	f	t	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	12.27826016	2.195905138	0.1760549338	-0.06241974541	1.96998673	0.3605572654	0.2331368939	-0.05955772599	2022-12-14 20:05:52.415528	2022-12-14 20:05:52.415528
58	183	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	10.05696016	1.974675138	0.1672549338	-0.08032974541	2.29358673	0.4207672654	0.06049689394	-0.03049772599	2022-12-14 20:05:52.43075	2022-12-14 20:05:52.43075
59	2323	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	10.91336016	2.106265138	0.1916749338	-0.07142974541	2.16528673	0.3790572654	0.03468689394	0.04066227401	2022-12-14 20:05:52.43784	2022-12-14 20:05:52.43784
60	2324	f	f	t	t	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	11.54826016	2.175005138	0.1956849338	-0.04044974541	2.55030673	0.5589572654	-0.01253310606	-0.01612772599	2022-12-14 20:05:52.444159	2022-12-14 20:05:52.444159
61	2325	t	t	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	12.27526016	2.229805138	0.1794349338	0.006068254587	2.40538673	0.3618572654	0.3211368939	-0.121037726	2022-12-14 20:05:52.450808	2022-12-14 20:05:52.450808
62	2326	t	f	t	f	t	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.28326016	2.137905138	0.1555749338	-0.1723597454	2.85368673	0.7686572654	0.1613768939	-0.01531772599	2022-12-14 20:05:52.46153	2022-12-14 20:05:52.46153
63	2327	t	f	t	t	t	t	f	t	t	f	t	t	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.83566016	2.217505138	0.1118249338	-0.3078597454	2.91458673	0.6094572654	-0.02666310606	-0.004407725993	2022-12-14 20:05:52.468341	2022-12-14 20:05:52.468341
64	1706	t	f	t	f	t	t	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.31693016	2.165205138	0.1381949338	-0.3473597454	2.45698673	0.4532672654	0.07565689394	-0.01681772599	2022-12-14 20:05:52.474703	2022-12-14 20:05:52.474703
65	191	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.52686016	2.016365138	0.2716549338	0.009061254587	1.89018673	0.3268572654	-0.04906310606	-0.03032772599	2022-12-14 20:05:52.483194	2022-12-14 20:05:52.483194
66	2330	f	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.33086016	2.045166138	0.2852549338	0.02950025459	1.90788673	0.3192572654	0.03441689394	0.105562274	2022-12-14 20:05:52.49013	2022-12-14 20:05:52.49013
67	201	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.502361	2022-12-14 20:05:52.502361
68	2332	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	9.888260158	1.981295138	-0.1208450662	0.05867025459	4.15448673	0.9399572654	-0.05366310606	-0.007387725993	2022-12-14 20:05:52.514714	2022-12-14 20:05:52.514714
69	211	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.06136016	2.260405138	0.2571549338	0.001103254587	2.00688673	0.3042572654	0.1360568939	-0.05210572599	2022-12-14 20:05:52.524922	2022-12-14 20:05:52.524922
70	221	t	f	t	t	t	t	f	t	f	t	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	10.42286016	1.769505138	0.1504149338	0.06490025459	2.11238673	0.4198472654	0.09339289394	-0.05985772599	2022-12-14 20:05:52.531579	2022-12-14 20:05:52.531579
71	226	t	f	t	t	t	f	t	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.50556016	2.203905138	0.2230549338	0.2016402546	3.11708673	0.5333472654	0.2420368939	-0.162037726	2022-12-14 20:05:52.539774	2022-12-14 20:05:52.539774
72	235	t	t	t	t	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	10.44276016	2.014185138	-0.2991450662	0.06867025459	4.48278673	0.9147572654	0.03488689394	0.01777227401	2022-12-14 20:05:52.548759	2022-12-14 20:05:52.548759
73	2337	t	t	t	f	t	t	f	t	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	12.71076016	2.026825138	0.1783349338	-0.005249745413	2.39778673	0.5320372654	-0.05576310606	0.01526227401	2022-12-14 20:05:52.554925	2022-12-14 20:05:52.554925
74	2338	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.561129	2022-12-14 20:05:52.561129
75	2339	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	t	f	t	f	t	f	f	f	f	t	13.63276016	2.353405138	0.1635249338	-0.09345974541	1.96388673	0.3173572654	0.1042768939	0.02555227401	2022-12-14 20:05:52.56945	2022-12-14 20:05:52.56945
76	241	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.17876016	2.186705138	0.3869549338	0.1204402546	2.19048673	0.3124572654	-0.01946310606	-0.005717725993	2022-12-14 20:05:52.576452	2022-12-14 20:05:52.576452
77	252	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	9.152460158	1.802305138	0.1823749338	0.03331025459	3.19658673	0.6286572654	-0.1019631061	-0.172837726	2022-12-14 20:05:52.58532	2022-12-14 20:05:52.58532
78	2342	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.146760158	1.877905138	0.1644649338	-0.05187974541	2.54076673	0.6319572654	0.2038368939	-0.04531772599	2022-12-14 20:05:52.596457	2022-12-14 20:05:52.596457
79	262	t	t	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.89056016	2.084175138	0.1606649338	-0.04545974541	2.92768673	0.7685572654	0.1270368939	0.007592274007	2022-12-14 20:05:52.608797	2022-12-14 20:05:52.608797
80	273	t	f	t	t	t	t	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	12.39296016	2.149505138	0.2164549338	-0.1125597454	4.26048673	0.8504572654	0.2767368939	-0.07717772599	2022-12-14 20:05:52.621312	2022-12-14 20:05:52.621312
81	2345	t	f	t	t	t	t	f	t	f	f	f	f	t	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	13.16106016	2.322605138	0.2296549338	-0.1679597454	3.50738673	0.7872572654	0.2453368939	-0.02077772599	2022-12-14 20:05:52.631694	2022-12-14 20:05:52.631694
82	2346	t	t	t	t	t	t	t	t	t	f	f	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	11.53056016	2.164405138	0.4669549338	0.07144025459	3.97578673	0.5124972654	0.1827868939	-0.193337726	2022-12-14 20:05:52.63819	2022-12-14 20:05:52.63819
83	2347	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.644661	2022-12-14 20:05:52.644661
84	283	t	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	10.17996016	1.702605138	-0.2876450662	0.2432402546	2.15808673	0.4346672654	0.2705368939	-0.165337726	2022-12-14 20:05:52.656883	2022-12-14 20:05:52.656883
85	2349	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.24276016	2.033855138	0.3278549338	0.08731025459	2.56245673	0.6462572654	0.1671568939	-0.07328772599	2022-12-14 20:05:52.666922	2022-12-14 20:05:52.666922
86	2350	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	11.33256016	2.196905138	0.2890549338	0.04626025459	2.56659673	0.4927672654	-0.09566310606	-0.143057726	2022-12-14 20:05:52.673651	2022-12-14 20:05:52.673651
87	2351	t	t	t	t	t	t	f	t	f	f	f	t	f	t	t	f	f	t	f	t	t	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	9.339860158	1.814205138	0.1680349338	-0.01232974541	2.61286673	0.5622572654	0.01718689394	-0.04455772599	2022-12-14 20:05:52.682123	2022-12-14 20:05:52.682123
88	2352	t	t	t	f	f	f	f	f	t	f	t	f	f	f	t	f	t	f	f	t	f	f	f	f	t	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	14.10256016	2.376105138	0.1920149338	-0.02518974541	2.80978673	0.5501472654	0.2026368939	-0.08174772599	2022-12-14 20:05:52.691602	2022-12-14 20:05:52.691602
89	2353	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	13.66906016	2.298805138	0.2952549338	-0.01763974541	2.41028673	0.5641072654	0.1889368939	-0.117617726	2022-12-14 20:05:52.698891	2022-12-14 20:05:52.698891
90	293	t	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.525060158	1.664305138	-0.2325450662	0.3031402546	2.92088673	0.3549572654	0.2013368939	-0.06515772599	2022-12-14 20:05:52.707571	2022-12-14 20:05:52.707571
91	2355	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	9.870660158	1.500005138	-0.3699450662	0.2090402546	1.99788673	0.3925572654	0.2432368939	-0.175437726	2022-12-14 20:05:52.716064	2022-12-14 20:05:52.716064
92	1794	t	t	t	t	f	f	t	f	f	f	f	t	t	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.39634516	2.185105138	0.4188549338	0.1470402546	2.92158673	0.6313572654	0.2491368939	-0.09327772599	2022-12-14 20:05:52.727908	2022-12-14 20:05:52.727908
93	2357	t	f	t	t	t	t	t	t	f	t	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.50566016	2.014625138	-0.1156450662	-0.4413597454	3.38548673	0.5435972654	0.2671368939	-0.06280772599	2022-12-14 20:05:52.734641	2022-12-14 20:05:52.734641
94	303	t	f	t	t	t	t	f	t	f	t	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	11.16926016	2.123975138	-0.1447450662	-0.4917597454	2.78188673	0.5226672654	0.1033768939	0.03621227401	2022-12-14 20:05:52.750598	2022-12-14 20:05:52.750598
95	313	t	f	t	f	f	f	f	f	f	t	f	f	t	f	t	f	t	f	f	t	f	f	t	f	t	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	14.70076016	2.271405138	0.3110549338	0.06615025459	2.39558673	0.3330572654	0.06400689394	-0.02107772599	2022-12-14 20:05:52.762733	2022-12-14 20:05:52.762733
96	314	t	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	8.685660158	1.228505138	-0.3962450662	0.2188402546	2.17028673	0.4464672654	-0.1064631061	-0.185837726	2022-12-14 20:05:52.769573	2022-12-14 20:05:52.769573
97	324	t	t	t	t	t	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.05516016	1.569205138	-0.3251450662	0.2587402546	1.94258673	0.2970572654	0.1493968939	-0.01164772599	2022-12-14 20:05:52.776541	2022-12-14 20:05:52.776541
98	2362	f	f	t	t	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	11.86136016	2.193805138	0.2124249338	-0.04134974541	2.34278673	0.4390972654	0.05255689394	-0.01677772599	2022-12-14 20:05:52.788187	2022-12-14 20:05:52.788187
99	2363	t	f	t	t	t	t	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.18646016	2.336405138	0.09881493384	-0.2275597454	2.45638673	0.6879572654	0.08749989394	-0.01281772599	2022-12-14 20:05:52.796333	2022-12-14 20:05:52.796333
100	2364	t	f	f	t	t	t	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	9.912160158	1.988305138	-0.1719450662	-0.4842597454	3.24968673	0.9053572654	-0.002483106059	0.09846227401	2022-12-14 20:05:52.805018	2022-12-14 20:05:52.805018
101	334	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.812923	2022-12-14 20:05:52.812923
102	2366	f	t	t	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.57406016	2.209605138	0.1165059338	-0.1296597454	2.27098673	0.4853672654	0.1518268939	-0.02580772599	2022-12-14 20:05:52.82497	2022-12-14 20:05:52.82497
103	2367	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	12.61026016	2.176805138	0.1334249338	-0.1279597454	2.57536673	0.4076372654	0.1966368939	-0.149447726	2022-12-14 20:05:52.837171	2022-12-14 20:05:52.837171
104	2368	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:52.853526	2022-12-14 20:05:52.853526
105	2369	f	t	t	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	11.33435016	1.903405138	0.1492649338	-0.04265974541	2.92948673	0.4996452654	0.2665368939	-0.07752772599	2022-12-14 20:05:52.863741	2022-12-14 20:05:52.863741
106	343	t	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	8.863360158	1.282405138	-0.4078450662	0.2329402546	1.54088673	0.2252572654	0.2722368939	-0.100607726	2022-12-14 20:05:52.874344	2022-12-14 20:05:52.874344
107	2371	t	t	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	9.108960158	1.478405138	-0.2965450662	0.2182402546	2.26038673	0.4012272654	0.2161368939	-0.04863072599	2022-12-14 20:05:52.880601	2022-12-14 20:05:52.880601
108	353	f	f	t	t	f	f	f	t	t	t	f	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.41869016	2.042070138	0.3852549338	0.1634402546	3.13528673	0.3692572654	0.1001468939	-0.108577726	2022-12-14 20:05:52.887494	2022-12-14 20:05:52.887494
109	363	f	f	t	t	f	f	t	f	t	f	t	t	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	10.78096016	2.094325138	0.2715549338	0.02869025459	1.96778673	0.3988572654	0.1146768939	0.01400227401	2022-12-14 20:05:52.894709	2022-12-14 20:05:52.894709
110	2374	f	f	t	t	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	t	f	t	f	f	f	t	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	t	f	13.41136016	2.295205138	0.2396549338	0.1458402546	2.60536673	0.4444772654	0.1656968939	-0.138527726	2022-12-14 20:05:52.903061	2022-12-14 20:05:52.903061
111	2375	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.95586016	2.119245138	0.2617549338	0.06634025459	2.46578673	0.4286872654	0.1910368939	-0.112077726	2022-12-14 20:05:52.911065	2022-12-14 20:05:52.911065
112	2376	f	t	t	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.52146016	2.131525138	0.1259949338	-0.1223597454	2.33958673	0.4358472654	0.05880689394	-0.02048772599	2022-12-14 20:05:52.917853	2022-12-14 20:05:52.917853
113	2377	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	t	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	11.99216016	2.226005138	0.1399849338	-0.09663974541	2.56148673	0.4923572654	0.1895368939	-0.07629772599	2022-12-14 20:05:52.92545	2022-12-14 20:05:52.92545
114	2378	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	11.35246016	2.109315138	0.3083549338	0.1372402546	2.98308673	0.6080572654	0.1334968939	-0.112487726	2022-12-14 20:05:52.932672	2022-12-14 20:05:52.932672
115	2379	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	10.03216016	1.933405138	0.2837549338	-0.01508974541	2.12888673	0.3551572654	-0.1175631061	-0.193837726	2022-12-14 20:05:52.940596	2022-12-14 20:05:52.940596
116	373	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	13.54526016	2.286505138	0.03107493384	0.1447402546	2.37078673	0.2483572654	0.02124689394	-0.103027726	2022-12-14 20:05:52.948656	2022-12-14 20:05:52.948656
117	383	t	t	f	f	t	t	f	t	t	t	f	t	f	f	t	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	9.949860158	1.785305138	0.2359549338	-0.04313974541	2.36618673	0.5272972654	0.001956893941	-0.04538772599	2022-12-14 20:05:52.956473	2022-12-14 20:05:52.956473
118	392	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.916560158	1.703905138	-0.1755450662	0.2175402546	2.12038673	0.3365572654	0.03886689394	-0.214237726	2022-12-14 20:05:52.964363	2022-12-14 20:05:52.964363
119	2383	t	f	f	t	t	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	t	12.16116016	2.241705138	0.05989493384	-0.1218597454	2.77778673	0.6483572654	0.03298689394	-0.09349772599	2022-12-14 20:05:52.972893	2022-12-14 20:05:52.972893
120	402	t	f	f	t	t	t	f	t	t	f	t	t	f	t	f	t	f	t	f	t	f	t	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	11.39077216	2.062975138	0.1222569338	0.09809025459	2.20428673	0.3593572654	-0.05446310606	-0.104207726	2022-12-14 20:05:52.983331	2022-12-14 20:05:52.983331
121	2385	f	f	f	t	f	f	f	f	f	t	t	f	f	t	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	11.79156016	1.972965138	0.3412549338	-0.03619974541	3.64698673	0.6175572654	0.1553168939	-0.03761772599	2022-12-14 20:05:52.990403	2022-12-14 20:05:52.990403
122	2386	t	t	t	t	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	11.74456016	2.152405138	0.1736049338	0.03571025459	3.51588673	0.5715572654	0.03075689394	-0.03616772599	2022-12-14 20:05:52.998332	2022-12-14 20:05:52.998332
123	2387	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	11.26016016	2.034945138	0.1523349338	-0.07947974541	2.47378673	0.4668072654	0.008776893941	-0.06091772599	2022-12-14 20:05:53.007482	2022-12-14 20:05:53.007482
124	407	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	12.19046016	2.170905138	0.2218549338	0.06805025459	2.49900673	0.5561872654	-0.05366310606	0.05826227401	2022-12-14 20:05:53.014913	2022-12-14 20:05:53.014913
125	1237	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	10.33316016	1.870205138	0.2693549338	0.06971025459	2.08868673	0.3494572654	0.1649668939	-0.158837726	2022-12-14 20:05:53.023069	2022-12-14 20:05:53.023069
126	417	t	t	t	t	t	t	f	f	f	f	f	t	t	t	f	f	t	t	f	t	f	f	t	f	t	f	t	f	t	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	t	f	13.18186016	2.321105138	0.2912549338	0.1258402546	2.42158673	0.4963272654	0.03739689394	0.07106227401	2022-12-14 20:05:53.030938	2022-12-14 20:05:53.030938
127	425	t	f	t	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	10.66596016	1.812905138	-0.5203450662	0.06483025459	2.42558673	0.4993632654	0.09145089394	-0.08234772599	2022-12-14 20:05:53.042868	2022-12-14 20:05:53.042868
128	2392	t	t	t	t	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.614860158	1.646805138	-0.5335450662	0.1004402546	3.77108673	0.6291572654	0.2209368939	-0.08639772599	2022-12-14 20:05:53.055185	2022-12-14 20:05:53.055185
129	2393	f	f	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	t	f	f	f	f	f	f	f	11.32400016	1.984705138	0.2957549338	0.05921025459	2.17298673	0.3324572654	0.1329068939	-0.01055772599	2022-12-14 20:05:53.067313	2022-12-14 20:05:53.067313
130	2394	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:53.077918	2022-12-14 20:05:53.077918
131	2395	t	f	t	t	f	f	t	f	t	f	t	t	f	t	f	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	11.97536016	2.072445138	0.08634493384	0.04596025459	2.83488673	0.6279572654	0.1902368939	-0.140587726	2022-12-14 20:05:53.085266	2022-12-14 20:05:53.085266
132	2396	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.27856016	2.181605138	0.1906949338	-0.004939745413	2.29638673	0.4664172654	0.1028868939	0.05026227401	2022-12-14 20:05:53.095317	2022-12-14 20:05:53.095317
133	2397	t	t	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	t	f	f	f	f	f	f	f	9.650860158	1.924805138	0.1875149338	-0.05843974541	2.25438673	0.4150572654	-0.1123631061	-0.09745772599	2022-12-14 20:05:53.102874	2022-12-14 20:05:53.102874
134	435	f	f	t	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	13.77546016	2.416805138	0.2516549338	-0.06013974541	2.32768673	0.4478672654	0.01017689394	-0.131077726	2022-12-14 20:05:53.111514	2022-12-14 20:05:53.111514
135	2399	t	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	10.94076016	2.067705138	0.2770549338	0.01396025459	2.14918673	0.4497272654	0.1267968939	-0.02216772599	2022-12-14 20:05:53.122117	2022-12-14 20:05:53.122117
136	2400	f	f	t	t	f	f	t	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	11.37052016	2.128495138	0.3421549338	0.1656402546	2.53352673	0.4938372654	0.1949368939	-0.03341772599	2022-12-14 20:05:53.129214	2022-12-14 20:05:53.129214
137	2401	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	11.22296016	2.056595138	0.2009449338	-0.03315974541	2.81808673	0.5626072654	0.1505268939	-0.123827726	2022-12-14 20:05:53.136168	2022-12-14 20:05:53.136168
138	2402	t	f	t	t	t	t	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.247060158	1.666605138	-0.4048450662	0.03461025459	2.29558673	0.3505572654	0.02408689394	0.03764227401	2022-12-14 20:05:53.144014	2022-12-14 20:05:53.144014
139	2403	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.985160158	1.006505138	-0.5216450662	0.2067402546	2.33578673	0.3751572654	0.06367689394	-0.004037725993	2022-12-14 20:05:53.154116	2022-12-14 20:05:53.154116
140	443	f	f	t	t	f	f	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	11.38193016	2.103605138	0.2447549338	0.02174025459	3.03598673	0.6212572654	0.1660068939	-0.07473772599	2022-12-14 20:05:53.166781	2022-12-14 20:05:53.166781
141	2405	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	12.33316016	2.215905138	0.1996449338	0.06256025459	0	0	0	0	2022-12-14 20:05:53.176966	2022-12-14 20:05:53.176966
142	450	f	f	t	t	f	f	t	f	t	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	11.80126016	2.068585138	0.1664849338	-0.05302974541	3.01058673	0.6617572654	0.1248768939	-0.146957726	2022-12-14 20:05:53.183498	2022-12-14 20:05:53.183498
143	460	f	f	t	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	13.25176016	2.393005138	0.2231549338	-0.01389974541	2.40378673	0.5617772654	0.1678868939	0.002812274007	2022-12-14 20:05:53.190354	2022-12-14 20:05:53.190354
144	2408	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	10.64676016	1.808905138	0.1508549338	0.07026025459	2.46248673	0.5170472654	-0.01836310606	-0.07485772599	2022-12-14 20:05:53.197366	2022-12-14 20:05:53.197366
145	2409	t	t	t	t	f	f	f	f	f	f	t	t	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	10.80486016	2.039188138	0.2300549338	0.06376025459	3.20938673	0.6570572654	0.02928689394	-0.03206772599	2022-12-14 20:05:53.208677	2022-12-14 20:05:53.208677
146	2410	t	t	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.960760158	1.810105138	0.2763549338	-0.0008397454129	2.22458673	0.4034072654	-0.04006310606	-0.132947726	2022-12-14 20:05:53.215624	2022-12-14 20:05:53.215624
147	470	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	11.43160016	2.158705138	0.1720649338	-0.05507974541	2.29698673	0.4685172654	0.1348768939	-0.06287772599	2022-12-14 20:05:53.222502	2022-12-14 20:05:53.222502
148	480	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	10.71526016	2.022455138	0.3173549338	0.1297402546	2.51350673	0.5531072654	0.07691689394	-0.03097772599	2022-12-14 20:05:53.229588	2022-12-14 20:05:53.229588
149	2413	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.778760158	1.593705138	-0.08354506616	0.2932402546	2.03268673	0.4608172654	-0.04466310606	-0.141707726	2022-12-14 20:05:53.240628	2022-12-14 20:05:53.240628
150	2414	t	f	t	t	t	t	t	t	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	10.18896016	1.969665138	-0.03034506616	-0.3668597454	2.79398673	0.5286072654	0.1666968939	0.04516227401	2022-12-14 20:05:53.253593	2022-12-14 20:05:53.253593
151	490	t	t	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.42726016	1.812405138	-0.4915450662	0.03305025459	3.03538673	0.4793972654	0.01661689394	-0.006807725993	2022-12-14 20:05:53.265156	2022-12-14 20:05:53.265156
152	2416	t	f	t	t	t	t	f	t	t	t	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	11.13426016	2.125235138	-0.07844506616	-0.2208597454	2.43978673	0.4444472654	-0.04176310606	0.01510227401	2022-12-14 20:05:53.273212	2022-12-14 20:05:53.273212
153	2417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:53.283729	2022-12-14 20:05:53.283729
154	2418	f	f	t	t	f	f	f	f	t	f	f	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	11.74246016	2.250505138	0.2863549338	0.05413025459	2.25918673	0.4349172654	-0.09936310606	-0.09720772599	2022-12-14 20:05:53.291241	2022-12-14 20:05:53.291241
155	500	f	f	t	t	f	f	f	f	t	f	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.14576016	1.941315138	0.2576549338	0.07773025459	2.19708673	0.4036172654	0.04707689394	0.04686227401	2022-12-14 20:05:53.300496	2022-12-14 20:05:53.300496
156	2420	t	t	f	f	t	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	t	f	f	f	10.17166016	1.858505138	0.2519549338	-0.03298974541	1.99368673	0.3172572654	0.02016689394	0.04986227401	2022-12-14 20:05:53.307789	2022-12-14 20:05:53.307789
157	2421	t	t	t	t	t	t	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.90716016	1.819405138	0.3953549338	0.1641402546	3.48708673	0.6601572654	0.1844368939	-0.148597726	2022-12-14 20:05:53.317856	2022-12-14 20:05:53.317856
158	509	t	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	11.32304016	2.001355138	-0.07394506616	0.2169402546	3.48868673	0.4895672654	0.2152368939	-0.03958772599	2022-12-14 20:05:53.325848	2022-12-14 20:05:53.325848
159	2423	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	0	2022-12-14 20:05:53.334113	2022-12-14 20:05:53.334113
160	517	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	11.48173016	2.066795138	0.2187549338	0.05113025459	2.66266673	0.4872172654	0.1634868939	-0.107437726	2022-12-14 20:05:53.344764	2022-12-14 20:05:53.344764
161	2425	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	9.870760158	1.959315138	0.2239549338	0.03526025459	3.17318673	0.6119572654	0.08527789394	-0.02213772599	2022-12-14 20:05:53.353783	2022-12-14 20:05:53.353783
162	526	t	f	t	f	t	t	f	t	t	f	f	t	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	12.52816016	2.231505138	0.1782949338	-0.3203597454	3.57238673	0.7507572654	0.01207689394	0.01558227401	2022-12-14 20:05:53.360599	2022-12-14 20:05:53.360599
163	536	t	f	t	t	t	t	f	t	t	t	f	f	t	f	t	t	f	f	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	13.17296016	2.320005138	0.1536249338	-0.2340597454	2.73978673	0.5396072654	0.2965368939	-0.135907726	2022-12-14 20:05:53.367242	2022-12-14 20:05:53.367242
164	546	t	f	t	t	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.47786016	2.147105138	-0.03264506616	0.1311402546	2.21878673	0.4990572654	-0.05096310606	-0.105387726	2022-12-14 20:05:53.37855	2022-12-14 20:05:53.37855
165	556	t	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	12.37266016	1.944175138	-0.2240450662	0.2581402546	1.69608673	0.2396572654	-0.09566310606	-0.167237726	2022-12-14 20:05:53.385529	2022-12-14 20:05:53.385529
166	566	t	f	t	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.174760158	1.439305138	-0.3955450662	0.2033402546	2.60070973	0.6150572654	0.06005689394	-0.05761772599	2022-12-14 20:05:53.392392	2022-12-14 20:05:53.392392
167	2431	f	f	t	t	f	f	f	f	t	t	f	t	f	t	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	11.50956016	2.072605138	0.4069549338	0.1505402546	1.93868673	0.2736572654	0.01182689394	0.009902274007	2022-12-14 20:05:53.40077	2022-12-14 20:05:53.40077
168	574	t	t	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	13.83286016	2.368705138	0.2906549338	0.09125025459	3.01108673	0.5439872654	0.1508668939	-0.01865772599	2022-12-14 20:05:53.407823	2022-12-14 20:05:53.407823
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (id, latitude, longitude, elevation, mean_annual_temperature, mean_coldest_month_temperature, winter_precipitations, summer_precipitations, autumn_precipitations, spring_precipitations, nitrogen, carbon_nitrogen_ratio, ph, phosphorus, calcium, magnesium, sodium, potassium, iron, aluminium, water_holding_capacity, organic_carbon, soil_organic_matter, manganese, population_id, created_at, updated_at) FROM stdin;
1	43.733229	1.823869	136	10.76	0.15	128.91	77.64	171.55	70.18	2.735	22.05	7.895	0.081	14	1.485	0.071	0.453	0	0.013	0.449	61.3	106.25	0	1	2022-12-14 20:05:50.910837	2022-12-14 20:05:50.910837
2	43.911999	1.656649	169	10.54	0.08	127.27	85.73	172.18	70.64	1.025	12.7	8.445	0.051	12.4	0.655	0.019	0.438	0	0.024	0.277	12.95	22.45	0	11	2022-12-14 20:05:50.934463	2022-12-14 20:05:50.934463
3	43.91214	1.656855	168	10.55	0.08	127.27	85.73	172.18	70.64	2.85	11.05	7.815	0.041	20.2	1.059	0.024	0.312	0.003	0.032	0.342	31.45	54.5	0	19	2022-12-14 20:05:50.945216	2022-12-14 20:05:50.945216
4	43.190552	0.815774	339	10.08	-0.07	117.09	92.18	186.36	75.45	2.655	10.8	8.01	0.134	17.35	0.714	0.033	0.661	0.003	0.016	0.463	28.7	49.6	0	2268	2022-12-14 20:05:50.956315	2022-12-14 20:05:50.956315
5	43.477976	1.452214	197	10.61	0.19	114	83.36	166.36	73.18	1.245	11.15	8.385	0.055	22.05	2.23	0.141	0.886	0	0	0.455	13.9	24.05	0	2269	2022-12-14 20:05:50.962195	2022-12-14 20:05:50.962195
6	43.527792	1.491628	200	10.51	-0.05	112.73	79.55	163	71.09	1.074	13.85	7.235	0.028	6.08	0.398	0.016	0.207	0.004	0.023	0.178	14.805	25.65	0.01	27	2022-12-14 20:05:50.966358	2022-12-14 20:05:50.966358
7	42.724197	1.834034	734	9.47	0.27	111.27	126.82	198.91	94.73	1.625	48.5	8.325	0.044	10.285	0.565	0.027	0.143	0.007	0.033	0.226	78.7	136	0	2271	2022-12-14 20:05:50.972651	2022-12-14 20:05:50.972651
8	42.724588	1.833497	733	9.47	0.27	111.18	126.82	198.64	94.73	2.09	18.25	7.33	0.101	9.195	0.751	0.026	0.294	0.004	0.028	0.343	38.2	66.1	0.008	2272	2022-12-14 20:05:50.977552	2022-12-14 20:05:50.977552
9	43.312225	1.515167	201	10.71	0.14	110.18	81.82	166	72.27	1.835	12.1	8.12	0.085	15.9	1.83	0.073	0.492	0	0.015	0.399	22.3	38.55	0	2273	2022-12-14 20:05:50.982278	2022-12-14 20:05:50.982278
10	43.311868	1.515459	201	10.71	0.14	110.18	81.82	165.91	72.27	4.925	10.95	7.165	0.124	24.1	1.25	0.028	0.653	0.003	0.025	0.532	54.15	93.7	0.01	2274	2022-12-14 20:05:50.987491	2022-12-14 20:05:50.987491
11	43.311866	1.515623	201	10.71	0.14	110.18	81.82	165.91	72.27	6.325	11.8	6.43	0.146	22.25	1.905	0.032	0.731	0	0	0.587	75.9	131.1	0.034	2275	2022-12-14 20:05:50.992312	2022-12-14 20:05:50.992312
12	43.31187	1.515709	201	10.71	0.14	110.18	81.82	165.91	72.27	5.06	11	6.82	0.074	22.75	1.205	0.025	0.383	0	0	0.594	55.65	96.25	0.019	2276	2022-12-14 20:05:50.999146	2022-12-14 20:05:50.999146
13	43.311926	1.515463	201	10.71	0.14	110.18	81.82	165.91	72.27	4.52	11.7	7.44	0.126	24.35	1.248	0.033	0.724	0.004	0.035	0.293	53.55	92.85	0.009	2277	2022-12-14 20:05:51.007438	2022-12-14 20:05:51.007438
14	43.075729	0.151764	532	9.16	-0.32	136.45	88.18	207.55	78.91	2.225	10.95	7.39	0.072	11.3	1.215	0.097	0.316	0.003	0.028	0.416	24.45	42.3	0.007	2278	2022-12-14 20:05:51.013215	2022-12-14 20:05:51.013215
15	43.076454	0.151533	530	9.16	-0.32	136.45	88.09	207.36	78.82	2.015	12.1	7.22	0.078	10.24	1.1	0.143	0.269	0.009	0.047	0.365	24.3	42.05	0.014	2279	2022-12-14 20:05:51.017963	2022-12-14 20:05:51.017963
16	43.042867	0.234732	488	9.45	-0.01	134.55	91.27	208.91	79.36	4.625	10.155	6.68	0.078	15.7	1.875	0.089	0.303	0	0.016	0.645	46.9	81.15	0.028	2280	2022-12-14 20:05:51.022814	2022-12-14 20:05:51.022814
17	43.043644	0.234303	487	9.45	-0.01	134.55	91.18	208.82	79.36	2.44	10.35	8.47	0.037	11.25	0.524	0.025	0.156	0	0.037	0.456	25.25	43.75	0	2281	2022-12-14 20:05:51.027459	2022-12-14 20:05:51.027459
18	43.043644	0.234303	487	9.45	-0.01	134.55	91.18	208.82	79.36	1.895	9.355	8.38	0.064	11.9	0.346	0.022	0.116	0.004	0.033	0.429	17.6	30.5	0	2282	2022-12-14 20:05:51.032349	2022-12-14 20:05:51.032349
19	44.269727	2.426322	756	8.48	-1.15	169.55	124.18	226.18	93.27	5.535	14.25	7.48	0.134	23.3	2.12	0.045	0.827	0.008	0.042	0.41	79.2	137	0.003	2283	2022-12-14 20:05:51.037157	2022-12-14 20:05:51.037157
20	44.270842	2.427551	756	8.49	-1.14	169.55	124.27	226.82	93.27	2.709	14.277	7.525	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.306	38.493	66.605	0.013	37	2022-12-14 20:05:51.04227	2022-12-14 20:05:51.04227
21	43.362044	0.387723	218	10.29	0.08	127.82	82.09	185.55	71.73	3.05	12.4	7.775	0.129	15.55	0.981	0.051	0.387	0	0.028	0.381	39.45	68.2	0	2285	2022-12-14 20:05:51.048397	2022-12-14 20:05:51.048397
22	44.202421	1.767492	174	10.56	0.29	135.73	100.64	185.45	71.36	8.61	13.75	7.19	0.161	32.6	2.425	0.037	0.863	0.01	0.05	0.287	118.5	205	0	46	2022-12-14 20:05:51.054396	2022-12-14 20:05:51.054396
23	43.453602	1.620674	166	10.78	0.18	116.64	79.09	166.45	71.64	1.21	16	7.935	0.06	9.64	0.67	0.025	0.402	0.003	0	0.25	19.3	33.4	0	2287	2022-12-14 20:05:51.061128	2022-12-14 20:05:51.061128
24	44.387532	2.336117	415	9.89	-0.01	165.82	121.55	221.18	89.82	2.709	14.277	7.525	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.369	38.493	66.605	0.013	2288	2022-12-14 20:05:51.064685	2022-12-14 20:05:51.064685
25	44.387527	2.336782	412	9.91	0.02	165.91	121.55	221.27	89.82	2.385	16.7	8.05	0.106	15.6	1.105	0.025	0.299	0	0.011	0.277	39.55	68.45	0	2289	2022-12-14 20:05:51.068608	2022-12-14 20:05:51.068608
26	44.389212	2.336636	453	9.69	-0.22	165.82	121.55	221.18	89.64	1.62	12.25	6.705	0.058	4.98	1.154	0.025	0.349	0	0.2	0.397	19.8	34.25	0.073	2290	2022-12-14 20:05:51.073104	2022-12-14 20:05:51.073104
27	43.790307	1.106456	229	10.25	-0.17	123.36	88	171	73.55	1.94	13.15	8.08	0.121	14.9	1.38	0.052	0.78	0	0.03	0.349	25.45	44	0	56	2022-12-14 20:05:51.077675	2022-12-14 20:05:51.077675
28	43.16215	0.111398	394	9.62	-0.2	134.73	80.91	198.27	74.36	2.105	10.8	6.33	0.155	7.015	1.21	0.059	0.677	0	0.066	0.468	22.65	39.2	0.064	2292	2022-12-14 20:05:51.08361	2022-12-14 20:05:51.08361
29	44.526359	2.730092	352	10.13	-0.16	177	130	236.36	87.27	9.025	15.95	7.505	0.592	23.485	9.705	0.113	4.211	0.008	0.038	0.555	145.8	251.85	0.038	2293	2022-12-14 20:05:51.08783	2022-12-14 20:05:51.08783
30	43.28908	0.639795	339	9.9	-0.28	122.27	87.45	186.55	74.27	2.35	10.4	8.365	0.032	19.8	0.463	0.051	0.347	0.003	0.016	0.493	24.2	41.85	0	2294	2022-12-14 20:05:51.092727	2022-12-14 20:05:51.092727
31	43.999349	2.621684	281	10.69	0.27	178.91	97.82	202.18	84.91	2.105	12.05	6.605	0.032	6.945	2.26	0.03	0.784	0.003	0.027	0.419	25.5	44.15	0.059	67	2022-12-14 20:05:51.099028	2022-12-14 20:05:51.099028
32	44.033129	2.638672	678	9	-1.05	186.27	113.64	229.27	90.36	2.23	12.6	6	0.061	5.04	1.53	0.03	0.994	0.008	0.114	0.419	28.15	48.75	0.058	2296	2022-12-14 20:05:51.105456	2022-12-14 20:05:51.105456
33	44.03326	2.638683	678	9	-1.05	186.27	113.64	229.36	90.36	2.915	12.25	6.6	0.074	7.65	1.665	0.237	0.841	0.003	0.035	0.463	35.65	61.7	0.05	2297	2022-12-14 20:05:51.109785	2022-12-14 20:05:51.109785
34	43.039803	0.277297	491	9.44	-0.08	131.73	91.18	206.36	78.64	11.5	21.7	7.525	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.401	249	432	0.013	2298	2022-12-14 20:05:51.114457	2022-12-14 20:05:51.114457
35	42.91058	1.248122	525	9.94	0.24	116.36	119	201.82	86.09	2.54	11.05	7.53	0.137	13.6	1.08	0.026	0.534	0	0	0.519	28.15	48.65	0	2299	2022-12-14 20:05:51.121036	2022-12-14 20:05:51.121036
36	43.824878	2.881661	397	10.38	-0.03	183.55	77.36	224	73.64	2.435	13.4	8.255	0.063	11.15	1.64	0.149	0.444	0.003	0.025	0.487	32.65	56.5	0	77	2022-12-14 20:05:51.129735	2022-12-14 20:05:51.129735
37	43.823736	2.881003	393	10.4	0.02	185	77.55	225.64	73.82	1.955	10.2	7.29	0.074	10.4	1.925	0.046	0.428	0	0.013	0.326	19.9	34.4	0.008	80	2022-12-14 20:05:51.138567	2022-12-14 20:05:51.138567
38	43.824878	2.881661	397	10.38	-0.03	183.55	77.36	224	73.64	1.525	18.5	8.115	0.071	11.7	0.6	0.043	0.339	0.003	0.027	0.257	28.2	48.75	0	88	2022-12-14 20:05:51.143539	2022-12-14 20:05:51.143539
39	44.108545	1.990168	322	9.95	-0.31	137.55	97.09	184.55	71.55	0.888	11.5	7.04	0.017	3.895	0.975	0.019	0.488	0	0.031	0.372	10.15	17.6	0.038	2303	2022-12-14 20:05:51.148214	2022-12-14 20:05:51.148214
40	43.151102	1.3923	385	10.03	-0.31	109.18	92.18	173.82	75.18	1.52	11.25	8.205	0.065	12.65	0.358	0.014	0.364	0	0.013	0.312	17	29.45	0	92	2022-12-14 20:05:51.152332	2022-12-14 20:05:51.152332
41	44.17653	2.518164	616	9.11	-0.89	177.09	117.82	224.91	91.73	2.255	20.95	7.085	0.057	9.21	1.32	0.05	0.5	0.009	0.05	0.367	47.2	81.7	0.02	102	2022-12-14 20:05:51.157876	2022-12-14 20:05:51.157876
42	43.698534	1.427856	126	10.75	0.14	113.55	79.09	159.91	70.27	0.916	17.15	8.3	0.124	9.89	1.695	0.032	0.768	0.003	0.031	0.37	15.55	26.9	0	111	2022-12-14 20:05:51.162663	2022-12-14 20:05:51.162663
43	42.920498	1.034063	574	9.57	-0.18	120.18	116.82	209.09	85.09	7.16	13.5	7.585	0.308	22.5	1.424	0.046	1.463	0.014	0.07	1.394	97.3	168.1	0.003	2307	2022-12-14 20:05:51.168436	2022-12-14 20:05:51.168436
44	42.831484	0.420091	1140	7.04	-1.72	150.27	121.18	248.27	94.73	3.89	10.3	7.11	0.106	13.8	1.9	0.023	0.767	0	0.027	0.416	40.2	69.5	0.022	2308	2022-12-14 20:05:51.173223	2022-12-14 20:05:51.173223
45	43.755183	1.435978	125	10.74	0.15	116.27	79.73	161.82	70.55	0.78	10.3	8.59	0.065	14.55	0.874	0.095	0.467	0.003	0.033	0.329	8.065	13.95	0	2309	2022-12-14 20:05:51.177306	2022-12-14 20:05:51.177306
46	44.01194	2.966488	406	10.47	0.1	181.18	92.45	232.82	72.91	2.6	27.45	7.79	0.112	9.555	0.709	0.047	0.247	0	0.011	0.228	70.45	122	0	121	2022-12-14 20:05:51.181719	2022-12-14 20:05:51.181719
47	44.014684	2.967927	407	10.45	0.09	181.18	92.73	233	72.73	3.465	16.4	7.92	0.205	15.9	1.255	0.027	0.481	0.003	0.012	0.288	56.85	98.5	0	126	2022-12-14 20:05:51.187621	2022-12-14 20:05:51.187621
48	43.013708	0.86707	603	9.19	-0.59	123.64	109.27	207.55	83.09	1.915	12.9	5.56	0.025	2.86	0.844	0.02	0.77	0.016	0.65	0.503	24.7	42.75	0.076	2312	2022-12-14 20:05:51.193427	2022-12-14 20:05:51.193427
49	42.85332	0.602039	594	9.41	0.1	131.64	113.36	226.55	86	2.295	18.5	7.62	0.058	8.965	0.484	0.02	0.215	0.004	0.032	0.231	41.45	71.65	0.015	136	2022-12-14 20:05:51.197613	2022-12-14 20:05:51.197613
50	42.859978	0.600413	667	9.14	-0.08	135.91	116.36	232.09	88.18	4.325	9.585	7.37	0.045	13.2	1.03	0.027	0.276	0.003	0.028	0.422	41.55	71.9	0.013	2314	2022-12-14 20:05:51.202484	2022-12-14 20:05:51.202484
51	42.860166	0.601088	656	9.19	-0.07	134.91	115.55	230.82	87.73	2.19	9.21	7.43	0.026	5.66	0.394	0.023	0.152	0.01	0.038	0.223	20.1	34.8	0.011	2315	2022-12-14 20:05:51.206775	2022-12-14 20:05:51.206775
52	43.305466	1.520441	204	10.71	0.14	110.09	81.82	166.36	72.64	1.495	13.25	7.355	0.055	7.345	0.669	0.03	0.381	0.009	0.053	0.217	19.8	34.25	0.008	145	2022-12-14 20:05:51.212112	2022-12-14 20:05:51.212112
53	43.305611	1.520735	204	10.71	0.14	110.18	81.82	166.36	72.64	2.825	13.25	6.965	0.05	11.2	1.33	0.031	0.73	0.003	0.034	0.486	37.4	64.7	0.01	154	2022-12-14 20:05:51.218181	2022-12-14 20:05:51.218181
54	43.464776	1.219019	218	10.45	-0.05	110.09	83.73	165.45	71.45	1.043	10.8	6.355	0.088	5.225	0.694	0.037	0.689	0.01	0.076	0.249	11.25	19.45	0.09	2318	2022-12-14 20:05:51.225242	2022-12-14 20:05:51.225242
55	43.465281	1.218577	218	10.45	-0.05	110.18	83.73	165.45	71.45	2.205	11.6	6.955	0.114	10.26	1.255	0.033	0.711	0	0.024	0.237	25.45	44.05	0.038	164	2022-12-14 20:05:51.229681	2022-12-14 20:05:51.229681
56	43.464058	1.21799	218	10.45	-0.04	110.18	83.73	165.45	71.45	4.495	20.95	7.255	0.169	17.55	2.228	0.054	0.895	0.007	0.038	0.386	85.9	149	0.043	173	2022-12-14 20:05:51.234636	2022-12-14 20:05:51.234636
57	44.346915	2.340243	670	8.72	-1.04	169.18	121.73	225.82	90.82	9.275	12.3	5.505	0.131	18.3	2.15	0.073	1.042	0.007	0.083	0.598	114.75	198.5	0.141	2321	2022-12-14 20:05:51.241536	2022-12-14 20:05:51.241536
58	44.34773	2.339715	664	8.75	-0.99	169.36	121.73	225.91	90.82	3.065	21.85	7.45	0.049	14.45	1.85	0.119	0.657	0	0	0.401	70.85	122.5	0.009	183	2022-12-14 20:05:51.245977	2022-12-14 20:05:51.245977
59	44.34806	2.339698	664	8.75	-0.99	169.55	121.73	225.91	90.82	2.74	12	7.44	0.062	14.25	1.345	0.076	0.978	0	0	0.539	32.9	56.9	0	2323	2022-12-14 20:05:51.25309	2022-12-14 20:05:51.25309
60	44.540652	2.602245	558	9.17	-0.81	215.45	144.73	285.18	98.27	1.385	11.4	6.51	0.03	5.775	1.035	0.024	0.521	0.003	0.05	0.367	15.8	27.35	0.036	2324	2022-12-14 20:05:51.261736	2022-12-14 20:05:51.261736
61	44.529845	2.260486	318	9.9	-0.28	150	118.09	202.91	79.64	2.57	19.8	7.57	0.068	12.8	1.78	0.091	0.485	0.005	0.033	0.196	50.7	87.7	0	2325	2022-12-14 20:05:51.268391	2022-12-14 20:05:51.268391
62	43.654515	1.977636	143	10.81	0.27	136.45	76.82	176.09	71	1.235	22	8.18	0.036	7.37	0.818	0.011	0.116	0	0	0.175	27.15	47	0	2326	2022-12-14 20:05:51.273152	2022-12-14 20:05:51.273152
63	43.654515	1.977636	143	10.81	0.27	136.45	76.82	176.09	71	1.09	12.75	7.905	0.05	10.05	1.655	0.027	0.45	0.004	0.046	0.366	13.95	24.1	0.006	2327	2022-12-14 20:05:51.277657	2022-12-14 20:05:51.277657
64	43.654515	1.977636	143	10.81	0.27	136.45	76.82	176.09	71	1.845	16.3	7.755	0.07	11.85	0.922	0.021	0.404	0.003	0.025	0.265	29.95	51.85	0.003	1706	2022-12-14 20:05:51.282731	2022-12-14 20:05:51.282731
65	44.199896	1.77189	234	10.25	-0.05	135.45	100.36	185.36	71.36	1.825	15.55	8.24	0.126	15.8	1.062	0.021	0.691	0.012	0.05	0.367	27.2	47.05	0	191	2022-12-14 20:05:51.288529	2022-12-14 20:05:51.288529
66	44.059797	1.220975	91	10.73	0.2	126.09	88.55	169.09	70.73	1.935	13.05	6.89	0.054	9.905	1.54	0.12	0.482	0.007	0.084	0.374	25.2	43.6	0.011	2330	2022-12-14 20:05:51.297644	2022-12-14 20:05:51.297644
67	43.693335	2.534582	573	9.55	-0.3	283.36	122.82	306	114	0.742	15.45	8.125	0.056	6.39	0.256	0.014	0.125	0.006	0.055	0.286	11.45	19.85	0	201	2022-12-14 20:05:51.306598	2022-12-14 20:05:51.306598
68	43.8021	2.951709	457	10.24	0.03	236.36	89.27	310.91	86	1.8	16	8.115	0.108	10.95	0.409	0.026	0.222	0.003	0.023	0.429	28.85	49.9	0	2332	2022-12-14 20:05:51.316607	2022-12-14 20:05:51.316607
69	43.657743	2.44371	541	9.57	-0.45	259.73	116.91	284.73	110.55	6.785	12.95	7.555	0.094	27.4	1.44	0.063	0.696	0.005	0.047	0.72	88.55	153.5	0	211	2022-12-14 20:05:51.32513	2022-12-14 20:05:51.32513
70	43.908928	1.900574	144	10.7	0.18	130.45	82.91	173.91	68.64	2.145	13.45	8.115	0.078	14.1	1.191	0.024	0.622	0.003	0.027	0.198	28.35	49.05	0	221	2022-12-14 20:05:51.335577	2022-12-14 20:05:51.335577
71	43.909032	1.901077	144	10.7	0.18	130.55	82.91	173.91	68.64	3.455	12.5	7.955	0.123	19.15	1.85	0.038	0.84	0.007	0.035	0.357	41.6	72.1	0	226	2022-12-14 20:05:51.342029	2022-12-14 20:05:51.342029
72	42.876896	0.349714	740	8.74	-0.25	141.27	109.82	233.09	88.82	3.87	16	7.77	0.092	12	0.775	1.34	0.542	0.007	0.038	0.318	61.9	107	0.038	235	2022-12-14 20:05:51.346989	2022-12-14 20:05:51.346989
73	42.905839	1.406513	990	8.2	-0.74	138.18	139.09	232.09	101.82	1.9	12.4	7.255	0.087	8.91	0.764	0.03	0.267	0.009	0.062	0.405	23.65	40.95	0	2337	2022-12-14 20:05:51.353458	2022-12-14 20:05:51.353458
74	42.905839	1.406513	990	8.2	-0.74	138.18	139.09	232.09	101.82	1.65	11.7	6.51	0.066	5.74	0.607	0.021	0.299	0.009	0.071	0.441	19.3	33.4	0.008	2338	2022-12-14 20:05:51.358033	2022-12-14 20:05:51.358033
75	44.522606	2.36351	407	9.56	-0.66	168.91	122	221.64	86.64	1.183	13.65	5.62	0.016	3.67	1.078	0.033	0.588	0.006	0.349	0.416	16.2	28	0.108	2339	2022-12-14 20:05:51.362866	2022-12-14 20:05:51.362866
76	43.448838	1.79053	235	10.52	0.02	129.09	80.18	174.91	74.64	1.047	18.35	8.06	0.032	5.185	0.603	0.021	0.082	0.011	0	0.185	19.1	33	0	241	2022-12-14 20:05:51.367767	2022-12-14 20:05:51.367767
77	42.977713	0.756373	571	9.38	-0.25	127.73	110.55	214.82	83.91	5.34	15.05	7.78	0.085	19	1.44	0.03	0.541	0.02	0.088	0.279	80.2	139	0	252	2022-12-14 20:05:51.373538	2022-12-14 20:05:51.373538
78	42.977354	0.755498	576	9.37	-0.27	127.91	110.55	215	84	3.635	17.9	7.54	0.125	11.3	0.927	0.023	0.491	0.015	0.084	0.506	70.3	121.85	0.015	2342	2022-12-14 20:05:51.378847	2022-12-14 20:05:51.378847
79	42.977354	0.755498	576	9.37	-0.27	127.91	110.55	215	84	6.535	18.35	7.27	0.221	15.5	1.93	0.047	0.922	0.038	0.192	0.369	120	207.5	0.052	262	2022-12-14 20:05:51.383598	2022-12-14 20:05:51.383598
80	43.45155	1.400498	165	10.71	0.19	108.55	80	162.73	70.45	2.7	16.6	7.3	0.095	12.807	1.296	0.053	0.587	0.004	0.038	0.334	44.8	77.6	0.013	273	2022-12-14 20:05:51.389773	2022-12-14 20:05:51.389773
81	43.450892	1.40116	165	10.71	0.19	108.55	80	162.64	70.45	1.775	11.05	7.64	0.218	12.9	1.3	0.125	1.485	0.006	0.033	0.481	19.65	33.95	0.005	2345	2022-12-14 20:05:51.395174	2022-12-14 20:05:51.395174
82	43.451451	1.39935	165	10.71	0.19	108.55	80	162.82	70.45	1.94	20.25	7.88	0.154	17.45	1.345	0.044	0.726	0	0.012	0.381	39.45	68.15	0.006	2346	2022-12-14 20:05:51.400825	2022-12-14 20:05:51.400825
83	43.458019	1.381137	172	10.68	0.18	108.55	80.64	162.73	70.36	2.75	11.7	7.155	0.152	13.75	1.96	0.119	0.398	0.005	0.04	0.33	32.25	55.8	0.016	2347	2022-12-14 20:05:51.405492	2022-12-14 20:05:51.405492
84	43.00844	1.420039	397	10.28	0.14	108.64	102.73	181	79.55	2.29	9.64	7.92	0.035	14.85	0.924	0.035	0.192	0.003	0.02	0.418	22.05	38.2	0	283	2022-12-14 20:05:51.410008	2022-12-14 20:05:51.410008
85	43.008716	1.420053	396	10.29	0.15	108.64	102.73	181	79.55	0.572	11.4	8.4	0.029	6.2	0.177	0.031	0.117	0.006	0.034	0.143	6.54	11.35	0	2349	2022-12-14 20:05:51.418922	2022-12-14 20:05:51.418922
86	43.531185	2.262591	206	10.63	0.14	140.18	82.73	177.82	82.45	2.66	11.7	7.37	0.034	13.7	2.09	0.041	0.361	0.006	0.047	0.316	31.3	54.1	0	2350	2022-12-14 20:05:51.427171	2022-12-14 20:05:51.427171
87	42.999869	1.075659	497	9.67	-0.46	111.73	104.45	190.09	78.64	7.135	13.4	7.62	0.14	35.2	2.005	0.071	1.101	0.009	0.041	0.625	98.85	171.1	0.004	2351	2022-12-14 20:05:51.434912	2022-12-14 20:05:51.434912
88	43.000155	1.075624	493	9.68	-0.44	111.73	104.27	190.09	78.55	4.6	10.85	8.135	0.1	22.2	0.931	0.105	0.979	0.004	0.026	0.376	49.75	86.1	0	2352	2022-12-14 20:05:51.439959	2022-12-14 20:05:51.439959
89	43.795323	1.073752	264	10.06	-0.32	124.82	88.64	171	73.82	2.2	10.9	6.215	0.043	10.895	2.31	0.059	0.333	0.006	0.061	0.513	24	41.55	0.044	2353	2022-12-14 20:05:51.444193	2022-12-14 20:05:51.444193
90	43.487424	1.243559	182	10.6	0.12	109.27	82.91	164.27	71.09	1.735	11.75	7.35	0.139	12.725	1.403	0.046	0.619	0.005	0.04	0.292	20.25	35	0.003	293	2022-12-14 20:05:51.448324	2022-12-14 20:05:51.448324
91	43.479745	1.241592	182	10.61	0.12	109.45	82.91	164.55	71.09	1.645	11.55	7.37	0.154	11.935	1.623	0.047	0.804	0.008	0.051	0.376	18.75	32.45	0.006	2355	2022-12-14 20:05:51.454482	2022-12-14 20:05:51.454482
92	43.564943	1.65239	246	10.35	-0.14	123.27	81.36	170	73	8.745	16.6	7.045	0.304	34.75	6.215	0.277	0.842	0.008	0.016	0.657	146.5	253	0.011	1794	2022-12-14 20:05:51.459474	2022-12-14 20:05:51.459474
93	43.564822	1.65201	246	10.35	-0.14	123.18	81.36	170	73	1.555	11.95	7.985	0.157	12.3	4.585	0.033	0.973	0.005	0.031	0.262	18.5	32.05	0.004	2357	2022-12-14 20:05:51.465558	2022-12-14 20:05:51.465558
94	43.564822	1.65201	246	10.35	-0.14	123.18	81.36	170	73	2.38	14.15	7.84	0.088	8.845	1.97	0.015	0.401	0.008	0.028	0.56	33.25	57.5	0	303	2022-12-14 20:05:51.470475	2022-12-14 20:05:51.470475
95	44.25608	1.140526	176	10.27	-0.17	136.64	97	178.09	72.55	2.327	13.3	7.915	0.081	13.055	1.41	0.026	0.368	0	0	0.255	31.84	55.1	0	313	2022-12-14 20:05:51.476431	2022-12-14 20:05:51.476431
96	43.911721	0.629745	85	10.64	0.19	131.27	89.91	173.73	68.64	3.61	12.5	7.74	0.121	16.65	0.895	0.039	0.596	0.007	0.038	0.425	46.35	80.15	0.003	314	2022-12-14 20:05:51.48169	2022-12-14 20:05:51.48169
97	43.911721	0.629745	85	10.64	0.19	131.27	89.91	173.73	68.64	7.015	21.65	7.63	0.093	12.65	0.582	0.052	0.535	0.004	0.038	0.275	151.8	263.25	0.007	324	2022-12-14 20:05:51.488161	2022-12-14 20:05:51.488161
98	43.094237	1.719981	290	10.57	0.18	112	87	171.27	76.09	1.95	16.75	7.79	0.218	17.6	1.4	0.028	0.864	0	0.014	0.532	29.35	50.8	0	2362	2022-12-14 20:05:51.493505	2022-12-14 20:05:51.493505
99	43.574273	1.786038	220	10.46	-0.07	128.64	79.09	172.64	72	1.362	16.35	7.735	0.144	11.3	0.757	0.112	1.066	0	0.011	0.379	20.7	35.8	0	2363	2022-12-14 20:05:51.500926	2022-12-14 20:05:51.500926
100	43.574647	1.785723	217	10.48	-0.07	128.55	79	172.55	72	2.02	11.5	8.24	0.103	18.05	1.475	0.118	1.78	0.005	0.034	0.386	23.05	39.85	0	2364	2022-12-14 20:05:51.506995	2022-12-14 20:05:51.506995
101	43.339706	0.689839	283	10.11	-0.17	119.91	85.45	180.55	72.45	2.133	10.65	8.03	0.108	14.7	1.655	0.036	1.032	0.007	0.041	0.387	22.75	39.3	0	334	2022-12-14 20:05:51.511321	2022-12-14 20:05:51.511321
102	42.764683	1.752959	584	10.06	0.68	108.36	122.73	192.09	92.45	1.385	21	7.885	0.023	6.125	0.28	0.015	0.126	0.004	0.033	0.216	29.35	50.75	0	2366	2022-12-14 20:05:51.516822	2022-12-14 20:05:51.516822
103	42.764419	1.753595	584	10.06	0.68	108.64	122.73	192.36	92.64	1.405	23.05	8.325	0.04	9.085	0.435	0.024	0.261	0.01	0.016	0.312	32.25	55.85	0	2367	2022-12-14 20:05:51.521606	2022-12-14 20:05:51.521606
104	42.764419	1.753595	584	10.06	0.68	108.64	122.73	192.36	92.64	1.31	19.95	8.375	0.041	8.485	0.218	0.035	0.162	0.015	0.023	0.244	26.15	45.2	0	2368	2022-12-14 20:05:51.525723	2022-12-14 20:05:51.525723
105	42.764683	1.752959	584	10.06	0.68	108.36	122.73	192.09	92.45	1.52	20.35	8.135	0.09	7.845	0.318	0.03	0.194	0.005	0.037	0.218	30.85	53.4	0	2369	2022-12-14 20:05:51.530949	2022-12-14 20:05:51.530949
106	43.662542	0.718265	196	10.32	-0.05	126.64	88.18	176.45	71.82	2.32	9.945	8.09	0.451	15.55	2.51	0.033	2.16	0.003	0.033	0.435	23.15	40.05	0	343	2022-12-14 20:05:51.536413	2022-12-14 20:05:51.536413
107	43.662542	0.718265	196	10.32	-0.05	126.64	88.18	176.45	71.82	1.76	25.9	8.085	0.143	10.12	1.155	0.025	0.638	0	0.012	0.284	44.4	77.05	0	2371	2022-12-14 20:05:51.542524	2022-12-14 20:05:51.542524
108	43.202147	1.010976	266	10.42	0.04	109.55	89.36	175.82	72.91	1.91	16.55	7.445	0.073	8.29	0.499	0.165	0.286	0.003	0.024	0.231	31.5	54.5	0.008	353	2022-12-14 20:05:51.547771	2022-12-14 20:05:51.547771
109	43.437536	0.579271	204	10.38	0.06	123.45	84	179.36	70.82	2.615	12.75	7.84	0.048	11.75	0.819	0.027	0.226	0.007	0.038	0.332	33.3	57.55	0	363	2022-12-14 20:05:51.554025	2022-12-14 20:05:51.554025
110	43.497754	2.375372	242	10.61	0.25	194.45	90.73	223.64	92.91	2.855	30	7.865	0.106	12.95	0.962	0.031	0.495	0.004	0.038	0.296	85.55	148	0	2374	2022-12-14 20:05:51.559518	2022-12-14 20:05:51.559518
111	43.490485	0.461439	180	10.41	0.15	128	84.64	183.82	70.82	0.931	11.25	8.175	0.037	7.57	0.257	0.018	0.104	0.003	0.04	0.29	10.465	18.15	0	2375	2022-12-14 20:05:51.565286	2022-12-14 20:05:51.565286
112	42.656618	1.836221	1080	8.15	-0.54	124.73	139.73	220	103.64	3.755	12.7	7	0.121	13.4	1.032	0.018	0.429	0.011	0.06	0.353	47.8	82.65	0.01	2376	2022-12-14 20:05:51.575291	2022-12-14 20:05:51.575291
113	42.656546	1.836175	1080	8.15	-0.55	124.73	139.73	219.91	103.64	1.26	12.2	7.93	0.199	8.27	0.164	0.037	0.194	0.01	0.067	0.24	15.3	26.5	0	2377	2022-12-14 20:05:51.580933	2022-12-14 20:05:51.580933
114	43.720426	1.296824	156	10.61	0.05	114.36	81.36	161.45	71.09	0.495	11	8.455	0.062	8.975	0.902	0.045	0.256	0.005	0.045	0.294	5.47	9.485	0	2378	2022-12-14 20:05:51.585121	2022-12-14 20:05:51.585121
115	43.725141	1.247629	123	10.75	0.14	114.18	80.55	161.64	70.45	2.73	12.95	7.075	0.087	8.06	1.095	0.1	0.775	0.003	0.02	0.244	35.4	61.25	0.023	2379	2022-12-14 20:05:51.589809	2022-12-14 20:05:51.589809
116	43.46529	0.986273	231	10.35	-0.11	114.27	86	170.82	71.64	2.25	12.7	8.135	0.043	15.4	1.24	0.04	0.596	0.005	0.033	0.392	29.05	50.25	0	373	2022-12-14 20:05:51.594533	2022-12-14 20:05:51.594533
117	44.115354	2.094725	405	9.64	-0.56	142.91	102.73	187.36	75.09	3.245	14.35	6.98	0.047	9.555	2.38	0.128	0.75	0.003	0.016	0.47	47.3	81.7	0.095	383	2022-12-14 20:05:51.600416	2022-12-14 20:05:51.600416
118	43.616254	0.972435	209	10.35	-0.05	119.27	86.36	170.18	72.27	1.054	29.45	7.645	0.02	5.89	0.523	0.029	0.171	0.009	0.032	0.215	33.3	57.55	0.012	392	2022-12-14 20:05:51.60623	2022-12-14 20:05:51.60623
119	43.852212	1.87432	156	10.66	0.14	131.91	82	175.09	69.45	1.245	12.4	6.45	0.048	5.115	0.903	0.026	0.835	0.003	0.044	0.441	15.35	26.55	0.04	2383	2022-12-14 20:05:51.611249	2022-12-14 20:05:51.611249
120	43.852723	1.873536	156	10.65	0.13	131.91	82	175	69.45	1.27	11.2	6.81	0.032	5.91	1.25	0.033	0.676	0	0.039	0.426	14.3	24.7	0.048	402	2022-12-14 20:05:51.615737	2022-12-14 20:05:51.615737
121	43.130495	1.269927	281	10.53	0.14	107.45	92	174.45	73.45	0.958	11.2	6	0.065	4.57	0.645	0.015	0.544	0.003	0.076	0.392	10.76	18.6	0.066	2385	2022-12-14 20:05:51.621621	2022-12-14 20:05:51.621621
122	43.12729	0.110681	437	9.46	-0.19	135.64	83.18	201.82	76.18	1.52	14.25	7.79	0.09	8.03	0.872	0.015	0.368	0.004	0.04	0.329	21.7	37.5	0	2386	2022-12-14 20:05:51.625698	2022-12-14 20:05:51.625698
123	43.127713	0.110633	437	9.46	-0.19	135.64	83.18	201.82	76.18	2.095	11.2	6.725	0.099	7.78	0.981	0.03	0.717	0.014	0.085	0.368	23.5	40.6	0.014	2387	2022-12-14 20:05:51.631007	2022-12-14 20:05:51.631007
124	43.389383	0.67282	313	9.97	-0.25	123.91	88.64	183.73	74.27	1.64	10.54	8.3	0.09	17.7	0.649	0.034	0.621	0.003	0.013	0.473	17.35	29.95	0	407	2022-12-14 20:05:51.636502	2022-12-14 20:05:51.636502
125	43.383934	0.67257	313	9.97	-0.25	123.82	88.45	183.82	74.27	3.24	10.7	8.35	0.079	23.2	0.793	0.064	0.558	0.003	0.022	0.411	34.75	60.1	0	1237	2022-12-14 20:05:51.641943	2022-12-14 20:05:51.641943
126	43.383934	0.67257	313	9.97	-0.25	123.82	88.45	183.82	74.27	0.844	11.7	8.59	0.046	12.807	1.296	0.053	0.587	0.004	0.038	0.172	9.74	16.8	0.013	417	2022-12-14 20:05:51.647592	2022-12-14 20:05:51.647592
127	42.86156	0.595943	792	8.67	-0.31	143	121.55	241.45	92.45	3.56	10.68	7.955	0.182	14.245	0.661	0.018	0.275	0.004	0.034	0.324	34.4	59.5	0	425	2022-12-14 20:05:51.654026	2022-12-14 20:05:51.654026
128	42.861218	0.596869	774	8.71	-0.31	141.36	120.45	239.36	91.55	3.443	11.43	8.02	0.157	13.335	0.561	0.017	0.187	0.003	0.028	0.282	33.65	58.2	0.004	2392	2022-12-14 20:05:51.659681	2022-12-14 20:05:51.659681
129	44.089762	2.296094	428	9.75	-0.41	161.82	107.45	203.82	83.64	2.285	28.15	6.805	0.018	8.91	1.42	0.022	0.555	0.006	0.054	0.315	64.65	111.7	0.033	2393	2022-12-14 20:05:51.664763	2022-12-14 20:05:51.664763
130	44.520751	2.427404	259	10.29	-0.04	173.64	126.09	228.91	90.09	2.67	11.65	8.135	0.134	16.55	1.515	0.014	0.714	0.003	0.017	0.32	30.95	53.55	0	2394	2022-12-14 20:05:51.670269	2022-12-14 20:05:51.670269
131	44.520418	2.427129	257	10.29	-0.01	173.55	125.91	228.82	90.09	1.225	10.9	8.25	0.066	12.85	1.345	0.023	0.751	0.006	0.036	0.382	13.3	23	0	2395	2022-12-14 20:05:51.675209	2022-12-14 20:05:51.675209
132	44.520397	2.42721	259	10.29	-0.03	173.45	125.91	228.82	90.09	11.4	11.6	7.68	0.628	36.1	7.18	0.387	2.37	0.004	0	0.369	131	227	0.021	2396	2022-12-14 20:05:51.679957	2022-12-14 20:05:51.679957
133	44.161368	2.544711	631	9.12	-0.79	176.64	118.45	229	90.73	3.54	12.5	5.47	0.075	7.175	1.582	0.044	0.446	0.007	0.284	0.307	44.05	76.25	0.048	2397	2022-12-14 20:05:51.685027	2022-12-14 20:05:51.685027
134	44.220329	1.064953	93	10.67	0.24	135.36	96.18	177.36	71.73	2.15	10.625	8.07	0.08	11.3	1.495	0.016	0.352	0	0.01	0.323	23.1	39.95	0	435	2022-12-14 20:05:51.690064	2022-12-14 20:05:51.690064
135	44.124864	2.255514	317	10.19	-0.07	153.36	104.91	194.27	78.18	3.355	12.25	6.23	0.063	9.66	2.06	0.025	0.356	0.003	0.027	0.293	41.05	71.05	0.057	2399	2022-12-14 20:05:51.696078	2022-12-14 20:05:51.696078
136	44.124876	2.255184	317	10.19	-0.07	153.27	104.91	194	78.18	2.6	12.3	8.21	0.059	16.6	1.31	0.045	0.875	0	0	0.31	32.1	55.5	0	2400	2022-12-14 20:05:51.700633	2022-12-14 20:05:51.700633
137	44.078884	2.711136	767	8.77	-1.05	195.55	120.27	239.18	93.09	2.71	11.6	6.515	0.12	8.345	1.82	0.026	1.23	0.003	0.07	0.358	31.45	54.35	0.025	2401	2022-12-14 20:05:51.705582	2022-12-14 20:05:51.705582
138	43.811758	2.871661	603	9.49	-0.74	214.36	82.91	265.09	80.64	1.18	12.1	7.38	0.015	8.12	1.19	0.061	0.444	0	0	0.297	14.3	24.7	0.011	2402	2022-12-14 20:05:51.710171	2022-12-14 20:05:51.710171
139	43.717856	0.623298	120	10.57	0.18	127.73	86.91	175.09	69.73	2.535	16.8	8.25	0.041	16.15	0.916	0.019	0.344	0.003	0.018	0.334	42.65	73.8	0	2403	2022-12-14 20:05:51.715384	2022-12-14 20:05:51.715384
140	43.372913	0.765694	278	10.13	-0.22	117.64	86.09	177.64	71.91	5.865	14.75	7.18	0.144	24.8	0.991	0.073	0.426	0.009	0.047	0.246	85.15	147	0	443	2022-12-14 20:05:51.719716	2022-12-14 20:05:51.719716
141	44.345163	2.620821	622	9.12	-0.86	166.91	126.18	229.55	88.27	3.655	10.1	7.73	0.118	15.85	2.715	0.024	0.887	0.003	0.019	0.514	36.85	63.8	0.003	2405	2022-12-14 20:05:51.729324	2022-12-14 20:05:51.729324
142	44.196005	2.493157	555	9.36	-0.68	176	117.91	223.55	93	4.32	9.925	8.025	0.224	16.6	0.83	0.03	0.396	0	0.023	0.33	42.9	74.25	0	450	2022-12-14 20:05:51.73556	2022-12-14 20:05:51.73556
143	44.196006	2.493076	555	9.36	-0.68	176	117.91	223.55	93	2.38	13.95	6.595	0.215	9.965	1.355	0.029	1.285	0	0.016	0.479	33.25	57.55	0.019	460	2022-12-14 20:05:51.742811	2022-12-14 20:05:51.742811
144	43.83165	2.20155	239	10.45	0.01	139.91	89.36	178.82	75.55	1.965	12.55	7.585	0.028	12.3	3.195	0.021	1.045	0.004	0.042	0.389	24.65	42.7	0.023	2408	2022-12-14 20:05:51.748971	2022-12-14 20:05:51.748971
145	44.041553	2.909576	446	10.28	-0.05	167.73	94.36	210.82	70.27	1.23	23.15	7.8	0.07	34.55	0.638	0.033	0.453	0.004	0.016	0.261	28.2	48.85	0	2409	2022-12-14 20:05:51.753638	2022-12-14 20:05:51.753638
146	43.667907	2.290214	261	10.38	-0.11	143.27	91.27	184.82	83.55	2.57	11.1	7.79	0.077	12.9	2.18	0.028	0.851	0.012	0.066	0.448	28.5	49.3	0	2410	2022-12-14 20:05:51.758279	2022-12-14 20:05:51.758279
147	43.024966	0.965965	413	10.04	-0.04	113.18	102	191.36	78.09	2.455	14.2	7.82	0.073	13.05	0.963	0.034	0.397	0	0.024	0.309	34.85	60.25	0.006	470	2022-12-14 20:05:51.763634	2022-12-14 20:05:51.763634
148	43.602578	2.36338	473	9.7	-0.45	215	108.64	252.18	103.45	3.37	18.2	7.69	0.078	14.05	1.219	0.372	0.716	0.004	0.02	0.386	59.85	103.4	0.003	480	2022-12-14 20:05:51.771236	2022-12-14 20:05:51.771236
149	43.494325	0.92391	179	10.55	0.09	115.82	85.09	171.18	71.18	0.94	10.3	7.13	0.039	8.865	1.25	0.048	0.877	0.01	0.06	0.38	9.63	16.7	0.036	2413	2022-12-14 20:05:51.777613	2022-12-14 20:05:51.777613
150	43.464914	1.365136	164	10.71	0.2	108.55	80.82	162.36	70.64	1.77	12.85	6.485	0.086	9.9	2.22	0.151	0.71	0.007	0.047	0.453	22.65	39.25	0.038	2414	2022-12-14 20:05:51.781697	2022-12-14 20:05:51.781697
151	43.474107	1.364175	164	10.69	0.19	108.55	80.91	161.82	70.55	8.5	14.35	6.87	0.228	22.75	3.615	0.055	1.14	0.003	0.029	0.336	122	210.5	0.042	490	2022-12-14 20:05:51.78604	2022-12-14 20:05:51.78604
152	43.475583	1.367589	164	10.69	0.19	108.55	80.73	161.82	70.45	1.735	11.05	7.295	0.123	10.25	1.185	0.049	0.854	0.003	0.017	0.36	19.3	33.35	0.018	2416	2022-12-14 20:05:51.793	2022-12-14 20:05:51.793
153	42.889844	1.485209	1023	8.15	-0.61	140.64	142.18	235.64	104.45	3.455	11.8	6.455	0.043	10.035	0.926	0.058	0.474	0.008	0.055	0.452	40.95	70.85	0.015	2417	2022-12-14 20:05:51.798403	2022-12-14 20:05:51.798403
154	43.487302	0.588798	193	10.39	0.11	124.09	85.45	179.55	71.18	1.595	12.65	7.98	0.044	11.35	0.597	0.041	0.24	0	0.023	0.403	20.25	35.1	0	2418	2022-12-14 20:05:51.804676	2022-12-14 20:05:51.804676
155	43.449392	0.734601	204	10.45	0.13	120.27	86.36	178.18	71.91	2.925	13.6	7.93	0.222	20.25	1.215	0.027	1.057	0	0.022	0.354	39.7	68.65	0	500	2022-12-14 20:05:51.81009	2022-12-14 20:05:51.81009
156	43.452628	2.072476	293	10.39	0.08	150	81.18	186.82	80.82	2.28	10.1	8.05	0.097	12.9	3.11	0.038	0.693	0	0	0.505	23.1	40	0	2420	2022-12-14 20:05:51.817673	2022-12-14 20:05:51.817673
157	43.85328	1.502009	99	10.82	0.24	119.64	80.91	164.64	69	0.752	12.1	7.23	0.07	4.35	0.448	0.047	0.382	0.005	0.038	0.327	9.1	15.75	0.008	2421	2022-12-14 20:05:51.827084	2022-12-14 20:05:51.827084
158	43.513975	1.082859	322	9.95	-0.41	118.73	89.55	174	74.36	0.882	18.25	7.73	0.035	5.84	0.294	0.029	0.246	0	0.026	0.222	16.1	27.85	0.003	509	2022-12-14 20:05:51.8356	2022-12-14 20:05:51.8356
159	44.022296	2.403434	459	9.73	-0.49	175.91	110.09	212.82	87.36	1.365	12.75	8.12	0.097	14.55	1.23	0.031	0.719	0.006	0.041	0.386	17.45	30.2	0	2423	2022-12-14 20:05:51.844996	2022-12-14 20:05:51.844996
160	44.052243	2.834023	629	9.35	-0.91	165.82	98	195.73	69.91	2.4	11.4	7.91	0.07	12	1.91	0.016	0.352	0	0.034	0.4	27.4	47.5	0.017	517	2022-12-14 20:05:51.849815	2022-12-14 20:05:51.849815
161	44.052243	2.834023	629	9.35	-0.91	165.82	98	195.73	69.91	2.21	10.9	7.73	0.134	9.53	2.14	0.013	0.479	0	0.031	0.366	24.1	41.7	0	2425	2022-12-14 20:05:51.855219	2022-12-14 20:05:51.855219
162	43.623801	2.089616	155	10.76	0.15	137.27	76	173.36	71.73	2.25	34.85	8.055	0.047	12	0.815	0.026	0.424	0.003	0.01	0.248	78.55	135.5	0	526	2022-12-14 20:05:51.859423	2022-12-14 20:05:51.859423
163	43.458174	1.380951	169	10.69	0.18	108.55	80.64	162.73	70.36	3.155	11.75	6.485	0.117	11.6	1.67	0.042	1.015	0.003	0.029	0.414	37.1	64.2	0.028	536	2022-12-14 20:05:51.865927	2022-12-14 20:05:51.865927
164	43.439784	1.671	188	10.72	0.11	120.45	79.27	168.18	72.55	1.59	14.4	8.085	0.126	14.05	0.725	0.028	0.582	0	0.024	0.398	22.5	38.95	0	546	2022-12-14 20:05:51.871986	2022-12-14 20:05:51.871986
165	43.440342	1.669595	187	10.72	0.11	120.27	79.27	168.18	72.55	1.345	12.4	8.16	0.091	11.66	1.038	0.062	1.102	0.003	0.017	0.431	15.475	26.75	0	556	2022-12-14 20:05:51.877782	2022-12-14 20:05:51.877782
166	43.440024	1.670111	188	10.72	0.1	120.36	79.27	168.09	72.55	2.045	18.8	7.79	0.114	13.145	0.673	0.041	0.657	0	0	0.339	36.3	62.85	0	566	2022-12-14 20:05:51.885134	2022-12-14 20:05:51.885134
167	43.439733	1.670712	188	10.72	0.11	120.36	79.27	168.18	72.55	1.26	26.2	7.82	0.038	8.58	0.26	0.017	0.164	0	0.023	0.19	33	57.1	0	2431	2022-12-14 20:05:51.895997	2022-12-14 20:05:51.895997
168	43.273815	0.321238	326	9.86	-0.14	131.09	82.36	191.73	74.64	3.485	12.65	5.33	0.062	6.645	1.051	0.047	0.474	0.009	0.433	0.442	44.2	76.5	0.085	574	2022-12-14 20:05:51.901144	2022-12-14 20:05:51.901144
\.


--
-- Data for Name: plant_neighborhoods; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plant_neighborhoods (id, population_id, plant_otu_1, plant_otu_3, plant_otu_4, plant_otu_7, plant_otu_8, plant_otu_10, plant_otu_15, plant_otu_16, plant_otu_18, plant_otu_20, plant_otu_27, plant_otu_46, plant_otu_49, plant_otu_65, plant_otu_67, plant_otu_71, plant_otu_72, plant_otu_78, plant_otu_83, plant_otu_87, plant_otu_88, plant_otu_100, plant_otu_109, plant_otu_113, plant_otu_114, plant_otu_132, plant_otu_136, plant_otu_143, plant_otu_145, plant_otu_146, plant_otu_147, plant_otu_149, plant_otu_154, plant_otu_159, plant_otu_179, plant_otu_192, plant_otu_196, plant_otu_198, plant_otu_202, plant_otu_203, plant_otu_204, plant_otu_216, plant_otu_223, plant_otu_234, plant_richness, plant_shannon, plant_pcoa1, plant_pcoa2, plant_pcoa3, created_at, updated_at) FROM stdin;
1	1	4	3	0	1	1	0	1	3	0	0	1	0	0	2	0	135	0	5	0	0	0	46	0	20	0	1	1	92	0	0	1	0	9	0	72	0	0	131	0	0	0	0	0	0	25	1.886075582	0.2097	-0.1391	-0.0576	2022-12-14 20:05:54.801132	2022-12-14 20:05:54.801132
2	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	109	0	0	0	0	0	0	5	0.984175582	-0.3308	0.1126	0.08224	2022-12-14 20:05:54.820672	2022-12-14 20:05:54.820672
3	19	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	12	0	378	0	1	0	0	0	0	2	0	10	8	18	0	0	0	0	20	0	0	0	8	0	0	13	1.136075582	0.01075	-0.1694	0.03258	2022-12-14 20:05:54.827324	2022-12-14 20:05:54.827324
4	2268	0	0	0	0	13	0	0	0	0	99	49	0	0	0	3	3	0	0	6	22	0	0	0	0	3	0	0	0	0	0	13	0	6	0	0	0	0	165	0	0	0	0	0	0	16	1.675675582	0.07034	-0.2135	-0.01854	2022-12-14 20:05:54.834705	2022-12-14 20:05:54.834705
5	2269	0	0	0	0	0	0	0	7	0	0	3	0	0	5	8	3	0	0	0	0	0	0	0	4	0	2	0	0	1	0	0	31	0	0	0	0	0	15	61	0	0	0	2	0	15	1.732275582	0.2202	-0.01358	0.128	2022-12-14 20:05:54.841914	2022-12-14 20:05:54.841914
6	27	10	1	5	1	0	0	0	0	0	0	0	36	0	0	0	67	0	0	0	0	0	429	0	31	0	7	0	2	0	0	0	0	181	1	0	0	0	124	0	0	2	0	0	0	17	1.613575582	0.2036	-0.03057	0.01391	2022-12-14 20:05:54.848272	2022-12-14 20:05:54.848272
7	2271	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	127	1	0	1	0	59	0	0	0	0	21	0	0	0	5	12	0	0	6	24	0	0	17	1.742275582	0.04391	0.02784	-0.2512	2022-12-14 20:05:54.857243	2022-12-14 20:05:54.857243
8	2272	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	558	0	0	0	0	0	0	3	0.822075582	-0.3344	0.1408	0.05284	2022-12-14 20:05:54.864687	2022-12-14 20:05:54.864687
9	2273	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:54.873031	2022-12-14 20:05:54.873031
10	2274	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:54.879058	2022-12-14 20:05:54.879058
11	2275	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:54.891546	2022-12-14 20:05:54.891546
12	2276	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:54.900927	2022-12-14 20:05:54.900927
13	2277	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:54.907837	2022-12-14 20:05:54.907837
14	2278	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:54.914103	2022-12-14 20:05:54.914103
15	2279	0	0	0	0	0	0	0	0	10	0	0	0	0	0	0	7	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	3	34	1	0	0	0	1	0	0	0	0	0	0	12	1.702075582	0.09057	-0.1281	0.08257	2022-12-14 20:05:54.92147	2022-12-14 20:05:54.92147
16	2280	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	154	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	15	1.299375582	0.1224	0.1648	-0.3763	2022-12-14 20:05:54.928427	2022-12-14 20:05:54.928427
17	2281	0	0	0	0	0	0	0	0	4	0	0	1	0	0	124	0	0	0	13	0	1	0	0	0	0	0	0	7	0	0	0	0	0	0	4	0	0	55	0	56	0	0	0	0	11	1.476575582	-0.06759	-0.02887	-0.1376	2022-12-14 20:05:54.934525	2022-12-14 20:05:54.934525
18	2282	0	0	0	0	0	0	0	0	12	0	0	1	0	0	14	0	0	0	2	0	13	0	0	0	0	10	0	3	0	0	0	0	249	0	13	0	0	104	0	0	0	3	0	0	13	1.413305582	-0.02485	-0.1328	-0.202	2022-12-14 20:05:54.941427	2022-12-14 20:05:54.941427
19	2283	0	0	0	0	0	5	0	0	0	0	0	1	0	0	0	8	0	0	0	0	0	0	12	0	0	18	0	0	0	0	0	0	0	0	0	0	0	30	0	0	0	0	0	0	8	1.301545582	0.04049	0.1851	0.03223	2022-12-14 20:05:54.947655	2022-12-14 20:05:54.947655
20	37	7	4	0	1	16	0	0	0	0	1	0	2	0	0	0	12	0	11	0	0	0	0	3	8	5	0	0	71	0	0	0	0	0	0	0	0	0	5	0	0	0	50	0	0	16	1.919875582	0.2361	0.08868	-0.03133	2022-12-14 20:05:54.957213	2022-12-14 20:05:54.957213
21	2285	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	2	0	0	1	0	0	0	0	34	0	64	0	0	9	3	0	0	0	0	0	7	1.349495582	-0.1901	-0.197	-0.1095	2022-12-14 20:05:54.967868	2022-12-14 20:05:54.967868
22	46	17	0	1	0	0	0	0	0	1	0	9	0	0	13	1	0	0	0	0	0	0	0	68	44	0	1	0	0	0	0	24	0	0	0	0	0	1	39	0	0	0	0	0	65	15	1.754075582	0.2122	0.0961	0.03959	2022-12-14 20:05:54.975194	2022-12-14 20:05:54.975194
23	2287	23	0	0	0	1	0	0	0	0	1	0	0	0	0	7	8	0	0	0	0	0	8	21	76	0	0	0	0	0	0	0	0	270	0	0	0	0	48	0	0	25	0	0	0	12	1.354885582	0.06432	-0.08923	-0.012	2022-12-14 20:05:54.982196	2022-12-14 20:05:54.982196
24	2288	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	2	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	0	4	1.171975582	0.009968	0.1299	0.2263	2022-12-14 20:05:54.989164	2022-12-14 20:05:54.989164
25	2289	3	0	1	1	0	0	0	0	1	0	0	0	0	0	0	2	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	1	0	20	0	0	84	0	0	0	0	0	0	14	0.957875582	-0.02177	-0.1039	0.04476	2022-12-14 20:05:54.995192	2022-12-14 20:05:54.995192
26	2290	1	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	43	0	0	9	0	0	0	9	1.455935582	-0.1172	0.1899	0.1206	2022-12-14 20:05:55.002974	2022-12-14 20:05:55.002974
27	56	1	0	0	0	0	0	0	0	0	4	1	0	0	0	0	0	0	0	0	0	0	31	0	0	0	0	0	96	0	0	7	0	34	0	0	0	0	470	0	0	0	0	0	0	8	1.055275582	-0.03266	-0.1404	-0.183	2022-12-14 20:05:55.009495	2022-12-14 20:05:55.009495
28	2292	1	0	0	4	0	0	1	0	1	0	0	3	0	0	0	6	4	0	0	0	1	0	0	1	2	0	0	0	0	0	0	0	0	4	1	0	0	11	7	0	0	0	0	0	23	2.227075582	0.1132	0.03798	0.1502	2022-12-14 20:05:55.015738	2022-12-14 20:05:55.015738
29	2293	0	0	0	0	0	0	0	0	0	0	0	7	1	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	24	0	0	0	0	0	0	5	1.137975582	-0.2095	0.1266	0.07025	2022-12-14 20:05:55.021732	2022-12-14 20:05:55.021732
30	2294	0	0	0	0	0	0	0	1	0	0	3	0	0	0	8	38	0	0	0	0	0	3	0	0	0	0	33	0	0	0	86	0	0	0	0	0	0	158	0	0	0	172	0	0	12	1.346555582	0.0893	-0.0363	0.05756	2022-12-14 20:05:55.027297	2022-12-14 20:05:55.027297
31	67	6	13	0	0	0	0	0	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	0	3	0	12	0	0	0	18	0	0	0	0	0	0	0	1	0	0	0	0	4	48	20	2.020275582	0.1682	0.2281	0.02279	2022-12-14 20:05:55.033587	2022-12-14 20:05:55.033587
32	2296	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.04048	2022-12-14 20:05:55.04048
33	2297	22	0	0	0	0	0	0	0	0	0	0	2	0	1	2	21	0	0	0	0	0	0	0	0	0	8	0	82	0	4	0	0	1	23	98	0	10	41	0	20	0	0	12	0	25	1.973675582	0.1458	0.0142	-0.1803	2022-12-14 20:05:55.04722	2022-12-14 20:05:55.04722
34	2298	0	0	0	0	0	0	1	0	0	2	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	35	0	2	0	0	136	12	0	0	0	0	0	7	1.005775582	-0.2172	-0.2215	0.009795	2022-12-14 20:05:55.054729	2022-12-14 20:05:55.054729
35	2299	0	1	0	0	0	0	0	0	0	0	0	0	14	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	41	0	0	0	0	188	0	0	0	0	0	0	9	1.068375582	-0.1929	-0.1227	0.000583	2022-12-14 20:05:55.062266	2022-12-14 20:05:55.062266
36	77	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7	0	0	0	0	0	5	4	1.033875582	-0.2347	0.1754	0.04502	2022-12-14 20:05:55.069186	2022-12-14 20:05:55.069186
37	80	1	4	0	0	0	0	0	0	0	0	0	0	0	0	0	50	24	0	0	0	0	0	0	14	0	0	5	3	0	1	1	0	0	0	0	0	0	15	2	0	0	0	47	356	25	1.238875582	0.02516	0.1479	0.06365	2022-12-14 20:05:55.076048	2022-12-14 20:05:55.076048
38	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.08255	2022-12-14 20:05:55.08255
39	2303	5	1	0	0	0	13	0	0	0	1	1	6	0	2	0	20	0	0	0	0	0	0	0	5	0	2	0	2	0	0	0	0	0	0	0	0	0	63	21	0	0	0	1	0	24	2.106575582	0.2141	0.1026	0.141	2022-12-14 20:05:55.088875	2022-12-14 20:05:55.088875
40	92	402	0	0	1	0	0	0	0	0	0	216	0	0	0	1	0	0	0	0	76	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	32	0	0	0	0	0	0	7	1.242775582	-0.01919	-0.02099	0.09547	2022-12-14 20:05:55.096449	2022-12-14 20:05:55.096449
41	102	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0	0	0	0	0	176	0	0	0	0	0	0	0	0	5	0.577075582	0.08608	0.1569	-0.403	2022-12-14 20:05:55.103562	2022-12-14 20:05:55.103562
42	111	8	0	0	0	0	0	0	0	0	1	20	0	0	0	45	124	0	4	11	0	0	4	0	5	0	0	0	0	0	0	0	0	43	0	0	1	3	197	0	0	0	0	0	0	17	1.580675582	0.1591	-0.194	0.05228	2022-12-14 20:05:55.110431	2022-12-14 20:05:55.110431
43	2307	0	0	0	5	0	0	0	0	1	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	14	0	1	0	0	3	0	0	0	0	23	11	0	0	0	0	0	12	1.756575582	-0.1129	-0.1226	-0.1762	2022-12-14 20:05:55.118093	2022-12-14 20:05:55.118093
44	2308	0	0	0	0	0	17	8	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7	0	0	0	0	0	0	12	1.248475582	-0.1395	0.21	0.02041	2022-12-14 20:05:55.124405	2022-12-14 20:05:55.124405
45	2309	5	0	0	0	1	0	0	0	0	0	1	0	0	0	4	37	0	0	6	2	40	3	2	33	61	0	40	6	0	0	0	0	0	0	63	0	0	19	0	0	0	0	0	0	17	1.895975582	0.213	-0.04761	-0.06047	2022-12-14 20:05:55.130928	2022-12-14 20:05:55.130928
46	121	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	29	0	2	0	0	0	0	6	1.012875582	-0.2104	0.09166	0.102	2022-12-14 20:05:55.142818	2022-12-14 20:05:55.142818
47	126	4	0	0	0	0	0	0	0	0	0	0	0	0	0	1	28	0	24	0	0	4	0	20	83	0	0	0	0	0	0	0	172	0	0	0	0	0	33	2	0	0	8	0	0	18	1.366375582	0.1595	0.006763	0.1317	2022-12-14 20:05:55.154037	2022-12-14 20:05:55.154037
48	2312	3	0	0	0	0	7	3	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	34	0	0	0	0	0	0	0	0	11	0	0	0	0	0	1	20	1.752275582	-0.03381	0.2065	0.006131	2022-12-14 20:05:55.165033	2022-12-14 20:05:55.165033
49	136	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	110	0	0	31	0	53	0	0	0	0	0	0	5	1.045275582	-0.2511	-0.1632	-0.06726	2022-12-14 20:05:55.172036	2022-12-14 20:05:55.172036
50	2314	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0.974975582	0.07003	0.02874	-0.3372	2022-12-14 20:05:55.178641	2022-12-14 20:05:55.178641
51	2315	1	0	1	14	0	0	7	0	37	0	7	3	4	19	22	42	0	0	0	0	22	0	0	0	0	1	0	99	0	0	0	0	3	0	0	0	0	30	0	0	0	0	0	0	24	2.082275582	0.232	-0.04191	-0.07305	2022-12-14 20:05:55.18576	2022-12-14 20:05:55.18576
52	145	48	8	0	0	5	0	0	0	0	0	6	9	0	0	0	152	0	0	0	0	0	4	446	3	12	0	12	0	0	0	0	0	20	0	0	0	0	184	0	0	0	0	0	38	19	1.581775582	0.1559	0.01855	0.01279	2022-12-14 20:05:55.19209	2022-12-14 20:05:55.19209
53	154	0	0	15	0	0	28	0	0	0	0	0	8	0	7	0	60	1	1	0	0	0	150	45	48	0	0	0	9	0	0	0	0	0	45	0	0	0	35	0	0	0	0	0	122	20	2.065375582	0.2657	0.09873	-0.01577	2022-12-14 20:05:55.197781	2022-12-14 20:05:55.197781
54	2318	0	1	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	5	94	0	0	0	0	0	2	0	0	0	0	0	26	268	0	11	0	0	49	0	0	15	0	0	0	14	1.282375582	-0.1191	-0.07053	-0.1016	2022-12-14 20:05:55.2064	2022-12-14 20:05:55.2064
55	164	4	3	0	1	0	0	0	0	0	0	1	4	0	8	0	9	0	0	0	0	0	96	0	89	0	11	0	0	0	0	101	0	0	0	3	0	0	14	0	0	0	0	0	0	20	1.861475582	0.25	0.01144	0.159	2022-12-14 20:05:55.21406	2022-12-14 20:05:55.21406
56	173	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	74	0	6	0	0	0	0	3	0.961075582	-0.2787	0.08407	0.08168	2022-12-14 20:05:55.228081	2022-12-14 20:05:55.228081
57	2321	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20	0	0	0	0	0	0	1	0	0	0	0	2	0	5	0	0	0	0	10	1.319215582	-0.1245	0.05088	-0.07074	2022-12-14 20:05:55.235346	2022-12-14 20:05:55.235346
58	183	0	0	0	0	0	11	0	0	0	0	0	2	0	6	0	2	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	96	4	0	0	0	0	0	11	1.155875582	0.0168	0.1117	0.2222	2022-12-14 20:05:55.241566	2022-12-14 20:05:55.241566
59	2323	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	13	0	0	1	0	0	0	6	1.454595582	-0.1966	0.1468	0.09161	2022-12-14 20:05:55.248016	2022-12-14 20:05:55.248016
60	2324	8	0	0	0	0	1	4	0	15	1	0	3	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	35	8	0	1	0	2	0	0	0	3	0	0	0	0	0	0	26	1.725875582	0.03004	0.1456	0.05262	2022-12-14 20:05:55.254154	2022-12-14 20:05:55.254154
61	2325	8	0	2	0	14	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	1.345235582	0.09073	0.1695	-0.08954	2022-12-14 20:05:55.260109	2022-12-14 20:05:55.260109
62	2326	0	0	0	0	1	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	2	0	0	0	0	0	0	4	1.349035582	-0.1662	0.1024	-0.01419	2022-12-14 20:05:55.266517	2022-12-14 20:05:55.266517
63	2327	12	0	0	7	0	0	0	2	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	60	0	0	0	0	0	0	5	0	0	0	0	0	0	7	1.120075582	-0.03832	0.09388	0.01842	2022-12-14 20:05:55.274293	2022-12-14 20:05:55.274293
64	1706	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	21	0	0	0	0	0	0	0	1	0.316075582	-0.00079	0.08954	-0.1557	2022-12-14 20:05:55.280736	2022-12-14 20:05:55.280736
65	191	2	0	0	0	0	0	0	0	0	0	0	0	1	0	0	43	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	37	2	0	0	0	2	0	7	1.226675582	-0.0263	-0.0163	0.1581	2022-12-14 20:05:55.286742	2022-12-14 20:05:55.286742
66	2330	0	0	0	0	0	10	7	35	0	0	2	21	0	43	10	36	8	0	2	3	0	0	0	35	0	0	0	3	0	0	0	10	2	4	0	0	0	35	0	0	0	0	2	0	28	2.422775582	0.2556	-0.0227	0.06271	2022-12-14 20:05:55.292841	2022-12-14 20:05:55.292841
67	201	0	0	0	0	0	0	0	0	0	1	1	2	2	0	2	0	0	0	0	0	0	0	1	18	0	0	0	0	0	0	0	0	37	0	3	0	0	80	0	0	0	5	0	0	13	1.330565582	-0.05975	-0.169	-0.01611	2022-12-14 20:05:55.29883	2022-12-14 20:05:55.29883
68	2332	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.306438	2022-12-14 20:05:55.306438
69	211	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	0	2	0	0	0	0	0	0	0	0	0	3	29	0	0	87	0	0	0	0	0	0	4	0.827975582	-0.188	0.04124	0.07878	2022-12-14 20:05:55.313113	2022-12-14 20:05:55.313113
70	221	1	0	0	0	0	0	0	0	0	0	0	0	0	0	12	1	0	0	0	7	0	0	0	0	0	0	0	0	0	0	0	0	27	0	4	0	0	4	0	0	0	0	5	0	9	1.442105582	-0.03713	-0.113	0.02197	2022-12-14 20:05:55.320826	2022-12-14 20:05:55.320826
71	226	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	199	1	1	363	0	97	1	0	0	0	0	0	10	1.198075582	-0.06184	-0.1582	0.04362	2022-12-14 20:05:55.327771	2022-12-14 20:05:55.327771
72	235	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.334881	2022-12-14 20:05:55.334881
73	2337	0	0	0	0	0	0	0	0	0	0	0	0	212	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	213	0	0	0	0	0	0	3	0.661675582	-0.3095	0.07372	0.04497	2022-12-14 20:05:55.34035	2022-12-14 20:05:55.34035
74	2338	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	0	0	261	0	7	0	0	0	0	5	0.789175582	-0.2822	-0.02008	0.01957	2022-12-14 20:05:55.348503	2022-12-14 20:05:55.348503
75	2339	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.359131	2022-12-14 20:05:55.359131
76	241	1	0	0	0	0	0	0	0	0	0	98	0	0	0	4	25	0	0	0	0	0	29	21	1	7	0	0	9	0	0	0	0	7	0	0	0	0	80	0	0	0	0	0	0	13	1.526075582	0.1627	-0.1733	-0.0269	2022-12-14 20:05:55.364593	2022-12-14 20:05:55.364593
77	252	0	0	0	2	0	0	0	0	0	0	0	4	0	11	0	23	0	0	1	0	0	0	0	2	0	0	0	0	0	0	0	0	58	0	0	0	0	87	0	5	0	0	0	0	9	1.387835582	0.1005	-0.1109	0.1062	2022-12-14 20:05:55.373929	2022-12-14 20:05:55.373929
78	2342	5	0	0	0	0	1	1	0	1	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6	9	0	7	0	0	7	0	2	0	0	0	0	15	1.965675582	-0.02859	-0.191	0.01803	2022-12-14 20:05:55.381329	2022-12-14 20:05:55.381329
79	262	1	0	0	0	0	0	0	0	0	0	1	2	0	0	2	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	0	4	33	0	0	0	6	11	0	0	0	0	0	0	12	1.586075582	0.06915	-0.1118	0.1018	2022-12-14 20:05:55.388495	2022-12-14 20:05:55.388495
80	273	2	0	0	0	0	0	2	0	2	0	2	0	0	0	0	0	0	0	0	0	0	39	0	1	0	0	0	1	0	0	0	0	28	0	0	1	0	36	0	11	0	1	0	0	16	1.594775582	0.04374	-0.2008	-0.07162	2022-12-14 20:05:55.398627	2022-12-14 20:05:55.398627
81	2345	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.40441	2022-12-14 20:05:55.40441
82	2346	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	109	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	65	7	0	0	0	0	0	6	1.050475582	-0.00946	-0.02056	0.1815	2022-12-14 20:05:55.411209	2022-12-14 20:05:55.411209
83	2347	0	0	0	0	0	0	0	7	0	0	0	79	0	26	0	0	0	0	3	0	0	0	0	0	4	48	37	287	0	0	0	0	0	0	0	0	0	61	0	0	7	0	0	0	16	1.718875582	0.1172	0.2161	-0.2127	2022-12-14 20:05:55.418481	2022-12-14 20:05:55.418481
84	283	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.424949	2022-12-14 20:05:55.424949
85	2349	0	0	0	3	0	0	0	0	0	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	138	6	0	0	0	0	0	4	0.553375582	-0.2983	0.1058	0.08596	2022-12-14 20:05:55.434518	2022-12-14 20:05:55.434518
86	2350	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.445972	2022-12-14 20:05:55.445972
87	2351	1	0	0	75	0	0	1	0	0	0	4	0	0	0	8	26	0	0	0	2	0	0	0	29	0	0	0	0	0	0	0	0	4	0	0	0	0	58	0	0	0	21	0	0	13	1.436185582	0.09204	-0.1413	0.06399	2022-12-14 20:05:55.457839	2022-12-14 20:05:55.457839
88	2352	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	20	8	0	0	1	0	0	6	1.045775582	-0.1135	0.05594	-0.03534	2022-12-14 20:05:55.464431	2022-12-14 20:05:55.464431
89	2353	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.470032	2022-12-14 20:05:55.470032
90	293	0	0	0	0	0	0	0	0	4	3	0	0	0	0	82	0	0	0	0	19	0	5	0	0	0	0	0	0	0	0	0	0	21	0	0	0	0	63	3	0	0	0	0	0	8	1.068975582	-0.2192	-0.1876	-0.02773	2022-12-14 20:05:55.475914	2022-12-14 20:05:55.475914
91	2355	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.481069	2022-12-14 20:05:55.481069
92	1794	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	8	0	0	32	0	0	88	0	0	31	0	0	0	0	0	0	75	0	0	0	0	0	0	10	1.298975582	0.03457	0.1184	-0.01371	2022-12-14 20:05:55.486278	2022-12-14 20:05:55.486278
93	2357	0	0	0	0	0	0	0	0	0	6	4	0	0	0	0	0	0	0	0	405	0	6	0	0	0	0	0	0	0	0	0	0	6	0	6	0	0	73	0	1	0	0	0	0	10	1.192775582	-0.1773	-0.2963	-0.02102	2022-12-14 20:05:55.493291	2022-12-14 20:05:55.493291
94	303	0	0	0	0	0	0	0	0	0	0	38	0	0	0	0	0	0	0	0	14	0	5	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	709	8	0	0	0	0	0	8	1.045175582	-0.1334	-0.1191	0.1389	2022-12-14 20:05:55.500963	2022-12-14 20:05:55.500963
95	313	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	98	0	0	12	0	11	2	0	0	2	0	0	9	1.195375582	-0.1521	-0.18	0.03602	2022-12-14 20:05:55.51322	2022-12-14 20:05:55.51322
96	314	0	0	0	0	0	0	0	7	0	0	8	0	0	0	0	0	0	19	0	0	0	0	0	0	0	0	0	0	0	0	0	0	24	0	34	0	0	60	0	0	0	0	0	0	8	1.614175582	-0.1589	-0.1344	0.02565	2022-12-14 20:05:55.520804	2022-12-14 20:05:55.520804
97	324	1	0	0	0	0	0	1	25	0	0	1	0	1	0	0	0	0	0	0	2	0	0	0	5	0	0	0	0	0	0	0	0	0	0	12	0	0	7	0	0	0	0	0	0	12	1.631475582	0.01218	-0.07557	0.1314	2022-12-14 20:05:55.527616	2022-12-14 20:05:55.527616
98	2362	1	0	0	0	0	0	0	0	0	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	74	38	0	0	0	0	0	4	1.038175582	-0.2238	0.1078	0.1246	2022-12-14 20:05:55.533898	2022-12-14 20:05:55.533898
99	2363	21	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	60	0	0	0	0	28	0	0	0	0	0	0	3	0.942775582	-0.1608	0.04466	0.03776	2022-12-14 20:05:55.540367	2022-12-14 20:05:55.540367
100	2364	0	0	0	0	0	0	0	0	6	0	0	10	0	0	0	41	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	2	0	0	0	0	0	7	0	0	0	0	0	0	8	1.453695582	-0.03461	0.1597	-0.01153	2022-12-14 20:05:55.546629	2022-12-14 20:05:55.546629
101	334	0	0	0	0	0	0	0	0	0	0	63	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	7	0	1	86	1	0	518	0	0	0	8	0	0	0	0	0	0	9	1.163175582	-0.04884	0.02859	-0.04076	2022-12-14 20:05:55.554528	2022-12-14 20:05:55.554528
102	2366	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	0	0	3	0	0	0	2	0	0	0	0	58	0	0	0	0	63	0	0	16	0	82	0	0	0	0	0	0	10	1.515675582	0.05237	-0.01272	-0.1366	2022-12-14 20:05:55.566466	2022-12-14 20:05:55.566466
103	2367	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.580092	2022-12-14 20:05:55.580092
104	2368	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	88	0	0	0	0	3	0	0	0	0	15	0	0	0	0	6	0	0	0	0	0	0	5	0.977575582	-0.05339	-0.1051	-0.2227	2022-12-14 20:05:55.587221	2022-12-14 20:05:55.587221
105	2369	0	0	0	0	4	0	12	0	0	16	0	0	0	0	0	24	0	0	0	0	0	0	0	0	0	7	0	55	0	0	0	0	1	0	0	0	0	80	0	0	0	0	0	0	7	1.437345582	0.04337	0.01535	-0.1762	2022-12-14 20:05:55.593011	2022-12-14 20:05:55.593011
106	343	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.599597	2022-12-14 20:05:55.599597
107	2371	0	0	0	0	0	0	0	1	1	0	6	0	0	0	0	38	0	0	0	2	0	4	0	1	0	0	0	0	0	0	0	2	52	0	2	0	0	64	0	0	0	0	0	0	12	1.236175582	0.07948	-0.1564	0.1663	2022-12-14 20:05:55.606001	2022-12-14 20:05:55.606001
108	353	3	0	0	1	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	27	0	0	0	0	48	242	12	0	0	1011	0	0	0	0	0	0	11	0.830275582	-0.06109	-0.1583	-0.2102	2022-12-14 20:05:55.612937	2022-12-14 20:05:55.612937
109	363	0	0	2	0	10	0	1	0	0	10	130	0	0	4	1	7	0	0	12	0	0	0	0	1	0	3	0	0	0	0	0	0	0	0	0	6	0	217	0	0	0	0	0	15	19	1.662175582	0.2088	0.05052	-0.01267	2022-12-14 20:05:55.624938	2022-12-14 20:05:55.624938
110	2374	187	0	0	0	0	0	0	0	0	130	0	2	0	0	0	47	0	0	0	244	0	0	0	2	1	6	0	0	0	0	0	0	0	0	0	0	0	863	0	0	0	1	0	1	15	1.322005582	0.1714	0.1128	0.08829	2022-12-14 20:05:55.636323	2022-12-14 20:05:55.636323
111	2375	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	46	0	2	0	0	45	0	0	0	9	0	0	8	1.222175582	-0.2372	-0.2301	-0.04579	2022-12-14 20:05:55.647538	2022-12-14 20:05:55.647538
112	2376	2	0	1	1	0	0	0	0	0	0	1	0	2	17	0	62	0	0	6	0	0	0	323	29	0	0	0	121	0	0	0	0	0	0	0	0	0	6	0	0	0	0	15	11	23	1.749875582	0.2721	0.09533	-0.00982	2022-12-14 20:05:55.653955	2022-12-14 20:05:55.653955
113	2377	2	0	9	11	4	0	0	0	0	0	10	0	0	1	0	0	0	0	0	0	0	0	11	1	0	0	0	0	17	0	0	21	87	0	0	0	2	26	0	0	0	0	7	29	23	2.111375582	0.1434	-0.09487	-0.0088	2022-12-14 20:05:55.65968	2022-12-14 20:05:55.65968
114	2378	4	0	0	0	0	0	0	0	0	4	4	0	0	0	0	2	0	0	0	13	0	37	0	1	0	0	0	0	0	0	0	0	34	0	9	0	0	102	1	0	0	0	0	0	11	1.435215582	0.08838	-0.234	0.1258	2022-12-14 20:05:55.666803	2022-12-14 20:05:55.666803
115	2379	0	0	0	0	0	0	0	0	0	0	1	12	0	0	0	8	0	0	0	0	0	0	0	0	24	0	58	0	0	0	23	6	0	0	0	0	0	1	0	0	0	0	0	0	10	1.695375582	0.1398	0.01368	0.1451	2022-12-14 20:05:55.673407	2022-12-14 20:05:55.673407
116	373	5	0	0	0	0	0	0	0	0	0	1	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	4	0	50	143	0	0	3	0	0	9	1.140175582	-0.09055	0.06568	0.1362	2022-12-14 20:05:55.680863	2022-12-14 20:05:55.680863
117	383	40	6	0	0	0	28	0	0	0	0	1	4	0	1	0	85	0	0	0	0	0	0	0	0	0	12	20	0	0	0	0	0	0	0	0	0	0	25	0	0	0	0	0	1	19	1.748175582	0.1921	0.1637	0.1502	2022-12-14 20:05:55.688612	2022-12-14 20:05:55.688612
118	392	1	0	0	0	0	0	0	0	47	0	0	0	0	0	0	0	0	0	0	0	0	91	7	6	0	44	0	29	0	0	7	0	0	0	0	0	0	17	0	0	0	0	0	6	13	1.675675582	0.1611	0.1315	-0.1806	2022-12-14 20:05:55.696567	2022-12-14 20:05:55.696567
119	2383	1	0	0	0	0	0	0	50	1	0	4	33	0	24	0	79	0	0	4	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	35	0	0	0	0	0	3	20	2.018375582	0.2162	0.07944	0.1354	2022-12-14 20:05:55.703538	2022-12-14 20:05:55.703538
120	402	10	2	0	0	0	0	0	0	0	0	0	31	0	14	0	3	0	0	45	0	0	0	0	0	0	0	14	9	0	0	0	16	2	0	1	0	0	62	0	0	0	0	0	0	20	1.885375582	0.06244	-0.01729	-0.01851	2022-12-14 20:05:55.710734	2022-12-14 20:05:55.710734
121	2385	1	0	0	0	0	0	6	0	6	1	5	6	0	1	0	0	0	0	39	0	0	0	0	14	0	0	0	0	0	0	0	0	0	1	8	0	0	56	0	1	0	0	0	0	16	1.599475582	0.0848	0.0211	0.08555	2022-12-14 20:05:55.720951	2022-12-14 20:05:55.720951
122	2386	0	0	0	4	0	0	0	0	3	0	2	0	0	0	0	31	0	0	0	3	0	0	0	0	10	5	0	57	0	4	1	0	13	0	1	0	0	216	0	0	0	11	1	0	19	1.541975582	0.1326	-0.159	-0.1383	2022-12-14 20:05:55.739202	2022-12-14 20:05:55.739202
123	2387	0	0	1	2	0	0	0	0	3	0	0	0	0	0	0	0	0	0	6	0	0	0	0	0	0	0	0	0	0	4	0	0	0	0	5	0	0	2	0	0	0	0	0	0	11	1.729775582	-0.1414	0.08105	-0.05381	2022-12-14 20:05:55.746562	2022-12-14 20:05:55.746562
124	407	0	0	0	1	1	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	73	0	0	75	0	17	1	0	0	0	0	0	10	1.333115582	-0.1045	-0.1738	-0.05845	2022-12-14 20:05:55.753527	2022-12-14 20:05:55.753527
125	1237	0	0	0	0	0	0	0	1	0	0	5	0	0	0	2	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	36	1	39	0	14	0	0	0	0	11	1.659975582	-0.01055	-0.02045	0.06784	2022-12-14 20:05:55.761502	2022-12-14 20:05:55.761502
126	417	0	0	0	1	0	0	0	2	0	0	105	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	72	1	0	0	57	0	0	7	1.205775582	-0.05465	-0.02871	0.1309	2022-12-14 20:05:55.768046	2022-12-14 20:05:55.768046
127	425	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	0	20	0	0	0	0	18	0	0	8	0	0	0	5	0.987875582	-0.1078	-0.0634	-0.2683	2022-12-14 20:05:55.775285	2022-12-14 20:05:55.775285
128	2392	0	0	0	0	0	0	0	0	0	0	0	1	0	0	26	0	0	0	0	22	0	0	0	0	0	4	0	28	0	0	0	0	0	1	0	0	0	18	0	0	0	8	0	0	13	1.771975582	-0.01374	0.06828	-0.2256	2022-12-14 20:05:55.784761	2022-12-14 20:05:55.784761
129	2393	14	0	0	0	0	0	0	0	2	0	1	0	34	36	0	0	0	0	5	0	1	0	0	0	0	0	0	0	2	0	0	15	15	0	0	0	0	4	81	0	0	0	0	0	15	1.757375582	0.03899	-0.1216	0.06125	2022-12-14 20:05:55.794742	2022-12-14 20:05:55.794742
130	2394	0	0	0	9	0	0	0	0	0	4	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	121	0	0	0	0	0	0	4	0.828175582	-0.2369	0.09444	0.0101	2022-12-14 20:05:55.800639	2022-12-14 20:05:55.800639
131	2395	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	8	1.350805582	0.03893	0.1061	-0.08116	2022-12-14 20:05:55.807954	2022-12-14 20:05:55.807954
132	2396	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	20	1	0	4	0	0	0	5	0.943175582	-0.1625	0.16	0.1015	2022-12-14 20:05:55.814689	2022-12-14 20:05:55.814689
133	2397	0	0	0	0	0	2	0	0	44	8	0	0	0	0	0	377	0	54	0	0	0	0	0	114	0	4	0	0	0	0	0	0	0	0	0	0	0	68	0	0	1	0	0	0	19	1.625075582	0.1056	0.08747	0.1052	2022-12-14 20:05:55.820154	2022-12-14 20:05:55.820154
134	435	0	0	0	0	1	0	0	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	170	0	0	0	0	248	0	9	1.044275582	-0.1709	0.078	0.02008	2022-12-14 20:05:55.827469	2022-12-14 20:05:55.827469
135	2399	0	0	0	0	22	0	0	0	0	41	0	0	3	0	0	11	0	0	0	0	0	0	0	0	0	95	0	0	0	12	0	0	0	0	0	0	0	23	0	0	0	0	0	0	17	1.964175582	-0.05478	0.151	-0.0909	2022-12-14 20:05:55.836412	2022-12-14 20:05:55.836412
136	2400	0	0	0	0	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	0	0	0	0	0	0	0	7	0	0	13	2	0	0	10	1.616775582	-0.1971	0.154	-0.06014	2022-12-14 20:05:55.842711	2022-12-14 20:05:55.842711
137	2401	0	0	0	0	0	0	0	0	1	1	0	65	0	0	0	14	0	3	0	0	1	0	0	142	0	0	0	0	0	0	0	3	0	3	0	0	1	20	33	0	0	0	0	0	20	1.351095582	0.1056	0.01633	0.1874	2022-12-14 20:05:55.848633	2022-12-14 20:05:55.848633
138	2402	1	5	0	0	0	0	0	0	0	0	3	0	0	0	0	10	0	0	0	0	0	0	0	11	0	14	0	0	0	11	2	0	0	0	0	0	0	8	0	0	1	0	2	16	20	1.475645582	0.2094	0.1364	0.04542	2022-12-14 20:05:55.855105	2022-12-14 20:05:55.855105
139	2403	0	0	0	0	0	0	0	14	0	0	0	0	1	0	7	11	0	0	2	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	33	0	0	0	44	1	0	12	1.622575582	-0.01402	0.002359	-0.02587	2022-12-14 20:05:55.861582	2022-12-14 20:05:55.861582
140	443	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.868802	2022-12-14 20:05:55.868802
141	2405	0	0	0	0	0	0	0	0	0	0	0	0	4	1	0	70	0	7	11	0	0	0	25	2	13	6	0	35	0	0	0	0	0	3	0	0	0	20	0	0	0	0	0	11	21	2.044975582	0.2115	0.139	-0.1588	2022-12-14 20:05:55.87865	2022-12-14 20:05:55.87865
142	450	0	0	0	0	0	0	0	0	0	0	5	0	0	0	0	2	0	0	0	8	1	0	0	0	0	0	0	0	0	0	0	2	3	0	11	182	0	159	0	2	0	0	0	0	12	1.227275582	-0.04967	-0.3068	0.02027	2022-12-14 20:05:55.89011	2022-12-14 20:05:55.89011
143	460	0	0	0	0	0	0	0	0	0	0	0	7	1	0	0	0	0	5	0	21	0	0	0	0	0	0	0	0	0	0	0	0	6	0	39	0	0	39	0	8	0	0	0	0	10	1.519075582	-0.137	-0.1891	-0.00239	2022-12-14 20:05:55.901378	2022-12-14 20:05:55.901378
144	2408	6	0	0	0	0	25	3	0	0	0	0	3	0	10	5	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	0	2	0	0	0	0	0	10	0	0	0	46	0	0	23	2.058075582	0.1643	0.08717	0.1511	2022-12-14 20:05:55.91351	2022-12-14 20:05:55.91351
145	2409	2	0	0	0	2	0	0	0	0	0	13	0	0	1	1	0	0	0	6	0	1	0	3	0	0	36	0	1	0	0	0	0	2	0	0	0	0	24	0	0	0	0	0	0	17	1.870675582	0.08361	0.02003	-0.1869	2022-12-14 20:05:55.925369	2022-12-14 20:05:55.925369
146	2410	6	2	0	0	0	0	0	0	0	0	0	0	0	2	2	21	170	0	0	0	0	0	0	13	0	0	0	0	23	19	2	20	0	0	0	0	0	40	0	0	4	0	15	0	23	1.960475582	0.2363	0.1092	0.1172	2022-12-14 20:05:55.936315	2022-12-14 20:05:55.936315
147	470	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	3	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	105	0	1	1	0	71	0	0	0	0	0	0	7	0.644875582	-0.1344	-0.02431	0.1027	2022-12-14 20:05:55.942688	2022-12-14 20:05:55.942688
148	480	1	0	0	0	0	2	0	0	13	1	0	13	0	0	5	0	0	0	0	0	0	0	0	1	0	0	0	3	13	0	1	0	0	0	0	0	0	8	0	0	0	0	0	0	21	1.938875582	0.0225	0.1188	-0.02325	2022-12-14 20:05:55.948708	2022-12-14 20:05:55.948708
149	2413	0	0	0	1	0	0	0	1	0	0	1	0	0	0	12	158	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	4	257	0	0	0	0	46	0	0	0	0	0	0	10	1.170675582	0.03171	-0.2359	0.04857	2022-12-14 20:05:55.956432	2022-12-14 20:05:55.956432
150	2414	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.962811	2022-12-14 20:05:55.962811
151	490	0	2	0	0	1	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	3	0	0	0	0	0	28	0	0	0	0	1	4	0	0	0	87	0	3	0	0	0	0	12	1.333575582	-0.04281	-0.01782	-0.2266	2022-12-14 20:05:55.968104	2022-12-14 20:05:55.968104
152	2416	123	1	0	2	0	0	0	0	0	0	3	113	0	73	0	197	0	0	0	3	0	0	0	9	0	5	0	0	0	0	0	277	0	0	2	0	0	37	0	0	0	0	0	0	18	1.779875582	0.2862	0.02615	0.1672	2022-12-14 20:05:55.973857	2022-12-14 20:05:55.973857
153	2417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.981698	2022-12-14 20:05:55.981698
154	2418	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:55.989114	2022-12-14 20:05:55.989114
155	500	0	0	0	0	0	0	1	0	0	1	8	0	0	0	7	9	0	1	0	4	1	3	0	4	0	0	0	0	0	0	0	0	117	0	1	1	0	27	12	0	0	7	0	0	16	1.574075582	0.1141	-0.2689	0.09049	2022-12-14 20:05:55.995439	2022-12-14 20:05:55.995439
156	2420	1	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	106	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	12	1.147575582	0.1338	0.2244	-0.2076	2022-12-14 20:05:56.001596	2022-12-14 20:05:56.001596
157	2421	0	0	0	0	0	0	0	0	0	14	0	0	0	0	1	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	0	0	0	0	0	0	0	151	0	0	0	0	0	0	3	0.797375582	-0.114	0.08184	0.1012	2022-12-14 20:05:56.008785	2022-12-14 20:05:56.008785
158	509	0	1	0	0	0	0	2	29	2	0	57	0	0	0	24	0	0	0	0	3	0	205	0	0	0	0	0	11	0	0	0	0	0	4	0	0	4	59	0	0	0	72	0	0	16	1.630975582	0.08831	-0.07855	-0.1473	2022-12-14 20:05:56.015797	2022-12-14 20:05:56.015797
159	2423	27	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	1	0.779175582	-0.1982	0.1978	0.1147	2022-12-14 20:05:56.022783	2022-12-14 20:05:56.022783
160	517	0	0	86	3	2	0	0	0	0	1	0	0	0	0	0	0	0	6	0	0	0	0	0	2	0	3	0	0	0	0	0	0	0	0	0	0	0	43	0	4	1	0	0	0	11	1.298175582	-0.02842	0.1207	-0.1131	2022-12-14 20:05:56.02884	2022-12-14 20:05:56.02884
161	2425	0	0	0	8	0	0	0	0	2	0	0	0	0	1	6	20	0	4	0	4	1	0	0	5	0	0	0	0	0	0	0	11	21	0	0	0	0	16	0	19	0	0	0	0	13	1.874675582	0.09801	-0.232	0.03869	2022-12-14 20:05:56.036028	2022-12-14 20:05:56.036028
162	526	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	1	0	0	0	9	0	5	2	0	133	0	0	0	0	0	0	0	0	0	82	0	0	2	0	0	1	12	1.309755582	0.1117	0.1951	-0.1977	2022-12-14 20:05:56.043587	2022-12-14 20:05:56.043587
163	536	26	0	0	0	0	0	0	0	0	1	5	3	0	3	1	4	0	0	0	4	0	3	0	202	0	0	44	0	0	0	0	8	0	0	1	401	0	1175	0	0	0	2	0	0	20	1.254975582	0.2579	-0.0752	0.1708	2022-12-14 20:05:56.060234	2022-12-14 20:05:56.060234
164	546	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	2022-12-14 20:05:56.066561	2022-12-14 20:05:56.066561
165	556	76	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	88	354	0	4	0	0	0	0	9	1.327065582	-0.1062	0.1059	0.005348	2022-12-14 20:05:56.072932	2022-12-14 20:05:56.072932
166	566	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	156	0	0	0	23	0	0	0	0	1	1	36	0	0	0	5	5	0	0	0	0	0	0	12	1.347185582	-0.02724	-0.0752	-0.125	2022-12-14 20:05:56.079819	2022-12-14 20:05:56.079819
167	2431	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	15	0	0	0	0	0	0	1	0.836475582	-0.3654	0.1655	0.08335	2022-12-14 20:05:56.08725	2022-12-14 20:05:56.08725
168	574	0	0	0	0	0	0	0	0	0	0	4	0	0	1	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	21	51	0	17	0	0	102	0	1	0	0	0	0	11	1.370695582	0.008788	-0.2708	0.09611	2022-12-14 20:05:56.095923	2022-12-14 20:05:56.095923
\.


--
-- Data for Name: plant_samples; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plant_samples (id, label, storage_method, quantity, accession_tray, replication_tray, "row", "column", sowing_date, harvest_date, created_at, updated_at, accession_id, species_id) FROM stdin;
1	Eve-AMBR-A-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.108805	2022-12-14 20:05:56.108805	5	1561
2	Eve-AMBR-A-6-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.145553	2022-12-14 20:05:56.145553	6	1561
3	Eve-AMBR-A-8-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.154113	2022-12-14 20:05:56.154113	8	1561
4	Eve-AMBR-A-10-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.162841	2022-12-14 20:05:56.162841	10	1561
5	Eve-AMBR-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.171065	2022-12-14 20:05:56.171065	1566	1561
6	Eve-ANGE-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.178473	2022-12-14 20:05:56.178473	11	1561
7	Eve-ANGE-A-2-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.183553	2022-12-14 20:05:56.183553	12	1561
8	Eve-ANGE-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.189078	2022-12-14 20:05:56.189078	12	1561
9	Eve-ANGE-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.194817	2022-12-14 20:05:56.194817	13	1561
10	Eve-ANGE-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.199944	2022-12-14 20:05:56.199944	14	1561
11	Eve-ANGE-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.205481	2022-12-14 20:05:56.205481	14	1561
12	Eve-ANGE-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.210739	2022-12-14 20:05:56.210739	898	1561
13	Eve-ANGE-A-6-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.215393	2022-12-14 20:05:56.215393	15	1561
14	Eve-ANGE-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.223701	2022-12-14 20:05:56.223701	900	1561
15	Eve-ANGE-A-8-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.234736	2022-12-14 20:05:56.234736	901	1561
16	Eve-ANGE-A-8-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.240014	2022-12-14 20:05:56.240014	901	1561
17	Eve-ANGE-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.244011	2022-12-14 20:05:56.244011	902	1561
18	Eve-ANGE-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.248632	2022-12-14 20:05:56.248632	904	1561
19	Eve-ANGE-B-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.253498	2022-12-14 20:05:56.253498	19	1561
20	Eve-ANGE-B-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.258668	2022-12-14 20:05:56.258668	906	1561
21	Eve-ANGE-B-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.263522	2022-12-14 20:05:56.263522	20	1561
22	Eve-ANGE-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.268932	2022-12-14 20:05:56.268932	21	1561
23	Eve-ANGE-B-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.274485	2022-12-14 20:05:56.274485	23	1561
24	Eve-ANGE-B-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.279462	2022-12-14 20:05:56.279462	24	1561
25	Eve-ANGE-B-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.284501	2022-12-14 20:05:56.284501	25	1561
26	Eve-ANGE-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.289402	2022-12-14 20:05:56.289402	26	1561
27	Eve-ANGE-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.294117	2022-12-14 20:05:56.294117	26	1561
28	Eve-AUZE-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.299039	2022-12-14 20:05:56.299039	27	1561
29	Eve-AUZE-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.304017	2022-12-14 20:05:56.304017	27	1561
30	Eve-AUZE-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.308595	2022-12-14 20:05:56.308595	29	1561
31	Eve-AUZE-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.314639	2022-12-14 20:05:56.314639	30	1561
32	Eve-AUZE-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.320036	2022-12-14 20:05:56.320036	31	1561
33	Eve-AUZE-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.326381	2022-12-14 20:05:56.326381	31	1561
34	Eve-AUZE-A-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.331676	2022-12-14 20:05:56.331676	34	1561
35	Eve-AUZE-A-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.336334	2022-12-14 20:05:56.336334	34	1561
36	Eve-AUZE-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.342003	2022-12-14 20:05:56.342003	35	1561
37	Eve-AUZE-A-10-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.3465	2022-12-14 20:05:56.3465	36	1561
38	Eve-AUZE-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.351767	2022-12-14 20:05:56.351767	1593	1561
39	Eve-AUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.357788	2022-12-14 20:05:56.357788	1594	1561
40	Eve-AUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.362705	2022-12-14 20:05:56.362705	1594	1561
41	Eve-AUZE-A-14-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.366855	2022-12-14 20:05:56.366855	1595	1561
42	Eve-BARA-C-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.376603	2022-12-14 20:05:56.376603	1596	1561
43	Eve-BARA-C-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.385762	2022-12-14 20:05:56.385762	37	1561
44	Eve-BARA-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.394984	2022-12-14 20:05:56.394984	38	1561
45	Eve-BARA-C-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.404098	2022-12-14 20:05:56.404098	39	1561
46	Eve-BARA-C-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.410773	2022-12-14 20:05:56.410773	40	1561
47	Eve-BARA-C-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.415675	2022-12-14 20:05:56.415675	1601	1561
48	Eve-BARA-C-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.421977	2022-12-14 20:05:56.421977	1602	1561
49	Eve-BARA-C-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.429492	2022-12-14 20:05:56.429492	41	1561
50	Eve-BARA-C-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.433906	2022-12-14 20:05:56.433906	1605	1561
51	Eve-BARA-C-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.438887	2022-12-14 20:05:56.438887	1606	1561
52	Eve-BARA-C-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.443937	2022-12-14 20:05:56.443937	1606	1561
53	Eve-BARR-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.451992	2022-12-14 20:05:56.451992	46	1561
54	Eve-BARR-A-5-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.45917	2022-12-14 20:05:56.45917	50	1561
55	Eve-BARR-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.463785	2022-12-14 20:05:56.463785	52	1561
56	Eve-BARR-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.467811	2022-12-14 20:05:56.467811	54	1561
57	Eve-BELL-A-1-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.472344	2022-12-14 20:05:56.472344	56	1561
58	Eve-BELL-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.477062	2022-12-14 20:05:56.477062	57	1561
59	Eve-BELL-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.482201	2022-12-14 20:05:56.482201	57	1561
60	Eve-BELL-A-3-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.488283	2022-12-14 20:05:56.488283	58	1561
61	Eve-BELL-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.493703	2022-12-14 20:05:56.493703	59	1561
62	Eve-BELL-A-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.498414	2022-12-14 20:05:56.498414	60	1561
63	Eve-BELL-A-7-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.503005	2022-12-14 20:05:56.503005	62	1561
64	Eve-BELL-A-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.508377	2022-12-14 20:05:56.508377	64	1561
65	Eve-BELL-A-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.514097	2022-12-14 20:05:56.514097	64	1561
66	Eve-BELL-A-10-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.518952	2022-12-14 20:05:56.518952	65	1561
67	Eve-BELL-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.524584	2022-12-14 20:05:56.524584	66	1561
68	Eve-BELL-A-11-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.530903	2022-12-14 20:05:56.530903	66	1561
69	Eve-BELL-A-12-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.536326	2022-12-14 20:05:56.536326	1624	1561
70	Eve-CAMA-C-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.542384	2022-12-14 20:05:56.542384	77	1561
71	Eve-CAMA-C-2-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.553326	2022-12-14 20:05:56.553326	1626	1561
72	Eve-CAMA-C-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.562755	2022-12-14 20:05:56.562755	1627	1561
73	Eve-CAMA-C-3-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.567084	2022-12-14 20:05:56.567084	1627	1561
74	Eve-CAMA-C-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.571926	2022-12-14 20:05:56.571926	1628	1561
75	Eve-CAMA-C-4-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.577559	2022-12-14 20:05:56.577559	1628	1561
76	Eve-CAMA-D-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.582266	2022-12-14 20:05:56.582266	81	1561
77	Eve-CAMA-D-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.587192	2022-12-14 20:05:56.587192	83	1561
78	Eve-CAMA-D-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.591709	2022-12-14 20:05:56.591709	83	1561
79	Eve-CAMA-E-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.597307	2022-12-14 20:05:56.597307	88	1561
80	Eve-CAMA-E-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.60207	2022-12-14 20:05:56.60207	89	1561
81	Eve-CAMA-E-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.607517	2022-12-14 20:05:56.607517	89	1561
82	Eve-CAMA-E-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.612148	2022-12-14 20:05:56.612148	1634	1561
83	Eve-CAMA-E-3-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.618529	2022-12-14 20:05:56.618529	1634	1561
84	Eve-CAMA-E-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.628409	2022-12-14 20:05:56.628409	1634	1561
85	Eve-CAMA-E-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.637237	2022-12-14 20:05:56.637237	1635	1561
86	Eve-CAMA-E-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.643678	2022-12-14 20:05:56.643678	956	1561
87	Eve-CAMA-E-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.648358	2022-12-14 20:05:56.648358	956	1561
88	Eve-CAMA-E-6-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.653222	2022-12-14 20:05:56.653222	957	1561
89	Eve-CAMA-E-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.658787	2022-12-14 20:05:56.658787	957	1561
90	Eve-CAMA-E-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.663543	2022-12-14 20:05:56.663543	1638	1561
91	Eve-CAMA-E-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.66814	2022-12-14 20:05:56.66814	1638	1561
92	Eve-CAMA-E-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.676494	2022-12-14 20:05:56.676494	91	1561
93	Eve-CAMA-E-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.68264	2022-12-14 20:05:56.68264	91	1561
94	Eve-CAMA-E-10-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.687763	2022-12-14 20:05:56.687763	959	1561
95	Eve-CAMA-E-10-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.692618	2022-12-14 20:05:56.692618	959	1561
96	Eve-CAMA-E-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.697251	2022-12-14 20:05:56.697251	1641	1561
97	Eve-CAMA-E-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.70156	2022-12-14 20:05:56.70156	1641	1561
98	Eve-CAMA-E-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.706792	2022-12-14 20:05:56.706792	1642	1561
99	Eve-CAMA-E-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.71211	2022-12-14 20:05:56.71211	1642	1561
100	Eve-CARL-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.71746	2022-12-14 20:05:56.71746	92	1561
101	Eve-CARL-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.723671	2022-12-14 20:05:56.723671	92	1561
102	Eve-CARL-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.7289	2022-12-14 20:05:56.7289	93	1561
103	Eve-CARL-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.734626	2022-12-14 20:05:56.734626	94	1561
104	Eve-CARL-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.739382	2022-12-14 20:05:56.739382	95	1561
105	Eve-CARL-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.744549	2022-12-14 20:05:56.744549	95	1561
106	Eve-CASS-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.75022	2022-12-14 20:05:56.75022	971	1561
107	Eve-CASS-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.757036	2022-12-14 20:05:56.757036	971	1561
108	Eve-CASS-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.762446	2022-12-14 20:05:56.762446	102	1561
109	Eve-CASS-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.76818	2022-12-14 20:05:56.76818	102	1561
110	Eve-CASS-A-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.773482	2022-12-14 20:05:56.773482	103	1561
111	Eve-CASS-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.777742	2022-12-14 20:05:56.777742	1391	1561
112	Eve-CASS-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.783564	2022-12-14 20:05:56.783564	104	1561
113	Eve-CASS-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.790125	2022-12-14 20:05:56.790125	105	1561
114	Eve-CASS-A-9-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.795827	2022-12-14 20:05:56.795827	107	1561
115	Eve-CASS-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.80637	2022-12-14 20:05:56.80637	107	1561
116	Eve-CASS-A-9---2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.819322	2022-12-14 20:05:56.819322	107	1561
117	Eve-CASS-A-9---2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.829864	2022-12-14 20:05:56.829864	107	1561
118	Eve-CERN-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.838055	2022-12-14 20:05:56.838055	121	1561
119	Eve-CERN-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.842809	2022-12-14 20:05:56.842809	123	1561
120	Eve-CERN-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.847325	2022-12-14 20:05:56.847325	1392	1561
121	Eve-CERN-B-1-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.852323	2022-12-14 20:05:56.852323	126	1561
122	Eve-CERN-B-2-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.857102	2022-12-14 20:05:56.857102	127	1561
123	Eve-CERN-B-3-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.861194	2022-12-14 20:05:56.861194	991	1561
124	Eve-CERN-B-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.866608	2022-12-14 20:05:56.866608	128	1561
125	Eve-CERN-B-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.871873	2022-12-14 20:05:56.871873	129	1561
126	Eve-CERN-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.876952	2022-12-14 20:05:56.876952	130	1561
127	Eve-CERN-B-7-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.884268	2022-12-14 20:05:56.884268	131	1561
128	Eve-CERN-B-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.891077	2022-12-14 20:05:56.891077	132	1561
129	Eve-CERN-B-9-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.900366	2022-12-14 20:05:56.900366	1661	1561
130	Eve-CERN-B-10-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.909978	2022-12-14 20:05:56.909978	133	1561
131	Eve-CERN-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.918822	2022-12-14 20:05:56.918822	134	1561
132	Eve-CERN-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.928415	2022-12-14 20:05:56.928415	134	1561
133	Eve-CIER-A-1-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.940386	2022-12-14 20:05:56.940386	997	1561
134	Eve-CIER-A-2-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.946747	2022-12-14 20:05:56.946747	136	1561
135	Eve-CIER-A-3-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.952	2022-12-14 20:05:56.952	137	1561
136	Eve-CIER-A-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.957666	2022-12-14 20:05:56.957666	138	1561
137	Eve-CIER-A-5-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.96311	2022-12-14 20:05:56.96311	1001	1561
138	Eve-CIER-A-6-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.968312	2022-12-14 20:05:56.968312	139	1561
139	Eve-CIER-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.974346	2022-12-14 20:05:56.974346	1003	1561
140	Eve-CIER-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.979993	2022-12-14 20:05:56.979993	1004	1561
141	Eve-CIER-A-9-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.986774	2022-12-14 20:05:56.986774	140	1561
142	Eve-CIER-A-10-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:56.996121	2022-12-14 20:05:56.996121	141	1561
143	Eve-CIER-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.00301	2022-12-14 20:05:57.00301	142	1561
144	Eve-CIER-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.00889	2022-12-14 20:05:57.00889	142	1561
145	Eve-CINT-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.014252	2022-12-14 20:05:57.014252	146	1561
146	Eve-CINT-A-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.019861	2022-12-14 20:05:57.019861	147	1561
147	Eve-CINT-A-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.025882	2022-12-14 20:05:57.025882	147	1561
148	Eve-CINT-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.042386	2022-12-14 20:05:57.042386	1677	1561
149	Eve-CINT-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.05516	2022-12-14 20:05:57.05516	148	1561
150	Eve-CINT-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.065329	2022-12-14 20:05:57.065329	149	1561
151	Eve-CINT-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.07034	2022-12-14 20:05:57.07034	1680	1561
152	Eve-CINT-A-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.075507	2022-12-14 20:05:57.075507	150	1561
153	Eve-CINT-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.080936	2022-12-14 20:05:57.080936	151	1561
154	Eve-CINT-A-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.087438	2022-12-14 20:05:57.087438	152	1561
155	Eve-CINT-A-11-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.098157	2022-12-14 20:05:57.098157	153	1561
156	Eve-CINT-B-1-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.107352	2022-12-14 20:05:57.107352	154	1561
157	Eve-CINT-B-2-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.112233	2022-12-14 20:05:57.112233	155	1561
158	Eve-CINT-B-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.11782	2022-12-14 20:05:57.11782	156	1561
159	Eve-CINT-B-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.124768	2022-12-14 20:05:57.124768	156	1561
160	Eve-CINT-B-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.130052	2022-12-14 20:05:57.130052	157	1561
161	Eve-CINT-B-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.134713	2022-12-14 20:05:57.134713	157	1561
162	Eve-CINT-B-5-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.13997	2022-12-14 20:05:57.13997	158	1561
163	Eve-CINT-B-6-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.14427	2022-12-14 20:05:57.14427	159	1561
164	Eve-CINT-B-7-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.148538	2022-12-14 20:05:57.148538	160	1561
165	Eve-CINT-B-8-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.153375	2022-12-14 20:05:57.153375	161	1561
166	Eve-CINT-B-9-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.159022	2022-12-14 20:05:57.159022	162	1561
167	Eve-CINT-B-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.163949	2022-12-14 20:05:57.163949	163	1561
168	Eve-CINT-B-11-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.168872	2022-12-14 20:05:57.168872	1690	1561
169	Eve-CINT-B-11-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.174329	2022-12-14 20:05:57.174329	1690	1561
170	Eve-CLAR-B-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.18099	2022-12-14 20:05:57.18099	164	1561
171	Eve-CLAR-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.187584	2022-12-14 20:05:57.187584	166	1561
172	Eve-CLAR-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.198117	2022-12-14 20:05:57.198117	167	1561
173	Eve-CLAR-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.202961	2022-12-14 20:05:57.202961	168	1561
174	Eve-CLAR-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.210097	2022-12-14 20:05:57.210097	169	1561
175	Eve-CLAR-C-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.216628	2022-12-14 20:05:57.216628	173	1561
176	Eve-CLAR-C-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.226054	2022-12-14 20:05:57.226054	174	1561
177	Eve-CLAR-C-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.236107	2022-12-14 20:05:57.236107	175	1561
178	Eve-CLAR-C-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.241675	2022-12-14 20:05:57.241675	176	1561
179	Eve-CLAR-C-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.247969	2022-12-14 20:05:57.247969	180	1561
180	Eve-COLO-B-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.253719	2022-12-14 20:05:57.253719	183	1561
181	Eve-COLO-B-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.260033	2022-12-14 20:05:57.260033	184	1561
182	Eve-COLO-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.265002	2022-12-14 20:05:57.265002	186	1561
183	Eve-COLO-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.270133	2022-12-14 20:05:57.270133	1377	1561
184	Eve-DAMI-C-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.275251	2022-12-14 20:05:57.275251	1707	1561
185	Eve-DAMI-C-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.283269	2022-12-14 20:05:57.283269	1708	1561
186	Eve-DECA-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.289127	2022-12-14 20:05:57.289127	191	1561
187	Eve-DECA-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.294833	2022-12-14 20:05:57.294833	1044	1561
188	Eve-DECA-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.300486	2022-12-14 20:05:57.300486	192	1561
189	Eve-DECA-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.305839	2022-12-14 20:05:57.305839	193	1561
190	Eve-DECA-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.310715	2022-12-14 20:05:57.310715	194	1561
191	Eve-DECA-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.315432	2022-12-14 20:05:57.315432	195	1561
192	Eve-DECA-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.320365	2022-12-14 20:05:57.320365	196	1561
193	Eve-DECA-A-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.326071	2022-12-14 20:05:57.326071	197	1561
194	Eve-DECA-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.331057	2022-12-14 20:05:57.331057	197	1561
195	Eve-DECA-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.336734	2022-12-14 20:05:57.336734	198	1561
196	Eve-DECA-A-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.341756	2022-12-14 20:05:57.341756	199	1561
197	Eve-DECA-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.346332	2022-12-14 20:05:57.346332	200	1561
198	Eve-DECA-A-12-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.358507	2022-12-14 20:05:57.358507	1720	1561
199	Eve-ESPE-B-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.369464	2022-12-14 20:05:57.369464	202	1561
200	Eve-ESPE-B-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.381791	2022-12-14 20:05:57.381791	203	1561
201	Eve-ESPE-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.393183	2022-12-14 20:05:57.393183	1057	1561
202	Eve-ESPE-B-7-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.404368	2022-12-14 20:05:57.404368	205	1561
203	Eve-ESPE-B-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.410294	2022-12-14 20:05:57.410294	208	1561
204	Eve-FERR-A-1-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.416801	2022-12-14 20:05:57.416801	211	1561
205	Eve-FERR-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.421925	2022-12-14 20:05:57.421925	211	1561
206	Eve-FERR-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.426984	2022-12-14 20:05:57.426984	212	1561
207	Eve-FERR-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.431555	2022-12-14 20:05:57.431555	212	1561
208	Eve-FERR-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.43753	2022-12-14 20:05:57.43753	213	1561
209	Eve-FERR-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.443105	2022-12-14 20:05:57.443105	213	1561
210	Eve-FERR-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.447399	2022-12-14 20:05:57.447399	214	1561
211	Eve-GAIL-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.453046	2022-12-14 20:05:57.453046	1071	1561
212	Eve-GAIL-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.459648	2022-12-14 20:05:57.459648	222	1561
213	Eve-GAIL-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.467334	2022-12-14 20:05:57.467334	1074	1561
214	Eve-GAIL-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.476763	2022-12-14 20:05:57.476763	223	1561
215	Eve-GAIL-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.486411	2022-12-14 20:05:57.486411	1077	1561
216	Eve-GAIL-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.492516	2022-12-14 20:05:57.492516	1078	1561
217	Eve-GAIL-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.497116	2022-12-14 20:05:57.497116	1079	1561
218	Eve-GAIL-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.50192	2022-12-14 20:05:57.50192	226	1561
219	Eve-GAIL-B-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.507159	2022-12-14 20:05:57.507159	227	1561
220	Eve-GAIL-B-3-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.511558	2022-12-14 20:05:57.511558	228	1561
221	Eve-GAIL-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.5162	2022-12-14 20:05:57.5162	1084	1561
222	Eve-GAIL-B-5-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.522082	2022-12-14 20:05:57.522082	229	1561
223	Eve-GAIL-B-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.526636	2022-12-14 20:05:57.526636	230	1561
224	Eve-GAIL-B-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.531626	2022-12-14 20:05:57.531626	231	1561
225	Eve-GAIL-B-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.543074	2022-12-14 20:05:57.543074	232	1561
226	Eve-GAIL-B-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.553127	2022-12-14 20:05:57.553127	232	1561
227	Eve-GAIL-B-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.560992	2022-12-14 20:05:57.560992	233	1561
228	Eve-GAIL-B-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.567634	2022-12-14 20:05:57.567634	234	1561
229	Eve-GAIL-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.573435	2022-12-14 20:05:57.573435	1748	1561
230	Eve-GREZ-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.578845	2022-12-14 20:05:57.578845	1087	1561
231	Eve-GREZ-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.584959	2022-12-14 20:05:57.584959	235	1561
232	Eve-GREZ-A-3-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.591714	2022-12-14 20:05:57.591714	1089	1561
233	Eve-GREZ-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.597234	2022-12-14 20:05:57.597234	1089	1561
234	Eve-GREZ-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.605544	2022-12-14 20:05:57.605544	236	1561
235	Eve-JUZE-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.614699	2022-12-14 20:05:57.614699	242	1561
236	Eve-JUZE-A-4-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.625222	2022-12-14 20:05:57.625222	244	1561
237	Eve-JUZE-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.630179	2022-12-14 20:05:57.630179	245	1561
238	Eve-JUZE-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.637778	2022-12-14 20:05:57.637778	246	1561
239	Eve-JUZE-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.647001	2022-12-14 20:05:57.647001	247	1561
240	Eve-JUZE-A-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.658501	2022-12-14 20:05:57.658501	248	1561
241	Eve-JUZE-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.674136	2022-12-14 20:05:57.674136	1762	1561
242	Eve-JUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.679629	2022-12-14 20:05:57.679629	1763	1561
243	Eve-JUZE-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.68464	2022-12-14 20:05:57.68464	1763	1561
244	Eve-JUZE-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.692494	2022-12-14 20:05:57.692494	1764	1561
245	Eve-JUZE-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.698353	2022-12-14 20:05:57.698353	1764	1561
246	Eve-JUZE-A-14-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.704611	2022-12-14 20:05:57.704611	1765	1561
247	Eve-JUZE-A-15-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.711161	2022-12-14 20:05:57.711161	251	1561
248	Eve-JUZE-A-15-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.717998	2022-12-14 20:05:57.717998	251	1561
249	Eve-JUZET-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.724501	2022-12-14 20:05:57.724501	252	1561
250	Eve-JUZET-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.73477	2022-12-14 20:05:57.73477	253	1561
251	Eve-JUZET-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.74509	2022-12-14 20:05:57.74509	254	1561
252	Eve-JUZET-C-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.756681	2022-12-14 20:05:57.756681	262	1561
253	Eve-JUZET-C-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.766663	2022-12-14 20:05:57.766663	263	1561
254	Eve-JUZET-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.779237	2022-12-14 20:05:57.779237	264	1561
255	Eve-JUZET-C-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.788315	2022-12-14 20:05:57.788315	266	1561
256	Eve-LABA-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.794513	2022-12-14 20:05:57.794513	273	1561
257	Eve-LABA-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.799518	2022-12-14 20:05:57.799518	274	1561
258	Eve-LABA-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.804021	2022-12-14 20:05:57.804021	275	1561
259	Eve-LABA-A-4-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.8085	2022-12-14 20:05:57.8085	276	1561
260	Eve-LABA-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.813516	2022-12-14 20:05:57.813516	276	1561
261	Eve-LABA-A-5-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.818098	2022-12-14 20:05:57.818098	277	1561
262	Eve-LABA-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.823499	2022-12-14 20:05:57.823499	277	1561
263	Eve-LABA-A-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.828921	2022-12-14 20:05:57.828921	278	1561
264	Eve-LABA-A-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.834912	2022-12-14 20:05:57.834912	278	1561
265	Eve-LABA-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.840685	2022-12-14 20:05:57.840685	279	1561
266	Eve-LABA-A-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.846522	2022-12-14 20:05:57.846522	280	1561
267	Eve-LABA-A-9-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.852026	2022-12-14 20:05:57.852026	281	1561
268	Eve-LABA-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.857159	2022-12-14 20:05:57.857159	282	1561
269	Eve-LABA-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.861742	2022-12-14 20:05:57.861742	1783	1561
270	Eve-LABA-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.867877	2022-12-14 20:05:57.867877	1783	1561
271	Eve-LABA-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.873376	2022-12-14 20:05:57.873376	1784	1561
272	Eve-LABA-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.881352	2022-12-14 20:05:57.881352	1784	1561
273	Eve-LABA-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.891321	2022-12-14 20:05:57.891321	1785	1561
274	Eve-LABA-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.90073	2022-12-14 20:05:57.90073	1785	1561
275	Eve-LABA-A-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.907549	2022-12-14 20:05:57.907549	1786	1561
276	Eve-LABA-A-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.912428	2022-12-14 20:05:57.912428	1786	1561
277	Eve-LABA-A-15-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.917333	2022-12-14 20:05:57.917333	1787	1561
278	Eve-LABAS-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.923219	2022-12-14 20:05:57.923219	284	1561
279	Eve-LABAS-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.928583	2022-12-14 20:05:57.928583	285	1561
280	Eve-LABAS-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.934441	2022-12-14 20:05:57.934441	286	1561
281	Eve-LABAS-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.940062	2022-12-14 20:05:57.940062	286	1561
282	Eve-LAMA-A-1-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.944937	2022-12-14 20:05:57.944937	293	1561
283	Eve-LAMA-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.950685	2022-12-14 20:05:57.950685	293	1561
284	Eve-LAMA-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.956334	2022-12-14 20:05:57.956334	294	1561
285	Eve-LAMA-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.961718	2022-12-14 20:05:57.961718	295	1561
286	Eve-LAMA-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.967684	2022-12-14 20:05:57.967684	295	1561
287	Eve-LAMA-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.97569	2022-12-14 20:05:57.97569	296	1561
288	Eve-LANT-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.980716	2022-12-14 20:05:57.980716	1794	1561
289	Eve-LANT-B-2-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.986049	2022-12-14 20:05:57.986049	1795	1561
290	Eve-LANT-B-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.991386	2022-12-14 20:05:57.991386	1796	1561
291	Eve-LANT-B-5-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:57.996707	2022-12-14 20:05:57.996707	1798	1561
292	Eve-LANT-B-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.002318	2022-12-14 20:05:58.002318	1799	1561
293	Eve-LANT-B-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.007697	2022-12-14 20:05:58.007697	1800	1561
294	Eve-LANT-B-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.014052	2022-12-14 20:05:58.014052	1801	1561
295	Eve-LANT-B-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.019272	2022-12-14 20:05:58.019272	1802	1561
296	Eve-LANT-B-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.024787	2022-12-14 20:05:58.024787	1803	1561
297	Eve-LANT-D-1-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.031386	2022-12-14 20:05:58.031386	303	1561
298	Eve-LANT-D-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.036583	2022-12-14 20:05:58.036583	304	1561
299	Eve-LANT-D-3-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.042644	2022-12-14 20:05:58.042644	305	1561
300	Eve-LANT-D-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.048138	2022-12-14 20:05:58.048138	306	1561
301	Eve-LANT-D-5-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.053787	2022-12-14 20:05:58.053787	307	1561
302	Eve-LANT-D-6-G1--2020	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.059299	2022-12-14 20:05:58.059299	308	1561
303	Eve-LANT-D-7-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.064933	2022-12-14 20:05:58.064933	309	1561
304	Eve-LANT-D-8-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.070443	2022-12-14 20:05:58.070443	310	1561
305	Eve-LANT-D-9-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.075598	2022-12-14 20:05:58.075598	311	1561
306	Eve-LANT-D-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.081437	2022-12-14 20:05:58.081437	312	1561
307	Eve-LANT-D-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.086031	2022-12-14 20:05:58.086031	1812	1561
308	Eve-LANT-D-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.09153	2022-12-14 20:05:58.09153	1812	1561
309	Eve-LANT-D-15-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.097107	2022-12-14 20:05:58.097107	1813	1561
310	Eve-LAUZ-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.102706	2022-12-14 20:05:58.102706	1147	1561
311	Eve-LAUZ-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.109366	2022-12-14 20:05:58.109366	1148	1561
312	Eve-LAUZ-A-4-G1--2020	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.113907	2022-12-14 20:05:58.113907	1150	1561
313	Eve-LAUZ-A-5-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.120654	2022-12-14 20:05:58.120654	1151	1561
314	Eve-LAUZ-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.126945	2022-12-14 20:05:58.126945	1152	1561
315	Eve-LAUZ-A-8-G2--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.132788	2022-12-14 20:05:58.132788	313	1561
316	Eve-LAUZ-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.13847	2022-12-14 20:05:58.13847	1821	1561
317	Eve-LAUZ-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.143914	2022-12-14 20:05:58.143914	1154	1561
318	Eve-LECT-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.150733	2022-12-14 20:05:58.150733	314	1561
319	Eve-LECT-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.159966	2022-12-14 20:05:58.159966	1157	1561
320	Eve-LECT-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.169373	2022-12-14 20:05:58.169373	315	1561
321	Eve-LECT-A-4-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.176279	2022-12-14 20:05:58.176279	315	1561
322	Eve-LECT-A-5-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.181348	2022-12-14 20:05:58.181348	316	1561
323	Eve-LECT-A-6-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.186701	2022-12-14 20:05:58.186701	317	1561
324	Eve-LECT-A-7-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.192713	2022-12-14 20:05:58.192713	318	1561
325	Eve-LECT-A-8-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.200917	2022-12-14 20:05:58.200917	319	1561
326	Eve-LECT-A-10-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.206135	2022-12-14 20:05:58.206135	321	1561
327	Eve-LECT-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.211298	2022-12-14 20:05:58.211298	322	1561
328	Eve-LECT-A-12-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.222385	2022-12-14 20:05:58.222385	323	1561
329	Eve-LUNA-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.233589	2022-12-14 20:05:58.233589	334	1561
330	Eve-LUNA-A-2-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.243022	2022-12-14 20:05:58.243022	335	1561
331	Eve-LUNA-A-3-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.252176	2022-12-14 20:05:58.252176	336	1561
332	Eve-LUNA-A-4-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.259132	2022-12-14 20:05:58.259132	1176	1561
333	Eve-LUNA-A-6-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.263905	2022-12-14 20:05:58.263905	338	1561
334	Eve-LUNA-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.268635	2022-12-14 20:05:58.268635	338	1561
335	Eve-LUNA-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.273743	2022-12-14 20:05:58.273743	339	1561
336	Eve-LUNA-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.279189	2022-12-14 20:05:58.279189	340	1561
337	Eve-LUNA-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.284911	2022-12-14 20:05:58.284911	341	1561
338	Eve-LUNA-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.290008	2022-12-14 20:05:58.290008	342	1561
339	Eve-LUNA-A-12-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.294355	2022-12-14 20:05:58.294355	1838	1561
340	Eve-MARS-C-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.299768	2022-12-14 20:05:58.299768	1839	1561
341	Eve-MARS-C-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.305607	2022-12-14 20:05:58.305607	1840	1561
342	Eve-MARS-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.310762	2022-12-14 20:05:58.310762	1841	1561
343	Eve-MARS-C-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.316209	2022-12-14 20:05:58.316209	1843	1561
344	Eve-MARS-C-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.32126	2022-12-14 20:05:58.32126	1844	1561
345	Eve-MARS-C-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.328161	2022-12-14 20:05:58.328161	1845	1561
346	Eve-MARS-C-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.337142	2022-12-14 20:05:58.337142	1846	1561
347	Eve-MONB-A-1-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.346401	2022-12-14 20:05:58.346401	373	1561
348	Eve-MONB-A-1-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.355556	2022-12-14 20:05:58.355556	373	1561
349	Eve-MONB-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.364707	2022-12-14 20:05:58.364707	374	1561
350	Eve-MONB-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.373814	2022-12-14 20:05:58.373814	374	1561
351	Eve-MONB-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.384614	2022-12-14 20:05:58.384614	375	1561
352	Eve-MONB-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.394498	2022-12-14 20:05:58.394498	376	1561
353	Eve-MONB-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.40084	2022-12-14 20:05:58.40084	377	1561
354	Eve-MONB-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.405685	2022-12-14 20:05:58.405685	378	1561
355	Eve-MONB-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.411794	2022-12-14 20:05:58.411794	1212	1561
356	Eve-MONB-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.417623	2022-12-14 20:05:58.417623	380	1561
357	Eve-MONB-A-10-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.424671	2022-12-14 20:05:58.424671	381	1561
358	Eve-MONB-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.431059	2022-12-14 20:05:58.431059	1858	1561
359	Eve-MONF-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.436657	2022-12-14 20:05:58.436657	392	1561
360	Eve-MONF-A-3-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.441547	2022-12-14 20:05:58.441547	394	1561
361	Eve-MONF-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.445938	2022-12-14 20:05:58.445938	395	1561
362	Eve-MONF-A-5-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.450485	2022-12-14 20:05:58.450485	396	1561
363	Eve-MONF-A-6-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.455454	2022-12-14 20:05:58.455454	397	1561
364	Eve-MONF-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.460272	2022-12-14 20:05:58.460272	397	1561
365	Eve-MONF-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.466032	2022-12-14 20:05:58.466032	398	1561
366	Eve-MONF-A-8-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.47127	2022-12-14 20:05:58.47127	399	1561
367	Eve-MONF-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.475859	2022-12-14 20:05:58.475859	400	1561
368	Eve-MONF-A-10-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.481982	2022-12-14 20:05:58.481982	401	1561
369	Eve-MONF-A-10-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.488343	2022-12-14 20:05:58.488343	401	1561
370	Eve-MONF-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.493808	2022-12-14 20:05:58.493808	1869	1561
371	Eve-MONF-A-12-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.500474	2022-12-14 20:05:58.500474	1870	1561
372	Eve-MONF-A-12-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.510549	2022-12-14 20:05:58.510549	1870	1561
373	Eve-MONTI-B-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.521919	2022-12-14 20:05:58.521919	1237	1561
374	Eve-MONTI-B-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.5329	2022-12-14 20:05:58.5329	1238	1561
375	Eve-MONTI-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.53968	2022-12-14 20:05:58.53968	1239	1561
376	Eve-MONTI-B-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.54455	2022-12-14 20:05:58.54455	1240	1561
377	Eve-MONTI-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.54889	2022-12-14 20:05:58.54889	1875	1561
378	Eve-MONTI-B-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.553486	2022-12-14 20:05:58.553486	1241	1561
379	Eve-MONTI-B-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.558472	2022-12-14 20:05:58.558472	1242	1561
380	Eve-MONTM-A-1-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.563699	2022-12-14 20:05:58.563699	425	1561
381	Eve-MONTM-A-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.569348	2022-12-14 20:05:58.569348	426	1561
382	Eve-MONTM-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.574632	2022-12-14 20:05:58.574632	428	1561
383	Eve-MONTM-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.581191	2022-12-14 20:05:58.581191	429	1561
384	Eve-MONTM-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.586388	2022-12-14 20:05:58.586388	430	1561
385	Eve-MONTM-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.592186	2022-12-14 20:05:58.592186	433	1561
386	Eve-NAZA-A-1-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.598312	2022-12-14 20:05:58.598312	435	1561
387	Eve-NAZA-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.60823	2022-12-14 20:05:58.60823	1254	1561
388	Eve-NAZA-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.618246	2022-12-14 20:05:58.618246	1254	1561
389	Eve-NAZA-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.627371	2022-12-14 20:05:58.627371	436	1561
390	Eve-NAZA-A-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.634023	2022-12-14 20:05:58.634023	436	1561
391	Eve-NAZA-A-3-G2--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.640356	2022-12-14 20:05:58.640356	436	1561
392	Eve-NAZA-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.653433	2022-12-14 20:05:58.653433	1257	1561
393	Eve-NAZA-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.663376	2022-12-14 20:05:58.663376	438	1561
394	Eve-NAZA-A-7-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.669258	2022-12-14 20:05:58.669258	1259	1561
395	Eve-NAZA-A-8-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.67447	2022-12-14 20:05:58.67447	1260	1561
396	Eve-NAZA-A-9-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.679454	2022-12-14 20:05:58.679454	439	1561
397	Eve-NAZA-A-13-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.685079	2022-12-14 20:05:58.685079	1896	1561
398	Eve-PUYM-B-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.690909	2022-12-14 20:05:58.690909	444	1561
399	Eve-PUYM-B-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.695115	2022-12-14 20:05:58.695115	444	1561
400	Eve-PUYM-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.701025	2022-12-14 20:05:58.701025	445	1561
401	Eve-PUYM-B-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.706811	2022-12-14 20:05:58.706811	449	1561
402	Eve-PUYM-B-8-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.712176	2022-12-14 20:05:58.712176	449	1561
403	Eve-PUYM-B-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.717327	2022-12-14 20:05:58.717327	1270	1561
404	Eve-PUYM-B-9-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.733147	2022-12-14 20:05:58.733147	1270	1561
405	Eve-PUYM-B-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.738865	2022-12-14 20:05:58.738865	1906	1561
406	Eve-RAYR-A-1-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.744093	2022-12-14 20:05:58.744093	450	1561
407	Eve-RAYR-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.7502	2022-12-14 20:05:58.7502	450	1561
408	Eve-RAYR-A-2-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.756582	2022-12-14 20:05:58.756582	451	1561
409	Eve-RAYR-A-3-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.762624	2022-12-14 20:05:58.762624	452	1561
410	Eve-RAYR-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.769847	2022-12-14 20:05:58.769847	452	1561
411	Eve-RAYR-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.776492	2022-12-14 20:05:58.776492	1274	1561
412	Eve-RAYR-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.781703	2022-12-14 20:05:58.781703	453	1561
413	Eve-RAYR-A-5-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.787519	2022-12-14 20:05:58.787519	453	1561
414	Eve-RAYR-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.793182	2022-12-14 20:05:58.793182	454	1561
415	Eve-RAYR-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.799977	2022-12-14 20:05:58.799977	455	1561
416	Eve-RAYR-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.805408	2022-12-14 20:05:58.805408	456	1561
417	Eve-RAYR-A-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.810344	2022-12-14 20:05:58.810344	458	1561
418	Eve-SALE-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.81631	2022-12-14 20:05:58.81631	470	1561
419	Eve-SALV-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.821623	2022-12-14 20:05:58.821623	480	1561
420	Eve-SALV-A-2-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.8269	2022-12-14 20:05:58.8269	481	1561
421	Eve-SALV-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.834418	2022-12-14 20:05:58.834418	481	1561
422	Eve-SALV-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.844943	2022-12-14 20:05:58.844943	482	1561
423	Eve-SALV-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.855066	2022-12-14 20:05:58.855066	1296	1561
424	Eve-SALV-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.863955	2022-12-14 20:05:58.863955	1296	1561
425	Eve-SALV-A-4-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.872362	2022-12-14 20:05:58.872362	1296	1561
426	Eve-SALV-A-5-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.877039	2022-12-14 20:05:58.877039	483	1561
427	Eve-SALV-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.883851	2022-12-14 20:05:58.883851	483	1561
428	Eve-SALV-A-6-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.890307	2022-12-14 20:05:58.890307	1298	1561
429	Eve-SALV-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.895862	2022-12-14 20:05:58.895862	484	1561
430	Eve-SALV-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.914148	2022-12-14 20:05:58.914148	485	1561
431	Eve-SALV-A-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.925444	2022-12-14 20:05:58.925444	1302	1561
432	Eve-SALV-A-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.935506	2022-12-14 20:05:58.935506	487	1561
433	Eve-SAUB-B-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.942345	2022-12-14 20:05:58.942345	491	1561
434	Eve-SAUB-B-3-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.947591	2022-12-14 20:05:58.947591	492	1561
435	Eve-SAUB-B-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.95328	2022-12-14 20:05:58.95328	492	1561
436	Eve-SAUB-B-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.959468	2022-12-14 20:05:58.959468	493	1561
437	Eve-SAUB-B-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.966963	2022-12-14 20:05:58.966963	494	1561
438	Eve-SAUB-B-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.974346	2022-12-14 20:05:58.974346	495	1561
439	Eve-SAUB-B-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.979709	2022-12-14 20:05:58.979709	496	1561
440	Eve-SAUB-B-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.984888	2022-12-14 20:05:58.984888	497	1561
441	Eve-SAUB-B-9-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.990282	2022-12-14 20:05:58.990282	498	1561
442	Eve-SAUB-B-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:58.995286	2022-12-14 20:05:58.995286	498	1561
443	Eve-SAUB-B-11-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.000637	2022-12-14 20:05:59.000637	1941	1561
444	Eve-SIMO-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.005812	2022-12-14 20:05:59.005812	1313	1561
445	Eve-SIMO-A-2-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.010284	2022-12-14 20:05:59.010284	500	1561
446	Eve-SIMO-A-2-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.015818	2022-12-14 20:05:59.015818	500	1561
447	Eve-SIMO-A-3-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.021481	2022-12-14 20:05:59.021481	501	1561
448	Eve-SIMO-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.026648	2022-12-14 20:05:59.026648	502	1561
449	Eve-SIMO-A-5-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.031978	2022-12-14 20:05:59.031978	503	1561
450	Eve-SIMO-A-5-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.040333	2022-12-14 20:05:59.040333	503	1561
451	Eve-SIMO-A-6-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.050164	2022-12-14 20:05:59.050164	504	1561
452	Eve-SIMO-A-7-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.057848	2022-12-14 20:05:59.057848	505	1561
453	Eve-SIMO-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.063878	2022-12-14 20:05:59.063878	505	1561
454	Eve-SIMO-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.069466	2022-12-14 20:05:59.069466	506	1561
455	Eve-THOM-A-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.074645	2022-12-14 20:05:59.074645	509	1561
456	Eve-THOM-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.079921	2022-12-14 20:05:59.079921	511	1561
457	Eve-THOM-A-4-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.085325	2022-12-14 20:05:59.085325	511	1561
458	Eve-THOM-A-7-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.091328	2022-12-14 20:05:59.091328	513	1561
459	Eve-THOM-A-8-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.097272	2022-12-14 20:05:59.097272	514	1561
460	Eve-THOM-A-8-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.103659	2022-12-14 20:05:59.103659	514	1561
461	Eve-THOM-A-9-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.114438	2022-12-14 20:05:59.114438	515	1561
462	Eve-THOM-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.124275	2022-12-14 20:05:59.124275	515	1561
463	Eve-THOM-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.13056	2022-12-14 20:05:59.13056	1960	1561
464	Eve-THOM-A-12-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.135445	2022-12-14 20:05:59.135445	1960	1561
465	Eve-VILLE-A-1-1-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.140384	2022-12-14 20:05:59.140384	546	1561
466	Eve-VILLE-A-1-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.145091	2022-12-14 20:05:59.145091	546	1561
467	Eve-VILLE-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.149867	2022-12-14 20:05:59.149867	547	1561
468	Eve-VILLE-A-2-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.155619	2022-12-14 20:05:59.155619	547	1561
469	Eve-VILLE-A-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.160564	2022-12-14 20:05:59.160564	548	1561
470	Eve-VILLE-A-4-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.165239	2022-12-14 20:05:59.165239	549	1561
471	Eve-VILLE-A-4-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.171193	2022-12-14 20:05:59.171193	549	1561
472	Eve-VILLE-A-6-2-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.176765	2022-12-14 20:05:59.176765	551	1561
473	Eve-VILLE-A-6-1-okt13'17-	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.182499	2022-12-14 20:05:59.182499	551	1561
474	Eve-VILLE-A-6-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.189243	2022-12-14 20:05:59.189243	551	1561
475	Eve-VILLE-A-7-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.196434	2022-12-14 20:05:59.196434	552	1561
476	Eve-VILLE-A-7-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.208259	2022-12-14 20:05:59.208259	552	1561
477	Eve-VILLE-A-8-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.224426	2022-12-14 20:05:59.224426	553	1561
478	Eve-VILLE-A-9-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.231663	2022-12-14 20:05:59.231663	554	1561
479	Eve-VILLE-A-12-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.237048	2022-12-14 20:05:59.237048	1972	1561
480	Eve-VILLE-A-14-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.242871	2022-12-14 20:05:59.242871	1974	1561
481	Eve-VILLE-B-1-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.249	2022-12-14 20:05:59.249	556	1561
482	Eve-VILLE-B-2-G1--2019	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.25483	2022-12-14 20:05:59.25483	557	1561
483	Eve-VILLE-B-3-2-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.260513	2022-12-14 20:05:59.260513	558	1561
484	Eve-VILLE-B-3-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.266228	2022-12-14 20:05:59.266228	558	1561
485	Eve-VILLE-B-5-1-okt13'17-	freeze-dried	0	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.275416	2022-12-14 20:05:59.275416	560	1561
486	Eve-VILLE-B-6-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.286454	2022-12-14 20:05:59.286454	561	1561
487	Eve-VILLE-B-10-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.29786	2022-12-14 20:05:59.29786	564	1561
488	Eve-VILLE-B-11-G1--2020	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.308966	2022-12-14 20:05:59.308966	565	1561
489	Eve-VILLE-B-14-2-okt13'17-	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.320068	2022-12-14 20:05:59.320068	1985	1561
490	Eve-VILLE-B-14-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.331493	2022-12-14 20:05:59.331493	1985	1561
491	Eve-VILLE-C-1-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.344203	2022-12-14 20:05:59.344203	1986	1561
492	Eve-VILLE-C-2-G2--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.355959	2022-12-14 20:05:59.355959	566	1561
493	Eve-VILLE-C-3-G1--2019	freeze-dried	2	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.366939	2022-12-14 20:05:59.366939	1988	1561
494	Eve-VILLE-C-6-G1--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.377923	2022-12-14 20:05:59.377923	568	1561
495	Eve-VILLE-C-7-G2--2019	freeze-dried	1	\N	\N	\N	\N	\N	\N	2022-12-14 20:05:59.388934	2022-12-14 20:05:59.388934	1991	1561
496	ANGE-A-01-Box1-1	minus-80	2	A	1	A	3	\N	\N	2022-12-14 20:05:59.396083	2022-12-14 20:05:59.396083	11	1561
497	ANGE-A-02-Box1-2	minus-80	2	A	1	A	4	\N	\N	2022-12-14 20:05:59.402271	2022-12-14 20:05:59.402271	12	1561
498	ANGE-A-03-Box1-3	minus-80	2	A	1	A	5	\N	\N	2022-12-14 20:05:59.408418	2022-12-14 20:05:59.408418	13	1561
499	ANGE-A-04-Box1-4	minus-80	1	A	1	A	6	\N	\N	2022-12-14 20:05:59.416767	2022-12-14 20:05:59.416767	14	1561
500	ANGE-A-05-Box1-5	minus-80	1	A	1	A	7	\N	\N	2022-12-14 20:05:59.424471	2022-12-14 20:05:59.424471	898	1561
501	ANGE-A-09-Box1-6	minus-80	1	A	1	A	11	\N	\N	2022-12-14 20:05:59.430363	2022-12-14 20:05:59.430363	902	1561
502	ANGE-B-02-Box1-7	minus-80	2	A	1	A	13	\N	\N	2022-12-14 20:05:59.43633	2022-12-14 20:05:59.43633	19	1561
503	ANGE-B-04-Box1-8	minus-80	2	A	1	B	1	\N	\N	2022-12-14 20:05:59.442819	2022-12-14 20:05:59.442819	20	1561
504	ANGE-B-05-Box1-9	minus-80	2	A	1	B	2	\N	\N	2022-12-14 20:05:59.449252	2022-12-14 20:05:59.449252	21	1561
505	ANGE-B-08-Box1-10	minus-80	2	A	1	B	3	\N	\N	2022-12-14 20:05:59.457796	2022-12-14 20:05:59.457796	23	1561
506	ANGE-B-09-Box1-11	minus-80	1	A	1	B	4	\N	\N	2022-12-14 20:05:59.464734	2022-12-14 20:05:59.464734	24	1561
507	ANGE-B-10-Box1-12	minus-80	2	A	1	B	5	\N	\N	2022-12-14 20:05:59.473853	2022-12-14 20:05:59.473853	25	1561
508	ANGE-B-11-Box1-13	minus-80	2	A	1	B	6	\N	\N	2022-12-14 20:05:59.484865	2022-12-14 20:05:59.484865	26	1561
509	AUZE-A-05-Box1-14	minus-80	2	A	1	B	8	\N	\N	2022-12-14 20:05:59.491454	2022-12-14 20:05:59.491454	31	1561
510	AUZE-A-08-Box1-15	minus-80	2	A	1	B	9	\N	\N	2022-12-14 20:05:59.497536	2022-12-14 20:05:59.497536	34	1561
511	AUZE-A-09-Box1-16	minus-80	2	A	1	B	10	\N	\N	2022-12-14 20:05:59.505484	2022-12-14 20:05:59.505484	35	1561
512	AUZE-A-14-Box1-17	minus-80	2	A	1	B	13	\N	\N	2022-12-14 20:05:59.515487	2022-12-14 20:05:59.515487	1595	1561
513	BARA-C-03-Box1-18	minus-80	2	A	1	C	2	\N	\N	2022-12-14 20:05:59.525338	2022-12-14 20:05:59.525338	38	1561
514	BARA-C-05-Box1-19	minus-80	1	A	1	C	4	\N	\N	2022-12-14 20:05:59.536507	2022-12-14 20:05:59.536507	40	1561
515	BARA-C-06-Box1-20	minus-80	1	A	1	C	5	\N	\N	2022-12-14 20:05:59.546747	2022-12-14 20:05:59.546747	1601	1561
516	BARA-C-07-Box1-21	minus-80	2	A	1	C	6	\N	\N	2022-12-14 20:05:59.555021	2022-12-14 20:05:59.555021	1602	1561
517	BARA-C-10-Box1-22	minus-80	1	A	1	C	8	\N	\N	2022-12-14 20:05:59.560829	2022-12-14 20:05:59.560829	1605	1561
518	BARR-A-07-Box1-23	minus-80	1	A	1	C	11	\N	\N	2022-12-14 20:05:59.566605	2022-12-14 20:05:59.566605	52	1561
519	BARR-A-09-Box1-24	minus-80	1	A	1	C	12	\N	\N	2022-12-14 20:05:59.57354	2022-12-14 20:05:59.57354	54	1561
520	CAMA-D-02-Box1-25	minus-80	2	A	1	D	3	\N	\N	2022-12-14 20:05:59.579842	2022-12-14 20:05:59.579842	81	1561
521	CAMA-D-04-Box1-26	minus-80	2	A	1	D	4	\N	\N	2022-12-14 20:05:59.589781	2022-12-14 20:05:59.589781	83	1561
522	CAMA-E-01-Box1-27	minus-80	2	A	1	D	5	\N	\N	2022-12-14 20:05:59.599649	2022-12-14 20:05:59.599649	88	1561
523	CAMA-E-03-Box1-28	minus-80	2	A	1	D	7	\N	\N	2022-12-14 20:05:59.610045	2022-12-14 20:05:59.610045	1634	1561
524	CAMA-E-04-Box1-29	minus-80	1	A	1	D	8	\N	\N	2022-12-14 20:05:59.621606	2022-12-14 20:05:59.621606	1635	1561
525	CAMA-E-08-Box1-30	minus-80	1	A	1	D	11	\N	\N	2022-12-14 20:05:59.628947	2022-12-14 20:05:59.628947	1638	1561
526	CAMA-E-09-Box1-31	minus-80	1	A	1	D	12	\N	\N	2022-12-14 20:05:59.634223	2022-12-14 20:05:59.634223	91	1561
527	CAMA-E-10-Box1-32	minus-80	2	A	1	D	13	\N	\N	2022-12-14 20:05:59.639969	2022-12-14 20:05:59.639969	959	1561
528	CAMA-E-12-Box1-33	minus-80	1	A	1	E	1	\N	\N	2022-12-14 20:05:59.645958	2022-12-14 20:05:59.645958	1642	1561
529	CARL-A-01-Box1-34	minus-80	2	A	1	E	2	\N	\N	2022-12-14 20:05:59.652431	2022-12-14 20:05:59.652431	92	1561
530	CARL-A-02-Box1-35	minus-80	1	A	1	E	3	\N	\N	2022-12-14 20:05:59.659535	2022-12-14 20:05:59.659535	93	1561
531	CERN-A-01-Box1-36	minus-80	1	A	1	E	6	\N	\N	2022-12-14 20:05:59.665928	2022-12-14 20:05:59.665928	121	1561
532	CERN-A-03-Box1-37	minus-80	2	A	1	E	7	\N	\N	2022-12-14 20:05:59.674228	2022-12-14 20:05:59.674228	123	1561
533	CERN-A-04-Box1-38	minus-80	2	A	1	E	8	\N	\N	2022-12-14 20:05:59.680234	2022-12-14 20:05:59.680234	1392	1561
534	CERN-B-07-Box1-39	minus-80	2	A	1	E	11	\N	\N	2022-12-14 20:05:59.686137	2022-12-14 20:05:59.686137	131	1561
535	CERN-B-08-Box1-40	minus-80	2	A	1	E	12	\N	\N	2022-12-14 20:05:59.693576	2022-12-14 20:05:59.693576	132	1561
536	CERN-B-09-Box1-41	minus-80	2	A	1	E	13	\N	\N	2022-12-14 20:05:59.699534	2022-12-14 20:05:59.699534	1661	1561
537	CIER-A-01-Box1-42	minus-80	2	A	1	F	1	\N	\N	2022-12-14 20:05:59.705667	2022-12-14 20:05:59.705667	997	1561
538	CIER-A-02-Box1-43	minus-80	2	A	1	F	2	\N	\N	2022-12-14 20:05:59.711351	2022-12-14 20:05:59.711351	136	1561
539	CIER-A-03-Box1-44	minus-80	2	A	1	F	3	\N	\N	2022-12-14 20:05:59.716633	2022-12-14 20:05:59.716633	137	1561
540	CIER-A-04-Box1-45	minus-80	1	A	1	F	4	\N	\N	2022-12-14 20:05:59.72403	2022-12-14 20:05:59.72403	138	1561
541	CIER-A-05-Box1-46	minus-80	2	A	1	F	5	\N	\N	2022-12-14 20:05:59.730431	2022-12-14 20:05:59.730431	1001	1561
542	CIER-A-07-Box1-47	minus-80	2	A	1	F	7	\N	\N	2022-12-14 20:05:59.736346	2022-12-14 20:05:59.736346	1003	1561
543	CIER-A-08-Box1-48	minus-80	2	A	1	F	8	\N	\N	2022-12-14 20:05:59.744404	2022-12-14 20:05:59.744404	1004	1561
544	CIER-A-09-Box1-49	minus-80	2	A	1	F	9	\N	\N	2022-12-14 20:05:59.755604	2022-12-14 20:05:59.755604	140	1561
545	CLAR-B-01-Box1-50	minus-80	2	A	1	F	12	\N	\N	2022-12-14 20:05:59.767763	2022-12-14 20:05:59.767763	164	1561
546	CLAR-B-05-Box1-51	minus-80	2	A	1	G	1	\N	\N	2022-12-14 20:05:59.775165	2022-12-14 20:05:59.775165	168	1561
547	CLAR-B-06-Box1-52	minus-80	1	A	1	G	2	\N	\N	2022-12-14 20:05:59.779593	2022-12-14 20:05:59.779593	169	1561
548	CLAR-C-02-Box1-53	minus-80	1	A	1	G	4	\N	\N	2022-12-14 20:05:59.784931	2022-12-14 20:05:59.784931	174	1561
549	CLAR-C-04-Box1-54	minus-80	1	A	1	G	6	\N	\N	2022-12-14 20:05:59.791046	2022-12-14 20:05:59.791046	176	1561
550	CLAR-C-08-Box1-55	minus-80	2	A	1	G	7	\N	\N	2022-12-14 20:05:59.796332	2022-12-14 20:05:59.796332	180	1561
551	COLO-B-01-Box1-56	minus-80	1	A	1	G	8	\N	\N	2022-12-14 20:05:59.801423	2022-12-14 20:05:59.801423	183	1561
552	COLO-B-02-Box1-57	minus-80	2	A	1	G	9	\N	\N	2022-12-14 20:05:59.806725	2022-12-14 20:05:59.806725	184	1561
553	COLO-B-05-Box1-58	minus-80	1	A	1	G	12	\N	\N	2022-12-14 20:05:59.811421	2022-12-14 20:05:59.811421	1377	1561
554	DAMI-C-04-Box1-59	minus-80	2	A	1	G	13	\N	\N	2022-12-14 20:05:59.81758	2022-12-14 20:05:59.81758	1707	1561
555	DAMI-C-05-Box1-60	minus-80	2	A	1	G	14	\N	\N	2022-12-14 20:05:59.823125	2022-12-14 20:05:59.823125	1708	1561
556	DECA-A-01-Box1-61	minus-80	2	B	1	A	1	\N	\N	2022-12-14 20:05:59.829557	2022-12-14 20:05:59.829557	191	1561
557	DECA-A-02-Box1-62	minus-80	2	B	1	A	2	\N	\N	2022-12-14 20:05:59.835262	2022-12-14 20:05:59.835262	1044	1561
558	DECA-A-03-Box1-63	minus-80	2	B	1	A	3	\N	\N	2022-12-14 20:05:59.843324	2022-12-14 20:05:59.843324	192	1561
559	DECA-A-04-Box1-64	minus-80	2	B	1	A	4	\N	\N	2022-12-14 20:05:59.850946	2022-12-14 20:05:59.850946	193	1561
560	DECA-A-05-Box1-65	minus-80	2	B	1	A	5	\N	\N	2022-12-14 20:05:59.856489	2022-12-14 20:05:59.856489	194	1561
561	DECA-A-06-Box1-66	minus-80	2	B	1	A	6	\N	\N	2022-12-14 20:05:59.861343	2022-12-14 20:05:59.861343	195	1561
562	DECA-A-07-Box1-67	minus-80	2	B	1	A	7	\N	\N	2022-12-14 20:05:59.86823	2022-12-14 20:05:59.86823	196	1561
563	DECA-A-08-Box1-68	minus-80	2	B	1	A	8	\N	\N	2022-12-14 20:05:59.875027	2022-12-14 20:05:59.875027	197	1561
564	DECA-A-09-Box1-69	minus-80	2	B	1	A	9	\N	\N	2022-12-14 20:05:59.880309	2022-12-14 20:05:59.880309	198	1561
565	DECA-A-10-Box1-70	minus-80	1	B	1	A	10	\N	\N	2022-12-14 20:05:59.885422	2022-12-14 20:05:59.885422	199	1561
566	DECA-A-11-Box1-71	minus-80	2	B	1	A	11	\N	\N	2022-12-14 20:05:59.890846	2022-12-14 20:05:59.890846	200	1561
567	DECA-A-12-Box1-72	minus-80	2	B	1	A	12	\N	\N	2022-12-14 20:05:59.897197	2022-12-14 20:05:59.897197	1720	1561
568	GAIL-A-01-Box1-73	minus-80	2	B	1	B	8	\N	\N	2022-12-14 20:05:59.902524	2022-12-14 20:05:59.902524	1071	1561
569	GAIL-A-03-Box1-74	minus-80	2	B	1	B	9	\N	\N	2022-12-14 20:05:59.908714	2022-12-14 20:05:59.908714	222	1561
570	GAIL-A-04-Box1-75	minus-80	2	B	1	B	10	\N	\N	2022-12-14 20:05:59.914134	2022-12-14 20:05:59.914134	1074	1561
571	GAIL-A-06-Box1-76	minus-80	2	B	1	B	11	\N	\N	2022-12-14 20:05:59.919688	2022-12-14 20:05:59.919688	223	1561
572	GAIL-A-07-Box1-77	minus-80	2	B	1	B	12	\N	\N	2022-12-14 20:05:59.926161	2022-12-14 20:05:59.926161	1077	1561
573	GAIL-A-08-Box1-78	minus-80	2	B	1	B	13	\N	\N	2022-12-14 20:05:59.931873	2022-12-14 20:05:59.931873	1078	1561
574	GAIL-A-09-Box1-79	minus-80	2	B	1	B	14	\N	\N	2022-12-14 20:05:59.940326	2022-12-14 20:05:59.940326	1079	1561
575	GAIL-B-01-Box1-80	minus-80	2	B	1	C	1	\N	\N	2022-12-14 20:05:59.950354	2022-12-14 20:05:59.950354	226	1561
576	GAIL-B-02-Box1-81	minus-80	2	B	1	C	2	\N	\N	2022-12-14 20:05:59.960341	2022-12-14 20:05:59.960341	227	1561
577	GAIL-B-04-Box1-82	minus-80	2	B	1	C	3	\N	\N	2022-12-14 20:05:59.966376	2022-12-14 20:05:59.966376	1084	1561
578	GAIL-B-07-Box1-83	minus-80	1	B	1	C	5	\N	\N	2022-12-14 20:05:59.97274	2022-12-14 20:05:59.97274	231	1561
579	GAIL-B-08-Box1-84	minus-80	2	B	1	C	6	\N	\N	2022-12-14 20:05:59.97812	2022-12-14 20:05:59.97812	232	1561
580	GAIL-B-10-Box1-85	minus-80	2	B	1	C	8	\N	\N	2022-12-14 20:05:59.983689	2022-12-14 20:05:59.983689	234	1561
581	GAIL-B-11-Box1-86	minus-80	2	B	1	C	9	\N	\N	2022-12-14 20:05:59.990046	2022-12-14 20:05:59.990046	1748	1561
582	GREZ-A-02-Box1-87	minus-80	2	B	1	C	11	\N	\N	2022-12-14 20:05:59.995871	2022-12-14 20:05:59.995871	235	1561
583	GREZ-A-03-Box1-88	minus-80	2	B	1	C	12	\N	\N	2022-12-14 20:06:00.006437	2022-12-14 20:06:00.006437	1089	1561
584	JUZE-A-04-Box1-89	minus-80	2	B	1	D	1	\N	\N	2022-12-14 20:06:00.01642	2022-12-14 20:06:00.01642	244	1561
585	JUZE-A-05-Box1-90	minus-80	2	B	1	D	2	\N	\N	2022-12-14 20:06:00.028384	2022-12-14 20:06:00.028384	245	1561
586	JUZE-A-06-Box1-91	minus-80	2	B	1	D	3	\N	\N	2022-12-14 20:06:00.035743	2022-12-14 20:06:00.035743	246	1561
587	JUZE-A-08-Box1-92	minus-80	2	B	1	D	5	\N	\N	2022-12-14 20:06:00.041814	2022-12-14 20:06:00.041814	248	1561
588	JUZE-A-11-Box1-93	minus-80	2	B	1	D	6	\N	\N	2022-12-14 20:06:00.046934	2022-12-14 20:06:00.046934	1762	1561
589	JUZE-A-12-Box1-94	minus-80	1	B	1	D	7	\N	\N	2022-12-14 20:06:00.053173	2022-12-14 20:06:00.053173	1763	1561
590	JUZE-A-13-Box1-95	minus-80	1	B	1	D	8	\N	\N	2022-12-14 20:06:00.065728	2022-12-14 20:06:00.065728	1764	1561
591	JUZE-A-14-Box1-96	minus-80	2	B	1	D	9	\N	\N	2022-12-14 20:06:00.072674	2022-12-14 20:06:00.072674	1765	1561
592	JUZE-A-15-Box1-97	minus-80	2	B	1	D	10	\N	\N	2022-12-14 20:06:00.077991	2022-12-14 20:06:00.077991	251	1561
593	JUZET-A-02-Box1-98	minus-80	1	B	1	D	12	\N	\N	2022-12-14 20:06:00.084295	2022-12-14 20:06:00.084295	253	1561
594	JUZET-A-03-Box1-99	minus-80	2	B	1	D	13	\N	\N	2022-12-14 20:06:00.091057	2022-12-14 20:06:00.091057	254	1561
595	JUZET-C-02-Box1-100	minus-80	1	B	1	E	1	\N	\N	2022-12-14 20:06:00.096529	2022-12-14 20:06:00.096529	263	1561
596	JUZET-C-03-Box2-1	minus-80	2	B	1	E	2	\N	\N	2022-12-14 20:06:00.103025	2022-12-14 20:06:00.103025	264	1561
597	JUZET-C-05-Box2-2	minus-80	2	B	1	E	3	\N	\N	2022-12-14 20:06:00.110089	2022-12-14 20:06:00.110089	266	1561
598	LABA-A-01-Box2-3	minus-80	2	B	1	E	4	\N	\N	2022-12-14 20:06:00.11521	2022-12-14 20:06:00.11521	273	1561
599	LABA-A-02-Box2-4	minus-80	2	B	1	E	5	\N	\N	2022-12-14 20:06:00.120087	2022-12-14 20:06:00.120087	274	1561
600	LABA-A-03-Box2-5	minus-80	2	B	1	E	6	\N	\N	2022-12-14 20:06:00.125877	2022-12-14 20:06:00.125877	275	1561
601	LABA-A-04-Box2-6	minus-80	2	B	1	E	7	\N	\N	2022-12-14 20:06:00.130843	2022-12-14 20:06:00.130843	276	1561
602	LABA-A-05-Box2-7	minus-80	1	B	1	E	8	\N	\N	2022-12-14 20:06:00.135502	2022-12-14 20:06:00.135502	277	1561
603	LABA-A-06-Box2-8	minus-80	1	B	1	E	9	\N	\N	2022-12-14 20:06:00.140916	2022-12-14 20:06:00.140916	278	1561
604	LABA-A-07-Box2-9	minus-80	2	B	1	E	10	\N	\N	2022-12-14 20:06:00.146594	2022-12-14 20:06:00.146594	279	1561
605	LABA-A-09-Box2-10	minus-80	2	B	1	E	11	\N	\N	2022-12-14 20:06:00.152088	2022-12-14 20:06:00.152088	281	1561
606	LABA-A-11-Box2-11	minus-80	2	B	1	E	13	\N	\N	2022-12-14 20:06:00.157913	2022-12-14 20:06:00.157913	1783	1561
607	LABA-A-13-Box2-12	minus-80	2	B	1	F	1	\N	\N	2022-12-14 20:06:00.163733	2022-12-14 20:06:00.163733	1785	1561
608	LABA-A-14-Box2-13	minus-80	2	B	1	F	2	\N	\N	2022-12-14 20:06:00.16939	2022-12-14 20:06:00.16939	1786	1561
609	MARS-C-01-Box2-14	minus-80	2	B	1	F	6	\N	\N	2022-12-14 20:06:00.175833	2022-12-14 20:06:00.175833	1839	1561
610	MARS-C-02-Box2-15	minus-80	2	B	1	F	7	\N	\N	2022-12-14 20:06:00.1815	2022-12-14 20:06:00.1815	1840	1561
611	MARS-C-03-Box2-16	minus-80	2	B	1	F	8	\N	\N	2022-12-14 20:06:00.18811	2022-12-14 20:06:00.18811	1841	1561
612	MARS-C-05-Box2-17	minus-80	2	B	1	F	9	\N	\N	2022-12-14 20:06:00.195154	2022-12-14 20:06:00.195154	1843	1561
613	MARS-C-06-Box2-18	minus-80	2	B	1	F	10	\N	\N	2022-12-14 20:06:00.200823	2022-12-14 20:06:00.200823	1844	1561
614	MARS-C-07-Box2-19	minus-80	2	B	1	F	11	\N	\N	2022-12-14 20:06:00.206612	2022-12-14 20:06:00.206612	1845	1561
615	MARS-C-08-Box2-20	minus-80	2	B	1	F	12	\N	\N	2022-12-14 20:06:00.213179	2022-12-14 20:06:00.213179	1846	1561
616	MONB-A-01-Box2-21	minus-80	2	B	1	F	13	\N	\N	2022-12-14 20:06:00.220352	2022-12-14 20:06:00.220352	373	1561
617	MONB-A-04-Box2-22	minus-80	2	B	1	G	1	\N	\N	2022-12-14 20:06:00.226845	2022-12-14 20:06:00.226845	376	1561
618	MONB-A-06-Box2-23	minus-80	2	B	1	G	2	\N	\N	2022-12-14 20:06:00.233079	2022-12-14 20:06:00.233079	378	1561
619	MONB-A-08-Box2-24	minus-80	2	B	1	G	3	\N	\N	2022-12-14 20:06:00.240245	2022-12-14 20:06:00.240245	1212	1561
620	MONB-A-09-Box2-25	minus-80	1	B	1	G	4	\N	\N	2022-12-14 20:06:00.251396	2022-12-14 20:06:00.251396	380	1561
621	MONB-A-12-Box2-26	minus-80	2	B	1	G	7	\N	\N	2022-12-14 20:06:00.261069	2022-12-14 20:06:00.261069	1858	1561
622	MONF-A-01-Box2-27	minus-80	2	B	1	G	9	\N	\N	2022-12-14 20:06:00.268666	2022-12-14 20:06:00.268666	392	1561
623	MONF-A-04-Box2-28	minus-80	2	B	1	G	10	\N	\N	2022-12-14 20:06:00.274204	2022-12-14 20:06:00.274204	395	1561
624	MONF-A-05-Box2-29	minus-80	2	B	1	G	11	\N	\N	2022-12-14 20:06:00.280474	2022-12-14 20:06:00.280474	396	1561
625	MONF-A-06-Box2-30	minus-80	1	B	1	G	12	\N	\N	2022-12-14 20:06:00.285262	2022-12-14 20:06:00.285262	397	1561
626	MONF-A-07-Box2-31	minus-80	1	B	1	G	13	\N	\N	2022-12-14 20:06:00.291007	2022-12-14 20:06:00.291007	398	1561
627	MONF-A-08-Box2-32	minus-80	1	B	1	G	14	\N	\N	2022-12-14 20:06:00.29671	2022-12-14 20:06:00.29671	399	1561
628	MONF-A-10-Box2-33	minus-80	2	C	1	A	2	\N	\N	2022-12-14 20:06:00.301641	2022-12-14 20:06:00.301641	401	1561
629	MONF-A-11-Box2-34	minus-80	2	C	1	A	3	\N	\N	2022-12-14 20:06:00.308405	2022-12-14 20:06:00.308405	1869	1561
630	MONF-A-12-Box2-35	minus-80	2	C	1	A	4	\N	\N	2022-12-14 20:06:00.313122	2022-12-14 20:06:00.313122	1870	1561
631	MONTI-B-02-Box2-36	minus-80	2	C	1	A	6	\N	\N	2022-12-14 20:06:00.318563	2022-12-14 20:06:00.318563	1238	1561
632	MONTI-B-04-Box2-37	minus-80	1	C	1	A	8	\N	\N	2022-12-14 20:06:00.323986	2022-12-14 20:06:00.323986	1240	1561
633	MONTI-B-05-Box2-38	minus-80	2	C	1	A	9	\N	\N	2022-12-14 20:06:00.330175	2022-12-14 20:06:00.330175	1875	1561
634	MONTI-B-06-Box2-39	minus-80	2	C	1	A	10	\N	\N	2022-12-14 20:06:00.336313	2022-12-14 20:06:00.336313	1241	1561
635	MONTM-A-02-Box2-40	minus-80	2	C	1	A	13	\N	\N	2022-12-14 20:06:00.342496	2022-12-14 20:06:00.342496	426	1561
636	MONTM-A-04-Box2-41	minus-80	2	C	1	A	14	\N	\N	2022-12-14 20:06:00.348981	2022-12-14 20:06:00.348981	428	1561
637	MONTM-A-05-Box2-42	minus-80	2	C	1	B	1	\N	\N	2022-12-14 20:06:00.354662	2022-12-14 20:06:00.354662	429	1561
638	MONTM-A-06-Box2-43	minus-80	1	C	1	B	2	\N	\N	2022-12-14 20:06:00.362116	2022-12-14 20:06:00.362116	430	1561
639	MONTM-A-09-Box2-44	minus-80	2	C	1	B	5	\N	\N	2022-12-14 20:06:00.367674	2022-12-14 20:06:00.367674	433	1561
640	NAZA-A-03-Box2-45	minus-80	2	C	1	B	7	\N	\N	2022-12-14 20:06:00.373073	2022-12-14 20:06:00.373073	436	1561
641	NAZA-A-05-Box2-46	minus-80	2	C	1	B	8	\N	\N	2022-12-14 20:06:00.378517	2022-12-14 20:06:00.378517	1257	1561
642	NAZA-A-06-Box2-47	minus-80	2	C	1	B	9	\N	\N	2022-12-14 20:06:00.385505	2022-12-14 20:06:00.385505	438	1561
643	NAZA-A-07-Box2-48	minus-80	2	C	1	B	10	\N	\N	2022-12-14 20:06:00.391242	2022-12-14 20:06:00.391242	1259	1561
644	NAZA-A-13-Box2-49	minus-80	1	C	1	B	12	\N	\N	2022-12-14 20:06:00.396309	2022-12-14 20:06:00.396309	1896	1561
645	PUYM-B-08-Box2-50	minus-80	2	C	1	C	2	\N	\N	2022-12-14 20:06:00.401758	2022-12-14 20:06:00.401758	449	1561
646	RAYR-A-02-Box2-51	minus-80	2	C	1	C	6	\N	\N	2022-12-14 20:06:00.407386	2022-12-14 20:06:00.407386	451	1561
647	RAYR-A-05-Box2-52	minus-80	2	C	1	C	9	\N	\N	2022-12-14 20:06:00.412614	2022-12-14 20:06:00.412614	453	1561
648	RAYR-A-08-Box2-53	minus-80	1	C	1	C	11	\N	\N	2022-12-14 20:06:00.418406	2022-12-14 20:06:00.418406	455	1561
649	SALE-A-01-Box2-54	minus-80	2	C	1	D	1	\N	\N	2022-12-14 20:06:00.424808	2022-12-14 20:06:00.424808	470	1561
650	SALV-A-01-Box2-55	minus-80	1	C	1	D	2	\N	\N	2022-12-14 20:06:00.431731	2022-12-14 20:06:00.431731	480	1561
651	SALV-A-02-Box2-56	minus-80	1	C	1	D	3	\N	\N	2022-12-14 20:06:00.438321	2022-12-14 20:06:00.438321	481	1561
652	SALV-A-03-Box2-57	minus-80	1	C	1	D	4	\N	\N	2022-12-14 20:06:00.444312	2022-12-14 20:06:00.444312	482	1561
653	SALV-A-05-Box2-58	minus-80	2	C	1	D	6	\N	\N	2022-12-14 20:06:00.450609	2022-12-14 20:06:00.450609	483	1561
654	SALV-A-06-Box2-59	minus-80	2	C	1	D	7	\N	\N	2022-12-14 20:06:00.45637	2022-12-14 20:06:00.45637	1298	1561
655	SALV-A-07-Box2-60	minus-80	1	C	1	D	8	\N	\N	2022-12-14 20:06:00.46172	2022-12-14 20:06:00.46172	484	1561
656	SAUB-B-02-Box2-61	minus-80	2	C	1	D	11	\N	\N	2022-12-14 20:06:00.467347	2022-12-14 20:06:00.467347	491	1561
657	SAUB-B-03-Box2-62	minus-80	2	C	1	D	12	\N	\N	2022-12-14 20:06:00.473932	2022-12-14 20:06:00.473932	492	1561
658	SAUB-B-04-Box2-63	minus-80	2	C	1	D	13	\N	\N	2022-12-14 20:06:00.479072	2022-12-14 20:06:00.479072	493	1561
659	SAUB-B-05-Box2-64	minus-80	2	C	1	D	14	\N	\N	2022-12-14 20:06:00.484471	2022-12-14 20:06:00.484471	494	1561
660	SAUB-B-06-Box2-65	minus-80	2	C	1	E	1	\N	\N	2022-12-14 20:06:00.490905	2022-12-14 20:06:00.490905	495	1561
661	SAUB-B-07-Box2-66	minus-80	2	C	1	E	2	\N	\N	2022-12-14 20:06:00.49816	2022-12-14 20:06:00.49816	496	1561
662	SAUB-B-08-Box2-67	minus-80	2	C	1	E	3	\N	\N	2022-12-14 20:06:00.508118	2022-12-14 20:06:00.508118	497	1561
663	SAUB-B-09-Box2-68	minus-80	2	C	1	E	4	\N	\N	2022-12-14 20:06:00.51874	2022-12-14 20:06:00.51874	498	1561
664	SAUB-B-11-Box2-69	minus-80	2	C	1	E	5	\N	\N	2022-12-14 20:06:00.530051	2022-12-14 20:06:00.530051	1941	1561
665	SIMO-A-02-Box2-70	minus-80	2	C	1	E	7	\N	\N	2022-12-14 20:06:00.536862	2022-12-14 20:06:00.536862	500	1561
666	SIMO-A-04-Box2-71	minus-80	2	C	1	E	10	\N	\N	2022-12-14 20:06:00.543383	2022-12-14 20:06:00.543383	502	1561
667	SIMO-A-05-Box2-72	minus-80	2	C	1	E	11	\N	\N	2022-12-14 20:06:00.549264	2022-12-14 20:06:00.549264	503	1561
668	SIMO-A-06-Box2-73	minus-80	2	C	1	E	12	\N	\N	2022-12-14 20:06:00.554614	2022-12-14 20:06:00.554614	504	1561
669	SIMO-A-07-Box2-74	minus-80	2	C	1	E	13	\N	\N	2022-12-14 20:06:00.559817	2022-12-14 20:06:00.559817	505	1561
670	SIMO-A-08-Box2-75	minus-80	2	C	1	E	14	\N	\N	2022-12-14 20:06:00.56583	2022-12-14 20:06:00.56583	506	1561
671	THOM-A-01-Box2-76	minus-80	2	C	1	F	1	\N	\N	2022-12-14 20:06:00.574298	2022-12-14 20:06:00.574298	509	1561
672	THOM-A-04-Box2-77	minus-80	2	C	1	F	2	\N	\N	2022-12-14 20:06:00.579944	2022-12-14 20:06:00.579944	511	1561
673	THOM-A-07-Box2-78	minus-80	1	C	1	F	3	\N	\N	2022-12-14 20:06:00.58742	2022-12-14 20:06:00.58742	513	1561
674	THOM-A-08-Box2-79	minus-80	2	C	1	F	4	\N	\N	2022-12-14 20:06:00.597344	2022-12-14 20:06:00.597344	514	1561
675	THOM-A-09-Box2-80	minus-80	1	C	1	F	5	\N	\N	2022-12-14 20:06:00.606432	2022-12-14 20:06:00.606432	515	1561
676	THOM-A-12-Box2-81	minus-80	2	C	1	F	7	\N	\N	2022-12-14 20:06:00.616187	2022-12-14 20:06:00.616187	1960	1561
677	VILLE-A-01-Box2-82	minus-80	2	C	1	F	8	\N	\N	2022-12-14 20:06:00.626205	2022-12-14 20:06:00.626205	546	1561
678	VILLE-A-02-Box2-83	minus-80	2	C	1	F	9	\N	\N	2022-12-14 20:06:00.637301	2022-12-14 20:06:00.637301	547	1561
679	VILLE-A-04-Box2-84	minus-80	2	C	1	F	11	\N	\N	2022-12-14 20:06:00.643979	2022-12-14 20:06:00.643979	549	1561
680	VILLE-A-06-Box2-85	minus-80	2	C	1	F	12	\N	\N	2022-12-14 20:06:00.649061	2022-12-14 20:06:00.649061	551	1561
681	VILLE-A-07-Box2-86	minus-80	2	C	1	F	13	\N	\N	2022-12-14 20:06:00.654681	2022-12-14 20:06:00.654681	552	1561
682	VILLE-A-09-Box2-87	minus-80	2	C	1	G	1	\N	\N	2022-12-14 20:06:00.66144	2022-12-14 20:06:00.66144	554	1561
683	VILLE-A-12-Box2-88	minus-80	2	C	1	G	2	\N	\N	2022-12-14 20:06:00.66721	2022-12-14 20:06:00.66721	1972	1561
684	VILLE-B-05-Box2-89	minus-80	2	C	1	G	7	\N	\N	2022-12-14 20:06:00.67397	2022-12-14 20:06:00.67397	560	1561
685	VILLE-B-06-Box2-90	minus-80	1	C	1	G	8	\N	\N	2022-12-14 20:06:00.681277	2022-12-14 20:06:00.681277	561	1561
686	BELL-A-10-Box2-91	minus-80	1	D	1	A	4	\N	\N	2022-12-14 20:06:00.691431	2022-12-14 20:06:00.691431	65	1561
687	CASS-A-03-Box2-92	minus-80	1	D	1	A	8	\N	\N	2022-12-14 20:06:00.698089	2022-12-14 20:06:00.698089	102	1561
688	CASS-A-04-Box2-93	minus-80	2	D	1	A	9	\N	\N	2022-12-14 20:06:00.702443	2022-12-14 20:06:00.702443	103	1561
689	CASS-A-05-Box2-94	minus-80	2	D	1	A	10	\N	\N	2022-12-14 20:06:00.708194	2022-12-14 20:06:00.708194	1391	1561
690	CASS-A-07-Box2-95	minus-80	2	D	1	A	12	\N	\N	2022-12-14 20:06:00.716166	2022-12-14 20:06:00.716166	105	1561
691	CINT-A-02-Box2-96	minus-80	2	D	1	A	14	\N	\N	2022-12-14 20:06:00.722779	2022-12-14 20:06:00.722779	146	1561
692	CINT-A-03-Box2-97	minus-80	2	D	1	B	1	\N	\N	2022-12-14 20:06:00.72844	2022-12-14 20:06:00.72844	147	1561
693	CINT-A-04-Box2-98	minus-80	2	D	1	B	2	\N	\N	2022-12-14 20:06:00.733953	2022-12-14 20:06:00.733953	1677	1561
694	CINT-A-05-Box2-99	minus-80	2	D	1	B	3	\N	\N	2022-12-14 20:06:00.739774	2022-12-14 20:06:00.739774	148	1561
695	CINT-A-06-Box2-100	minus-80	2	D	1	B	4	\N	\N	2022-12-14 20:06:00.744597	2022-12-14 20:06:00.744597	149	1561
696	CINT-A-07-Box3-1	minus-80	1	D	1	B	5	\N	\N	2022-12-14 20:06:00.749488	2022-12-14 20:06:00.749488	1680	1561
697	CINT-A-09-Box3-2	minus-80	1	D	1	B	7	\N	\N	2022-12-14 20:06:00.754772	2022-12-14 20:06:00.754772	151	1561
698	CINT-A-10-Box3-3	minus-80	1	D	1	B	8	\N	\N	2022-12-14 20:06:00.760806	2022-12-14 20:06:00.760806	152	1561
699	CINT-B-05-Box3-4	minus-80	1	D	1	B	12	\N	\N	2022-12-14 20:06:00.771703	2022-12-14 20:06:00.771703	158	1561
700	CINT-B-09-Box3-5	minus-80	2	D	1	B	14	\N	\N	2022-12-14 20:06:00.780724	2022-12-14 20:06:00.780724	162	1561
701	LANT-B-03-Box3-6	minus-80	2	D	1	C	3	\N	\N	2022-12-14 20:06:00.791307	2022-12-14 20:06:00.791307	1796	1561
702	LANT-B-06-Box3-7	minus-80	2	D	1	C	6	\N	\N	2022-12-14 20:06:00.800858	2022-12-14 20:06:00.800858	1799	1561
703	LANT-B-07-Box3-8	minus-80	2	D	1	C	7	\N	\N	2022-12-14 20:06:00.810468	2022-12-14 20:06:00.810468	1800	1561
704	LANT-B-08-Box3-9	minus-80	2	D	1	C	8	\N	\N	2022-12-14 20:06:00.817389	2022-12-14 20:06:00.817389	1801	1561
705	LANT-B-09-Box3-10	minus-80	2	D	1	C	9	\N	\N	2022-12-14 20:06:00.823484	2022-12-14 20:06:00.823484	1802	1561
706	LANT-B-10-Box3-11	minus-80	2	D	1	C	10	\N	\N	2022-12-14 20:06:00.828149	2022-12-14 20:06:00.828149	1803	1561
707	LANT-D-05-Box3-12	minus-80	2	D	1	C	13	\N	\N	2022-12-14 20:06:00.833358	2022-12-14 20:06:00.833358	307	1561
708	LAUZ-A-04-Box3-13	minus-80	2	D	1	D	5	\N	\N	2022-12-14 20:06:00.83977	2022-12-14 20:06:00.83977	1150	1561
709	LAUZ-A-05-Box3-14	minus-80	1	D	1	D	6	\N	\N	2022-12-14 20:06:00.845704	2022-12-14 20:06:00.845704	1151	1561
710	LAUZ-A-10-Box3-15	minus-80	2	D	1	D	10	\N	\N	2022-12-14 20:06:00.85241	2022-12-14 20:06:00.85241	1154	1561
711	LECT-A-10-Box3-16	minus-80	2	D	1	D	12	\N	\N	2022-12-14 20:06:00.858835	2022-12-14 20:06:00.858835	321	1561
712	LECT-A-11-Box3-17	minus-80	2	D	1	D	13	\N	\N	2022-12-14 20:06:00.86482	2022-12-14 20:06:00.86482	322	1561
713	LECT-A-12-Box3-18	minus-80	2	D	1	D	14	\N	\N	2022-12-14 20:06:00.872081	2022-12-14 20:06:00.872081	323	1561
714	LUNA-A-01-Box3-19	minus-80	2	D	1	E	1	\N	\N	2022-12-14 20:06:00.876862	2022-12-14 20:06:00.876862	334	1561
715	LUNA-A-02-Box3-20	minus-80	2	D	1	E	2	\N	\N	2022-12-14 20:06:00.88299	2022-12-14 20:06:00.88299	335	1561
716	LUNA-A-03-Box3-21	minus-80	2	D	1	E	3	\N	\N	2022-12-14 20:06:00.888354	2022-12-14 20:06:00.888354	336	1561
717	LUNA-A-05-Box3-22	minus-80	2	D	1	E	4	\N	\N	2022-12-14 20:06:00.893249	2022-12-14 20:06:00.893249	337	1561
718	LUNA-A-06-Box3-23	minus-80	2	D	1	E	5	\N	\N	2022-12-14 20:06:00.901353	2022-12-14 20:06:00.901353	338	1561
719	LUNA-A-07-Box3-24	minus-80	2	D	1	E	6	\N	\N	2022-12-14 20:06:00.906847	2022-12-14 20:06:00.906847	339	1561
720	LUNA-A-08-Box3-25	minus-80	2	D	1	E	7	\N	\N	2022-12-14 20:06:00.914717	2022-12-14 20:06:00.914717	340	1561
721	LUNA-A-09-Box3-26	minus-80	2	D	1	E	8	\N	\N	2022-12-14 20:06:00.922421	2022-12-14 20:06:00.922421	341	1561
722	LUNA-A-10-Box3-27	minus-80	2	D	1	E	9	\N	\N	2022-12-14 20:06:00.928751	2022-12-14 20:06:00.928751	342	1561
723	LUNA-A-12-Box3-28	minus-80	2	D	1	E	10	\N	\N	2022-12-14 20:06:00.935067	2022-12-14 20:06:00.935067	1838	1561
724	VILLE-C-06-Box3-29	minus-80	1	E	1	A	4	\N	\N	2022-12-14 20:06:00.940568	2022-12-14 20:06:00.940568	568	1561
725	VILLE-C-07-Box3-30	minus-80	1	E	1	C	1	\N	\N	2022-12-14 20:06:00.946548	2022-12-14 20:06:00.946548	1991	1561
726	AMBR-A-11-Box3-41	minus-80	1	A	2	A	2	\N	\N	2022-12-14 20:06:00.957891	2022-12-14 20:06:00.957891	1566	1561
727	ANGE-A-01-Box3-42	minus-80	2	A	2	A	3	\N	\N	2022-12-14 20:06:00.968164	2022-12-14 20:06:00.968164	11	1561
728	ANGE-A-02-Box3-43	minus-80	2	A	2	A	4	\N	\N	2022-12-14 20:06:00.975933	2022-12-14 20:06:00.975933	12	1561
729	ANGE-A-03-Box3-44	minus-80	2	A	2	A	5	\N	\N	2022-12-14 20:06:00.981546	2022-12-14 20:06:00.981546	13	1561
730	ANGE-A-08-Box3-45	minus-80	1	A	2	A	10	\N	\N	2022-12-14 20:06:00.98844	2022-12-14 20:06:00.98844	901	1561
731	ANGE-B-01-Box3-46	minus-80	1	A	2	A	12	\N	\N	2022-12-14 20:06:00.994398	2022-12-14 20:06:00.994398	904	1561
732	ANGE-B-02-Box3-47	minus-80	2	A	2	A	13	\N	\N	2022-12-14 20:06:01.000263	2022-12-14 20:06:01.000263	19	1561
733	ANGE-B-03-Box3-48	minus-80	1	A	2	A	14	\N	\N	2022-12-14 20:06:01.006729	2022-12-14 20:06:01.006729	906	1561
734	ANGE-B-04-Box3-49	minus-80	2	A	2	B	1	\N	\N	2022-12-14 20:06:01.013108	2022-12-14 20:06:01.013108	20	1561
735	ANGE-B-05-Box3-50	minus-80	2	A	2	B	2	\N	\N	2022-12-14 20:06:01.019703	2022-12-14 20:06:01.019703	21	1561
736	ANGE-B-08-Box3-51	minus-80	2	A	2	B	3	\N	\N	2022-12-14 20:06:01.02688	2022-12-14 20:06:01.02688	23	1561
737	ANGE-B-10-Box3-52	minus-80	2	A	2	B	5	\N	\N	2022-12-14 20:06:01.037001	2022-12-14 20:06:01.037001	25	1561
738	ANGE-B-11-Box3-53	minus-80	2	A	2	B	6	\N	\N	2022-12-14 20:06:01.047408	2022-12-14 20:06:01.047408	26	1561
739	AUZE-A-05-Box3-54	minus-80	2	A	2	B	8	\N	\N	2022-12-14 20:06:01.056884	2022-12-14 20:06:01.056884	31	1561
740	AUZE-A-08-Box3-55	minus-80	2	A	2	B	9	\N	\N	2022-12-14 20:06:01.067197	2022-12-14 20:06:01.067197	34	1561
741	AUZE-A-09-Box3-56	minus-80	2	A	2	B	10	\N	\N	2022-12-14 20:06:01.076628	2022-12-14 20:06:01.076628	35	1561
742	AUZE-A-12-Box3-57	minus-80	1	A	2	B	12	\N	\N	2022-12-14 20:06:01.087209	2022-12-14 20:06:01.087209	1594	1561
743	AUZE-A-14-Box3-58	minus-80	2	A	2	B	13	\N	\N	2022-12-14 20:06:01.098329	2022-12-14 20:06:01.098329	1595	1561
744	BARA-C-02-Box3-59	minus-80	1	A	2	C	1	\N	\N	2022-12-14 20:06:01.108429	2022-12-14 20:06:01.108429	37	1561
745	BARA-C-03-Box3-60	minus-80	2	A	2	C	2	\N	\N	2022-12-14 20:06:01.120155	2022-12-14 20:06:01.120155	38	1561
746	BARA-C-04-Box3-61	minus-80	1	A	2	C	3	\N	\N	2022-12-14 20:06:01.131445	2022-12-14 20:06:01.131445	39	1561
747	BARA-C-07-Box3-62	minus-80	2	A	2	C	6	\N	\N	2022-12-14 20:06:01.14352	2022-12-14 20:06:01.14352	1602	1561
748	CAMA-C-01-Box3-63	minus-80	1	A	2	C	13	\N	\N	2022-12-14 20:06:01.155796	2022-12-14 20:06:01.155796	77	1561
749	CAMA-C-04-Box3-64	minus-80	1	A	2	D	2	\N	\N	2022-12-14 20:06:01.166959	2022-12-14 20:06:01.166959	1628	1561
750	CAMA-D-02-Box3-65	minus-80	2	A	2	D	3	\N	\N	2022-12-14 20:06:01.178877	2022-12-14 20:06:01.178877	81	1561
751	CAMA-D-04-Box3-66	minus-80	2	A	2	D	4	\N	\N	2022-12-14 20:06:01.190459	2022-12-14 20:06:01.190459	83	1561
752	CAMA-E-01-Box3-67	minus-80	2	A	2	D	5	\N	\N	2022-12-14 20:06:01.201863	2022-12-14 20:06:01.201863	88	1561
753	CAMA-E-03-Box3-68	minus-80	2	A	2	D	7	\N	\N	2022-12-14 20:06:01.212945	2022-12-14 20:06:01.212945	1634	1561
754	CAMA-E-10-Box3-69	minus-80	2	A	2	D	13	\N	\N	2022-12-14 20:06:01.22788	2022-12-14 20:06:01.22788	959	1561
755	CARL-A-01-Box3-70	minus-80	2	A	2	E	2	\N	\N	2022-12-14 20:06:01.245099	2022-12-14 20:06:01.245099	92	1561
756	CARL-A-04-Box3-71	minus-80	1	A	2	E	5	\N	\N	2022-12-14 20:06:01.256167	2022-12-14 20:06:01.256167	95	1561
757	CERN-A-03-Box3-72	minus-80	2	A	2	E	7	\N	\N	2022-12-14 20:06:01.263738	2022-12-14 20:06:01.263738	123	1561
758	CERN-A-04-Box3-73	minus-80	2	A	2	E	8	\N	\N	2022-12-14 20:06:01.268561	2022-12-14 20:06:01.268561	1392	1561
759	CERN-B-04-Box3-74	minus-80	1	A	2	E	9	\N	\N	2022-12-14 20:06:01.27394	2022-12-14 20:06:01.27394	128	1561
760	CERN-B-07-Box3-75	minus-80	2	A	2	E	11	\N	\N	2022-12-14 20:06:01.278267	2022-12-14 20:06:01.278267	131	1561
761	CERN-B-08-Box3-76	minus-80	2	A	2	E	12	\N	\N	2022-12-14 20:06:01.283679	2022-12-14 20:06:01.283679	132	1561
762	CERN-B-09-Box3-77	minus-80	2	A	2	E	13	\N	\N	2022-12-14 20:06:01.289385	2022-12-14 20:06:01.289385	1661	1561
763	CIER-A-01-Box3-78	minus-80	2	A	2	F	1	\N	\N	2022-12-14 20:06:01.294798	2022-12-14 20:06:01.294798	997	1561
764	CIER-A-02-Box3-79	minus-80	2	A	2	F	2	\N	\N	2022-12-14 20:06:01.300047	2022-12-14 20:06:01.300047	136	1561
765	CIER-A-03-Box3-80	minus-80	2	A	2	F	3	\N	\N	2022-12-14 20:06:01.305993	2022-12-14 20:06:01.305993	137	1561
766	CIER-A-05-Box3-81	minus-80	2	A	2	F	5	\N	\N	2022-12-14 20:06:01.311014	2022-12-14 20:06:01.311014	1001	1561
767	CIER-A-07-Box3-82	minus-80	2	A	2	F	7	\N	\N	2022-12-14 20:06:01.316908	2022-12-14 20:06:01.316908	1003	1561
768	CIER-A-08-Box3-83	minus-80	2	A	2	F	8	\N	\N	2022-12-14 20:06:01.323511	2022-12-14 20:06:01.323511	1004	1561
769	CIER-A-09-Box3-84	minus-80	2	A	2	F	9	\N	\N	2022-12-14 20:06:01.330226	2022-12-14 20:06:01.330226	140	1561
770	CLAR-B-01-Box3-85	minus-80	2	A	2	F	12	\N	\N	2022-12-14 20:06:01.338209	2022-12-14 20:06:01.338209	164	1561
771	CLAR-B-05-Box3-86	minus-80	2	A	2	G	1	\N	\N	2022-12-14 20:06:01.347923	2022-12-14 20:06:01.347923	168	1561
772	CLAR-C-01-Box3-87	minus-80	1	A	2	G	3	\N	\N	2022-12-14 20:06:01.358648	2022-12-14 20:06:01.358648	173	1561
773	CLAR-C-08-Box3-88	minus-80	2	A	2	G	7	\N	\N	2022-12-14 20:06:01.364732	2022-12-14 20:06:01.364732	180	1561
774	COLO-B-02-Box3-89	minus-80	2	A	2	G	9	\N	\N	2022-12-14 20:06:01.370628	2022-12-14 20:06:01.370628	184	1561
775	COLO-B-04-Box3-90	minus-80	1	A	2	G	11	\N	\N	2022-12-14 20:06:01.376736	2022-12-14 20:06:01.376736	186	1561
776	DAMI-C-04-Box3-91	minus-80	2	A	2	G	13	\N	\N	2022-12-14 20:06:01.383798	2022-12-14 20:06:01.383798	1707	1561
777	DAMI-C-05-Box3-92	minus-80	2	A	2	G	14	\N	\N	2022-12-14 20:06:01.390227	2022-12-14 20:06:01.390227	1708	1561
778	DECA-A-01-Box3-93	minus-80	2	B	2	A	1	\N	\N	2022-12-14 20:06:01.396826	2022-12-14 20:06:01.396826	191	1561
779	DECA-A-02-Box3-94	minus-80	2	B	2	A	2	\N	\N	2022-12-14 20:06:01.402658	2022-12-14 20:06:01.402658	1044	1561
780	DECA-A-03-Box3-95	minus-80	2	B	2	A	3	\N	\N	2022-12-14 20:06:01.411968	2022-12-14 20:06:01.411968	192	1561
781	DECA-A-04-Box3-96	minus-80	2	B	2	A	4	\N	\N	2022-12-14 20:06:01.423418	2022-12-14 20:06:01.423418	193	1561
782	DECA-A-05-Box3-97	minus-80	2	B	2	A	5	\N	\N	2022-12-14 20:06:01.432425	2022-12-14 20:06:01.432425	194	1561
783	DECA-A-06-Box3-98	minus-80	2	B	2	A	6	\N	\N	2022-12-14 20:06:01.442695	2022-12-14 20:06:01.442695	195	1561
784	DECA-A-07-Box3-99	minus-80	2	B	2	A	7	\N	\N	2022-12-14 20:06:01.453352	2022-12-14 20:06:01.453352	196	1561
785	DECA-A-08-Box3-100	minus-80	2	B	2	A	8	\N	\N	2022-12-14 20:06:01.460787	2022-12-14 20:06:01.460787	197	1561
786	DECA-A-09-Box4-1	minus-80	2	B	2	A	9	\N	\N	2022-12-14 20:06:01.46633	2022-12-14 20:06:01.46633	198	1561
787	DECA-A-11-Box4-2	minus-80	2	B	2	A	11	\N	\N	2022-12-14 20:06:01.473273	2022-12-14 20:06:01.473273	200	1561
788	DECA-A-12-Box4-3	minus-80	2	B	2	A	12	\N	\N	2022-12-14 20:06:01.480457	2022-12-14 20:06:01.480457	1720	1561
789	ESPE-B-02-Box4-4	minus-80	1	B	2	A	13	\N	\N	2022-12-14 20:06:01.489694	2022-12-14 20:06:01.489694	202	1561
790	ESPE-B-06-Box4-5	minus-80	1	B	2	B	1	\N	\N	2022-12-14 20:06:01.495944	2022-12-14 20:06:01.495944	1057	1561
791	ESPE-B-10-Box4-6	minus-80	1	B	2	B	3	\N	\N	2022-12-14 20:06:01.501383	2022-12-14 20:06:01.501383	208	1561
792	FERR-A-02-Box4-7	minus-80	1	B	2	B	5	\N	\N	2022-12-14 20:06:01.507113	2022-12-14 20:06:01.507113	212	1561
793	FERR-A-03-Box4-8	minus-80	1	B	2	B	6	\N	\N	2022-12-14 20:06:01.512765	2022-12-14 20:06:01.512765	213	1561
794	FERR-A-04-Box4-9	minus-80	1	B	2	B	7	\N	\N	2022-12-14 20:06:01.518714	2022-12-14 20:06:01.518714	214	1561
795	GAIL-A-01-Box4-10	minus-80	2	B	2	B	8	\N	\N	2022-12-14 20:06:01.52497	2022-12-14 20:06:01.52497	1071	1561
796	GAIL-A-03-Box4-11	minus-80	2	B	2	B	9	\N	\N	2022-12-14 20:06:01.533072	2022-12-14 20:06:01.533072	222	1561
797	GAIL-A-04-Box4-12	minus-80	2	B	2	B	10	\N	\N	2022-12-14 20:06:01.542797	2022-12-14 20:06:01.542797	1074	1561
798	GAIL-A-06-Box4-13	minus-80	2	B	2	B	11	\N	\N	2022-12-14 20:06:01.552553	2022-12-14 20:06:01.552553	223	1561
799	GAIL-A-07-Box4-14	minus-80	2	B	2	B	12	\N	\N	2022-12-14 20:06:01.56366	2022-12-14 20:06:01.56366	1077	1561
800	GAIL-A-08-Box4-15	minus-80	2	B	2	B	13	\N	\N	2022-12-14 20:06:01.570993	2022-12-14 20:06:01.570993	1078	1561
801	GAIL-A-09-Box4-16	minus-80	2	B	2	B	14	\N	\N	2022-12-14 20:06:01.576569	2022-12-14 20:06:01.576569	1079	1561
802	GAIL-B-01-Box4-17	minus-80	2	B	2	C	1	\N	\N	2022-12-14 20:06:01.581933	2022-12-14 20:06:01.581933	226	1561
803	GAIL-B-02-Box4-18	minus-80	2	B	2	C	2	\N	\N	2022-12-14 20:06:01.590078	2022-12-14 20:06:01.590078	227	1561
804	GAIL-B-04-Box4-19	minus-80	2	B	2	C	3	\N	\N	2022-12-14 20:06:01.596246	2022-12-14 20:06:01.596246	1084	1561
805	GAIL-B-08-Box4-20	minus-80	2	B	2	C	6	\N	\N	2022-12-14 20:06:01.603056	2022-12-14 20:06:01.603056	232	1561
806	GAIL-B-10-Box4-21	minus-80	2	B	2	C	8	\N	\N	2022-12-14 20:06:01.608689	2022-12-14 20:06:01.608689	234	1561
807	GAIL-B-11-Box4-22	minus-80	2	B	2	C	9	\N	\N	2022-12-14 20:06:01.617791	2022-12-14 20:06:01.617791	1748	1561
808	GREZ-A-01-Box4-23	minus-80	1	B	2	C	10	\N	\N	2022-12-14 20:06:01.627199	2022-12-14 20:06:01.627199	1087	1561
809	GREZ-A-02-Box4-24	minus-80	2	B	2	C	11	\N	\N	2022-12-14 20:06:01.638451	2022-12-14 20:06:01.638451	235	1561
810	GREZ-A-03-Box4-25	minus-80	2	B	2	C	12	\N	\N	2022-12-14 20:06:01.645283	2022-12-14 20:06:01.645283	1089	1561
811	JUZE-A-04-Box4-26	minus-80	2	B	2	D	1	\N	\N	2022-12-14 20:06:01.651642	2022-12-14 20:06:01.651642	244	1561
812	JUZE-A-05-Box4-27	minus-80	2	B	2	D	2	\N	\N	2022-12-14 20:06:01.658007	2022-12-14 20:06:01.658007	245	1561
813	JUZE-A-06-Box4-28	minus-80	2	B	2	D	3	\N	\N	2022-12-14 20:06:01.663786	2022-12-14 20:06:01.663786	246	1561
814	JUZE-A-07-Box4-29	minus-80	1	B	2	D	4	\N	\N	2022-12-14 20:06:01.670818	2022-12-14 20:06:01.670818	247	1561
815	JUZE-A-08-Box4-30	minus-80	2	B	2	D	5	\N	\N	2022-12-14 20:06:01.676383	2022-12-14 20:06:01.676383	248	1561
816	JUZE-A-11-Box4-31	minus-80	2	B	2	D	6	\N	\N	2022-12-14 20:06:01.683372	2022-12-14 20:06:01.683372	1762	1561
817	JUZE-A-14-Box4-32	minus-80	2	B	2	D	9	\N	\N	2022-12-14 20:06:01.696296	2022-12-14 20:06:01.696296	1765	1561
818	JUZE-A-15-Box4-33	minus-80	2	B	2	D	10	\N	\N	2022-12-14 20:06:01.708344	2022-12-14 20:06:01.708344	251	1561
819	JUZET-A-01-Box4-34	minus-80	1	B	2	D	11	\N	\N	2022-12-14 20:06:01.724429	2022-12-14 20:06:01.724429	252	1561
820	JUZET-A-03-Box4-35	minus-80	2	B	2	D	13	\N	\N	2022-12-14 20:06:01.735445	2022-12-14 20:06:01.735445	254	1561
821	JUZET-C-01-Box4-36	minus-80	1	B	2	D	14	\N	\N	2022-12-14 20:06:01.747729	2022-12-14 20:06:01.747729	262	1561
822	JUZET-C-03-Box4-37	minus-80	2	B	2	E	2	\N	\N	2022-12-14 20:06:01.758628	2022-12-14 20:06:01.758628	264	1561
823	JUZET-C-05-Box4-38	minus-80	2	B	2	E	3	\N	\N	2022-12-14 20:06:01.764254	2022-12-14 20:06:01.764254	266	1561
824	LABA-A-01-Box4-39	minus-80	2	B	2	E	4	\N	\N	2022-12-14 20:06:01.773804	2022-12-14 20:06:01.773804	273	1561
825	LABA-A-02-Box4-40	minus-80	2	B	2	E	5	\N	\N	2022-12-14 20:06:01.781177	2022-12-14 20:06:01.781177	274	1561
826	LABA-A-03-Box4-41	minus-80	2	B	2	E	6	\N	\N	2022-12-14 20:06:01.787661	2022-12-14 20:06:01.787661	275	1561
827	LABA-A-04-Box4-42	minus-80	2	B	2	E	7	\N	\N	2022-12-14 20:06:01.794609	2022-12-14 20:06:01.794609	276	1561
828	LABA-A-07-Box4-43	minus-80	2	B	2	E	10	\N	\N	2022-12-14 20:06:01.800815	2022-12-14 20:06:01.800815	279	1561
829	LABA-A-09-Box4-44	minus-80	2	B	2	E	11	\N	\N	2022-12-14 20:06:01.808025	2022-12-14 20:06:01.808025	281	1561
830	LABA-A-10-Box4-45	minus-80	1	B	2	E	12	\N	\N	2022-12-14 20:06:01.814353	2022-12-14 20:06:01.814353	282	1561
831	LABA-A-11-Box4-46	minus-80	2	B	2	E	13	\N	\N	2022-12-14 20:06:01.822347	2022-12-14 20:06:01.822347	1783	1561
832	LABA-A-12-Box4-47	minus-80	1	B	2	E	14	\N	\N	2022-12-14 20:06:01.827999	2022-12-14 20:06:01.827999	1784	1561
833	LABA-A-13-Box4-48	minus-80	2	B	2	F	1	\N	\N	2022-12-14 20:06:01.833256	2022-12-14 20:06:01.833256	1785	1561
834	LABA-A-14-Box4-49	minus-80	2	B	2	F	2	\N	\N	2022-12-14 20:06:01.839244	2022-12-14 20:06:01.839244	1786	1561
835	LABA-A-15-Box4-50	minus-80	1	B	2	F	3	\N	\N	2022-12-14 20:06:01.846997	2022-12-14 20:06:01.846997	1787	1561
836	LABAS-A-04-Box4-51	minus-80	1	B	2	F	4	\N	\N	2022-12-14 20:06:01.854902	2022-12-14 20:06:01.854902	286	1561
837	MARS-C-01-Box4-52	minus-80	2	B	2	F	6	\N	\N	2022-12-14 20:06:01.860326	2022-12-14 20:06:01.860326	1839	1561
838	MARS-C-02-Box4-53	minus-80	2	B	2	F	7	\N	\N	2022-12-14 20:06:01.867875	2022-12-14 20:06:01.867875	1840	1561
839	MARS-C-03-Box4-54	minus-80	2	B	2	F	8	\N	\N	2022-12-14 20:06:01.873531	2022-12-14 20:06:01.873531	1841	1561
840	MARS-C-05-Box4-55	minus-80	2	B	2	F	9	\N	\N	2022-12-14 20:06:01.878951	2022-12-14 20:06:01.878951	1843	1561
841	MARS-C-06-Box4-56	minus-80	2	B	2	F	10	\N	\N	2022-12-14 20:06:01.884166	2022-12-14 20:06:01.884166	1844	1561
842	MARS-C-07-Box4-57	minus-80	2	B	2	F	11	\N	\N	2022-12-14 20:06:01.889896	2022-12-14 20:06:01.889896	1845	1561
843	MARS-C-08-Box4-58	minus-80	2	B	2	F	12	\N	\N	2022-12-14 20:06:01.89585	2022-12-14 20:06:01.89585	1846	1561
844	MONB-A-01-Box4-59	minus-80	2	B	2	F	13	\N	\N	2022-12-14 20:06:01.902204	2022-12-14 20:06:01.902204	373	1561
845	MONB-A-02-Box4-60	minus-80	1	B	2	F	14	\N	\N	2022-12-14 20:06:01.909471	2022-12-14 20:06:01.909471	374	1561
846	MONB-A-04-Box4-61	minus-80	2	B	2	G	1	\N	\N	2022-12-14 20:06:01.91905	2022-12-14 20:06:01.91905	376	1561
847	MONB-A-06-Box4-62	minus-80	2	B	2	G	2	\N	\N	2022-12-14 20:06:01.926346	2022-12-14 20:06:01.926346	378	1561
848	MONB-A-08-Box4-63	minus-80	2	B	2	G	3	\N	\N	2022-12-14 20:06:01.934976	2022-12-14 20:06:01.934976	1212	1561
849	MONB-A-12-Box4-64	minus-80	2	B	2	G	7	\N	\N	2022-12-14 20:06:01.94121	2022-12-14 20:06:01.94121	1858	1561
850	MONF-A-01-Box4-65	minus-80	2	B	2	G	9	\N	\N	2022-12-14 20:06:01.947518	2022-12-14 20:06:01.947518	392	1561
851	MONF-A-04-Box4-66	minus-80	2	B	2	G	10	\N	\N	2022-12-14 20:06:01.954052	2022-12-14 20:06:01.954052	395	1561
852	MONF-A-05-Box4-67	minus-80	2	B	2	G	11	\N	\N	2022-12-14 20:06:01.960592	2022-12-14 20:06:01.960592	396	1561
853	MONF-A-09-Box4-68	minus-80	1	C	2	A	1	\N	\N	2022-12-14 20:06:01.966094	2022-12-14 20:06:01.966094	400	1561
854	MONF-A-10-Box4-69	minus-80	2	C	2	A	2	\N	\N	2022-12-14 20:06:01.971607	2022-12-14 20:06:01.971607	401	1561
855	MONF-A-11-Box4-70	minus-80	2	C	2	A	3	\N	\N	2022-12-14 20:06:01.979269	2022-12-14 20:06:01.979269	1869	1561
856	MONF-A-12-Box4-71	minus-80	2	C	2	A	4	\N	\N	2022-12-14 20:06:01.98892	2022-12-14 20:06:01.98892	1870	1561
857	MONTI-B-01-Box4-72	minus-80	1	C	2	A	5	\N	\N	2022-12-14 20:06:01.99605	2022-12-14 20:06:01.99605	1237	1561
858	MONTI-B-02-Box4-73	minus-80	2	C	2	A	6	\N	\N	2022-12-14 20:06:02.001276	2022-12-14 20:06:02.001276	1238	1561
859	MONTI-B-03-Box4-74	minus-80	1	C	2	A	7	\N	\N	2022-12-14 20:06:02.006612	2022-12-14 20:06:02.006612	1239	1561
860	MONTI-B-05-Box4-75	minus-80	2	C	2	A	9	\N	\N	2022-12-14 20:06:02.013259	2022-12-14 20:06:02.013259	1875	1561
861	MONTI-B-06-Box4-76	minus-80	2	C	2	A	10	\N	\N	2022-12-14 20:06:02.01869	2022-12-14 20:06:02.01869	1241	1561
862	MONTI-B-07-Box4-77	minus-80	1	C	2	A	11	\N	\N	2022-12-14 20:06:02.025325	2022-12-14 20:06:02.025325	1242	1561
863	MONTM-A-02-Box4-78	minus-80	2	C	2	A	13	\N	\N	2022-12-14 20:06:02.031063	2022-12-14 20:06:02.031063	426	1561
864	MONTM-A-04-Box4-79	minus-80	2	C	2	A	14	\N	\N	2022-12-14 20:06:02.037684	2022-12-14 20:06:02.037684	428	1561
865	MONTM-A-05-Box4-80	minus-80	2	C	2	B	1	\N	\N	2022-12-14 20:06:02.046696	2022-12-14 20:06:02.046696	429	1561
866	MONTM-A-09-Box4-81	minus-80	2	C	2	B	5	\N	\N	2022-12-14 20:06:02.056884	2022-12-14 20:06:02.056884	433	1561
867	NAZA-A-03-Box4-82	minus-80	2	C	2	B	7	\N	\N	2022-12-14 20:06:02.066602	2022-12-14 20:06:02.066602	436	1561
868	NAZA-A-05-Box4-83	minus-80	2	C	2	B	8	\N	\N	2022-12-14 20:06:02.075917	2022-12-14 20:06:02.075917	1257	1561
869	NAZA-A-06-Box4-84	minus-80	2	C	2	B	9	\N	\N	2022-12-14 20:06:02.083067	2022-12-14 20:06:02.083067	438	1561
870	NAZA-A-07-Box4-85	minus-80	2	C	2	B	10	\N	\N	2022-12-14 20:06:02.088157	2022-12-14 20:06:02.088157	1259	1561
871	PUYM-B-08-Box4-86	minus-80	2	C	2	C	2	\N	\N	2022-12-14 20:06:02.093536	2022-12-14 20:06:02.093536	449	1561
872	RAYR-A-01-Box4-87	minus-80	1	C	2	C	5	\N	\N	2022-12-14 20:06:02.100073	2022-12-14 20:06:02.100073	450	1561
873	RAYR-A-02-Box4-88	minus-80	2	C	2	C	6	\N	\N	2022-12-14 20:06:02.106265	2022-12-14 20:06:02.106265	451	1561
874	RAYR-A-05-Box4-89	minus-80	2	C	2	C	9	\N	\N	2022-12-14 20:06:02.112168	2022-12-14 20:06:02.112168	453	1561
875	SALE-A-01-Box4-90	minus-80	2	C	2	D	1	\N	\N	2022-12-14 20:06:02.120633	2022-12-14 20:06:02.120633	470	1561
876	SALV-A-05-Box4-91	minus-80	2	C	2	D	6	\N	\N	2022-12-14 20:06:02.132585	2022-12-14 20:06:02.132585	483	1561
877	SALV-A-06-Box4-92	minus-80	2	C	2	D	7	\N	\N	2022-12-14 20:06:02.142594	2022-12-14 20:06:02.142594	1298	1561
878	SALV-A-10-Box4-93	minus-80	1	C	2	D	10	\N	\N	2022-12-14 20:06:02.152095	2022-12-14 20:06:02.152095	1302	1561
879	SAUB-B-02-Box4-94	minus-80	2	C	2	D	11	\N	\N	2022-12-14 20:06:02.161826	2022-12-14 20:06:02.161826	491	1561
880	SAUB-B-03-Box4-95	minus-80	2	C	2	D	12	\N	\N	2022-12-14 20:06:02.173008	2022-12-14 20:06:02.173008	492	1561
881	SAUB-B-04-Box4-96	minus-80	2	C	2	D	13	\N	\N	2022-12-14 20:06:02.182893	2022-12-14 20:06:02.182893	493	1561
882	SAUB-B-05-Box4-97	minus-80	2	C	2	D	14	\N	\N	2022-12-14 20:06:02.190212	2022-12-14 20:06:02.190212	494	1561
883	SAUB-B-06-Box4-98	minus-80	2	C	2	E	1	\N	\N	2022-12-14 20:06:02.196392	2022-12-14 20:06:02.196392	495	1561
884	SAUB-B-07-Box4-99	minus-80	2	C	2	E	2	\N	\N	2022-12-14 20:06:02.201874	2022-12-14 20:06:02.201874	496	1561
885	SAUB-B-08-Box4-100	minus-80	2	C	2	E	3	\N	\N	2022-12-14 20:06:02.207482	2022-12-14 20:06:02.207482	497	1561
886	SAUB-B-09-Box5-1	minus-80	2	C	2	E	4	\N	\N	2022-12-14 20:06:02.212727	2022-12-14 20:06:02.212727	498	1561
887	SAUB-B-11-Box5-2	minus-80	2	C	2	E	5	\N	\N	2022-12-14 20:06:02.219121	2022-12-14 20:06:02.219121	1941	1561
888	SIMO-A-01-Box5-3	minus-80	1	C	2	E	6	\N	\N	2022-12-14 20:06:02.22579	2022-12-14 20:06:02.22579	1313	1561
889	SIMO-A-02-Box5-4	minus-80	2	C	2	E	7	\N	\N	2022-12-14 20:06:02.233757	2022-12-14 20:06:02.233757	500	1561
890	SIMO-A-04-Box5-5	minus-80	2	C	2	E	10	\N	\N	2022-12-14 20:06:02.243816	2022-12-14 20:06:02.243816	502	1561
891	SIMO-A-05-Box5-6	minus-80	2	C	2	E	11	\N	\N	2022-12-14 20:06:02.253395	2022-12-14 20:06:02.253395	503	1561
892	SIMO-A-06-Box5-7	minus-80	2	C	2	E	12	\N	\N	2022-12-14 20:06:02.260511	2022-12-14 20:06:02.260511	504	1561
893	SIMO-A-07-Box5-8	minus-80	2	C	2	E	13	\N	\N	2022-12-14 20:06:02.265395	2022-12-14 20:06:02.265395	505	1561
894	SIMO-A-08-Box5-9	minus-80	2	C	2	E	14	\N	\N	2022-12-14 20:06:02.271811	2022-12-14 20:06:02.271811	506	1561
895	THOM-A-01-Box5-10	minus-80	2	C	2	F	1	\N	\N	2022-12-14 20:06:02.278287	2022-12-14 20:06:02.278287	509	1561
896	THOM-A-04-Box5-11	minus-80	2	C	2	F	2	\N	\N	2022-12-14 20:06:02.28463	2022-12-14 20:06:02.28463	511	1561
897	THOM-A-08-Box5-12	minus-80	2	C	2	F	4	\N	\N	2022-12-14 20:06:02.29056	2022-12-14 20:06:02.29056	514	1561
898	THOM-A-12-Box5-13	minus-80	2	C	2	F	7	\N	\N	2022-12-14 20:06:02.297224	2022-12-14 20:06:02.297224	1960	1561
899	VILLE-A-01-Box5-14	minus-80	2	C	2	F	8	\N	\N	2022-12-14 20:06:02.30663	2022-12-14 20:06:02.30663	546	1561
900	VILLE-A-02-Box5-15	minus-80	2	C	2	F	9	\N	\N	2022-12-14 20:06:02.314405	2022-12-14 20:06:02.314405	547	1561
901	VILLE-A-04-Box5-16	minus-80	2	C	2	F	11	\N	\N	2022-12-14 20:06:02.325803	2022-12-14 20:06:02.325803	549	1561
902	VILLE-A-06-Box5-17	minus-80	2	C	2	F	12	\N	\N	2022-12-14 20:06:02.331185	2022-12-14 20:06:02.331185	551	1561
903	VILLE-A-07-Box5-18	minus-80	2	C	2	F	13	\N	\N	2022-12-14 20:06:02.336813	2022-12-14 20:06:02.336813	552	1561
904	VILLE-A-08-Box5-19	minus-80	1	C	2	F	14	\N	\N	2022-12-14 20:06:02.34343	2022-12-14 20:06:02.34343	553	1561
905	VILLE-A-09-Box5-20	minus-80	2	C	2	G	1	\N	\N	2022-12-14 20:06:02.350205	2022-12-14 20:06:02.350205	554	1561
906	VILLE-A-12-Box5-21	minus-80	2	C	2	G	2	\N	\N	2022-12-14 20:06:02.356529	2022-12-14 20:06:02.356529	1972	1561
907	VILLE-B-03-Box5-22	minus-80	1	C	2	G	6	\N	\N	2022-12-14 20:06:02.362022	2022-12-14 20:06:02.362022	558	1561
908	VILLE-B-05-Box5-23	minus-80	2	C	2	G	7	\N	\N	2022-12-14 20:06:02.367993	2022-12-14 20:06:02.367993	560	1561
909	VILLE-B-10-Box5-24	minus-80	1	C	2	G	9	\N	\N	2022-12-14 20:06:02.373599	2022-12-14 20:06:02.373599	564	1561
910	VILLE-B-11-Box5-25	minus-80	1	C	2	G	10	\N	\N	2022-12-14 20:06:02.380323	2022-12-14 20:06:02.380323	565	1561
911	VILLE-C-02-Box5-26	minus-80	1	C	2	G	13	\N	\N	2022-12-14 20:06:02.387246	2022-12-14 20:06:02.387246	566	1561
912	BELL-A-07-Box5-27	minus-80	1	D	2	A	2	\N	\N	2022-12-14 20:06:02.392841	2022-12-14 20:06:02.392841	62	1561
913	BELL-A-11-Box5-28	minus-80	1	D	2	A	5	\N	\N	2022-12-14 20:06:02.398502	2022-12-14 20:06:02.398502	66	1561
914	CASS-A-04-Box5-29	minus-80	2	D	2	A	9	\N	\N	2022-12-14 20:06:02.403247	2022-12-14 20:06:02.403247	103	1561
915	CASS-A-05-Box5-30	minus-80	2	D	2	A	10	\N	\N	2022-12-14 20:06:02.408431	2022-12-14 20:06:02.408431	1391	1561
916	CASS-A-06-Box5-31	minus-80	1	D	2	A	11	\N	\N	2022-12-14 20:06:02.414311	2022-12-14 20:06:02.414311	104	1561
917	CASS-A-07-Box5-32	minus-80	2	D	2	A	12	\N	\N	2022-12-14 20:06:02.420679	2022-12-14 20:06:02.420679	105	1561
918	CASS-A-09-Box5-33	minus-80	1	D	2	A	13	\N	\N	2022-12-14 20:06:02.426749	2022-12-14 20:06:02.426749	107	1561
919	CINT-A-02-Box5-34	minus-80	2	D	2	A	14	\N	\N	2022-12-14 20:06:02.432434	2022-12-14 20:06:02.432434	146	1561
920	CINT-A-03-Box5-35	minus-80	2	D	2	B	1	\N	\N	2022-12-14 20:06:02.438001	2022-12-14 20:06:02.438001	147	1561
921	CINT-A-04-Box5-36	minus-80	2	D	2	B	2	\N	\N	2022-12-14 20:06:02.443433	2022-12-14 20:06:02.443433	1677	1561
922	CINT-A-05-Box5-37	minus-80	2	D	2	B	3	\N	\N	2022-12-14 20:06:02.449319	2022-12-14 20:06:02.449319	148	1561
923	CINT-A-06-Box5-38	minus-80	2	D	2	B	4	\N	\N	2022-12-14 20:06:02.455136	2022-12-14 20:06:02.455136	149	1561
924	CINT-B-08-Box5-39	minus-80	1	D	2	B	13	\N	\N	2022-12-14 20:06:02.45993	2022-12-14 20:06:02.45993	161	1561
925	CINT-B-09-Box5-40	minus-80	2	D	2	B	14	\N	\N	2022-12-14 20:06:02.465849	2022-12-14 20:06:02.465849	162	1561
926	LANT-B-01-Box5-41	minus-80	1	D	2	C	2	\N	\N	2022-12-14 20:06:02.471315	2022-12-14 20:06:02.471315	1794	1561
927	LANT-B-03-Box5-42	minus-80	2	D	2	C	3	\N	\N	2022-12-14 20:06:02.479176	2022-12-14 20:06:02.479176	1796	1561
928	LANT-B-05-Box5-43	minus-80	1	D	2	C	5	\N	\N	2022-12-14 20:06:02.488021	2022-12-14 20:06:02.488021	1798	1561
929	LANT-B-06-Box5-44	minus-80	2	D	2	C	6	\N	\N	2022-12-14 20:06:02.497793	2022-12-14 20:06:02.497793	1799	1561
930	LANT-B-07-Box5-45	minus-80	2	D	2	C	7	\N	\N	2022-12-14 20:06:02.507317	2022-12-14 20:06:02.507317	1800	1561
931	LANT-B-08-Box5-46	minus-80	2	D	2	C	8	\N	\N	2022-12-14 20:06:02.513948	2022-12-14 20:06:02.513948	1801	1561
932	LANT-B-09-Box5-47	minus-80	2	D	2	C	9	\N	\N	2022-12-14 20:06:02.519738	2022-12-14 20:06:02.519738	1802	1561
933	LANT-B-10-Box5-48	minus-80	2	D	2	C	10	\N	\N	2022-12-14 20:06:02.529796	2022-12-14 20:06:02.529796	1803	1561
934	LANT-D-01-Box5-49	minus-80	1	D	2	C	11	\N	\N	2022-12-14 20:06:02.538807	2022-12-14 20:06:02.538807	303	1561
935	LANT-D-05-Box5-50	minus-80	2	D	2	C	13	\N	\N	2022-12-14 20:06:02.548949	2022-12-14 20:06:02.548949	307	1561
936	LAUZ-A-01-Box5-51	minus-80	1	D	2	D	3	\N	\N	2022-12-14 20:06:02.558094	2022-12-14 20:06:02.558094	1147	1561
937	LAUZ-A-04-Box5-52	minus-80	2	D	2	D	5	\N	\N	2022-12-14 20:06:02.564797	2022-12-14 20:06:02.564797	1150	1561
938	LAUZ-A-10-Box5-53	minus-80	2	D	2	D	10	\N	\N	2022-12-14 20:06:02.56958	2022-12-14 20:06:02.56958	1154	1561
939	LECT-A-10-Box5-54	minus-80	2	D	2	D	12	\N	\N	2022-12-14 20:06:02.576161	2022-12-14 20:06:02.576161	321	1561
940	LECT-A-11-Box5-55	minus-80	2	D	2	D	13	\N	\N	2022-12-14 20:06:02.581988	2022-12-14 20:06:02.581988	322	1561
941	LECT-A-12-Box5-56	minus-80	2	D	2	D	14	\N	\N	2022-12-14 20:06:02.587741	2022-12-14 20:06:02.587741	323	1561
942	LUNA-A-01-Box5-57	minus-80	2	D	2	E	1	\N	\N	2022-12-14 20:06:02.593081	2022-12-14 20:06:02.593081	334	1561
943	LUNA-A-02-Box5-58	minus-80	2	D	2	E	2	\N	\N	2022-12-14 20:06:02.601018	2022-12-14 20:06:02.601018	335	1561
944	LUNA-A-03-Box5-59	minus-80	2	D	2	E	3	\N	\N	2022-12-14 20:06:02.609773	2022-12-14 20:06:02.609773	336	1561
945	LUNA-A-05-Box5-60	minus-80	2	D	2	E	4	\N	\N	2022-12-14 20:06:02.619025	2022-12-14 20:06:02.619025	337	1561
946	LUNA-A-06-Box5-61	minus-80	2	D	2	E	5	\N	\N	2022-12-14 20:06:02.629403	2022-12-14 20:06:02.629403	338	1561
947	LUNA-A-07-Box5-62	minus-80	2	D	2	E	6	\N	\N	2022-12-14 20:06:02.635739	2022-12-14 20:06:02.635739	339	1561
948	LUNA-A-08-Box5-63	minus-80	2	D	2	E	7	\N	\N	2022-12-14 20:06:02.64119	2022-12-14 20:06:02.64119	340	1561
949	LUNA-A-09-Box5-64	minus-80	2	D	2	E	8	\N	\N	2022-12-14 20:06:02.647049	2022-12-14 20:06:02.647049	341	1561
950	LUNA-A-10-Box5-65	minus-80	2	D	2	E	9	\N	\N	2022-12-14 20:06:02.65292	2022-12-14 20:06:02.65292	342	1561
951	LUNA-A-12-Box5-66	minus-80	2	D	2	E	10	\N	\N	2022-12-14 20:06:02.658633	2022-12-14 20:06:02.658633	1838	1561
952	AMBR-A-05-P01-2	silica	2	A	3	A	1	\N	\N	2022-12-14 20:06:02.666875	2022-12-14 20:06:02.666875	5	1561
953	AMBR-A-05-P02-2	silica	0	A	3	A	1	\N	\N	2022-12-14 20:06:02.673185	2022-12-14 20:06:02.673185	5	1561
954	AMBR-A-11-P01-1	silica	2	A	1	A	2	\N	\N	2022-12-14 20:06:02.680587	2022-12-14 20:06:02.680587	1566	1561
955	AMBR-A-11-P02-1	silica	0	A	3	A	2	\N	\N	2022-12-14 20:06:02.68799	2022-12-14 20:06:02.68799	1566	1561
956	ANGE-A-01-P01-1	silica	2	A	1	A	3	\N	\N	2022-12-14 20:06:02.694897	2022-12-14 20:06:02.694897	11	1561
957	ANGE-A-01-P02-1	silica	2	A	3	A	3	\N	\N	2022-12-14 20:06:02.703618	2022-12-14 20:06:02.703618	11	1561
958	ANGE-A-02-P01-1	silica	2	A	1	A	4	\N	\N	2022-12-14 20:06:02.711699	2022-12-14 20:06:02.711699	12	1561
959	ANGE-A-02-P02-1	silica	1	A	3	A	4	\N	\N	2022-12-14 20:06:02.718374	2022-12-14 20:06:02.718374	12	1561
960	ANGE-A-03-P01-2	silica	2	A	3	A	5	\N	\N	2022-12-14 20:06:02.724746	2022-12-14 20:06:02.724746	13	1561
961	ANGE-A-03-P02-2	silica	2	A	3	A	5	\N	\N	2022-12-14 20:06:02.731779	2022-12-14 20:06:02.731779	13	1561
962	ANGE-A-04-P01-1	silica	2	A	1	A	6	\N	\N	2022-12-14 20:06:02.737553	2022-12-14 20:06:02.737553	14	1561
963	ANGE-A-04-P02-1	silica	0	A	3	A	6	\N	\N	2022-12-14 20:06:02.751212	2022-12-14 20:06:02.751212	14	1561
964	ANGE-A-05-P01-1	silica	2	A	1	A	7	\N	\N	2022-12-14 20:06:02.757605	2022-12-14 20:06:02.757605	898	1561
965	ANGE-A-05-P02-1	silica	1	A	3	A	7	\N	\N	2022-12-14 20:06:02.763521	2022-12-14 20:06:02.763521	898	1561
966	ANGE-A-06-P01-1	silica	2	A	1	A	8	\N	\N	2022-12-14 20:06:02.770619	2022-12-14 20:06:02.770619	15	1561
967	ANGE-A-06-P02-1	silica	1	A	3	A	8	\N	\N	2022-12-14 20:06:02.777207	2022-12-14 20:06:02.777207	15	1561
968	ANGE-A-07-P01-1	silica	2	A	1	A	9	\N	\N	2022-12-14 20:06:02.783302	2022-12-14 20:06:02.783302	900	1561
969	ANGE-A-07-P02-1	silica	1	A	3	A	9	\N	\N	2022-12-14 20:06:02.790759	2022-12-14 20:06:02.790759	900	1561
970	ANGE-A-08-P01-1	silica	2	A	1	A	10	\N	\N	2022-12-14 20:06:02.799184	2022-12-14 20:06:02.799184	901	1561
971	ANGE-A-08-P02-1	silica	2	A	3	A	10	\N	\N	2022-12-14 20:06:02.8078	2022-12-14 20:06:02.8078	901	1561
972	ANGE-B-01-P01-2	silica	2	A	3	A	11	\N	\N	2022-12-14 20:06:02.818543	2022-12-14 20:06:02.818543	904	1561
973	ANGE-B-01-P02-2	silica	2	A	3	A	11	\N	\N	2022-12-14 20:06:02.826214	2022-12-14 20:06:02.826214	904	1561
974	ANGE-B-02-P01-1	silica	2	A	2	A	12	\N	\N	2022-12-14 20:06:02.832001	2022-12-14 20:06:02.832001	19	1561
975	ANGE-B-02-P02-1	silica	2	A	3	A	12	\N	\N	2022-12-14 20:06:02.839232	2022-12-14 20:06:02.839232	19	1561
976	ANGE-B-03-P01-1	silica	2	A	2	B	1	\N	\N	2022-12-14 20:06:02.84716	2022-12-14 20:06:02.84716	906	1561
977	ANGE-B-03-P02-1	silica	1	A	3	B	1	\N	\N	2022-12-14 20:06:02.86267	2022-12-14 20:06:02.86267	906	1561
978	ANGE-B-04-P01-1	silica	2	A	2	B	2	\N	\N	2022-12-14 20:06:02.875346	2022-12-14 20:06:02.875346	20	1561
979	ANGE-B-04-P02-1	silica	2	A	3	B	2	\N	\N	2022-12-14 20:06:02.886728	2022-12-14 20:06:02.886728	20	1561
980	ANGE-B-05-P01-1	silica	2	A	2	B	3	\N	\N	2022-12-14 20:06:02.899766	2022-12-14 20:06:02.899766	21	1561
981	ANGE-B-05-P02-1	silica	2	A	3	B	3	\N	\N	2022-12-14 20:06:02.912562	2022-12-14 20:06:02.912562	21	1561
982	ANGE-B-08-P01-1	silica	2	A	1	B	4	\N	\N	2022-12-14 20:06:02.921271	2022-12-14 20:06:02.921271	23	1561
983	ANGE-B-08-P02-1	silica	2	A	2	B	4	\N	\N	2022-12-14 20:06:02.928409	2022-12-14 20:06:02.928409	23	1561
984	ANGE-B-09-P01-1	silica	2	A	2	B	5	\N	\N	2022-12-14 20:06:02.939046	2022-12-14 20:06:02.939046	24	1561
985	ANGE-B-09-P02-1	silica	2	A	3	B	5	\N	\N	2022-12-14 20:06:02.947338	2022-12-14 20:06:02.947338	24	1561
986	ANGE-B-10-P01-1	silica	2	A	1	B	6	\N	\N	2022-12-14 20:06:02.953587	2022-12-14 20:06:02.953587	25	1561
987	ANGE-B-10-P02-1	silica	2	A	3	B	6	\N	\N	2022-12-14 20:06:02.960137	2022-12-14 20:06:02.960137	25	1561
988	ANGE-B-11-P01-1	silica	2	A	1	B	7	\N	\N	2022-12-14 20:06:02.966229	2022-12-14 20:06:02.966229	26	1561
989	ANGE-B-11-P02-1	silica	0	A	2	B	7	\N	\N	2022-12-14 20:06:02.972955	2022-12-14 20:06:02.972955	26	1561
990	AUZE-A-05-P01-1	silica	2	A	1	B	8	\N	\N	2022-12-14 20:06:02.978441	2022-12-14 20:06:02.978441	31	1561
991	AUZE-A-05-P02-1	silica	2	A	3	B	8	\N	\N	2022-12-14 20:06:02.985453	2022-12-14 20:06:02.985453	31	1561
992	AUZE-A-08-P01-1	silica	2	A	2	B	9	\N	\N	2022-12-14 20:06:02.992148	2022-12-14 20:06:02.992148	34	1561
993	AUZE-A-08-P02-1	silica	2	A	3	B	9	\N	\N	2022-12-14 20:06:03.000368	2022-12-14 20:06:03.000368	34	1561
994	AUZE-A-09-P01-1	silica	2	A	2	B	10	\N	\N	2022-12-14 20:06:03.010375	2022-12-14 20:06:03.010375	35	1561
995	AUZE-A-09-P02-1	silica	2	A	3	B	10	\N	\N	2022-12-14 20:06:03.020578	2022-12-14 20:06:03.020578	35	1561
996	AUZE-A-11-P01-1	silica	2	A	1	B	11	\N	\N	2022-12-14 20:06:03.03078	2022-12-14 20:06:03.03078	1593	1561
997	AUZE-A-11-P02-1	silica	2	A	2	B	11	\N	\N	2022-12-14 20:06:03.038441	2022-12-14 20:06:03.038441	1593	1561
998	AUZE-A-12-P01-1	silica	2	A	1	B	12	\N	\N	2022-12-14 20:06:03.044316	2022-12-14 20:06:03.044316	1594	1561
999	AUZE-A-12-P02-1	silica	1	A	3	B	12	\N	\N	2022-12-14 20:06:03.050807	2022-12-14 20:06:03.050807	1594	1561
1000	AUZE-A-14-P01-1	silica	2	A	2	C	1	\N	\N	2022-12-14 20:06:03.056927	2022-12-14 20:06:03.056927	1595	1561
1001	AUZE-A-14-P02-1	silica	0	A	3	C	1	\N	\N	2022-12-14 20:06:03.061726	2022-12-14 20:06:03.061726	1595	1561
1002	BARA-C-01-P01-1	silica	2	A	1	C	2	\N	\N	2022-12-14 20:06:03.067736	2022-12-14 20:06:03.067736	1596	1561
1003	BARA-C-01-P02-1	silica	2	A	3	C	2	\N	\N	2022-12-14 20:06:03.076113	2022-12-14 20:06:03.076113	1596	1561
1004	BARA-C-02-P01-1	silica	2	A	1	C	3	\N	\N	2022-12-14 20:06:03.089007	2022-12-14 20:06:03.089007	37	1561
1005	BARA-C-02-P02-1	silica	1	A	2	C	3	\N	\N	2022-12-14 20:06:03.099479	2022-12-14 20:06:03.099479	37	1561
1006	BARA-C-03-P01-1	silica	2	A	2	C	4	\N	\N	2022-12-14 20:06:03.110262	2022-12-14 20:06:03.110262	38	1561
1007	BARA-C-03-P02-1	silica	2	A	3	C	4	\N	\N	2022-12-14 20:06:03.121875	2022-12-14 20:06:03.121875	38	1561
1008	BARA-C-04-P01-1	silica	2	A	1	C	5	\N	\N	2022-12-14 20:06:03.132325	2022-12-14 20:06:03.132325	39	1561
1009	BARA-C-04-P02-1	silica	2	A	2	C	5	\N	\N	2022-12-14 20:06:03.142986	2022-12-14 20:06:03.142986	39	1561
1010	BARA-C-05-P01-1	silica	2	A	1	C	6	\N	\N	2022-12-14 20:06:03.153123	2022-12-14 20:06:03.153123	40	1561
1011	BARA-C-05-P02-1	silica	2	A	2	C	6	\N	\N	2022-12-14 20:06:03.161211	2022-12-14 20:06:03.161211	40	1561
1012	BARA-C-06-P01-1	silica	2	A	1	C	7	\N	\N	2022-12-14 20:06:03.16771	2022-12-14 20:06:03.16771	1601	1561
1013	BARA-C-06-P02-1	silica	2	A	2	C	7	\N	\N	2022-12-14 20:06:03.174163	2022-12-14 20:06:03.174163	1601	1561
1014	BARA-C-07-P01-1	silica	2	A	1	C	8	\N	\N	2022-12-14 20:06:03.181048	2022-12-14 20:06:03.181048	1602	1561
1015	BARA-C-07-P02-1	silica	1	A	3	C	8	\N	\N	2022-12-14 20:06:03.191472	2022-12-14 20:06:03.191472	1602	1561
1016	BARA-C-08-P01-1	silica	2	A	2	C	9	\N	\N	2022-12-14 20:06:03.201991	2022-12-14 20:06:03.201991	41	1561
1017	BARA-C-08-P02-1	silica	2	A	3	C	9	\N	\N	2022-12-14 20:06:03.212191	2022-12-14 20:06:03.212191	41	1561
1018	BARA-C-10-P01-1	silica	2	A	1	C	10	\N	\N	2022-12-14 20:06:03.223811	2022-12-14 20:06:03.223811	1605	1561
1019	BARA-C-10-P02-1	silica	2	A	3	C	10	\N	\N	2022-12-14 20:06:03.238048	2022-12-14 20:06:03.238048	1605	1561
1020	BARA-C-11-P01-1	silica	2	A	1	C	11	\N	\N	2022-12-14 20:06:03.25078	2022-12-14 20:06:03.25078	1606	1561
1021	BARA-C-11-P02-1	silica	2	A	2	C	11	\N	\N	2022-12-14 20:06:03.261968	2022-12-14 20:06:03.261968	1606	1561
1022	BARR-A-01-P01-1	silica	2	A	1	C	12	\N	\N	2022-12-14 20:06:03.273739	2022-12-14 20:06:03.273739	46	1561
1023	BARR-A-01-P02-1	silica	0	A	2	C	12	\N	\N	2022-12-14 20:06:03.285322	2022-12-14 20:06:03.285322	46	1561
1024	BARR-A-05-P01-1	silica	2	A	1	D	1	\N	\N	2022-12-14 20:06:03.296658	2022-12-14 20:06:03.296658	50	1561
1025	BARR-A-05-P02-1	silica	2	A	2	D	1	\N	\N	2022-12-14 20:06:03.308388	2022-12-14 20:06:03.308388	50	1561
1026	BARR-A-07-P01-1	silica	2	A	1	D	2	\N	\N	2022-12-14 20:06:03.32085	2022-12-14 20:06:03.32085	52	1561
1027	BARR-A-07-P02-1	silica	2	A	3	D	2	\N	\N	2022-12-14 20:06:03.332717	2022-12-14 20:06:03.332717	52	1561
1028	BARR-A-09-P01-1	silica	2	A	1	D	3	\N	\N	2022-12-14 20:06:03.344972	2022-12-14 20:06:03.344972	54	1561
1029	BARR-A-09-P02-1	silica	0	A	2	D	3	\N	\N	2022-12-14 20:06:03.358255	2022-12-14 20:06:03.358255	54	1561
1030	BELL-A-02-P01-2	silica	2	A	1	D	4	\N	\N	2022-12-14 20:06:03.369945	2022-12-14 20:06:03.369945	57	1561
1031	BELL-A-02-P02-2	silica	0	A	1	D	4	\N	\N	2022-12-14 20:06:03.38066	2022-12-14 20:06:03.38066	57	1561
1032	BELL-A-03-P01-1	silica	2	A	2	D	5	\N	\N	2022-12-14 20:06:03.393221	2022-12-14 20:06:03.393221	58	1561
1033	BELL-A-03-P02-1	silica	2	A	3	D	5	\N	\N	2022-12-14 20:06:03.407332	2022-12-14 20:06:03.407332	58	1561
1034	BELL-A-04-P01-2	silica	2	A	3	D	6	\N	\N	2022-12-14 20:06:03.42257	2022-12-14 20:06:03.42257	59	1561
1035	BELL-A-04-P02-2	silica	0	A	3	D	6	\N	\N	2022-12-14 20:06:03.436144	2022-12-14 20:06:03.436144	59	1561
1036	BELL-A-05-P01-1	silica	2	A	2	D	7	\N	\N	2022-12-14 20:06:03.450473	2022-12-14 20:06:03.450473	60	1561
1037	BELL-A-05-P02-1	silica	2	A	3	D	7	\N	\N	2022-12-14 20:06:03.461346	2022-12-14 20:06:03.461346	60	1561
1038	BELL-A-07-P01-1	silica	0	A	1	D	8	\N	\N	2022-12-14 20:06:03.468603	2022-12-14 20:06:03.468603	62	1561
1039	BELL-A-07-P02-1	silica	2	A	3	D	8	\N	\N	2022-12-14 20:06:03.474332	2022-12-14 20:06:03.474332	62	1561
1040	BELL-A-09-P01-1	silica	1	A	2	D	9	\N	\N	2022-12-14 20:06:03.479651	2022-12-14 20:06:03.479651	64	1561
1041	BELL-A-09-P02-1	silica	2	A	3	D	9	\N	\N	2022-12-14 20:06:03.486782	2022-12-14 20:06:03.486782	64	1561
1042	BELL-A-11-P01-1	silica	1	A	1	D	10	\N	\N	2022-12-14 20:06:03.493002	2022-12-14 20:06:03.493002	66	1561
1043	BELL-A-11-P02-1	silica	1	A	3	D	10	\N	\N	2022-12-14 20:06:03.499049	2022-12-14 20:06:03.499049	66	1561
1044	CAMA-C-01-P01-1	silica	0	A	1	D	11	\N	\N	2022-12-14 20:06:03.504903	2022-12-14 20:06:03.504903	77	1561
1045	CAMA-C-01-P02-1	silica	2	A	2	D	11	\N	\N	2022-12-14 20:06:03.512938	2022-12-14 20:06:03.512938	77	1561
1046	CAMA-C-02-P01-1	silica	0	A	1	D	12	\N	\N	2022-12-14 20:06:03.519691	2022-12-14 20:06:03.519691	1626	1561
1047	CAMA-C-02-P02-1	silica	2	A	3	D	12	\N	\N	2022-12-14 20:06:03.5258	2022-12-14 20:06:03.5258	1626	1561
1048	CAMA-C-03-P01-1	silica	2	A	2	E	1	\N	\N	2022-12-14 20:06:03.532042	2022-12-14 20:06:03.532042	1627	1561
1049	CAMA-C-03-P02-1	silica	2	A	3	E	1	\N	\N	2022-12-14 20:06:03.539903	2022-12-14 20:06:03.539903	1627	1561
1050	CAMA-C-04-P01-1	silica	0	A	1	E	2	\N	\N	2022-12-14 20:06:03.545427	2022-12-14 20:06:03.545427	1628	1561
1051	CAMA-C-04-P02-1	silica	2	A	2	E	2	\N	\N	2022-12-14 20:06:03.552052	2022-12-14 20:06:03.552052	1628	1561
1052	CAMA-D-02-P01-1	silica	0	A	1	E	3	\N	\N	2022-12-14 20:06:03.561203	2022-12-14 20:06:03.561203	81	1561
1053	CAMA-D-02-P02-1	silica	0	A	2	E	3	\N	\N	2022-12-14 20:06:03.568596	2022-12-14 20:06:03.568596	81	1561
1054	CAMA-D-04-P01-1	silica	0	A	1	E	4	\N	\N	2022-12-14 20:06:03.575518	2022-12-14 20:06:03.575518	83	1561
1055	CAMA-D-04-P02-1	silica	2	A	2	E	4	\N	\N	2022-12-14 20:06:03.581582	2022-12-14 20:06:03.581582	83	1561
1056	CAMA-E-01-P01-1	silica	2	A	2	E	5	\N	\N	2022-12-14 20:06:03.589496	2022-12-14 20:06:03.589496	88	1561
1057	CAMA-E-01-P02-1	silica	2	A	3	E	5	\N	\N	2022-12-14 20:06:03.59877	2022-12-14 20:06:03.59877	88	1561
1058	CAMA-E-02-P01-1	silica	0	A	1	E	6	\N	\N	2022-12-14 20:06:03.607499	2022-12-14 20:06:03.607499	89	1561
1059	CAMA-E-02-P02-1	silica	2	A	2	E	6	\N	\N	2022-12-14 20:06:03.612369	2022-12-14 20:06:03.612369	89	1561
1060	CAMA-E-03-P01-1	silica	2	A	1	E	7	\N	\N	2022-12-14 20:06:03.617991	2022-12-14 20:06:03.617991	1634	1561
1061	CAMA-E-03-P02-1	silica	2	A	2	E	7	\N	\N	2022-12-14 20:06:03.624071	2022-12-14 20:06:03.624071	1634	1561
1062	CAMA-E-04-P01-1	silica	2	A	2	E	8	\N	\N	2022-12-14 20:06:03.63004	2022-12-14 20:06:03.63004	1635	1561
1063	CAMA-E-04-P02-1	silica	2	A	3	E	8	\N	\N	2022-12-14 20:06:03.636504	2022-12-14 20:06:03.636504	1635	1561
1064	CAMA-E-05-P01-1	silica	1	A	1	E	9	\N	\N	2022-12-14 20:06:03.643651	2022-12-14 20:06:03.643651	956	1561
1065	CAMA-E-05-P02-1	silica	2	A	3	E	9	\N	\N	2022-12-14 20:06:03.650117	2022-12-14 20:06:03.650117	956	1561
1066	CAMA-E-06-P01-1	silica	1	A	1	E	10	\N	\N	2022-12-14 20:06:03.657175	2022-12-14 20:06:03.657175	957	1561
1067	CAMA-E-06-P02-1	silica	0	A	3	E	10	\N	\N	2022-12-14 20:06:03.662131	2022-12-14 20:06:03.662131	957	1561
1068	CAMA-E-08-P01-1	silica	2	A	1	E	11	\N	\N	2022-12-14 20:06:03.668431	2022-12-14 20:06:03.668431	1638	1561
1069	CAMA-E-08-P02-1	silica	2	A	2	E	11	\N	\N	2022-12-14 20:06:03.675484	2022-12-14 20:06:03.675484	1638	1561
1070	CAMA-E-09-P01-1	silica	0	A	1	E	12	\N	\N	2022-12-14 20:06:03.686278	2022-12-14 20:06:03.686278	91	1561
1071	CAMA-E-09-P02-1	silica	2	A	2	E	12	\N	\N	2022-12-14 20:06:03.694019	2022-12-14 20:06:03.694019	91	1561
1072	CAMA-E-10-P01-1	silica	2	A	1	F	1	\N	\N	2022-12-14 20:06:03.701661	2022-12-14 20:06:03.701661	959	1561
1073	CAMA-E-10-P02-1	silica	1	A	2	F	1	\N	\N	2022-12-14 20:06:03.707917	2022-12-14 20:06:03.707917	959	1561
1074	CAMA-E-11-P01-1	silica	1	A	1	F	2	\N	\N	2022-12-14 20:06:03.715541	2022-12-14 20:06:03.715541	1641	1561
1075	CAMA-E-11-P02-1	silica	2	A	3	F	2	\N	\N	2022-12-14 20:06:03.729623	2022-12-14 20:06:03.729623	1641	1561
1076	CAMA-E-12-P01-1	silica	0	A	1	F	3	\N	\N	2022-12-14 20:06:03.740683	2022-12-14 20:06:03.740683	1642	1561
1077	CAMA-E-12-P02-1	silica	2	A	2	F	3	\N	\N	2022-12-14 20:06:03.746524	2022-12-14 20:06:03.746524	1642	1561
1078	CARL-A-01-P01-1	silica	2	A	1	F	4	\N	\N	2022-12-14 20:06:03.751703	2022-12-14 20:06:03.751703	92	1561
1079	CARL-A-01-P02-1	silica	2	A	3	F	4	\N	\N	2022-12-14 20:06:03.757733	2022-12-14 20:06:03.757733	92	1561
1080	CARL-A-02-P01-1	silica	0	A	1	F	5	\N	\N	2022-12-14 20:06:03.77415	2022-12-14 20:06:03.77415	93	1561
1081	CARL-A-02-P02-1	silica	2	A	3	F	5	\N	\N	2022-12-14 20:06:03.781486	2022-12-14 20:06:03.781486	93	1561
1082	CARL-A-03-P01-1	silica	0	A	2	F	6	\N	\N	2022-12-14 20:06:03.788532	2022-12-14 20:06:03.788532	94	1561
1083	CARL-A-03-P02-1	silica	2	A	3	F	6	\N	\N	2022-12-14 20:06:03.795638	2022-12-14 20:06:03.795638	94	1561
1084	CARL-A-04-P01-1	silica	2	A	2	F	7	\N	\N	2022-12-14 20:06:03.802385	2022-12-14 20:06:03.802385	95	1561
1085	CARL-A-04-P02-1	silica	2	A	3	F	7	\N	\N	2022-12-14 20:06:03.809035	2022-12-14 20:06:03.809035	95	1561
1086	CASS-A-02-P01-1	silica	2	A	2	F	8	\N	\N	2022-12-14 20:06:03.816561	2022-12-14 20:06:03.816561	971	1561
1087	CASS-A-02-P02-1	silica	2	A	3	F	8	\N	\N	2022-12-14 20:06:03.824118	2022-12-14 20:06:03.824118	971	1561
1088	CASS-A-03-P01-1	silica	2	A	2	F	9	\N	\N	2022-12-14 20:06:03.829726	2022-12-14 20:06:03.829726	102	1561
1089	CASS-A-03-P02-1	silica	2	A	3	F	9	\N	\N	2022-12-14 20:06:03.8351	2022-12-14 20:06:03.8351	102	1561
1090	CASS-A-04-P01-1	silica	2	A	2	F	10	\N	\N	2022-12-14 20:06:03.841269	2022-12-14 20:06:03.841269	103	1561
1091	CASS-A-04-P02-1	silica	2	A	3	F	10	\N	\N	2022-12-14 20:06:03.848465	2022-12-14 20:06:03.848465	103	1561
1092	CASS-A-05-P01-1	silica	1	A	2	F	11	\N	\N	2022-12-14 20:06:03.854755	2022-12-14 20:06:03.854755	1391	1561
1093	CASS-A-05-P02-1	silica	2	A	3	F	11	\N	\N	2022-12-14 20:06:03.860474	2022-12-14 20:06:03.860474	1391	1561
1094	CASS-A-06-P01-2	silica	1	A	2	F	12	\N	\N	2022-12-14 20:06:03.866524	2022-12-14 20:06:03.866524	104	1561
1095	CASS-A-06-P02-2	silica	0	A	2	F	12	\N	\N	2022-12-14 20:06:03.877122	2022-12-14 20:06:03.877122	104	1561
1096	CASS-A-07-P01-1	silica	2	A	2	G	1	\N	\N	2022-12-14 20:06:03.888775	2022-12-14 20:06:03.888775	105	1561
1097	CASS-A-07-P02-1	silica	1	A	3	G	1	\N	\N	2022-12-14 20:06:03.898143	2022-12-14 20:06:03.898143	105	1561
1098	CASS-A-09-P01-1	silica	2	A	2	G	2	\N	\N	2022-12-14 20:06:03.907601	2022-12-14 20:06:03.907601	107	1561
1099	CASS-A-09-P02-1	silica	1	A	3	G	2	\N	\N	2022-12-14 20:06:03.918326	2022-12-14 20:06:03.918326	107	1561
1100	CERN-A-01-P01-1	silica	2	A	1	G	3	\N	\N	2022-12-14 20:06:03.930345	2022-12-14 20:06:03.930345	121	1561
1101	CERN-A-01-P02-1	silica	2	A	3	G	3	\N	\N	2022-12-14 20:06:03.943019	2022-12-14 20:06:03.943019	121	1561
1102	CERN-A-03-P01-1	silica	2	A	2	G	4	\N	\N	2022-12-14 20:06:03.950597	2022-12-14 20:06:03.950597	123	1561
1103	CERN-A-03-P02-1	silica	2	A	3	G	4	\N	\N	2022-12-14 20:06:03.955721	2022-12-14 20:06:03.955721	123	1561
1104	CERN-A-04-P01-1	silica	2	A	1	G	5	\N	\N	2022-12-14 20:06:03.963543	2022-12-14 20:06:03.963543	1392	1561
1105	CERN-A-04-P02-1	silica	2	A	2	G	5	\N	\N	2022-12-14 20:06:03.974429	2022-12-14 20:06:03.974429	1392	1561
1106	CERN-B-01-P01-1	silica	2	A	3	G	6	\N	\N	2022-12-14 20:06:03.980214	2022-12-14 20:06:03.980214	126	1561
1107	CERN-B-01-Placeholder-NA	silica	2	A	\N	\N	\N	\N	\N	2022-12-14 20:06:03.98538	2022-12-14 20:06:03.98538	126	1561
1108	CERN-B-02-P01-1	silica	2	A	1	G	7	\N	\N	2022-12-14 20:06:03.991808	2022-12-14 20:06:03.991808	127	1561
1109	CERN-B-02-P02-1	silica	2	A	3	G	7	\N	\N	2022-12-14 20:06:03.998894	2022-12-14 20:06:03.998894	127	1561
1110	CERN-B-03-P01-1	silica	2	A	1	G	8	\N	\N	2022-12-14 20:06:04.005304	2022-12-14 20:06:04.005304	991	1561
1111	CERN-B-03-P02-1	silica	2	A	2	G	8	\N	\N	2022-12-14 20:06:04.01289	2022-12-14 20:06:04.01289	991	1561
1112	CERN-B-04-P01-1	silica	2	A	2	G	9	\N	\N	2022-12-14 20:06:04.022381	2022-12-14 20:06:04.022381	128	1561
1113	CERN-B-04-P02-1	silica	2	A	3	G	9	\N	\N	2022-12-14 20:06:04.032205	2022-12-14 20:06:04.032205	128	1561
1114	CERN-B-05-P01-1	silica	2	A	2	G	10	\N	\N	2022-12-14 20:06:04.041685	2022-12-14 20:06:04.041685	129	1561
1115	CERN-B-05-P02-1	silica	2	A	3	G	10	\N	\N	2022-12-14 20:06:04.053546	2022-12-14 20:06:04.053546	129	1561
1116	CERN-B-06-P01-1	silica	2	A	2	G	11	\N	\N	2022-12-14 20:06:04.064652	2022-12-14 20:06:04.064652	130	1561
1117	CERN-B-06-P02-1	silica	2	A	3	G	11	\N	\N	2022-12-14 20:06:04.074248	2022-12-14 20:06:04.074248	130	1561
1118	CERN-B-07-P01-1	silica	2	A	2	G	12	\N	\N	2022-12-14 20:06:04.084235	2022-12-14 20:06:04.084235	131	1561
1119	CERN-B-07-P02-1	silica	2	A	3	G	12	\N	\N	2022-12-14 20:06:04.091979	2022-12-14 20:06:04.091979	131	1561
1120	CERN-B-08-P01-1	silica	2	A	2	H	1	\N	\N	2022-12-14 20:06:04.09848	2022-12-14 20:06:04.09848	132	1561
1121	CERN-B-08-P02-1	silica	2	A	3	H	1	\N	\N	2022-12-14 20:06:04.10502	2022-12-14 20:06:04.10502	132	1561
1122	CERN-B-09-P01-1	silica	2	A	2	H	2	\N	\N	2022-12-14 20:06:04.111339	2022-12-14 20:06:04.111339	1661	1561
1123	CERN-B-09-P02-1	silica	2	A	3	H	2	\N	\N	2022-12-14 20:06:04.118063	2022-12-14 20:06:04.118063	1661	1561
1124	CERN-B-10-P01-1	silica	2	A	2	H	3	\N	\N	2022-12-14 20:06:04.127141	2022-12-14 20:06:04.127141	133	1561
1125	CERN-B-10-P02-1	silica	2	A	3	H	3	\N	\N	2022-12-14 20:06:04.137592	2022-12-14 20:06:04.137592	133	1561
1126	CERN-B-11-P01-1	silica	2	A	2	H	4	\N	\N	2022-12-14 20:06:04.144724	2022-12-14 20:06:04.144724	134	1561
1127	CERN-B-11-P02-1	silica	2	A	3	H	4	\N	\N	2022-12-14 20:06:04.15181	2022-12-14 20:06:04.15181	134	1561
1128	CIER-A-01-P01-1	silica	2	A	1	H	5	\N	\N	2022-12-14 20:06:04.158436	2022-12-14 20:06:04.158436	997	1561
1129	CIER-A-01-P02-1	silica	1	A	3	H	5	\N	\N	2022-12-14 20:06:04.163572	2022-12-14 20:06:04.163572	997	1561
1130	CIER-A-02-P01-1	silica	2	A	2	H	6	\N	\N	2022-12-14 20:06:04.169414	2022-12-14 20:06:04.169414	136	1561
1131	CIER-A-02-P02-1	silica	1	A	3	H	6	\N	\N	2022-12-14 20:06:04.175965	2022-12-14 20:06:04.175965	136	1561
1132	CIER-A-03-P01-1	silica	2	A	2	H	7	\N	\N	2022-12-14 20:06:04.183537	2022-12-14 20:06:04.183537	137	1561
1133	CIER-A-03-P02-1	silica	0	A	3	H	7	\N	\N	2022-12-14 20:06:04.190511	2022-12-14 20:06:04.190511	137	1561
1134	CIER-A-04-P01-1	silica	0	A	2	H	8	\N	\N	2022-12-14 20:06:04.195207	2022-12-14 20:06:04.195207	138	1561
1135	CIER-A-04-P02-1	silica	0	A	3	H	8	\N	\N	2022-12-14 20:06:04.200892	2022-12-14 20:06:04.200892	138	1561
1136	CIER-A-05-P01-1	silica	2	A	1	H	9	\N	\N	2022-12-14 20:06:04.207445	2022-12-14 20:06:04.207445	1001	1561
1137	CIER-A-05-P02-1	silica	0	A	3	H	9	\N	\N	2022-12-14 20:06:04.214535	2022-12-14 20:06:04.214535	1001	1561
1138	CIER-A-06-P01-1	silica	2	A	2	H	10	\N	\N	2022-12-14 20:06:04.226648	2022-12-14 20:06:04.226648	139	1561
1139	CIER-A-06-P02-1	silica	0	A	3	H	10	\N	\N	2022-12-14 20:06:04.234773	2022-12-14 20:06:04.234773	139	1561
1140	CIER-A-07-P03-1	silica	2	B	1	A	1	\N	\N	2022-12-14 20:06:04.242031	2022-12-14 20:06:04.242031	1003	1561
1141	CIER-A-07-P04-1	silica	1	B	2	A	1	\N	\N	2022-12-14 20:06:04.247839	2022-12-14 20:06:04.247839	1003	1561
1142	CIER-A-08-P03-2	silica	0	B	1	A	2	\N	\N	2022-12-14 20:06:04.253798	2022-12-14 20:06:04.253798	1004	1561
1143	CIER-A-08-P04-2	silica	0	B	1	A	2	\N	\N	2022-12-14 20:06:04.260698	2022-12-14 20:06:04.260698	1004	1561
1144	CIER-A-09-P03-1	silica	2	B	1	A	3	\N	\N	2022-12-14 20:06:04.269341	2022-12-14 20:06:04.269341	140	1561
1145	CIER-A-09-P04-1	silica	0	B	2	A	3	\N	\N	2022-12-14 20:06:04.279543	2022-12-14 20:06:04.279543	140	1561
1146	CIER-A-10-P03-1	silica	2	B	1	A	4	\N	\N	2022-12-14 20:06:04.2901	2022-12-14 20:06:04.2901	141	1561
1147	CIER-A-10-P04-1	silica	0	B	3	A	4	\N	\N	2022-12-14 20:06:04.297375	2022-12-14 20:06:04.297375	141	1561
1148	CIER-A-11-P03-1	silica	0	B	1	A	5	\N	\N	2022-12-14 20:06:04.302278	2022-12-14 20:06:04.302278	142	1561
1149	CIER-A-11-Placeholder-NA	silica	2	B	\N	\N	\N	\N	\N	2022-12-14 20:06:04.308914	2022-12-14 20:06:04.308914	142	1561
1150	CINT-A-02-P03-1	silica	2	B	1	A	6	\N	\N	2022-12-14 20:06:04.315757	2022-12-14 20:06:04.315757	146	1561
1151	CINT-A-02-P04-1	silica	2	B	2	A	6	\N	\N	2022-12-14 20:06:04.322003	2022-12-14 20:06:04.322003	146	1561
1152	CINT-A-03-P03-1	silica	2	B	2	A	7	\N	\N	2022-12-14 20:06:04.330999	2022-12-14 20:06:04.330999	147	1561
1153	CINT-A-03-P04-1	silica	2	B	3	A	7	\N	\N	2022-12-14 20:06:04.340165	2022-12-14 20:06:04.340165	147	1561
1154	CINT-A-04-P03-1	silica	2	B	1	A	8	\N	\N	2022-12-14 20:06:04.349631	2022-12-14 20:06:04.349631	1677	1561
1155	CINT-A-04-P04-1	silica	2	B	2	A	8	\N	\N	2022-12-14 20:06:04.356961	2022-12-14 20:06:04.356961	1677	1561
1156	CINT-A-05-P03-1	silica	2	B	1	A	9	\N	\N	2022-12-14 20:06:04.364497	2022-12-14 20:06:04.364497	148	1561
1157	CINT-A-05-P04-1	silica	2	B	2	A	9	\N	\N	2022-12-14 20:06:04.370801	2022-12-14 20:06:04.370801	148	1561
1158	CINT-A-06-P03-1	silica	2	B	1	A	10	\N	\N	2022-12-14 20:06:04.376552	2022-12-14 20:06:04.376552	149	1561
1159	CINT-A-06-P04-1	silica	2	B	2	A	10	\N	\N	2022-12-14 20:06:04.382892	2022-12-14 20:06:04.382892	149	1561
1160	CINT-A-07-P03-1	silica	1	B	3	A	11	\N	\N	2022-12-14 20:06:04.388323	2022-12-14 20:06:04.388323	1680	1561
1161	CINT-A-07-Placeholder-NA	silica	2	B	\N	\N	\N	\N	\N	2022-12-14 20:06:04.394212	2022-12-14 20:06:04.394212	1680	1561
1162	CINT-A-08-P03-1	silica	2	B	1	A	12	\N	\N	2022-12-14 20:06:04.40048	2022-12-14 20:06:04.40048	150	1561
1163	CINT-A-08-P04-1	silica	2	B	2	A	12	\N	\N	2022-12-14 20:06:04.409333	2022-12-14 20:06:04.409333	150	1561
1164	CINT-A-09-P03-1	silica	1	B	1	B	1	\N	\N	2022-12-14 20:06:04.419793	2022-12-14 20:06:04.419793	151	1561
1165	CINT-A-09-P04-1	silica	2	B	2	B	1	\N	\N	2022-12-14 20:06:04.426774	2022-12-14 20:06:04.426774	151	1561
1166	CINT-A-10-P03-1	silica	2	B	1	B	2	\N	\N	2022-12-14 20:06:04.431946	2022-12-14 20:06:04.431946	152	1561
1167	CINT-A-10-P04-1	silica	2	B	2	B	2	\N	\N	2022-12-14 20:06:04.437934	2022-12-14 20:06:04.437934	152	1561
1168	CINT-A-11-P03-1	silica	2	B	1	B	3	\N	\N	2022-12-14 20:06:04.443707	2022-12-14 20:06:04.443707	153	1561
1169	CINT-A-11-P04-1	silica	2	B	2	B	3	\N	\N	2022-12-14 20:06:04.449561	2022-12-14 20:06:04.449561	153	1561
1170	CINT-B-02-P03-1	silica	2	B	1	B	4	\N	\N	2022-12-14 20:06:04.456799	2022-12-14 20:06:04.456799	155	1561
1171	CINT-B-02-P04-1	silica	2	B	2	B	4	\N	\N	2022-12-14 20:06:04.465598	2022-12-14 20:06:04.465598	155	1561
1172	CINT-B-03-P03-1	silica	0	B	1	B	5	\N	\N	2022-12-14 20:06:04.47689	2022-12-14 20:06:04.47689	156	1561
1173	CINT-B-03-P04-1	silica	2	B	3	B	5	\N	\N	2022-12-14 20:06:04.488993	2022-12-14 20:06:04.488993	156	1561
1174	CINT-B-06-P03-1	silica	2	B	1	B	6	\N	\N	2022-12-14 20:06:04.501799	2022-12-14 20:06:04.501799	159	1561
1175	CINT-B-06-P04-1	silica	2	B	2	B	6	\N	\N	2022-12-14 20:06:04.512583	2022-12-14 20:06:04.512583	159	1561
1176	CINT-B-07-P03-1	silica	2	B	1	B	7	\N	\N	2022-12-14 20:06:04.523286	2022-12-14 20:06:04.523286	160	1561
1177	CINT-B-07-P04-1	silica	2	B	2	B	7	\N	\N	2022-12-14 20:06:04.5347	2022-12-14 20:06:04.5347	160	1561
1178	CINT-B-08-P03-1	silica	1	B	1	B	8	\N	\N	2022-12-14 20:06:04.543064	2022-12-14 20:06:04.543064	161	1561
1179	CINT-B-08-P04-1	silica	2	B	3	B	8	\N	\N	2022-12-14 20:06:04.548101	2022-12-14 20:06:04.548101	161	1561
1180	CINT-B-09-P03-1	silica	2	B	1	B	9	\N	\N	2022-12-14 20:06:04.553402	2022-12-14 20:06:04.553402	162	1561
1181	CINT-B-09-P04-1	silica	2	B	2	B	9	\N	\N	2022-12-14 20:06:04.558812	2022-12-14 20:06:04.558812	162	1561
1182	CINT-B-10-P03-1	silica	2	B	1	B	10	\N	\N	2022-12-14 20:06:04.564593	2022-12-14 20:06:04.564593	163	1561
1183	CINT-B-10-P04-1	silica	2	B	2	B	10	\N	\N	2022-12-14 20:06:04.570749	2022-12-14 20:06:04.570749	163	1561
1184	CINT-B-11-P03-1	silica	2	B	1	B	11	\N	\N	2022-12-14 20:06:04.576125	2022-12-14 20:06:04.576125	1690	1561
1185	CINT-B-11-P04-1	silica	2	B	2	B	11	\N	\N	2022-12-14 20:06:04.5822	2022-12-14 20:06:04.5822	1690	1561
1186	CLAR-B-01-P03-1	silica	1	B	1	B	12	\N	\N	2022-12-14 20:06:04.587913	2022-12-14 20:06:04.587913	164	1561
1187	CLAR-B-01-P04-1	silica	2	B	3	B	12	\N	\N	2022-12-14 20:06:04.594402	2022-12-14 20:06:04.594402	164	1561
1188	CLAR-B-03-P03-1	silica	1	B	1	C	1	\N	\N	2022-12-14 20:06:04.60047	2022-12-14 20:06:04.60047	166	1561
1189	CLAR-B-03-P04-1	silica	2	B	3	C	1	\N	\N	2022-12-14 20:06:04.605624	2022-12-14 20:06:04.605624	166	1561
1190	CLAR-B-04-P03-1	silica	2	B	1	C	2	\N	\N	2022-12-14 20:06:04.610901	2022-12-14 20:06:04.610901	167	1561
1191	CLAR-B-04-P04-1	silica	2	B	2	C	2	\N	\N	2022-12-14 20:06:04.616953	2022-12-14 20:06:04.616953	167	1561
1192	CLAR-B-05-P03-1	silica	1	B	1	C	3	\N	\N	2022-12-14 20:06:04.623946	2022-12-14 20:06:04.623946	168	1561
1193	CLAR-B-05-P04-1	silica	2	B	2	C	3	\N	\N	2022-12-14 20:06:04.630229	2022-12-14 20:06:04.630229	168	1561
1194	CLAR-B-06-P03-1	silica	2	B	1	C	4	\N	\N	2022-12-14 20:06:04.636157	2022-12-14 20:06:04.636157	169	1561
1195	CLAR-B-06-P04-1	silica	2	B	2	C	4	\N	\N	2022-12-14 20:06:04.642234	2022-12-14 20:06:04.642234	169	1561
1196	CLAR-C-01-P03-1	silica	2	B	1	C	5	\N	\N	2022-12-14 20:06:04.651553	2022-12-14 20:06:04.651553	173	1561
1197	CLAR-C-01-P04-1	silica	2	B	2	C	5	\N	\N	2022-12-14 20:06:04.661713	2022-12-14 20:06:04.661713	173	1561
1198	CLAR-C-02-P03-1	silica	2	B	1	C	6	\N	\N	2022-12-14 20:06:04.672074	2022-12-14 20:06:04.672074	174	1561
1199	CLAR-C-02-P04-1	silica	2	B	2	C	6	\N	\N	2022-12-14 20:06:04.682498	2022-12-14 20:06:04.682498	174	1561
1200	CLAR-C-04-P03-1	silica	1	B	1	C	7	\N	\N	2022-12-14 20:06:04.689923	2022-12-14 20:06:04.689923	176	1561
1201	CLAR-C-04-P04-1	silica	2	B	2	C	7	\N	\N	2022-12-14 20:06:04.696155	2022-12-14 20:06:04.696155	176	1561
1202	CLAR-C-08-P03-1	silica	1	B	1	C	8	\N	\N	2022-12-14 20:06:04.70235	2022-12-14 20:06:04.70235	180	1561
1203	CLAR-C-08-P04-1	silica	2	B	2	C	8	\N	\N	2022-12-14 20:06:04.709045	2022-12-14 20:06:04.709045	180	1561
1204	COLO-B-01-P03-1	silica	2	B	1	C	9	\N	\N	2022-12-14 20:06:04.716188	2022-12-14 20:06:04.716188	183	1561
1205	COLO-B-01-P04-1	silica	2	B	2	C	9	\N	\N	2022-12-14 20:06:04.72412	2022-12-14 20:06:04.72412	183	1561
1206	COLO-B-02-P03-1	silica	2	B	1	C	10	\N	\N	2022-12-14 20:06:04.730514	2022-12-14 20:06:04.730514	184	1561
1207	COLO-B-02-P04-1	silica	2	B	2	C	10	\N	\N	2022-12-14 20:06:04.735499	2022-12-14 20:06:04.735499	184	1561
1208	COLO-B-04-P03-1	silica	2	B	1	C	11	\N	\N	2022-12-14 20:06:04.742173	2022-12-14 20:06:04.742173	186	1561
1209	COLO-B-04-P04-1	silica	2	B	3	C	11	\N	\N	2022-12-14 20:06:04.748466	2022-12-14 20:06:04.748466	186	1561
1210	COLO-B-05-P03-1	silica	2	B	1	C	12	\N	\N	2022-12-14 20:06:04.755098	2022-12-14 20:06:04.755098	1377	1561
1211	COLO-B-05-P04-1	silica	2	B	2	C	12	\N	\N	2022-12-14 20:06:04.761316	2022-12-14 20:06:04.761316	1377	1561
1212	DAMI-C-04-P03-1	silica	2	B	1	D	1	\N	\N	2022-12-14 20:06:04.771116	2022-12-14 20:06:04.771116	1707	1561
1213	DAMI-C-04-P04-1	silica	2	B	2	D	1	\N	\N	2022-12-14 20:06:04.778797	2022-12-14 20:06:04.778797	1707	1561
1214	DAMI-C-05-P03-1	silica	2	B	1	D	2	\N	\N	2022-12-14 20:06:04.785046	2022-12-14 20:06:04.785046	1708	1561
1215	DAMI-C-05-P04-1	silica	1	B	2	D	2	\N	\N	2022-12-14 20:06:04.792767	2022-12-14 20:06:04.792767	1708	1561
1216	DECA-A-01-P03-1	silica	1	B	1	D	3	\N	\N	2022-12-14 20:06:04.798745	2022-12-14 20:06:04.798745	191	1561
1217	DECA-A-01-P04-1	silica	1	B	2	D	3	\N	\N	2022-12-14 20:06:04.805248	2022-12-14 20:06:04.805248	191	1561
1218	DECA-A-02-P03-1	silica	2	B	1	D	4	\N	\N	2022-12-14 20:06:04.812407	2022-12-14 20:06:04.812407	1044	1561
1219	DECA-A-02-P04-1	silica	2	B	2	D	4	\N	\N	2022-12-14 20:06:04.818826	2022-12-14 20:06:04.818826	1044	1561
1220	DECA-A-03-P03-1	silica	2	B	1	D	5	\N	\N	2022-12-14 20:06:04.824227	2022-12-14 20:06:04.824227	192	1561
1221	DECA-A-03-P04-1	silica	2	B	2	D	5	\N	\N	2022-12-14 20:06:04.829365	2022-12-14 20:06:04.829365	192	1561
1222	DECA-A-04-P03-1	silica	1	B	1	D	6	\N	\N	2022-12-14 20:06:04.836225	2022-12-14 20:06:04.836225	193	1561
1223	DECA-A-04-P04-1	silica	2	B	2	D	6	\N	\N	2022-12-14 20:06:04.847099	2022-12-14 20:06:04.847099	193	1561
1224	DECA-A-05-P03-1	silica	1	B	1	D	7	\N	\N	2022-12-14 20:06:04.855453	2022-12-14 20:06:04.855453	194	1561
1225	DECA-A-05-P04-1	silica	2	B	2	D	7	\N	\N	2022-12-14 20:06:04.865898	2022-12-14 20:06:04.865898	194	1561
1226	DECA-A-06-P03-1	silica	2	B	1	D	8	\N	\N	2022-12-14 20:06:04.873641	2022-12-14 20:06:04.873641	195	1561
1227	DECA-A-06-P04-1	silica	2	B	2	D	8	\N	\N	2022-12-14 20:06:04.879016	2022-12-14 20:06:04.879016	195	1561
1228	DECA-A-07-P03-1	silica	2	B	1	D	9	\N	\N	2022-12-14 20:06:04.885254	2022-12-14 20:06:04.885254	196	1561
1229	DECA-A-07-P04-1	silica	2	B	2	D	9	\N	\N	2022-12-14 20:06:04.891636	2022-12-14 20:06:04.891636	196	1561
1230	DECA-A-08-P03-1	silica	2	B	1	D	10	\N	\N	2022-12-14 20:06:04.897408	2022-12-14 20:06:04.897408	197	1561
1231	DECA-A-08-P04-1	silica	2	B	2	D	10	\N	\N	2022-12-14 20:06:04.90273	2022-12-14 20:06:04.90273	197	1561
1232	DECA-A-09-P03-1	silica	2	B	1	D	11	\N	\N	2022-12-14 20:06:04.908249	2022-12-14 20:06:04.908249	198	1561
1233	DECA-A-09-P04-1	silica	2	B	2	D	11	\N	\N	2022-12-14 20:06:04.913828	2022-12-14 20:06:04.913828	198	1561
1234	DECA-A-10-P03-1	silica	1	B	1	D	12	\N	\N	2022-12-14 20:06:04.920843	2022-12-14 20:06:04.920843	199	1561
1235	DECA-A-10-P04-1	silica	2	B	2	D	12	\N	\N	2022-12-14 20:06:04.927964	2022-12-14 20:06:04.927964	199	1561
1236	DECA-A-11-P03-1	silica	2	B	1	E	1	\N	\N	2022-12-14 20:06:04.933934	2022-12-14 20:06:04.933934	200	1561
1237	DECA-A-11-P04-1	silica	2	B	2	E	1	\N	\N	2022-12-14 20:06:04.941796	2022-12-14 20:06:04.941796	200	1561
1238	DECA-A-12-P03-1	silica	2	B	1	E	2	\N	\N	2022-12-14 20:06:04.962632	2022-12-14 20:06:04.962632	1720	1561
1239	DECA-A-12-P04-1	silica	2	B	2	E	2	\N	\N	2022-12-14 20:06:04.975028	2022-12-14 20:06:04.975028	1720	1561
1240	ESPE-B-02-P03-1	silica	1	B	2	E	3	\N	\N	2022-12-14 20:06:04.984766	2022-12-14 20:06:04.984766	202	1561
1241	ESPE-B-02-Placeholder-NA	silica	2	B	\N	\N	\N	\N	\N	2022-12-14 20:06:04.994819	2022-12-14 20:06:04.994819	202	1561
1242	ESPE-B-06-P03-1	silica	0	B	2	E	4	\N	\N	2022-12-14 20:06:05.005996	2022-12-14 20:06:05.005996	1057	1561
1243	ESPE-B-06-P04-1	silica	2	B	3	E	4	\N	\N	2022-12-14 20:06:05.016626	2022-12-14 20:06:05.016626	1057	1561
1244	ESPE-B-07-P03-2	silica	0	B	1	E	5	\N	\N	2022-12-14 20:06:05.02749	2022-12-14 20:06:05.02749	205	1561
1245	ESPE-B-07-P04-2	silica	2	B	1	E	5	\N	\N	2022-12-14 20:06:05.036962	2022-12-14 20:06:05.036962	205	1561
1246	ESPE-B-10-P03-1	silica	1	B	2	E	6	\N	\N	2022-12-14 20:06:05.046574	2022-12-14 20:06:05.046574	208	1561
1247	ESPE-B-10-P04-1	silica	1	B	3	E	6	\N	\N	2022-12-14 20:06:05.056781	2022-12-14 20:06:05.056781	208	1561
1248	FERR-A-01-P03-1	silica	1	B	2	E	7	\N	\N	2022-12-14 20:06:05.06785	2022-12-14 20:06:05.06785	211	1561
1249	FERR-A-01-P04-1	silica	2	B	3	E	7	\N	\N	2022-12-14 20:06:05.076629	2022-12-14 20:06:05.076629	211	1561
1250	FERR-A-02-P03-1	silica	2	B	1	E	8	\N	\N	2022-12-14 20:06:05.084148	2022-12-14 20:06:05.084148	212	1561
1251	FERR-A-02-P04-1	silica	2	B	3	E	8	\N	\N	2022-12-14 20:06:05.093759	2022-12-14 20:06:05.093759	212	1561
1252	FERR-A-03-P03-1	silica	2	B	1	E	9	\N	\N	2022-12-14 20:06:05.103111	2022-12-14 20:06:05.103111	213	1561
1253	FERR-A-03-P04-1	silica	2	B	2	E	9	\N	\N	2022-12-14 20:06:05.110745	2022-12-14 20:06:05.110745	213	1561
1254	FERR-A-04-P03-1	silica	2	B	2	E	10	\N	\N	2022-12-14 20:06:05.116574	2022-12-14 20:06:05.116574	214	1561
1255	FERR-A-04-P04-1	silica	2	B	3	E	10	\N	\N	2022-12-14 20:06:05.123043	2022-12-14 20:06:05.123043	214	1561
1256	GAIL-A-01-P03-1	silica	2	B	1	E	11	\N	\N	2022-12-14 20:06:05.128843	2022-12-14 20:06:05.128843	1071	1561
1257	GAIL-A-01-P04-1	silica	1	B	2	E	11	\N	\N	2022-12-14 20:06:05.134918	2022-12-14 20:06:05.134918	1071	1561
1258	GAIL-A-03-P03-1	silica	2	B	1	E	12	\N	\N	2022-12-14 20:06:05.141707	2022-12-14 20:06:05.141707	222	1561
1259	GAIL-A-03-P04-1	silica	1	B	2	E	12	\N	\N	2022-12-14 20:06:05.147753	2022-12-14 20:06:05.147753	222	1561
1260	GAIL-A-04-P03-1	silica	1	B	1	F	1	\N	\N	2022-12-14 20:06:05.156927	2022-12-14 20:06:05.156927	1074	1561
1261	GAIL-A-04-P04-1	silica	0	B	2	F	1	\N	\N	2022-12-14 20:06:05.167501	2022-12-14 20:06:05.167501	1074	1561
1262	GAIL-A-06-P03-1	silica	2	B	2	F	2	\N	\N	2022-12-14 20:06:05.173617	2022-12-14 20:06:05.173617	223	1561
1263	GAIL-A-06-P04-1	silica	0	B	3	F	2	\N	\N	2022-12-14 20:06:05.179688	2022-12-14 20:06:05.179688	223	1561
1264	GAIL-A-07-P03-1	silica	2	B	1	F	3	\N	\N	2022-12-14 20:06:05.187408	2022-12-14 20:06:05.187408	1077	1561
1265	GAIL-A-07-P04-1	silica	2	B	2	F	3	\N	\N	2022-12-14 20:06:05.193666	2022-12-14 20:06:05.193666	1077	1561
1266	GAIL-A-08-P03-1	silica	2	B	1	F	4	\N	\N	2022-12-14 20:06:05.19991	2022-12-14 20:06:05.19991	1078	1561
1267	GAIL-A-08-P04-1	silica	0	B	2	F	4	\N	\N	2022-12-14 20:06:05.206977	2022-12-14 20:06:05.206977	1078	1561
1268	GAIL-A-09-P03-1	silica	2	B	1	F	5	\N	\N	2022-12-14 20:06:05.217175	2022-12-14 20:06:05.217175	1079	1561
1269	GAIL-A-09-P04-1	silica	2	B	2	F	5	\N	\N	2022-12-14 20:06:05.229163	2022-12-14 20:06:05.229163	1079	1561
1270	GAIL-B-01-P03-1	silica	2	B	1	F	6	\N	\N	2022-12-14 20:06:05.241401	2022-12-14 20:06:05.241401	226	1561
1271	GAIL-B-01-P04-1	silica	2	B	3	F	6	\N	\N	2022-12-14 20:06:05.251718	2022-12-14 20:06:05.251718	226	1561
1272	GAIL-B-02-P03-1	silica	2	B	1	F	7	\N	\N	2022-12-14 20:06:05.26235	2022-12-14 20:06:05.26235	227	1561
1273	GAIL-B-02-P04-1	silica	2	B	2	F	7	\N	\N	2022-12-14 20:06:05.27317	2022-12-14 20:06:05.27317	227	1561
1274	GAIL-B-04-P03-1	silica	2	B	1	F	8	\N	\N	2022-12-14 20:06:05.280942	2022-12-14 20:06:05.280942	1084	1561
1275	GAIL-B-04-P04-1	silica	2	B	2	F	8	\N	\N	2022-12-14 20:06:05.286653	2022-12-14 20:06:05.286653	1084	1561
1276	GAIL-B-06-P03-1	silica	0	B	1	F	9	\N	\N	2022-12-14 20:06:05.292898	2022-12-14 20:06:05.292898	230	1561
1277	GAIL-B-06-P04-1	silica	2	B	2	F	9	\N	\N	2022-12-14 20:06:05.298673	2022-12-14 20:06:05.298673	230	1561
1278	GAIL-B-07-P03-1	silica	2	B	2	F	10	\N	\N	2022-12-14 20:06:05.304862	2022-12-14 20:06:05.304862	231	1561
1279	GAIL-B-07-P04-1	silica	2	B	3	F	10	\N	\N	2022-12-14 20:06:05.310836	2022-12-14 20:06:05.310836	231	1561
1280	GAIL-B-08-P03-1	silica	2	B	2	F	11	\N	\N	2022-12-14 20:06:05.31644	2022-12-14 20:06:05.31644	232	1561
1281	GAIL-B-08-P04-1	silica	2	B	3	F	11	\N	\N	2022-12-14 20:06:05.322033	2022-12-14 20:06:05.322033	232	1561
1282	GAIL-B-09-P03-1	silica	2	B	2	F	12	\N	\N	2022-12-14 20:06:05.327294	2022-12-14 20:06:05.327294	233	1561
1283	GAIL-B-09-P04-1	silica	2	B	3	F	12	\N	\N	2022-12-14 20:06:05.333076	2022-12-14 20:06:05.333076	233	1561
1284	GAIL-B-10-P03-1	silica	2	B	1	G	1	\N	\N	2022-12-14 20:06:05.338998	2022-12-14 20:06:05.338998	234	1561
1285	GAIL-B-10-P04-1	silica	2	B	2	G	1	\N	\N	2022-12-14 20:06:05.34392	2022-12-14 20:06:05.34392	234	1561
1286	GAIL-B-11-P03-1	silica	0	B	1	G	2	\N	\N	2022-12-14 20:06:05.350677	2022-12-14 20:06:05.350677	1748	1561
1287	GAIL-B-11-P04-1	silica	2	B	3	G	2	\N	\N	2022-12-14 20:06:05.356806	2022-12-14 20:06:05.356806	1748	1561
1288	GREZ-A-01-P03-1	silica	2	B	1	G	3	\N	\N	2022-12-14 20:06:05.362644	2022-12-14 20:06:05.362644	1087	1561
1289	GREZ-A-01-P04-1	silica	2	B	3	G	3	\N	\N	2022-12-14 20:06:05.369149	2022-12-14 20:06:05.369149	1087	1561
1290	GREZ-A-02-P03-1	silica	2	B	2	G	4	\N	\N	2022-12-14 20:06:05.37571	2022-12-14 20:06:05.37571	235	1561
1291	GREZ-A-02-P04-1	silica	2	B	3	G	4	\N	\N	2022-12-14 20:06:05.384675	2022-12-14 20:06:05.384675	235	1561
1292	GREZ-A-03-P03-1	silica	0	B	1	G	5	\N	\N	2022-12-14 20:06:05.391308	2022-12-14 20:06:05.391308	1089	1561
1293	GREZ-A-03-P04-1	silica	2	B	2	G	5	\N	\N	2022-12-14 20:06:05.396395	2022-12-14 20:06:05.396395	1089	1561
1294	GREZ-A-04-P03-1	silica	2	B	1	G	6	\N	\N	2022-12-14 20:06:05.40225	2022-12-14 20:06:05.40225	236	1561
1295	GREZ-A-04-P04-1	silica	2	B	2	G	6	\N	\N	2022-12-14 20:06:05.407306	2022-12-14 20:06:05.407306	236	1561
1296	JUZE-A-02-P03-1	silica	1	B	1	G	7	\N	\N	2022-12-14 20:06:05.411716	2022-12-14 20:06:05.411716	242	1561
1297	JUZE-A-02-P04-1	silica	2	B	2	G	7	\N	\N	2022-12-14 20:06:05.416446	2022-12-14 20:06:05.416446	242	1561
1298	JUZE-A-04-P03-1	silica	1	B	1	G	8	\N	\N	2022-12-14 20:06:05.422202	2022-12-14 20:06:05.422202	244	1561
1299	JUZE-A-04-P04-1	silica	2	B	2	G	8	\N	\N	2022-12-14 20:06:05.428254	2022-12-14 20:06:05.428254	244	1561
1300	JUZE-A-05-P03-1	silica	0	B	1	G	9	\N	\N	2022-12-14 20:06:05.435596	2022-12-14 20:06:05.435596	245	1561
1301	JUZE-A-05-P04-1	silica	2	B	2	G	9	\N	\N	2022-12-14 20:06:05.446226	2022-12-14 20:06:05.446226	245	1561
1302	JUZE-A-06-P03-1	silica	1	B	1	G	10	\N	\N	2022-12-14 20:06:05.457279	2022-12-14 20:06:05.457279	246	1561
1303	JUZE-A-06-P04-1	silica	2	B	2	G	10	\N	\N	2022-12-14 20:06:05.467816	2022-12-14 20:06:05.467816	246	1561
1304	JUZE-A-07-P03-1	silica	1	B	1	G	11	\N	\N	2022-12-14 20:06:05.478139	2022-12-14 20:06:05.478139	247	1561
1305	JUZE-A-07-P04-1	silica	2	B	3	G	11	\N	\N	2022-12-14 20:06:05.489293	2022-12-14 20:06:05.489293	247	1561
1306	JUZE-A-08-P03-1	silica	0	B	1	G	12	\N	\N	2022-12-14 20:06:05.498313	2022-12-14 20:06:05.498313	248	1561
1307	JUZE-A-08-P04-1	silica	2	B	2	G	12	\N	\N	2022-12-14 20:06:05.506175	2022-12-14 20:06:05.506175	248	1561
1308	JUZE-A-11-P03-1	silica	1	B	1	H	1	\N	\N	2022-12-14 20:06:05.511461	2022-12-14 20:06:05.511461	1762	1561
1309	JUZE-A-11-P04-1	silica	2	B	2	H	1	\N	\N	2022-12-14 20:06:05.51725	2022-12-14 20:06:05.51725	1762	1561
1310	JUZE-A-12-P03-1	silica	0	B	1	H	2	\N	\N	2022-12-14 20:06:05.523964	2022-12-14 20:06:05.523964	1763	1561
1311	JUZE-A-12-P04-1	silica	2	B	2	H	2	\N	\N	2022-12-14 20:06:05.53003	2022-12-14 20:06:05.53003	1763	1561
1312	JUZE-A-13-P03-1	silica	2	B	1	H	3	\N	\N	2022-12-14 20:06:05.538416	2022-12-14 20:06:05.538416	1764	1561
1313	JUZE-A-13-P04-1	silica	2	B	2	H	3	\N	\N	2022-12-14 20:06:05.5465	2022-12-14 20:06:05.5465	1764	1561
1314	JUZE-A-14-P03-1	silica	1	B	1	H	4	\N	\N	2022-12-14 20:06:05.560575	2022-12-14 20:06:05.560575	1765	1561
1315	JUZE-A-14-P04-1	silica	2	B	2	H	4	\N	\N	2022-12-14 20:06:05.574796	2022-12-14 20:06:05.574796	1765	1561
1316	JUZE-A-15-P03-1	silica	1	B	1	H	5	\N	\N	2022-12-14 20:06:05.581883	2022-12-14 20:06:05.581883	251	1561
1317	JUZE-A-15-P04-1	silica	2	B	2	H	5	\N	\N	2022-12-14 20:06:05.589091	2022-12-14 20:06:05.589091	251	1561
1318	JUZET-A-01-P03-1	silica	0	B	1	H	6	\N	\N	2022-12-14 20:06:05.596895	2022-12-14 20:06:05.596895	252	1561
1319	JUZET-A-01-P04-1	silica	2	B	2	H	6	\N	\N	2022-12-14 20:06:05.602815	2022-12-14 20:06:05.602815	252	1561
1320	JUZET-A-02-P03-1	silica	0	B	1	H	7	\N	\N	2022-12-14 20:06:05.608621	2022-12-14 20:06:05.608621	253	1561
1321	JUZET-A-02-P04-1	silica	2	B	2	H	7	\N	\N	2022-12-14 20:06:05.615281	2022-12-14 20:06:05.615281	253	1561
1322	JUZET-A-03-P03-1	silica	0	B	1	H	8	\N	\N	2022-12-14 20:06:05.623572	2022-12-14 20:06:05.623572	254	1561
1323	JUZET-A-03-P04-1	silica	2	B	2	H	8	\N	\N	2022-12-14 20:06:05.631239	2022-12-14 20:06:05.631239	254	1561
1324	JUZET-C-01-P03-1	silica	1	B	1	H	9	\N	\N	2022-12-14 20:06:05.641402	2022-12-14 20:06:05.641402	262	1561
1325	JUZET-C-01-P04-1	silica	2	B	2	H	9	\N	\N	2022-12-14 20:06:05.65268	2022-12-14 20:06:05.65268	262	1561
1326	JUZET-C-02-P05-1	silica	0	C	1	A	1	\N	\N	2022-12-14 20:06:05.660341	2022-12-14 20:06:05.660341	263	1561
1327	JUZET-C-02-P06-1	silica	2	C	3	A	1	\N	\N	2022-12-14 20:06:05.666221	2022-12-14 20:06:05.666221	263	1561
1328	JUZET-C-03-P05-1	silica	1	C	2	A	2	\N	\N	2022-12-14 20:06:05.673257	2022-12-14 20:06:05.673257	264	1561
1329	JUZET-C-03-P06-1	silica	2	C	3	A	2	\N	\N	2022-12-14 20:06:05.678798	2022-12-14 20:06:05.678798	264	1561
1330	JUZET-C-05-P05-1	silica	2	C	1	A	3	\N	\N	2022-12-14 20:06:05.685732	2022-12-14 20:06:05.685732	266	1561
1331	JUZET-C-05-P06-1	silica	2	C	3	A	3	\N	\N	2022-12-14 20:06:05.69134	2022-12-14 20:06:05.69134	266	1561
1332	LABA-A-01-P05-1	silica	1	C	2	A	4	\N	\N	2022-12-14 20:06:05.700187	2022-12-14 20:06:05.700187	273	1561
1333	LABA-A-01-P06-1	silica	2	C	3	A	4	\N	\N	2022-12-14 20:06:05.709419	2022-12-14 20:06:05.709419	273	1561
1334	LABA-A-02-P05-1	silica	2	C	2	A	5	\N	\N	2022-12-14 20:06:05.715618	2022-12-14 20:06:05.715618	274	1561
1335	LABA-A-02-P06-1	silica	2	C	3	A	5	\N	\N	2022-12-14 20:06:05.722777	2022-12-14 20:06:05.722777	274	1561
1336	LABA-A-03-P05-1	silica	2	C	1	A	6	\N	\N	2022-12-14 20:06:05.732737	2022-12-14 20:06:05.732737	275	1561
1337	LABA-A-03-P06-1	silica	2	C	3	A	6	\N	\N	2022-12-14 20:06:05.741275	2022-12-14 20:06:05.741275	275	1561
1338	LABA-A-04-P05-1	silica	0	C	2	A	7	\N	\N	2022-12-14 20:06:05.7466	2022-12-14 20:06:05.7466	276	1561
1339	LABA-A-04-P06-1	silica	2	C	3	A	7	\N	\N	2022-12-14 20:06:05.75407	2022-12-14 20:06:05.75407	276	1561
1340	LABA-A-05-P05-1	silica	2	C	2	A	8	\N	\N	2022-12-14 20:06:05.763064	2022-12-14 20:06:05.763064	277	1561
1341	LABA-A-05-P06-1	silica	1	C	3	A	8	\N	\N	2022-12-14 20:06:05.771337	2022-12-14 20:06:05.771337	277	1561
1342	LABA-A-06-P05-1	silica	2	C	2	A	9	\N	\N	2022-12-14 20:06:05.776989	2022-12-14 20:06:05.776989	278	1561
1343	LABA-A-06-P06-1	silica	2	C	3	A	9	\N	\N	2022-12-14 20:06:05.783693	2022-12-14 20:06:05.783693	278	1561
1344	LABA-A-07-P05-1	silica	1	C	1	A	10	\N	\N	2022-12-14 20:06:05.791727	2022-12-14 20:06:05.791727	279	1561
1345	LABA-A-07-P06-1	silica	2	C	3	A	10	\N	\N	2022-12-14 20:06:05.798579	2022-12-14 20:06:05.798579	279	1561
1346	LABA-A-09-P05-1	silica	2	C	2	A	11	\N	\N	2022-12-14 20:06:05.805104	2022-12-14 20:06:05.805104	281	1561
1347	LABA-A-09-P06-1	silica	2	C	3	A	11	\N	\N	2022-12-14 20:06:05.811859	2022-12-14 20:06:05.811859	281	1561
1348	LABA-A-10-P05-1	silica	1	C	2	A	12	\N	\N	2022-12-14 20:06:05.821461	2022-12-14 20:06:05.821461	282	1561
1349	LABA-A-10-P06-1	silica	2	C	3	A	12	\N	\N	2022-12-14 20:06:05.829135	2022-12-14 20:06:05.829135	282	1561
1350	LABA-A-11-P05-1	silica	0	C	1	B	1	\N	\N	2022-12-14 20:06:05.835053	2022-12-14 20:06:05.835053	1783	1561
1351	LABA-A-11-P06-1	silica	2	C	3	B	1	\N	\N	2022-12-14 20:06:05.842154	2022-12-14 20:06:05.842154	1783	1561
1352	LABA-A-12-P05-1	silica	1	C	2	B	2	\N	\N	2022-12-14 20:06:05.847891	2022-12-14 20:06:05.847891	1784	1561
1353	LABA-A-12-P06-1	silica	2	C	3	B	2	\N	\N	2022-12-14 20:06:05.854831	2022-12-14 20:06:05.854831	1784	1561
1354	LABA-A-13-P05-1	silica	2	C	2	B	3	\N	\N	2022-12-14 20:06:05.863166	2022-12-14 20:06:05.863166	1785	1561
1355	LABA-A-13-P06-1	silica	2	C	3	B	3	\N	\N	2022-12-14 20:06:05.869525	2022-12-14 20:06:05.869525	1785	1561
1356	LABA-A-14-P05-1	silica	2	C	1	B	4	\N	\N	2022-12-14 20:06:05.875536	2022-12-14 20:06:05.875536	1786	1561
1357	LABA-A-14-P06-1	silica	2	C	3	B	4	\N	\N	2022-12-14 20:06:05.882518	2022-12-14 20:06:05.882518	1786	1561
1358	LABA-A-15-P05-1	silica	0	C	3	B	5	\N	\N	2022-12-14 20:06:05.889189	2022-12-14 20:06:05.889189	1787	1561
1359	LABA-A-15-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-12-14 20:06:05.895193	2022-12-14 20:06:05.895193	1787	1561
1360	LABAS-A-04-P05-1	silica	2	C	1	B	6	\N	\N	2022-12-14 20:06:05.901434	2022-12-14 20:06:05.901434	286	1561
1361	LABAS-A-04-P06-1	silica	2	C	2	B	6	\N	\N	2022-12-14 20:06:05.909594	2022-12-14 20:06:05.909594	286	1561
1362	LAMA-A-03-P05-1	silica	1	C	2	B	7	\N	\N	2022-12-14 20:06:05.919095	2022-12-14 20:06:05.919095	295	1561
1363	LAMA-A-03-P06-1	silica	2	C	3	B	7	\N	\N	2022-12-14 20:06:05.92886	2022-12-14 20:06:05.92886	295	1561
1364	LAMA-A-04-P05-1	silica	0	C	2	B	8	\N	\N	2022-12-14 20:06:05.938491	2022-12-14 20:06:05.938491	296	1561
1365	LAMA-A-04-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-12-14 20:06:05.950906	2022-12-14 20:06:05.950906	296	1561
1366	LANT-B-01-P05-1	silica	1	C	1	B	9	\N	\N	2022-12-14 20:06:05.961895	2022-12-14 20:06:05.961895	1794	1561
1367	LANT-B-01-P06-1	silica	2	C	3	B	9	\N	\N	2022-12-14 20:06:05.971607	2022-12-14 20:06:05.971607	1794	1561
1368	LANT-B-03-P05-1	silica	2	C	1	B	10	\N	\N	2022-12-14 20:06:05.982044	2022-12-14 20:06:05.982044	1796	1561
1369	LANT-B-03-P06-1	silica	2	C	3	B	10	\N	\N	2022-12-14 20:06:05.992884	2022-12-14 20:06:05.992884	1796	1561
1370	LANT-B-05-P05-1	silica	2	C	1	B	11	\N	\N	2022-12-14 20:06:06.002054	2022-12-14 20:06:06.002054	1798	1561
1371	LANT-B-05-P06-1	silica	2	C	3	B	11	\N	\N	2022-12-14 20:06:06.007747	2022-12-14 20:06:06.007747	1798	1561
1372	LANT-B-06-P05-1	silica	2	C	1	B	12	\N	\N	2022-12-14 20:06:06.013148	2022-12-14 20:06:06.013148	1799	1561
1373	LANT-B-06-P06-1	silica	2	C	3	B	12	\N	\N	2022-12-14 20:06:06.018232	2022-12-14 20:06:06.018232	1799	1561
1374	LANT-B-07-P05-1	silica	2	C	1	C	1	\N	\N	2022-12-14 20:06:06.023606	2022-12-14 20:06:06.023606	1800	1561
1375	LANT-B-07-P06-1	silica	2	C	2	C	1	\N	\N	2022-12-14 20:06:06.028811	2022-12-14 20:06:06.028811	1800	1561
1376	LANT-B-08-P05-1	silica	2	C	1	C	2	\N	\N	2022-12-14 20:06:06.035946	2022-12-14 20:06:06.035946	1801	1561
1377	LANT-B-08-P06-1	silica	2	C	2	C	2	\N	\N	2022-12-14 20:06:06.04688	2022-12-14 20:06:06.04688	1801	1561
1378	LANT-B-09-P05-1	silica	2	C	1	C	3	\N	\N	2022-12-14 20:06:06.054634	2022-12-14 20:06:06.054634	1802	1561
1379	LANT-B-09-P06-1	silica	2	C	3	C	3	\N	\N	2022-12-14 20:06:06.060056	2022-12-14 20:06:06.060056	1802	1561
1380	LANT-B-10-P05-1	silica	2	C	1	C	4	\N	\N	2022-12-14 20:06:06.065338	2022-12-14 20:06:06.065338	1803	1561
1381	LANT-B-10-P06-1	silica	2	C	3	C	4	\N	\N	2022-12-14 20:06:06.071824	2022-12-14 20:06:06.071824	1803	1561
1382	LANT-D-02-P05-1	silica	0	C	1	C	5	\N	\N	2022-12-14 20:06:06.078084	2022-12-14 20:06:06.078084	304	1561
1383	LANT-D-02-P06-1	silica	2	C	2	C	5	\N	\N	2022-12-14 20:06:06.084455	2022-12-14 20:06:06.084455	304	1561
1384	LANT-D-03-P05-1	silica	2	C	1	C	6	\N	\N	2022-12-14 20:06:06.091776	2022-12-14 20:06:06.091776	305	1561
1385	LANT-D-03-P06-1	silica	2	C	3	C	6	\N	\N	2022-12-14 20:06:06.101364	2022-12-14 20:06:06.101364	305	1561
1386	LANT-D-04-P05-1	silica	0	C	2	C	7	\N	\N	2022-12-14 20:06:06.111043	2022-12-14 20:06:06.111043	306	1561
1387	LANT-D-04-P06-1	silica	2	C	3	C	7	\N	\N	2022-12-14 20:06:06.120587	2022-12-14 20:06:06.120587	306	1561
1388	LANT-D-05-P05-1	silica	1	C	2	C	8	\N	\N	2022-12-14 20:06:06.130725	2022-12-14 20:06:06.130725	307	1561
1389	LANT-D-05-P06-1	silica	0	C	3	C	8	\N	\N	2022-12-14 20:06:06.140377	2022-12-14 20:06:06.140377	307	1561
1390	LANT-D-07-P05-1	silica	2	C	1	C	9	\N	\N	2022-12-14 20:06:06.149968	2022-12-14 20:06:06.149968	309	1561
1391	LANT-D-07-P06-1	silica	2	C	3	C	9	\N	\N	2022-12-14 20:06:06.160053	2022-12-14 20:06:06.160053	309	1561
1392	LANT-D-08-P05-1	silica	2	C	1	C	10	\N	\N	2022-12-14 20:06:06.169584	2022-12-14 20:06:06.169584	310	1561
1393	LANT-D-08-P06-1	silica	2	C	3	C	10	\N	\N	2022-12-14 20:06:06.175467	2022-12-14 20:06:06.175467	310	1561
1394	LANT-D-09-P05-1	silica	2	C	1	C	11	\N	\N	2022-12-14 20:06:06.181099	2022-12-14 20:06:06.181099	311	1561
1395	LANT-D-09-P06-1	silica	2	C	2	C	11	\N	\N	2022-12-14 20:06:06.186423	2022-12-14 20:06:06.186423	311	1561
1396	LANT-D-14-P05-1	silica	2	C	1	C	12	\N	\N	2022-12-14 20:06:06.19283	2022-12-14 20:06:06.19283	1812	1561
1397	LANT-D-14-P06-1	silica	2	C	3	C	12	\N	\N	2022-12-14 20:06:06.198063	2022-12-14 20:06:06.198063	1812	1561
1398	LANT-D-15-P05-1	silica	0	C	3	D	1	\N	\N	2022-12-14 20:06:06.204357	2022-12-14 20:06:06.204357	1813	1561
1399	LANT-D-15-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-12-14 20:06:06.209848	2022-12-14 20:06:06.209848	1813	1561
1400	LAUZ-A-01-P05-1	silica	1	C	1	D	2	\N	\N	2022-12-14 20:06:06.215146	2022-12-14 20:06:06.215146	1147	1561
1401	LAUZ-A-01-P06-1	silica	2	C	2	D	2	\N	\N	2022-12-14 20:06:06.223049	2022-12-14 20:06:06.223049	1147	1561
1402	LAUZ-A-02-P05-1	silica	1	C	1	D	3	\N	\N	2022-12-14 20:06:06.229168	2022-12-14 20:06:06.229168	1148	1561
1403	LAUZ-A-02-P06-1	silica	0	C	3	D	3	\N	\N	2022-12-14 20:06:06.235641	2022-12-14 20:06:06.235641	1148	1561
1404	LAUZ-A-05-P05-1	silica	0	C	1	D	4	\N	\N	2022-12-14 20:06:06.24476	2022-12-14 20:06:06.24476	1151	1561
1405	LAUZ-A-05-P06-1	silica	2	C	2	D	4	\N	\N	2022-12-14 20:06:06.255068	2022-12-14 20:06:06.255068	1151	1561
1406	LAUZ-A-06-P05-2	silica	0	C	3	D	5	\N	\N	2022-12-14 20:06:06.265081	2022-12-14 20:06:06.265081	1152	1561
1407	LAUZ-A-06-P06-2	silica	2	C	3	D	5	\N	\N	2022-12-14 20:06:06.271817	2022-12-14 20:06:06.271817	1152	1561
1408	LAUZ-A-08-P05-1	silica	0	C	1	D	6	\N	\N	2022-12-14 20:06:06.277346	2022-12-14 20:06:06.277346	313	1561
1409	LAUZ-A-08-P06-1	silica	2	C	2	D	6	\N	\N	2022-12-14 20:06:06.282922	2022-12-14 20:06:06.282922	313	1561
1410	LAUZ-A-09-P05-1	silica	0	C	2	D	7	\N	\N	2022-12-14 20:06:06.288002	2022-12-14 20:06:06.288002	1821	1561
1411	LAUZ-A-09-P06-1	silica	2	C	3	D	7	\N	\N	2022-12-14 20:06:06.293664	2022-12-14 20:06:06.293664	1821	1561
1412	LAUZ-A-10-P05-1	silica	2	C	1	D	8	\N	\N	2022-12-14 20:06:06.29892	2022-12-14 20:06:06.29892	1154	1561
1413	LAUZ-A-10-P06-1	silica	2	C	2	D	8	\N	\N	2022-12-14 20:06:06.306125	2022-12-14 20:06:06.306125	1154	1561
1414	LECT-A-01-P05-1	silica	2	C	1	D	9	\N	\N	2022-12-14 20:06:06.313146	2022-12-14 20:06:06.313146	314	1561
1415	LECT-A-01-P06-1	silica	2	C	3	D	9	\N	\N	2022-12-14 20:06:06.319459	2022-12-14 20:06:06.319459	314	1561
1416	LECT-A-03-P05-1	silica	2	C	1	D	10	\N	\N	2022-12-14 20:06:06.328406	2022-12-14 20:06:06.328406	1157	1561
1417	LECT-A-03-P06-1	silica	2	C	3	D	10	\N	\N	2022-12-14 20:06:06.335637	2022-12-14 20:06:06.335637	1157	1561
1418	LECT-A-04-P05-1	silica	2	C	1	D	11	\N	\N	2022-12-14 20:06:06.345626	2022-12-14 20:06:06.345626	315	1561
1419	LECT-A-04-P06-1	silica	2	C	3	D	11	\N	\N	2022-12-14 20:06:06.353063	2022-12-14 20:06:06.353063	315	1561
1420	LECT-A-06-P05-1	silica	2	C	1	D	12	\N	\N	2022-12-14 20:06:06.359581	2022-12-14 20:06:06.359581	317	1561
1421	LECT-A-06-P06-1	silica	2	C	3	D	12	\N	\N	2022-12-14 20:06:06.367536	2022-12-14 20:06:06.367536	317	1561
1422	LECT-A-07-P05-1	silica	2	C	1	E	1	\N	\N	2022-12-14 20:06:06.376888	2022-12-14 20:06:06.376888	318	1561
1423	LECT-A-07-P06-1	silica	2	C	3	E	1	\N	\N	2022-12-14 20:06:06.388851	2022-12-14 20:06:06.388851	318	1561
1424	LECT-A-08-P05-1	silica	2	C	1	E	2	\N	\N	2022-12-14 20:06:06.400605	2022-12-14 20:06:06.400605	319	1561
1425	LECT-A-08-P06-1	silica	2	C	3	E	2	\N	\N	2022-12-14 20:06:06.411965	2022-12-14 20:06:06.411965	319	1561
1426	LECT-A-10-P05-1	silica	2	C	1	E	3	\N	\N	2022-12-14 20:06:06.423294	2022-12-14 20:06:06.423294	321	1561
1427	LECT-A-10-P06-1	silica	2	C	2	E	3	\N	\N	2022-12-14 20:06:06.433705	2022-12-14 20:06:06.433705	321	1561
1428	LECT-A-11-P05-1	silica	2	C	1	E	4	\N	\N	2022-12-14 20:06:06.443101	2022-12-14 20:06:06.443101	322	1561
1429	LECT-A-11-P06-1	silica	2	C	3	E	4	\N	\N	2022-12-14 20:06:06.452473	2022-12-14 20:06:06.452473	322	1561
1430	LECT-A-12-P05-1	silica	2	C	1	E	5	\N	\N	2022-12-14 20:06:06.459997	2022-12-14 20:06:06.459997	323	1561
1431	LECT-A-12-P06-1	silica	2	C	3	E	5	\N	\N	2022-12-14 20:06:06.465953	2022-12-14 20:06:06.465953	323	1561
1432	LUNA-A-01-P05-1	silica	1	C	1	E	6	\N	\N	2022-12-14 20:06:06.472157	2022-12-14 20:06:06.472157	334	1561
1433	LUNA-A-01-P06-1	silica	2	C	3	E	6	\N	\N	2022-12-14 20:06:06.477885	2022-12-14 20:06:06.477885	334	1561
1434	LUNA-A-02-P05-1	silica	0	C	1	E	7	\N	\N	2022-12-14 20:06:06.486308	2022-12-14 20:06:06.486308	335	1561
1435	LUNA-A-02-P06-1	silica	2	C	3	E	7	\N	\N	2022-12-14 20:06:06.492503	2022-12-14 20:06:06.492503	335	1561
1436	LUNA-A-03-P05-1	silica	1	C	1	E	8	\N	\N	2022-12-14 20:06:06.497539	2022-12-14 20:06:06.497539	336	1561
1437	LUNA-A-03-P06-1	silica	2	C	3	E	8	\N	\N	2022-12-14 20:06:06.502636	2022-12-14 20:06:06.502636	336	1561
1438	LUNA-A-05-P05-1	silica	0	C	1	E	9	\N	\N	2022-12-14 20:06:06.508198	2022-12-14 20:06:06.508198	337	1561
1439	LUNA-A-05-P06-1	silica	0	C	2	E	9	\N	\N	2022-12-14 20:06:06.515439	2022-12-14 20:06:06.515439	337	1561
1440	LUNA-A-06-P05-1	silica	2	C	1	E	10	\N	\N	2022-12-14 20:06:06.521129	2022-12-14 20:06:06.521129	338	1561
1441	LUNA-A-06-P06-1	silica	2	C	3	E	10	\N	\N	2022-12-14 20:06:06.527236	2022-12-14 20:06:06.527236	338	1561
1442	LUNA-A-07-P05-1	silica	1	C	1	E	11	\N	\N	2022-12-14 20:06:06.536199	2022-12-14 20:06:06.536199	339	1561
1443	LUNA-A-07-P06-1	silica	2	C	3	E	11	\N	\N	2022-12-14 20:06:06.543907	2022-12-14 20:06:06.543907	339	1561
1444	LUNA-A-08-P05-1	silica	2	C	1	E	12	\N	\N	2022-12-14 20:06:06.549141	2022-12-14 20:06:06.549141	340	1561
1445	LUNA-A-08-P06-1	silica	2	C	3	E	12	\N	\N	2022-12-14 20:06:06.555496	2022-12-14 20:06:06.555496	340	1561
1446	LUNA-A-09-P05-1	silica	2	C	1	F	1	\N	\N	2022-12-14 20:06:06.563284	2022-12-14 20:06:06.563284	341	1561
1447	LUNA-A-09-P06-1	silica	2	C	3	F	1	\N	\N	2022-12-14 20:06:06.570015	2022-12-14 20:06:06.570015	341	1561
1448	LUNA-A-10-P05-1	silica	0	C	1	F	2	\N	\N	2022-12-14 20:06:06.577247	2022-12-14 20:06:06.577247	342	1561
1449	LUNA-A-10-P06-1	silica	1	C	3	F	2	\N	\N	2022-12-14 20:06:06.583173	2022-12-14 20:06:06.583173	342	1561
1450	LUNA-A-12-P05-1	silica	2	C	1	F	3	\N	\N	2022-12-14 20:06:06.588778	2022-12-14 20:06:06.588778	1838	1561
1451	LUNA-A-12-P06-1	silica	2	C	2	F	3	\N	\N	2022-12-14 20:06:06.593808	2022-12-14 20:06:06.593808	1838	1561
1452	MARS-C-01-P05-1	silica	2	C	1	F	4	\N	\N	2022-12-14 20:06:06.60409	2022-12-14 20:06:06.60409	1839	1561
1453	MARS-C-01-P06-1	silica	2	C	3	F	4	\N	\N	2022-12-14 20:06:06.613907	2022-12-14 20:06:06.613907	1839	1561
1454	MARS-C-02-P05-1	silica	2	C	1	F	5	\N	\N	2022-12-14 20:06:06.62294	2022-12-14 20:06:06.62294	1840	1561
1455	MARS-C-02-P06-1	silica	2	C	2	F	5	\N	\N	2022-12-14 20:06:06.633694	2022-12-14 20:06:06.633694	1840	1561
1456	MARS-C-03-P05-1	silica	2	C	1	F	6	\N	\N	2022-12-14 20:06:06.640623	2022-12-14 20:06:06.640623	1841	1561
1457	MARS-C-03-P06-1	silica	2	C	3	F	6	\N	\N	2022-12-14 20:06:06.645483	2022-12-14 20:06:06.645483	1841	1561
1458	MARS-C-05-P05-1	silica	2	C	2	F	7	\N	\N	2022-12-14 20:06:06.651146	2022-12-14 20:06:06.651146	1843	1561
1459	MARS-C-05-P06-1	silica	1	C	3	F	7	\N	\N	2022-12-14 20:06:06.656885	2022-12-14 20:06:06.656885	1843	1561
1460	MARS-C-06-P05-1	silica	2	C	2	F	8	\N	\N	2022-12-14 20:06:06.66219	2022-12-14 20:06:06.66219	1844	1561
1461	MARS-C-06-P06-1	silica	2	C	3	F	8	\N	\N	2022-12-14 20:06:06.668824	2022-12-14 20:06:06.668824	1844	1561
1462	MARS-C-07-P05-1	silica	2	C	2	F	9	\N	\N	2022-12-14 20:06:06.67863	2022-12-14 20:06:06.67863	1845	1561
1463	MARS-C-07-P06-1	silica	2	C	3	F	9	\N	\N	2022-12-14 20:06:06.688356	2022-12-14 20:06:06.688356	1845	1561
1464	MARS-C-08-P05-1	silica	2	C	3	F	10	\N	\N	2022-12-14 20:06:06.698171	2022-12-14 20:06:06.698171	1846	1561
1465	MARS-C-08-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-12-14 20:06:06.706045	2022-12-14 20:06:06.706045	1846	1561
1466	MONB-A-01-P05-1	silica	2	C	1	F	11	\N	\N	2022-12-14 20:06:06.720728	2022-12-14 20:06:06.720728	373	1561
1467	MONB-A-01-P06-1	silica	2	C	2	F	11	\N	\N	2022-12-14 20:06:06.735331	2022-12-14 20:06:06.735331	373	1561
1468	MONB-A-02-P05-1	silica	2	C	2	F	12	\N	\N	2022-12-14 20:06:06.74432	2022-12-14 20:06:06.74432	374	1561
1469	MONB-A-02-P06-1	silica	2	C	3	F	12	\N	\N	2022-12-14 20:06:06.749908	2022-12-14 20:06:06.749908	374	1561
1470	MONB-A-04-P05-1	silica	2	C	2	G	1	\N	\N	2022-12-14 20:06:06.758329	2022-12-14 20:06:06.758329	376	1561
1471	MONB-A-04-P06-1	silica	0	C	3	G	1	\N	\N	2022-12-14 20:06:06.768591	2022-12-14 20:06:06.768591	376	1561
1472	MONB-A-06-P05-1	silica	2	C	2	G	2	\N	\N	2022-12-14 20:06:06.776515	2022-12-14 20:06:06.776515	378	1561
1473	MONB-A-06-P06-1	silica	2	C	3	G	2	\N	\N	2022-12-14 20:06:06.782191	2022-12-14 20:06:06.782191	378	1561
1474	MONB-A-08-P05-1	silica	2	C	2	G	3	\N	\N	2022-12-14 20:06:06.789995	2022-12-14 20:06:06.789995	1212	1561
1475	MONB-A-08-P06-1	silica	2	C	3	G	3	\N	\N	2022-12-14 20:06:06.79711	2022-12-14 20:06:06.79711	1212	1561
1476	MONB-A-09-P05-1	silica	2	C	2	G	4	\N	\N	2022-12-14 20:06:06.806074	2022-12-14 20:06:06.806074	380	1561
1477	MONB-A-09-P06-1	silica	2	C	3	G	4	\N	\N	2022-12-14 20:06:06.815738	2022-12-14 20:06:06.815738	380	1561
1478	MONB-A-10-P05-1	silica	2	C	1	G	5	\N	\N	2022-12-14 20:06:06.82408	2022-12-14 20:06:06.82408	381	1561
1479	MONB-A-10-P06-1	silica	2	C	2	G	5	\N	\N	2022-12-14 20:06:06.829208	2022-12-14 20:06:06.829208	381	1561
1480	MONB-A-12-P05-1	silica	2	C	1	G	6	\N	\N	2022-12-14 20:06:06.834464	2022-12-14 20:06:06.834464	1858	1561
1481	MONB-A-12-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-12-14 20:06:06.840659	2022-12-14 20:06:06.840659	1858	1561
1482	MONF-A-01-P05-1	silica	2	C	1	G	7	\N	\N	2022-12-14 20:06:06.845724	2022-12-14 20:06:06.845724	392	1561
1483	MONF-A-01-P06-1	silica	2	C	3	G	7	\N	\N	2022-12-14 20:06:06.851566	2022-12-14 20:06:06.851566	392	1561
1484	MONF-A-03-P05-1	silica	2	C	3	G	8	\N	\N	2022-12-14 20:06:06.858787	2022-12-14 20:06:06.858787	394	1561
1485	MONF-A-03-Placeholder-NA	silica	2	C	\N	\N	\N	\N	\N	2022-12-14 20:06:06.864306	2022-12-14 20:06:06.864306	394	1561
1486	MONF-A-04-P05-1	silica	2	C	1	G	9	\N	\N	2022-12-14 20:06:06.870032	2022-12-14 20:06:06.870032	395	1561
1487	MONF-A-04-P06-1	silica	0	C	3	G	9	\N	\N	2022-12-14 20:06:06.876027	2022-12-14 20:06:06.876027	395	1561
1488	MONF-A-05-P05-1	silica	2	C	1	G	10	\N	\N	2022-12-14 20:06:06.882336	2022-12-14 20:06:06.882336	396	1561
1489	MONF-A-05-P06-1	silica	2	C	3	G	10	\N	\N	2022-12-14 20:06:06.888259	2022-12-14 20:06:06.888259	396	1561
1490	MONF-A-06-P05-1	silica	2	C	2	G	11	\N	\N	2022-12-14 20:06:06.894398	2022-12-14 20:06:06.894398	397	1561
1491	MONF-A-06-P06-1	silica	2	C	3	G	11	\N	\N	2022-12-14 20:06:06.900296	2022-12-14 20:06:06.900296	397	1561
1492	MONF-A-07-P05-1	silica	2	C	1	G	12	\N	\N	2022-12-14 20:06:06.906887	2022-12-14 20:06:06.906887	398	1561
1493	MONF-A-07-P06-1	silica	1	C	3	G	12	\N	\N	2022-12-14 20:06:06.912507	2022-12-14 20:06:06.912507	398	1561
1494	MONF-A-08-P05-1	silica	2	C	1	H	1	\N	\N	2022-12-14 20:06:06.918288	2022-12-14 20:06:06.918288	399	1561
1495	MONF-A-08-P06-1	silica	2	C	3	H	1	\N	\N	2022-12-14 20:06:06.927705	2022-12-14 20:06:06.927705	399	1561
1496	MONF-A-09-P05-1	silica	2	C	1	H	2	\N	\N	2022-12-14 20:06:06.935161	2022-12-14 20:06:06.935161	400	1561
1497	MONF-A-09-P06-1	silica	2	C	3	H	2	\N	\N	2022-12-14 20:06:06.94045	2022-12-14 20:06:06.94045	400	1561
1498	MONF-A-10-P05-1	silica	2	C	2	H	3	\N	\N	2022-12-14 20:06:06.946675	2022-12-14 20:06:06.946675	401	1561
1499	MONF-A-10-P06-1	silica	2	C	3	H	3	\N	\N	2022-12-14 20:06:06.957049	2022-12-14 20:06:06.957049	401	1561
1500	MONF-A-11-P05-1	silica	2	C	1	H	4	\N	\N	2022-12-14 20:06:06.96685	2022-12-14 20:06:06.96685	1869	1561
1501	MONF-A-11-P06-1	silica	2	C	2	H	4	\N	\N	2022-12-14 20:06:06.97942	2022-12-14 20:06:06.97942	1869	1561
1502	MONF-A-12-P05-1	silica	2	C	2	H	5	\N	\N	2022-12-14 20:06:06.99296	2022-12-14 20:06:06.99296	1870	1561
1503	MONF-A-12-P06-1	silica	2	C	3	H	5	\N	\N	2022-12-14 20:06:07.003632	2022-12-14 20:06:07.003632	1870	1561
1504	MONTI-B-1-P05-1	silica	2	C	2	H	6	\N	\N	2022-12-14 20:06:07.014649	2022-12-14 20:06:07.014649	1237	1561
1505	MONTI-B-1-P06-1	silica	2	C	3	H	6	\N	\N	2022-12-14 20:06:07.021599	2022-12-14 20:06:07.021599	1237	1561
1506	MONTI-B-2-P05-1	silica	2	C	2	H	7	\N	\N	2022-12-14 20:06:07.030542	2022-12-14 20:06:07.030542	1238	1561
1507	MONTI-B-2-P06-1	silica	2	C	3	H	7	\N	\N	2022-12-14 20:06:07.040579	2022-12-14 20:06:07.040579	1238	1561
1508	MONTI-B-3-P05-1	silica	2	C	2	H	8	\N	\N	2022-12-14 20:06:07.050027	2022-12-14 20:06:07.050027	1239	1561
1509	MONTI-B-3-P06-1	silica	1	C	3	H	8	\N	\N	2022-12-14 20:06:07.057835	2022-12-14 20:06:07.057835	1239	1561
1510	LAUZ-A-04-P07-1	silica	2	D	1	A	1	\N	\N	2022-12-14 20:06:07.063684	2022-12-14 20:06:07.063684	1150	1561
1511	LAUZ-A-04-P08-1	silica	2	D	2	A	1	\N	\N	2022-12-14 20:06:07.069876	2022-12-14 20:06:07.069876	1150	1561
1512	MONTI-B-4-P07-1	silica	2	D	1	A	2	\N	\N	2022-12-14 20:06:07.076469	2022-12-14 20:06:07.076469	1240	1561
1513	MONTI-B-4-P08-1	silica	2	D	2	A	2	\N	\N	2022-12-14 20:06:07.085935	2022-12-14 20:06:07.085935	1240	1561
1514	MONTI-B-5-P07-1	silica	2	D	1	A	3	\N	\N	2022-12-14 20:06:07.09641	2022-12-14 20:06:07.09641	1875	1561
1515	MONTI-B-5-P08-1	silica	2	D	2	A	3	\N	\N	2022-12-14 20:06:07.106707	2022-12-14 20:06:07.106707	1875	1561
1516	MONTI-B-6-P07-1	silica	2	D	1	A	4	\N	\N	2022-12-14 20:06:07.115951	2022-12-14 20:06:07.115951	1241	1561
1517	MONTI-B-6-P08-1	silica	2	D	2	A	4	\N	\N	2022-12-14 20:06:07.12666	2022-12-14 20:06:07.12666	1241	1561
1518	MONTI-B-7-P07-1	silica	2	D	2	A	5	\N	\N	2022-12-14 20:06:07.137251	2022-12-14 20:06:07.137251	1242	1561
1519	MONTI-B-7-P08-1	silica	2	D	3	A	5	\N	\N	2022-12-14 20:06:07.143402	2022-12-14 20:06:07.143402	1242	1561
1520	MONTM-A-2-P07-1	silica	2	D	2	A	6	\N	\N	2022-12-14 20:06:07.147836	2022-12-14 20:06:07.147836	426	1561
1521	MONTM-A-2-P08-1	silica	2	D	3	A	6	\N	\N	2022-12-14 20:06:07.152968	2022-12-14 20:06:07.152968	426	1561
1522	MONTM-A-4-P07-1	silica	2	D	1	A	7	\N	\N	2022-12-14 20:06:07.160248	2022-12-14 20:06:07.160248	428	1561
1523	MONTM-A-4-P08-1	silica	2	D	2	A	7	\N	\N	2022-12-14 20:06:07.166284	2022-12-14 20:06:07.166284	428	1561
1524	MONTM-A-5-P07-1	silica	2	D	1	A	8	\N	\N	2022-12-14 20:06:07.174763	2022-12-14 20:06:07.174763	429	1561
1525	MONTM-A-5-P08-1	silica	2	D	2	A	8	\N	\N	2022-12-14 20:06:07.185609	2022-12-14 20:06:07.185609	429	1561
1526	MONTM-A-6-P07-1	silica	2	D	1	A	9	\N	\N	2022-12-14 20:06:07.196034	2022-12-14 20:06:07.196034	430	1561
1527	MONTM-A-6-P08-1	silica	2	D	2	A	9	\N	\N	2022-12-14 20:06:07.202485	2022-12-14 20:06:07.202485	430	1561
1528	MONTM-A-9-P07-1	silica	2	D	1	A	10	\N	\N	2022-12-14 20:06:07.207952	2022-12-14 20:06:07.207952	433	1561
1529	MONTM-A-9-P08-1	silica	2	D	2	A	10	\N	\N	2022-12-14 20:06:07.214157	2022-12-14 20:06:07.214157	433	1561
1530	NAZA-A-02-P07-1	silica	2	D	1	A	11	\N	\N	2022-12-14 20:06:07.219792	2022-12-14 20:06:07.219792	1254	1561
1531	NAZA-A-02-P08-1	silica	2	D	2	A	11	\N	\N	2022-12-14 20:06:07.228376	2022-12-14 20:06:07.228376	1254	1561
1532	NAZA-A-05-P07-1	silica	2	D	1	A	12	\N	\N	2022-12-14 20:06:07.243101	2022-12-14 20:06:07.243101	1257	1561
1533	NAZA-A-05-P08-1	silica	2	D	2	A	12	\N	\N	2022-12-14 20:06:07.249479	2022-12-14 20:06:07.249479	1257	1561
1534	NAZA-A-06-P07-1	silica	2	D	1	B	1	\N	\N	2022-12-14 20:06:07.256737	2022-12-14 20:06:07.256737	438	1561
1535	NAZA-A-06-P08-1	silica	2	D	2	B	1	\N	\N	2022-12-14 20:06:07.263175	2022-12-14 20:06:07.263175	438	1561
1536	NAZA-A-07-P07-1	silica	2	D	1	B	2	\N	\N	2022-12-14 20:06:07.269747	2022-12-14 20:06:07.269747	1259	1561
1537	NAZA-A-07-P08-1	silica	1	D	2	B	2	\N	\N	2022-12-14 20:06:07.27564	2022-12-14 20:06:07.27564	1259	1561
1538	NAZA-A-09-P07-1	silica	2	D	1	B	3	\N	\N	2022-12-14 20:06:07.282833	2022-12-14 20:06:07.282833	439	1561
1539	NAZA-A-09-P08-1	silica	2	D	3	B	3	\N	\N	2022-12-14 20:06:07.29026	2022-12-14 20:06:07.29026	439	1561
1540	NAZA-A-13-P07-1	silica	2	D	1	B	4	\N	\N	2022-12-14 20:06:07.295513	2022-12-14 20:06:07.295513	1896	1561
1541	NAZA-A-13-P08-1	silica	2	D	2	B	4	\N	\N	2022-12-14 20:06:07.300796	2022-12-14 20:06:07.300796	1896	1561
1542	PUYM-B-02-P07-1	silica	2	D	1	B	5	\N	\N	2022-12-14 20:06:07.306741	2022-12-14 20:06:07.306741	444	1561
1543	PUYM-B-02-P08-1	silica	2	D	2	B	5	\N	\N	2022-12-14 20:06:07.312083	2022-12-14 20:06:07.312083	444	1561
1544	PUYM-B-03-P07-1	silica	2	D	1	B	6	\N	\N	2022-12-14 20:06:07.318835	2022-12-14 20:06:07.318835	445	1561
1545	PUYM-B-03-P08-1	silica	2	D	2	B	6	\N	\N	2022-12-14 20:06:07.324672	2022-12-14 20:06:07.324672	445	1561
1546	PUYM-B-08-P07-1	silica	2	D	1	B	7	\N	\N	2022-12-14 20:06:07.330157	2022-12-14 20:06:07.330157	449	1561
1547	PUYM-B-08-P08-1	silica	2	D	2	B	7	\N	\N	2022-12-14 20:06:07.336333	2022-12-14 20:06:07.336333	449	1561
1548	PUYM-B-09-P07-1	silica	2	D	1	B	8	\N	\N	2022-12-14 20:06:07.348814	2022-12-14 20:06:07.348814	1270	1561
1549	PUYM-B-09-P08-1	silica	0	D	2	B	8	\N	\N	2022-12-14 20:06:07.354858	2022-12-14 20:06:07.354858	1270	1561
1550	PUYM-B-11-P07-1	silica	2	D	1	B	9	\N	\N	2022-12-14 20:06:07.361311	2022-12-14 20:06:07.361311	1906	1561
1551	PUYM-B-11-P08-1	silica	2	D	2	B	9	\N	\N	2022-12-14 20:06:07.369077	2022-12-14 20:06:07.369077	1906	1561
1552	RAYR-A-01-P07-1	silica	2	D	2	B	10	\N	\N	2022-12-14 20:06:07.37657	2022-12-14 20:06:07.37657	450	1561
1553	RAYR-A-01-P08-1	silica	2	D	3	B	10	\N	\N	2022-12-14 20:06:07.382369	2022-12-14 20:06:07.382369	450	1561
1554	RAYR-A-02-P07-1	silica	2	D	1	B	11	\N	\N	2022-12-14 20:06:07.38949	2022-12-14 20:06:07.38949	451	1561
1555	RAYR-A-02-P08-1	silica	2	D	2	B	11	\N	\N	2022-12-14 20:06:07.399384	2022-12-14 20:06:07.399384	451	1561
1556	RAYR-A-03-P07-1	silica	2	D	1	B	12	\N	\N	2022-12-14 20:06:07.409471	2022-12-14 20:06:07.409471	452	1561
1557	RAYR-A-03-P08-1	silica	0	D	3	B	12	\N	\N	2022-12-14 20:06:07.419619	2022-12-14 20:06:07.419619	452	1561
1558	RAYR-A-04-P07-1	silica	2	D	2	C	1	\N	\N	2022-12-14 20:06:07.430762	2022-12-14 20:06:07.430762	1274	1561
1559	RAYR-A-04-P08-1	silica	0	D	3	C	1	\N	\N	2022-12-14 20:06:07.442062	2022-12-14 20:06:07.442062	1274	1561
1560	RAYR-A-05-P07-2	silica	2	D	2	C	2	\N	\N	2022-12-14 20:06:07.454162	2022-12-14 20:06:07.454162	453	1561
1561	RAYR-A-05-P08-2	silica	2	D	2	C	2	\N	\N	2022-12-14 20:06:07.465026	2022-12-14 20:06:07.465026	453	1561
1562	RAYR-A-07-P07-1	silica	2	D	1	C	3	\N	\N	2022-12-14 20:06:07.476132	2022-12-14 20:06:07.476132	454	1561
1563	RAYR-A-07-P08-1	silica	1	D	2	C	3	\N	\N	2022-12-14 20:06:07.486811	2022-12-14 20:06:07.486811	454	1561
1564	RAYR-A-08-P07-1	silica	2	D	1	C	4	\N	\N	2022-12-14 20:06:07.497087	2022-12-14 20:06:07.497087	455	1561
1565	RAYR-A-08-P08-1	silica	2	D	2	C	4	\N	\N	2022-12-14 20:06:07.508615	2022-12-14 20:06:07.508615	455	1561
1566	RAYR-A-09-P07-1	silica	2	D	1	C	5	\N	\N	2022-12-14 20:06:07.515374	2022-12-14 20:06:07.515374	456	1561
1567	RAYR-A-09-P08-1	silica	0	D	2	C	5	\N	\N	2022-12-14 20:06:07.522068	2022-12-14 20:06:07.522068	456	1561
1568	RAYR-A-11-P07-1	silica	2	D	2	C	6	\N	\N	2022-12-14 20:06:07.527773	2022-12-14 20:06:07.527773	458	1561
1569	RAYR-A-11-P08-1	silica	2	D	3	C	6	\N	\N	2022-12-14 20:06:07.535551	2022-12-14 20:06:07.535551	458	1561
1570	SALE-A-01-P07-1	silica	2	D	1	C	7	\N	\N	2022-12-14 20:06:07.543099	2022-12-14 20:06:07.543099	470	1561
1571	SALE-A-01-P08-1	silica	2	D	2	C	7	\N	\N	2022-12-14 20:06:07.549753	2022-12-14 20:06:07.549753	470	1561
1572	SALV-A-01-P07-1	silica	2	D	1	C	8	\N	\N	2022-12-14 20:06:07.557236	2022-12-14 20:06:07.557236	480	1561
1573	SALV-A-01-P08-1	silica	2	D	2	C	8	\N	\N	2022-12-14 20:06:07.565234	2022-12-14 20:06:07.565234	480	1561
1574	SALV-A-02-P07-1	silica	2	D	1	C	9	\N	\N	2022-12-14 20:06:07.572617	2022-12-14 20:06:07.572617	481	1561
1575	SALV-A-02-P08-1	silica	2	D	2	C	9	\N	\N	2022-12-14 20:06:07.581109	2022-12-14 20:06:07.581109	481	1561
1576	SALV-A-03-P07-1	silica	2	D	1	C	10	\N	\N	2022-12-14 20:06:07.592811	2022-12-14 20:06:07.592811	482	1561
1577	SALV-A-03-P08-1	silica	2	D	2	C	10	\N	\N	2022-12-14 20:06:07.603761	2022-12-14 20:06:07.603761	482	1561
1578	SALV-A-04-P07-1	silica	2	D	2	C	11	\N	\N	2022-12-14 20:06:07.611199	2022-12-14 20:06:07.611199	1296	1561
1579	SALV-A-04-P08-1	silica	2	D	3	C	11	\N	\N	2022-12-14 20:06:07.617445	2022-12-14 20:06:07.617445	1296	1561
1580	SALV-A-05-P07-1	silica	2	D	1	C	12	\N	\N	2022-12-14 20:06:07.624876	2022-12-14 20:06:07.624876	483	1561
1581	SALV-A-05-P08-1	silica	2	D	2	C	12	\N	\N	2022-12-14 20:06:07.631492	2022-12-14 20:06:07.631492	483	1561
1582	SALV-A-06-P07-1	silica	2	D	1	D	1	\N	\N	2022-12-14 20:06:07.642175	2022-12-14 20:06:07.642175	1298	1561
1583	SALV-A-06-P08-1	silica	2	D	2	D	1	\N	\N	2022-12-14 20:06:07.648903	2022-12-14 20:06:07.648903	1298	1561
1584	SALV-A-07-P07-1	silica	2	D	1	D	2	\N	\N	2022-12-14 20:06:07.655428	2022-12-14 20:06:07.655428	484	1561
1585	SALV-A-07-P08-1	silica	2	D	2	D	2	\N	\N	2022-12-14 20:06:07.661304	2022-12-14 20:06:07.661304	484	1561
1586	SALV-A-08-P07-1	silica	2	D	1	D	3	\N	\N	2022-12-14 20:06:07.668604	2022-12-14 20:06:07.668604	485	1561
1587	SALV-A-08-P08-1	silica	2	D	2	D	3	\N	\N	2022-12-14 20:06:07.674617	2022-12-14 20:06:07.674617	485	1561
1588	SALV-A-10-P07-1	silica	2	D	1	D	4	\N	\N	2022-12-14 20:06:07.682021	2022-12-14 20:06:07.682021	1302	1561
1589	SALV-A-10-P08-1	silica	2	D	2	D	4	\N	\N	2022-12-14 20:06:07.688736	2022-12-14 20:06:07.688736	1302	1561
1590	SAUB-B-02-P07-1	silica	2	D	1	D	5	\N	\N	2022-12-14 20:06:07.693544	2022-12-14 20:06:07.693544	491	1561
1591	SAUB-B-02-P08-1	silica	2	D	2	D	5	\N	\N	2022-12-14 20:06:07.70014	2022-12-14 20:06:07.70014	491	1561
1592	SAUB-B-03-P07-1	silica	2	D	2	D	6	\N	\N	2022-12-14 20:06:07.7081	2022-12-14 20:06:07.7081	492	1561
1593	SAUB-B-03-P08-1	silica	2	D	3	D	6	\N	\N	2022-12-14 20:06:07.714161	2022-12-14 20:06:07.714161	492	1561
1594	SAUB-B-04-P07-1	silica	2	D	1	D	7	\N	\N	2022-12-14 20:06:07.720038	2022-12-14 20:06:07.720038	493	1561
1595	SAUB-B-04-P08-1	silica	2	D	2	D	7	\N	\N	2022-12-14 20:06:07.735967	2022-12-14 20:06:07.735967	493	1561
1596	SAUB-B-05-P07-1	silica	2	D	1	D	8	\N	\N	2022-12-14 20:06:07.744306	2022-12-14 20:06:07.744306	494	1561
1597	SAUB-B-05-P08-1	silica	2	D	2	D	8	\N	\N	2022-12-14 20:06:07.750396	2022-12-14 20:06:07.750396	494	1561
1598	SAUB-B-06-P07-1	silica	2	D	1	D	9	\N	\N	2022-12-14 20:06:07.75861	2022-12-14 20:06:07.75861	495	1561
1599	SAUB-B-06-P08-1	silica	2	D	3	D	9	\N	\N	2022-12-14 20:06:07.766608	2022-12-14 20:06:07.766608	495	1561
1600	SAUB-B-07-P07-1	silica	2	D	1	D	10	\N	\N	2022-12-14 20:06:07.779815	2022-12-14 20:06:07.779815	496	1561
1601	SAUB-B-07-P08-1	silica	2	D	2	D	10	\N	\N	2022-12-14 20:06:07.789259	2022-12-14 20:06:07.789259	496	1561
1602	SAUB-B-08-P07-1	silica	2	D	2	D	11	\N	\N	2022-12-14 20:06:07.795851	2022-12-14 20:06:07.795851	497	1561
1603	SAUB-B-08-P08-1	silica	2	D	3	D	11	\N	\N	2022-12-14 20:06:07.801274	2022-12-14 20:06:07.801274	497	1561
1604	SAUB-B-09-P07-1	silica	2	D	1	D	12	\N	\N	2022-12-14 20:06:07.807756	2022-12-14 20:06:07.807756	498	1561
1605	SAUB-B-09-P08-1	silica	2	D	2	D	12	\N	\N	2022-12-14 20:06:07.814148	2022-12-14 20:06:07.814148	498	1561
1606	SAUB-B-11-P07-1	silica	2	D	1	E	1	\N	\N	2022-12-14 20:06:07.821084	2022-12-14 20:06:07.821084	1941	1561
1607	SAUB-B-11-P08-1	silica	2	D	2	E	1	\N	\N	2022-12-14 20:06:07.830596	2022-12-14 20:06:07.830596	1941	1561
1608	SIMO-A-1-P07-1	silica	2	D	1	E	2	\N	\N	2022-12-14 20:06:07.840607	2022-12-14 20:06:07.840607	1313	1561
1609	SIMO-A-1-P08-1	silica	2	D	2	E	2	\N	\N	2022-12-14 20:06:07.853429	2022-12-14 20:06:07.853429	1313	1561
1610	SIMO-A-2-P07-1	silica	2	D	1	E	3	\N	\N	2022-12-14 20:06:07.864465	2022-12-14 20:06:07.864465	500	1561
1611	SIMO-A-2-P08-1	silica	2	D	2	E	3	\N	\N	2022-12-14 20:06:07.874528	2022-12-14 20:06:07.874528	500	1561
1612	SIMO-A-3-P07-1	silica	2	D	1	E	4	\N	\N	2022-12-14 20:06:07.885859	2022-12-14 20:06:07.885859	501	1561
1613	SIMO-A-3-P08-1	silica	2	D	2	E	4	\N	\N	2022-12-14 20:06:07.897409	2022-12-14 20:06:07.897409	501	1561
1614	SIMO-A-4-P07-1	silica	2	D	1	E	5	\N	\N	2022-12-14 20:06:07.909219	2022-12-14 20:06:07.909219	502	1561
1615	SIMO-A-4-P08-1	silica	2	D	2	E	5	\N	\N	2022-12-14 20:06:07.920094	2022-12-14 20:06:07.920094	502	1561
1616	SIMO-A-5-P07-1	silica	2	D	1	E	6	\N	\N	2022-12-14 20:06:07.930625	2022-12-14 20:06:07.930625	503	1561
1617	SIMO-A-5-P08-1	silica	2	D	2	E	6	\N	\N	2022-12-14 20:06:07.94005	2022-12-14 20:06:07.94005	503	1561
1618	SIMO-A-6-P07-1	silica	2	D	1	E	7	\N	\N	2022-12-14 20:06:07.949762	2022-12-14 20:06:07.949762	504	1561
1619	SIMO-A-6-P08-1	silica	2	D	2	E	7	\N	\N	2022-12-14 20:06:07.959454	2022-12-14 20:06:07.959454	504	1561
1620	SIMO-A-7-P07-1	silica	2	D	1	E	8	\N	\N	2022-12-14 20:06:07.96929	2022-12-14 20:06:07.96929	505	1561
1621	SIMO-A-7-P08-1	silica	2	D	2	E	8	\N	\N	2022-12-14 20:06:07.97787	2022-12-14 20:06:07.97787	505	1561
1622	SIMO-A-8-P07-1	silica	2	D	1	E	9	\N	\N	2022-12-14 20:06:07.987613	2022-12-14 20:06:07.987613	506	1561
1623	SIMO-A-8-P08-1	silica	2	D	2	E	9	\N	\N	2022-12-14 20:06:07.997377	2022-12-14 20:06:07.997377	506	1561
1624	THOM-A-01-P07-1	silica	2	D	1	E	10	\N	\N	2022-12-14 20:06:08.006786	2022-12-14 20:06:08.006786	509	1561
1625	THOM-A-01-P08-1	silica	1	D	2	E	10	\N	\N	2022-12-14 20:06:08.018803	2022-12-14 20:06:08.018803	509	1561
1626	THOM-A-04-P07-1	silica	2	D	2	E	11	\N	\N	2022-12-14 20:06:08.028681	2022-12-14 20:06:08.028681	511	1561
1627	THOM-A-04-P08-1	silica	2	D	3	E	11	\N	\N	2022-12-14 20:06:08.0359	2022-12-14 20:06:08.0359	511	1561
1628	THOM-A-07-P07-1	silica	2	D	2	E	12	\N	\N	2022-12-14 20:06:08.041672	2022-12-14 20:06:08.041672	513	1561
1629	THOM-A-07-P08-1	silica	2	D	3	E	12	\N	\N	2022-12-14 20:06:08.047355	2022-12-14 20:06:08.047355	513	1561
1630	THOM-A-08-P07-1	silica	2	D	1	F	1	\N	\N	2022-12-14 20:06:08.052585	2022-12-14 20:06:08.052585	514	1561
1631	THOM-A-08-P08-1	silica	2	D	2	F	1	\N	\N	2022-12-14 20:06:08.059054	2022-12-14 20:06:08.059054	514	1561
1632	THOM-A-09-P07-1	silica	2	D	1	F	2	\N	\N	2022-12-14 20:06:08.068092	2022-12-14 20:06:08.068092	515	1561
1633	THOM-A-09-P08-1	silica	2	D	2	F	2	\N	\N	2022-12-14 20:06:08.075405	2022-12-14 20:06:08.075405	515	1561
1634	THOM-A-12-P07-1	silica	2	D	2	F	3	\N	\N	2022-12-14 20:06:08.08076	2022-12-14 20:06:08.08076	1960	1561
1635	THOM-A-12-P08-1	silica	2	D	3	F	3	\N	\N	2022-12-14 20:06:08.086365	2022-12-14 20:06:08.086365	1960	1561
1636	VILLE-A-01-P07-1	silica	2	D	1	F	4	\N	\N	2022-12-14 20:06:08.093337	2022-12-14 20:06:08.093337	546	1561
1637	VILLE-A-01-P08-1	silica	2	D	2	F	4	\N	\N	2022-12-14 20:06:08.098998	2022-12-14 20:06:08.098998	546	1561
1638	VILLE-A-02-P07-1	silica	2	D	1	F	5	\N	\N	2022-12-14 20:06:08.105088	2022-12-14 20:06:08.105088	547	1561
1639	VILLE-A-02-P08-1	silica	2	D	3	F	5	\N	\N	2022-12-14 20:06:08.111026	2022-12-14 20:06:08.111026	547	1561
1640	VILLE-A-03-P07-1	silica	2	D	1	F	6	\N	\N	2022-12-14 20:06:08.117155	2022-12-14 20:06:08.117155	548	1561
1641	VILLE-A-03-P08-1	silica	2	D	2	F	6	\N	\N	2022-12-14 20:06:08.123941	2022-12-14 20:06:08.123941	548	1561
1642	VILLE-A-04-P07-1	silica	2	D	1	F	7	\N	\N	2022-12-14 20:06:08.131118	2022-12-14 20:06:08.131118	549	1561
1643	VILLE-A-04-P08-1	silica	2	D	2	F	7	\N	\N	2022-12-14 20:06:08.141363	2022-12-14 20:06:08.141363	549	1561
1644	VILLE-A-06-P07-1	silica	2	D	2	F	8	\N	\N	2022-12-14 20:06:08.152528	2022-12-14 20:06:08.152528	551	1561
1645	VILLE-A-06-P08-1	silica	1	D	3	F	8	\N	\N	2022-12-14 20:06:08.16344	2022-12-14 20:06:08.16344	551	1561
1646	VILLE-A-07-P07-1	silica	2	D	1	F	9	\N	\N	2022-12-14 20:06:08.171115	2022-12-14 20:06:08.171115	552	1561
1647	VILLE-A-07-P08-1	silica	2	D	2	F	9	\N	\N	2022-12-14 20:06:08.177218	2022-12-14 20:06:08.177218	552	1561
1648	VILLE-A-08-P07-1	silica	2	D	1	F	10	\N	\N	2022-12-14 20:06:08.18637	2022-12-14 20:06:08.18637	553	1561
1649	VILLE-A-08-P08-1	silica	1	D	2	F	10	\N	\N	2022-12-14 20:06:08.192483	2022-12-14 20:06:08.192483	553	1561
1650	VILLE-A-09-P07-1	silica	2	D	1	F	11	\N	\N	2022-12-14 20:06:08.19893	2022-12-14 20:06:08.19893	554	1561
1651	VILLE-A-09-P08-1	silica	2	D	2	F	11	\N	\N	2022-12-14 20:06:08.204296	2022-12-14 20:06:08.204296	554	1561
1652	VILLE-A-12-P07-1	silica	2	D	1	F	12	\N	\N	2022-12-14 20:06:08.209508	2022-12-14 20:06:08.209508	1972	1561
1653	VILLE-A-12-P08-1	silica	2	D	2	F	12	\N	\N	2022-12-14 20:06:08.216798	2022-12-14 20:06:08.216798	1972	1561
1654	VILLE-A-14-P07-1	silica	2	D	1	G	1	\N	\N	2022-12-14 20:06:08.225223	2022-12-14 20:06:08.225223	1974	1561
1655	VILLE-A-14-P08-1	silica	1	D	3	G	1	\N	\N	2022-12-14 20:06:08.231512	2022-12-14 20:06:08.231512	1974	1561
1656	VILLE-B-01-P07-1	silica	2	D	1	G	2	\N	\N	2022-12-14 20:06:08.238029	2022-12-14 20:06:08.238029	556	1561
1657	VILLE-B-01-P08-1	silica	2	D	2	G	2	\N	\N	2022-12-14 20:06:08.244734	2022-12-14 20:06:08.244734	556	1561
1658	VILLE-B-02-P07-1	silica	2	D	2	G	3	\N	\N	2022-12-14 20:06:08.251082	2022-12-14 20:06:08.251082	557	1561
1659	VILLE-B-02-Placeholder-NA	silica	2	D	\N	\N	\N	\N	\N	2022-12-14 20:06:08.258542	2022-12-14 20:06:08.258542	557	1561
1660	VILLE-B-03-P07-1	silica	2	D	1	G	4	\N	\N	2022-12-14 20:06:08.265129	2022-12-14 20:06:08.265129	558	1561
1661	VILLE-B-03-P08-1	silica	2	D	2	G	4	\N	\N	2022-12-14 20:06:08.270796	2022-12-14 20:06:08.270796	558	1561
1662	VILLE-B-05-P07-1	silica	2	D	1	G	5	\N	\N	2022-12-14 20:06:08.278616	2022-12-14 20:06:08.278616	560	1561
1663	VILLE-B-05-P08-1	silica	2	D	2	G	5	\N	\N	2022-12-14 20:06:08.286176	2022-12-14 20:06:08.286176	560	1561
1664	VILLE-B-06-P07-1	silica	2	D	1	G	6	\N	\N	2022-12-14 20:06:08.292715	2022-12-14 20:06:08.292715	561	1561
1665	VILLE-B-06-P08-1	silica	2	D	2	G	6	\N	\N	2022-12-14 20:06:08.298943	2022-12-14 20:06:08.298943	561	1561
1666	VILLE-B-10-P07-1	silica	2	D	2	G	7	\N	\N	2022-12-14 20:06:08.306111	2022-12-14 20:06:08.306111	564	1561
1667	VILLE-B-10-P08-1	silica	2	D	3	G	7	\N	\N	2022-12-14 20:06:08.313808	2022-12-14 20:06:08.313808	564	1561
1668	VILLE-B-11-P07-1	silica	2	D	1	G	8	\N	\N	2022-12-14 20:06:08.319595	2022-12-14 20:06:08.319595	565	1561
1669	VILLE-B-11-P08-1	silica	2	D	2	G	8	\N	\N	2022-12-14 20:06:08.330239	2022-12-14 20:06:08.330239	565	1561
1670	VILLE-B-14-P07-1	silica	2	D	1	G	9	\N	\N	2022-12-14 20:06:08.339591	2022-12-14 20:06:08.339591	1985	1561
1671	VILLE-B-14-P08-1	silica	2	D	2	G	9	\N	\N	2022-12-14 20:06:08.350189	2022-12-14 20:06:08.350189	1985	1561
1672	VILLE-C-1-P07-1	silica	2	D	2	G	10	\N	\N	2022-12-14 20:06:08.360304	2022-12-14 20:06:08.360304	1986	1561
1673	VILLE-C-1-P08-1	silica	1	D	3	G	10	\N	\N	2022-12-14 20:06:08.366428	2022-12-14 20:06:08.366428	1986	1561
1674	VILLE-C-2-P07-1	silica	2	D	1	G	11	\N	\N	2022-12-14 20:06:08.372584	2022-12-14 20:06:08.372584	566	1561
1675	VILLE-C-2-P08-1	silica	2	D	2	G	11	\N	\N	2022-12-14 20:06:08.379145	2022-12-14 20:06:08.379145	566	1561
1676	VILLE-C-3-P07-1	silica	2	D	1	G	12	\N	\N	2022-12-14 20:06:08.385963	2022-12-14 20:06:08.385963	1988	1561
1677	VILLE-C-3-P08-1	silica	2	D	2	G	12	\N	\N	2022-12-14 20:06:08.392932	2022-12-14 20:06:08.392932	1988	1561
1678	VILLE-C-6-P07-1	silica	2	D	1	H	1	\N	\N	2022-12-14 20:06:08.402129	2022-12-14 20:06:08.402129	568	1561
1679	VILLE-C-6-P08-1	silica	2	D	2	H	1	\N	\N	2022-12-14 20:06:08.413709	2022-12-14 20:06:08.413709	568	1561
1680	VILLE-C-7-P07-1	silica	2	D	1	H	2	\N	\N	2022-12-14 20:06:08.424752	2022-12-14 20:06:08.424752	1991	1561
1681	VILLE-C-7-P08-1	silica	2	D	2	H	2	\N	\N	2022-12-14 20:06:08.435784	2022-12-14 20:06:08.435784	1991	1561
\.


--
-- Data for Name: populations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.populations (id, population_name, created_at, updated_at, subpopulation) FROM stdin;
1	AMBR	2022-12-14 20:05:32.929841	2022-12-14 20:05:32.929841	A
11	ANGE	2022-12-14 20:05:33.083601	2022-12-14 20:05:33.083601	A
19	ANGE	2022-12-14 20:05:33.153077	2022-12-14 20:05:33.153077	B
27	AUZE	2022-12-14 20:05:33.210161	2022-12-14 20:05:33.210161	A
37	BARA	2022-12-14 20:05:33.282966	2022-12-14 20:05:33.282966	C
46	BARR	2022-12-14 20:05:33.350048	2022-12-14 20:05:33.350048	A
56	BELL	2022-12-14 20:05:33.413611	2022-12-14 20:05:33.413611	A
67	BROU	2022-12-14 20:05:33.490454	2022-12-14 20:05:33.490454	A
77	CAMA	2022-12-14 20:05:33.563683	2022-12-14 20:05:33.563683	C
80	CAMA	2022-12-14 20:05:33.587194	2022-12-14 20:05:33.587194	D
88	CAMA	2022-12-14 20:05:33.645924	2022-12-14 20:05:33.645924	E
92	CARL	2022-12-14 20:05:33.672247	2022-12-14 20:05:33.672247	A
102	CASS	2022-12-14 20:05:33.754833	2022-12-14 20:05:33.754833	A
111	CAST	2022-12-14 20:05:33.825763	2022-12-14 20:05:33.825763	A
121	CERN	2022-12-14 20:05:33.900538	2022-12-14 20:05:33.900538	A
126	CERN	2022-12-14 20:05:33.940193	2022-12-14 20:05:33.940193	B
136	CIER	2022-12-14 20:05:34.013223	2022-12-14 20:05:34.013223	A
145	CINT	2022-12-14 20:05:34.076676	2022-12-14 20:05:34.076676	A
154	CINT	2022-12-14 20:05:34.145186	2022-12-14 20:05:34.145186	B
164	CLAR	2022-12-14 20:05:34.218685	2022-12-14 20:05:34.218685	B
173	CLAR	2022-12-14 20:05:34.288001	2022-12-14 20:05:34.288001	C
183	COLO	2022-12-14 20:05:34.358275	2022-12-14 20:05:34.358275	B
191	DECA	2022-12-14 20:05:34.418863	2022-12-14 20:05:34.418863	A
201	ESPE	2022-12-14 20:05:34.501877	2022-12-14 20:05:34.501877	B
211	FERR	2022-12-14 20:05:34.577632	2022-12-14 20:05:34.577632	A
221	GAIL	2022-12-14 20:05:34.65482	2022-12-14 20:05:34.65482	A
226	GAIL	2022-12-14 20:05:34.694971	2022-12-14 20:05:34.694971	B
235	GREZ	2022-12-14 20:05:34.767846	2022-12-14 20:05:34.767846	A
241	JUZE	2022-12-14 20:05:34.812288	2022-12-14 20:05:34.812288	A
252	JUZET	2022-12-14 20:05:34.89119	2022-12-14 20:05:34.89119	A
262	JUZET	2022-12-14 20:05:34.972298	2022-12-14 20:05:34.972298	C
273	LABA	2022-12-14 20:05:35.050405	2022-12-14 20:05:35.050405	A
283	LABAS	2022-12-14 20:05:35.127725	2022-12-14 20:05:35.127725	A
293	LAMA	2022-12-14 20:05:35.201344	2022-12-14 20:05:35.201344	A
303	LANT	2022-12-14 20:05:35.282702	2022-12-14 20:05:35.282702	D
313	LAUZ	2022-12-14 20:05:35.358233	2022-12-14 20:05:35.358233	A
314	LECT	2022-12-14 20:05:35.365827	2022-12-14 20:05:35.365827	A
324	LECT	2022-12-14 20:05:35.441286	2022-12-14 20:05:35.441286	B
334	LUNA	2022-12-14 20:05:35.515578	2022-12-14 20:05:35.515578	A
343	MARS	2022-12-14 20:05:35.574944	2022-12-14 20:05:35.574944	A
353	MART	2022-12-14 20:05:35.642936	2022-12-14 20:05:35.642936	A
363	MASS	2022-12-14 20:05:35.723032	2022-12-14 20:05:35.723032	A
373	MONB	2022-12-14 20:05:35.806874	2022-12-14 20:05:35.806874	A
383	MONE	2022-12-14 20:05:35.88134	2022-12-14 20:05:35.88134	A
392	MONF	2022-12-14 20:05:35.952935	2022-12-14 20:05:35.952935	A
402	MONT	2022-12-14 20:05:36.023742	2022-12-14 20:05:36.023742	B
407	MONTI	2022-12-14 20:05:36.060048	2022-12-14 20:05:36.060048	A
417	MONTI	2022-12-14 20:05:36.137829	2022-12-14 20:05:36.137829	D
425	MONTM	2022-12-14 20:05:36.197334	2022-12-14 20:05:36.197334	A
435	NAZA	2022-12-14 20:05:36.377811	2022-12-14 20:05:36.377811	A
443	PUYM	2022-12-14 20:05:36.526121	2022-12-14 20:05:36.526121	B
450	RAYR	2022-12-14 20:05:36.612411	2022-12-14 20:05:36.612411	A
460	RAYR	2022-12-14 20:05:36.715026	2022-12-14 20:05:36.715026	B
470	SALE	2022-12-14 20:05:36.820407	2022-12-14 20:05:36.820407	A
480	SALV	2022-12-14 20:05:36.889377	2022-12-14 20:05:36.889377	A
490	SAUB	2022-12-14 20:05:36.965819	2022-12-14 20:05:36.965819	B
500	SIMO	2022-12-14 20:05:37.040936	2022-12-14 20:05:37.040936	A
509	THOM	2022-12-14 20:05:37.109275	2022-12-14 20:05:37.109275	A
517	VICT	2022-12-14 20:05:37.167896	2022-12-14 20:05:37.167896	B
526	VIEL	2022-12-14 20:05:37.237468	2022-12-14 20:05:37.237468	A
536	VILLA	2022-12-14 20:05:37.310678	2022-12-14 20:05:37.310678	A
546	VILLE	2022-12-14 20:05:37.389189	2022-12-14 20:05:37.389189	A
556	VILLE	2022-12-14 20:05:37.460765	2022-12-14 20:05:37.460765	B
566	VILLE	2022-12-14 20:05:37.52775	2022-12-14 20:05:37.52775	C
574	VILLEM	2022-12-14 20:05:37.582609	2022-12-14 20:05:37.582609	A
1237	MONTI	2022-12-14 20:05:42.648214	2022-12-14 20:05:42.648214	B
1706	DAMI	2022-12-14 20:05:46.503052	2022-12-14 20:05:46.503052	C
1794	LANT	2022-12-14 20:05:47.201709	2022-12-14 20:05:47.201709	B
1839	MARS	2022-12-14 20:05:47.529284	2022-12-14 20:05:47.529284	C
2268	AULO	2022-12-14 20:05:50.955937	2022-12-14 20:05:50.955937	A
2269	AURE	2022-12-14 20:05:50.962022	2022-12-14 20:05:50.962022	B
2271	AXLE	2022-12-14 20:05:50.972443	2022-12-14 20:05:50.972443	A
2272	AXLE	2022-12-14 20:05:50.977371	2022-12-14 20:05:50.977371	B
2273	BACC	2022-12-14 20:05:50.982106	2022-12-14 20:05:50.982106	B
2274	BACC	2022-12-14 20:05:50.987201	2022-12-14 20:05:50.987201	C
2275	BACC	2022-12-14 20:05:50.992167	2022-12-14 20:05:50.992167	D
2276	BACC	2022-12-14 20:05:50.998781	2022-12-14 20:05:50.998781	E
2277	BACC	2022-12-14 20:05:51.007141	2022-12-14 20:05:51.007141	F
2278	BAGNB	2022-12-14 20:05:51.013019	2022-12-14 20:05:51.013019	A
2279	BAGNB	2022-12-14 20:05:51.017792	2022-12-14 20:05:51.017792	B
2280	BANI	2022-12-14 20:05:51.022607	2022-12-14 20:05:51.022607	A
2281	BANI	2022-12-14 20:05:51.027291	2022-12-14 20:05:51.027291	B
2282	BANI	2022-12-14 20:05:51.032182	2022-12-14 20:05:51.032182	C
2283	BARA	2022-12-14 20:05:51.036953	2022-12-14 20:05:51.036953	B
2285	BARC	2022-12-14 20:05:51.04825	2022-12-14 20:05:51.04825	A
2287	BAZI	2022-12-14 20:05:51.060979	2022-12-14 20:05:51.060979	A
2288	BELC	2022-12-14 20:05:51.06455	2022-12-14 20:05:51.06455	A
2289	BELC	2022-12-14 20:05:51.068457	2022-12-14 20:05:51.068457	B
2290	BELC	2022-12-14 20:05:51.072738	2022-12-14 20:05:51.072738	C
2292	BERNA	2022-12-14 20:05:51.083449	2022-12-14 20:05:51.083449	A
2293	BESS	2022-12-14 20:05:51.087582	2022-12-14 20:05:51.087582	A
2294	BOULO	2022-12-14 20:05:51.092561	2022-12-14 20:05:51.092561	A
2296	BROU	2022-12-14 20:05:51.10526	2022-12-14 20:05:51.10526	B
2297	BROU	2022-12-14 20:05:51.109618	2022-12-14 20:05:51.109618	C
2298	BULA	2022-12-14 20:05:51.114286	2022-12-14 20:05:51.114286	A
2299	BULE	2022-12-14 20:05:51.120629	2022-12-14 20:05:51.120629	B
2303	CAPE	2022-12-14 20:05:51.148055	2022-12-14 20:05:51.148055	A
2307	CASTI	2022-12-14 20:05:51.168187	2022-12-14 20:05:51.168187	A
2308	CAZA	2022-12-14 20:05:51.173062	2022-12-14 20:05:51.173062	B
2309	CEPE	2022-12-14 20:05:51.177132	2022-12-14 20:05:51.177132	A
2312	CHEI	2022-12-14 20:05:51.192994	2022-12-14 20:05:51.192994	A
2314	CIER	2022-12-14 20:05:51.202339	2022-12-14 20:05:51.202339	B
2315	CIER	2022-12-14 20:05:51.206631	2022-12-14 20:05:51.206631	C
2318	CLAR	2022-12-14 20:05:51.225074	2022-12-14 20:05:51.225074	A
2321	COLO	2022-12-14 20:05:51.241376	2022-12-14 20:05:51.241376	A
2323	COLO	2022-12-14 20:05:51.252392	2022-12-14 20:05:51.252392	C
2324	COMT	2022-12-14 20:05:51.261421	2022-12-14 20:05:51.261421	A
2325	CRAN	2022-12-14 20:05:51.268227	2022-12-14 20:05:51.268227	A
2326	DAMI	2022-12-14 20:05:51.272762	2022-12-14 20:05:51.272762	A
2327	DAMI	2022-12-14 20:05:51.277478	2022-12-14 20:05:51.277478	B
2330	DIEU	2022-12-14 20:05:51.297372	2022-12-14 20:05:51.297372	A
2332	FAYA	2022-12-14 20:05:51.31623	2022-12-14 20:05:51.31623	A
2337	JACO	2022-12-14 20:05:51.353249	2022-12-14 20:05:51.353249	A
2338	JACO	2022-12-14 20:05:51.357863	2022-12-14 20:05:51.357863	C
2339	JULI	2022-12-14 20:05:51.362736	2022-12-14 20:05:51.362736	A
2342	JUZET	2022-12-14 20:05:51.378687	2022-12-14 20:05:51.378687	B
2345	LABA	2022-12-14 20:05:51.39497	2022-12-14 20:05:51.39497	B
2346	LABA	2022-12-14 20:05:51.400673	2022-12-14 20:05:51.400673	C
2347	LABA	2022-12-14 20:05:51.405306	2022-12-14 20:05:51.405306	D
2349	LABAS	2022-12-14 20:05:51.418627	2022-12-14 20:05:51.418627	B
2350	LABR	2022-12-14 20:05:51.426896	2022-12-14 20:05:51.426896	A
2351	LACR	2022-12-14 20:05:51.434734	2022-12-14 20:05:51.434734	A
2352	LACR	2022-12-14 20:05:51.4397	2022-12-14 20:05:51.4397	C
2353	LAGR	2022-12-14 20:05:51.444014	2022-12-14 20:05:51.444014	A
2355	LAMA	2022-12-14 20:05:51.454306	2022-12-14 20:05:51.454306	B
2357	LANT	2022-12-14 20:05:51.465242	2022-12-14 20:05:51.465242	C
2362	LESP	2022-12-14 20:05:51.493305	2022-12-14 20:05:51.493305	A
2363	LOUB	2022-12-14 20:05:51.500532	2022-12-14 20:05:51.500532	A
2364	LOUB	2022-12-14 20:05:51.506823	2022-12-14 20:05:51.506823	B
2366	LUZE	2022-12-14 20:05:51.516606	2022-12-14 20:05:51.516606	A
2367	LUZE	2022-12-14 20:05:51.521423	2022-12-14 20:05:51.521423	B
2368	LUZE	2022-12-14 20:05:51.525581	2022-12-14 20:05:51.525581	D
2369	LUZE	2022-12-14 20:05:51.530777	2022-12-14 20:05:51.530777	E
2371	MARS	2022-12-14 20:05:51.54235	2022-12-14 20:05:51.54235	B
2374	MAZA	2022-12-14 20:05:51.559338	2022-12-14 20:05:51.559338	A
2375	MEDA	2022-12-14 20:05:51.565063	2022-12-14 20:05:51.565063	A
2376	MERE	2022-12-14 20:05:51.574658	2022-12-14 20:05:51.574658	A
2377	MERE	2022-12-14 20:05:51.58077	2022-12-14 20:05:51.58077	B
2378	MERV	2022-12-14 20:05:51.584975	2022-12-14 20:05:51.584975	A
2379	MERV	2022-12-14 20:05:51.589648	2022-12-14 20:05:51.589648	B
2383	MONT	2022-12-14 20:05:51.611085	2022-12-14 20:05:51.611085	A
2385	MONTB	2022-12-14 20:05:51.621403	2022-12-14 20:05:51.621403	A
2386	MONTG	2022-12-14 20:05:51.625552	2022-12-14 20:05:51.625552	B
2387	MONTG	2022-12-14 20:05:51.630821	2022-12-14 20:05:51.630821	D
2392	MONTM	2022-12-14 20:05:51.659515	2022-12-14 20:05:51.659515	B
2393	MOUL	2022-12-14 20:05:51.664572	2022-12-14 20:05:51.664572	A
2394	NAUV	2022-12-14 20:05:51.669977	2022-12-14 20:05:51.669977	A
2395	NAUV	2022-12-14 20:05:51.675033	2022-12-14 20:05:51.675033	B
2396	NAUV	2022-12-14 20:05:51.679768	2022-12-14 20:05:51.679768	C
2397	NAYR	2022-12-14 20:05:51.684732	2022-12-14 20:05:51.684732	A
2399	PAMP	2022-12-14 20:05:51.695921	2022-12-14 20:05:51.695921	A
2400	PAMP	2022-12-14 20:05:51.700481	2022-12-14 20:05:51.700481	B
2401	PANA	2022-12-14 20:05:51.705396	2022-12-14 20:05:51.705396	C
2402	PASD	2022-12-14 20:05:51.710014	2022-12-14 20:05:51.710014	B
2403	PREI	2022-12-14 20:05:51.715219	2022-12-14 20:05:51.715219	A
2405	RADE	2022-12-14 20:05:51.728916	2022-12-14 20:05:51.728916	A
2408	REAL	2022-12-14 20:05:51.748793	2022-12-14 20:05:51.748793	A
2409	ROME	2022-12-14 20:05:51.753393	2022-12-14 20:05:51.753393	A
2410	ROQU	2022-12-14 20:05:51.758092	2022-12-14 20:05:51.758092	B
2413	SAMA	2022-12-14 20:05:51.777449	2022-12-14 20:05:51.777449	A
2414	SAUB	2022-12-14 20:05:51.781559	2022-12-14 20:05:51.781559	A
2416	SAUB	2022-12-14 20:05:51.79278	2022-12-14 20:05:51.79278	C
2417	SAUR	2022-12-14 20:05:51.798117	2022-12-14 20:05:51.798117	A
2418	SEIS	2022-12-14 20:05:51.804507	2022-12-14 20:05:51.804507	A
2420	SORE	2022-12-14 20:05:51.817295	2022-12-14 20:05:51.817295	A
2421	TARN	2022-12-14 20:05:51.826723	2022-12-14 20:05:51.826723	C
2423	VALE	2022-12-14 20:05:51.844822	2022-12-14 20:05:51.844822	A
2425	VICT	2022-12-14 20:05:51.855044	2022-12-14 20:05:51.855044	C
2431	VILLE	2022-12-14 20:05:51.895431	2022-12-14 20:05:51.895431	D
\.


--
-- Data for Name: root_communities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.root_communities (id, population_id, root_otu_1, root_otu_2, root_otu_3, root_otu_4, root_otu_5, root_otu_6, root_otu_7, root_otu_9, root_otu_11, root_otu_16, root_otu_17, root_otu_19, root_otu_20, root_otu_21, root_otu_24, root_otu_26, root_otu_28, root_otu_30, root_otu_41, root_otu_46, root_otu_49, root_otu_50, root_otu_51, root_otu_58, root_otu_63, root_otu_64, root_otu_70, root_otu_75, root_otu_76, root_otu_100, root_otu_102, root_otu_114, root_otu_121, root_otu_122, root_otu_144, root_otu_146, root_otu_156, root_otu_163, root_otu_174, root_otu_199, root_otu_238, root_otu_258, root_otu_284, root_otu_989, root_microbiota_richness, root_microbiota_shannon, root_microbiota_pcoa1, root_microbiota_pcoa2, root_pathobiota_richness, root_pathobiota_shannon, root_pathobiota_pcoa2, created_at, updated_at) FROM stdin;
1	1	t	f	f	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.40157143	2.158914573	-0.0128578429	-0.1943671377	1.813714634	0.4369719543	0.1961986589	2022-12-14 20:05:53.423732	2022-12-14 20:05:53.423732
2	11	t	f	t	f	t	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	9.738071429	1.588014573	-0.1766678429	0.09113286225	2.034474634	0.4914719543	0.2027486589	2022-12-14 20:05:53.443466	2022-12-14 20:05:53.443466
3	19	t	f	f	f	t	t	t	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	8.826471429	1.540914573	-0.2571678429	0.1037328623	1.479914634	0.2656419543	0.2093686589	2022-12-14 20:05:53.451411	2022-12-14 20:05:53.451411
4	2268	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	11.38857143	2.121114573	0.4055321571	0.1384328623	1.694214634	0.3579419543	0.04045865892	2022-12-14 20:05:53.458486	2022-12-14 20:05:53.458486
5	2269	t	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	11.36607143	2.134114573	0.1410921571	-0.08449713775	1.919404634	0.4510119543	0.08592865892	2022-12-14 20:05:53.472155	2022-12-14 20:05:53.472155
6	27	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	12.38897143	2.162514573	0.0971321571	-0.1716671377	2.167314634	0.6586419543	0.08603865892	2022-12-14 20:05:53.478685	2022-12-14 20:05:53.478685
7	2271	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.29426143	1.722214573	0.1009121571	-0.1963671377	1.935154634	0.4624519543	0.2521586589	2022-12-14 20:05:53.484195	2022-12-14 20:05:53.484195
8	2272	f	t	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.09857143	2.070914573	0.1201121571	-0.1154671377	2.064414634	0.4874119543	0.1744486589	2022-12-14 20:05:53.490672	2022-12-14 20:05:53.490672
9	2273	t	f	f	f	t	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	9.999371429	1.979474573	-0.0952678429	-0.3116671377	2.117614634	0.6996419543	0.2397286589	2022-12-14 20:05:53.496385	2022-12-14 20:05:53.496385
10	2274	t	f	t	f	t	t	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.61677143	2.120314573	-0.0330578429	-0.4445671377	1.674714634	0.3397419543	0.2203286589	2022-12-14 20:05:53.50238	2022-12-14 20:05:53.50238
11	2275	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.740571429	1.988334573	-0.0914678429	-0.4465671377	1.908394634	0.4574519543	0.2217186589	2022-12-14 20:05:53.508839	2022-12-14 20:05:53.508839
12	2276	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.911271429	2.017894573	-0.0761678429	-0.4384671377	2.019904634	0.3796819543	0.1787586589	2022-12-14 20:05:53.515417	2022-12-14 20:05:53.515417
13	2277	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.30530143	2.048514573	-0.0582678429	-0.4394671377	1.726414634	0.4065519543	0.2355486589	2022-12-14 20:05:53.521369	2022-12-14 20:05:53.521369
14	2278	t	t	t	f	t	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	10.95617143	2.058914573	0.1428821571	-0.1205771377	1.920914634	0.4512319543	0.1985386589	2022-12-14 20:05:53.532937	2022-12-14 20:05:53.532937
15	2279	t	t	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	t	f	t	f	t	f	f	f	f	8.654571429	1.644814573	0.0885421571	-0.1968671377	2.056324634	0.5398719543	0.1633786589	2022-12-14 20:05:53.542929	2022-12-14 20:05:53.542929
16	2280	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:53.548613	2022-12-14 20:05:53.548613
17	2281	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	11.51957143	2.184514573	0.1325221571	-0.1263171377	0	0	0	2022-12-14 20:05:53.55576	2022-12-14 20:05:53.55576
18	2282	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	9.048771429	1.932224573	0.1446021571	-0.09086713775	2.090014634	0.5219219543	0.09376865892	2022-12-14 20:05:53.562757	2022-12-14 20:05:53.562757
19	2283	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.378471429	1.992784573	0.0935321571	-0.06718713775	0	0	0	2022-12-14 20:05:53.573598	2022-12-14 20:05:53.573598
20	37	f	f	t	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	7.831071429	1.556714573	0.2320321571	0.08423286225	2.032194634	0.4825019543	0.04518865892	2022-12-14 20:05:53.582785	2022-12-14 20:05:53.582785
21	2285	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.93917143	2.151514573	0.2554321571	-0.005007137747	1.768614634	0.3688419543	0.08979865892	2022-12-14 20:05:53.589418	2022-12-14 20:05:53.589418
22	46	f	f	t	t	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	10.17087143	2.012094573	0.2898321571	0.002832862253	2.487614634	0.5440319543	-0.01784134108	2022-12-14 20:05:53.596243	2022-12-14 20:05:53.596243
23	2287	t	f	t	f	t	t	t	t	f	f	t	t	f	t	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	t	f	t	t	f	f	f	f	t	f	f	12.65787143	2.347514573	0.0374121571	-0.1547871377	1.811614634	0.3147419543	0.2770586589	2022-12-14 20:05:53.604159	2022-12-14 20:05:53.604159
24	2288	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	9.159171429	1.882404573	0.1543021571	-0.1186171377	1.882704634	0.4299919543	0.1808186589	2022-12-14 20:05:53.612094	2022-12-14 20:05:53.612094
25	2289	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.17407143	1.811514573	0.1204721571	-0.1389571377	1.843514634	0.4079619543	0.2508586589	2022-12-14 20:05:53.622455	2022-12-14 20:05:53.622455
26	2290	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	11.11277143	2.235314573	0.1602321571	-0.06681713775	1.810814634	0.3953319543	0.1598486589	2022-12-14 20:05:53.629028	2022-12-14 20:05:53.629028
27	56	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.47116143	2.090214573	0.3208321571	0.09623286225	1.974234634	0.5189819543	0.2094486589	2022-12-14 20:05:53.636713	2022-12-14 20:05:53.636713
28	2292	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.26217143	2.040014573	0.0820321571	-0.1828671377	0	0	0	2022-12-14 20:05:53.64272	2022-12-14 20:05:53.64272
29	2293	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	t	f	f	11.30787143	2.221314573	0.1128321571	-0.01577713775	2.125614634	0.6197419543	0.2351986589	2022-12-14 20:05:53.648699	2022-12-14 20:05:53.648699
30	2294	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.881271429	2.082714573	0.2582321571	0.06163286225	2.010734634	0.4592619543	0.01715865892	2022-12-14 20:05:53.655534	2022-12-14 20:05:53.655534
31	67	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.683671429	1.884894573	0.2554321571	-0.03939713775	0	0	0	2022-12-14 20:05:53.661903	2022-12-14 20:05:53.661903
32	2296	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.924671429	1.946304573	0.2413321571	-0.004317137747	1.715314634	0.3367419543	0.09932865892	2022-12-14 20:05:53.669346	2022-12-14 20:05:53.669346
33	2297	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.68667143	2.133914573	0.2512321571	-0.04734713775	1.814014634	0.3925419543	0.03685865892	2022-12-14 20:05:53.680008	2022-12-14 20:05:53.680008
34	2298	t	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	t	f	14.54227143	2.474814573	0.0623021571	-0.1524071377	1.896184634	0.4414719543	0.2196986589	2022-12-14 20:05:53.688212	2022-12-14 20:05:53.688212
35	2299	t	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	9.533171429	1.834894573	0.1278321571	-0.1247071377	2.584514634	0.7483419543	0.1269786589	2022-12-14 20:05:53.695499	2022-12-14 20:05:53.695499
36	77	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	t	f	f	11.66227143	2.163614573	0.1746321571	-0.05409413775	2.029184634	0.4204919543	0.09897865892	2022-12-14 20:05:53.701805	2022-12-14 20:05:53.701805
37	80	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	t	f	f	f	f	11.69917143	2.222014573	0.1981321571	0.009882862253	0	0	0	2022-12-14 20:05:53.708918	2022-12-14 20:05:53.708918
38	88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:53.715454	2022-12-14 20:05:53.715454
39	2303	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	12.24117143	2.367314573	0.2688321571	-0.04926713775	1.737614634	0.3539419543	-0.02944134108	2022-12-14 20:05:53.72526	2022-12-14 20:05:53.72526
40	92	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	9.636371429	1.948584573	0.3946321571	0.1297328623	1.511114634	0.2307419543	0.1721986589	2022-12-14 20:05:53.737941	2022-12-14 20:05:53.737941
41	102	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	8.999371429	1.763814573	0.1676321571	-0.1299271377	1.894154634	0.4357519543	0.2887586589	2022-12-14 20:05:53.748818	2022-12-14 20:05:53.748818
42	111	t	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	11.09497143	2.156514573	0.4262321571	-0.09661713775	2.223714634	0.6000419543	-0.05734134108	2022-12-14 20:05:53.755605	2022-12-14 20:05:53.755605
43	2307	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	7.678271429	1.480514573	-0.1172678429	-0.09235713775	1.866014634	0.4176119543	0.05030865892	2022-12-14 20:05:53.763581	2022-12-14 20:05:53.763581
44	2308	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:53.771232	2022-12-14 20:05:53.771232
45	2309	t	f	f	t	t	t	t	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	11.26927143	2.171714573	0.1707321571	-0.3008671377	2.446614634	0.6790419543	0.1592686589	2022-12-14 20:05:53.780945	2022-12-14 20:05:53.780945
46	121	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	f	f	8.306071429	1.674514573	0.2006321571	-0.01481713775	1.754714634	0.3657419543	0.09473865892	2022-12-14 20:05:53.79265	2022-12-14 20:05:53.79265
47	126	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.921171429	2.057214573	0.0417021571	-0.09487713775	1.898034634	0.3791019543	0.3320586589	2022-12-14 20:05:53.798173	2022-12-14 20:05:53.798173
48	2312	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	13.96737143	2.216814573	0.1306521571	-0.1129371377	1.897944634	0.4384119543	0.07805865892	2022-12-14 20:05:53.804028	2022-12-14 20:05:53.804028
49	136	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	8.689771429	1.245514573	-0.5814678429	-0.1104071377	2.096914634	0.5473919543	0.1305586589	2022-12-14 20:05:53.812722	2022-12-14 20:05:53.812722
50	2314	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.04877143	1.809614573	-0.5647678429	-0.08099713775	0	0	0	2022-12-14 20:05:53.819236	2022-12-14 20:05:53.819236
51	2315	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:53.827697	2022-12-14 20:05:53.827697
52	145	t	f	f	f	t	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.906471429	1.987744573	-0.0959678429	-0.4122671377	2.192214634	0.5734419543	0.1990086589	2022-12-14 20:05:53.836246	2022-12-14 20:05:53.836246
53	154	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	9.338171429	1.289614573	-0.5261678429	-0.08011713775	0	0	0	2022-12-14 20:05:53.848206	2022-12-14 20:05:53.848206
54	2318	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	10.61807143	1.518614573	-0.3639678429	0.1888328623	1.754714634	0.3584419543	-0.04694134108	2022-12-14 20:05:53.860258	2022-12-14 20:05:53.860258
55	164	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	6.900671429	0.9632145733	-0.4534678429	0.2075328623	1.922994634	0.4369019543	0.1332386589	2022-12-14 20:05:53.871356	2022-12-14 20:05:53.871356
56	173	t	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.509171429	1.278614573	-0.3961678429	0.2144328623	0	0	0	2022-12-14 20:05:53.882733	2022-12-14 20:05:53.882733
57	2321	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	10.67337143	2.148214573	0.1474021571	-0.1268671377	1.879074634	0.4291219543	0.2358586589	2022-12-14 20:05:53.889805	2022-12-14 20:05:53.889805
58	183	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	11.11377143	2.301614573	0.1637321571	-0.09422713775	0	0	0	2022-12-14 20:05:53.897062	2022-12-14 20:05:53.897062
59	2323	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	t	f	t	f	f	9.169871429	1.763214573	0.1799321571	-0.1005571377	0	0	0	2022-12-14 20:05:53.903949	2022-12-14 20:05:53.903949
60	2324	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	t	f	f	f	t	10.98907143	2.182814573	0.0204221571	-0.09566713775	1.901204634	0.4399219543	0.06230865892	2022-12-14 20:05:53.911048	2022-12-14 20:05:53.911048
61	2325	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	8.326371429	1.794914573	0.1313421571	-0.09285713775	2.160514634	0.6762419543	0.03735865892	2022-12-14 20:05:53.918179	2022-12-14 20:05:53.918179
62	2326	t	f	t	f	t	t	t	t	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	11.75907143	2.209514573	0.1887321571	-0.2622671377	1.843014634	0.4658719543	0.2528586589	2022-12-14 20:05:53.923997	2022-12-14 20:05:53.923997
63	2327	t	f	f	f	t	t	f	t	f	f	t	f	f	t	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	11.91437143	2.148914573	0.0767521571	-0.3845671377	2.079814634	0.6151419543	0.2213686589	2022-12-14 20:05:53.931755	2022-12-14 20:05:53.931755
64	1706	t	f	t	f	t	t	f	t	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	11.71277143	2.189714573	0.1226221571	-0.2153671377	2.123214634	0.3717019543	0.1777486589	2022-12-14 20:05:53.943247	2022-12-14 20:05:53.943247
65	191	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.35037143	2.160914573	0.2346321571	0.04713286225	1.830714634	0.3981619543	0.1584186589	2022-12-14 20:05:53.954692	2022-12-14 20:05:53.954692
66	2330	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.838271429	1.745914573	0.3024321571	0.07023286225	1.834214634	0.3284419543	0.1399186589	2022-12-14 20:05:53.96706	2022-12-14 20:05:53.96706
67	201	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	t	f	f	10.13677143	1.871364573	0.2374321571	-0.06081713775	1.720714634	0.3440419543	0.1820286589	2022-12-14 20:05:53.97782	2022-12-14 20:05:53.97782
68	2332	t	f	t	f	t	t	f	t	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.529571429	1.640214573	-0.5033678429	-0.1609671377	1.891204634	0.3742119543	0.4150586589	2022-12-14 20:05:53.983993	2022-12-14 20:05:53.983993
69	211	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.77847143	2.087114573	0.2608321571	-0.05135113775	1.728614634	0.3492419543	0.2826586589	2022-12-14 20:05:53.990992	2022-12-14 20:05:53.990992
70	221	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	9.937971429	1.881444573	0.007802157095	0.2105328623	1.856614634	0.5314719543	0.2123286589	2022-12-14 20:05:54.00017	2022-12-14 20:05:54.00017
71	226	t	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.390571429	1.646714573	-0.0670678429	0.1390328623	2.383414634	0.6493419543	0.05939865892	2022-12-14 20:05:54.00747	2022-12-14 20:05:54.00747
72	235	t	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	6.714871429	0.8024145733	-0.8462678429	-0.05162513775	1.960494634	0.4725349543	0.2135786589	2022-12-14 20:05:54.013521	2022-12-14 20:05:54.013521
73	2337	f	f	t	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.80737143	1.974534573	0.1647321571	0.04783286225	0	0	0	2022-12-14 20:05:54.019015	2022-12-14 20:05:54.019015
74	2338	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:54.025167	2022-12-14 20:05:54.025167
75	2339	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	12.70757143	2.301614573	0.1334721571	-0.1318371377	1.835914634	0.4088119543	0.2198986589	2022-12-14 20:05:54.031186	2022-12-14 20:05:54.031186
76	241	t	f	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	12.00897143	2.230614573	0.4001321571	0.08293286225	1.993664634	0.5540719543	-0.04654134108	2022-12-14 20:05:54.038338	2022-12-14 20:05:54.038338
77	252	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	12.61597143	2.099814573	0.1362621571	-0.1033471377	2.065214634	0.5887419543	-0.002041341082	2022-12-14 20:05:54.045833	2022-12-14 20:05:54.045833
78	2342	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	t	f	t	f	f	f	f	6.783671429	1.054814573	0.1221121571	-0.1479071377	2.080114634	0.6878419543	0.1950086589	2022-12-14 20:05:54.053061	2022-12-14 20:05:54.053061
79	262	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	8.271771429	1.527814573	0.1337321571	-0.1130371377	0	0	0	2022-12-14 20:05:54.060516	2022-12-14 20:05:54.060516
80	273	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	10.22457143	2.019434573	0.1362221571	-0.3271671377	2.083414634	0.5678219543	0.2047386589	2022-12-14 20:05:54.067227	2022-12-14 20:05:54.067227
81	2345	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	11.94987143	2.241114573	0.2120321571	-0.2193671377	1.873534634	0.5196119543	0.2015386589	2022-12-14 20:05:54.076232	2022-12-14 20:05:54.076232
82	2346	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	t	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.19627143	2.016494573	0.1123221571	-0.3188671377	2.486314634	0.8107419543	0.2231586589	2022-12-14 20:05:54.087686	2022-12-14 20:05:54.087686
83	2347	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:54.094597	2022-12-14 20:05:54.094597
84	283	t	f	t	t	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	10.80727143	1.914424573	-0.1295678429	0.2689328623	1.880444634	0.4409119543	-0.004241341082	2022-12-14 20:05:54.100976	2022-12-14 20:05:54.100976
85	2349	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	10.98227143	1.916724573	0.4151321571	0.1694328623	1.981864634	0.4705899543	-0.009541341082	2022-12-14 20:05:54.110485	2022-12-14 20:05:54.110485
86	2350	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	10.58097143	1.997264573	0.2845321571	0.01872286225	1.846714634	0.4068319543	-0.01764134108	2022-12-14 20:05:54.121711	2022-12-14 20:05:54.121711
87	2351	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	9.161771429	1.879714573	0.1408721571	-0.03869713775	2.064514634	0.5661719543	0.04606865892	2022-12-14 20:05:54.129371	2022-12-14 20:05:54.129371
88	2352	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	11.20427143	2.067714573	0.1426321571	-0.01199713775	1.903474634	0.4360219543	0.2426386589	2022-12-14 20:05:54.136101	2022-12-14 20:05:54.136101
89	2353	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	9.856571429	1.969044573	0.2875321571	-0.03969713775	1.804014634	0.3871619543	0.1277686589	2022-12-14 20:05:54.142534	2022-12-14 20:05:54.142534
90	293	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	t	f	t	f	f	f	f	9.452771429	1.554214573	-0.3086678429	0.2051328623	0	0	0	2022-12-14 20:05:54.14866	2022-12-14 20:05:54.14866
91	2355	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.885371429	0.9424145733	-0.4625678429	0.2422328623	0	0	0	2022-12-14 20:05:54.155184	2022-12-14 20:05:54.155184
92	1794	t	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	9.059071429	1.840574573	0.4142321571	0.09583286225	1.818814634	0.4222319543	-0.08484134108	2022-12-14 20:05:54.166042	2022-12-14 20:05:54.166042
93	2357	t	f	f	f	t	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.05927143	2.057314573	-0.1446678429	-0.4294671377	2.803414634	0.6942419543	0.1681586589	2022-12-14 20:05:54.172719	2022-12-14 20:05:54.172719
94	303	t	f	f	f	t	t	f	t	t	t	f	f	t	f	f	f	f	f	f	f	t	t	t	f	t	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	10.96607143	2.154714573	-0.1277678429	-0.4395671377	2.147914634	0.5683419543	0.3032586589	2022-12-14 20:05:54.180035	2022-12-14 20:05:54.180035
95	313	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	10.88207143	2.037314573	0.3395321571	0.1270328623	1.966556634	0.5106219543	0.2139386589	2022-12-14 20:05:54.187848	2022-12-14 20:05:54.187848
96	314	t	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	8.845271429	1.205914573	-0.3863678429	0.2484328623	1.588614634	0.2743419543	-0.05054134108	2022-12-14 20:05:54.195009	2022-12-14 20:05:54.195009
97	324	t	f	t	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	f	f	t	f	f	f	f	f	9.977271429	1.486014573	-0.3283678429	0.2327328623	1.611214634	0.2869419543	0.01995865892	2022-12-14 20:05:54.20697	2022-12-14 20:05:54.20697
98	2362	t	f	t	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.92987143	2.223614573	0.1378921571	-0.1300571377	2.094214634	0.5520319543	0.09346865892	2022-12-14 20:05:54.218303	2022-12-14 20:05:54.218303
99	2363	t	f	t	f	t	t	f	t	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.95987143	2.284914573	0.1318221571	-0.2641671377	2.422814634	0.7004419543	0.3029586589	2022-12-14 20:05:54.2263	2022-12-14 20:05:54.2263
100	2364	t	f	f	f	t	t	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.719971429	2.027214573	-0.1617678429	-0.5023671377	2.562914634	0.7178419543	0.1615086589	2022-12-14 20:05:54.232868	2022-12-14 20:05:54.232868
101	334	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:54.240321	2022-12-14 20:05:54.240321
102	2366	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	12.15167143	2.093414573	0.1007121571	-0.1407171377	1.913884634	0.4506919543	0.1351186589	2022-12-14 20:05:54.24693	2022-12-14 20:05:54.24693
103	2367	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	11.10097143	2.165214573	0.0767021571	-0.1978671377	2.040194634	0.4807319543	0.2662586589	2022-12-14 20:05:54.258736	2022-12-14 20:05:54.258736
104	2368	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:54.270119	2022-12-14 20:05:54.270119
105	2369	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	11.54577143	2.189414573	0.0768821571	-0.1607671377	2.035204634	0.4769819543	0.2727586589	2022-12-14 20:05:54.281659	2022-12-14 20:05:54.281659
106	343	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.386371429	0.7896145733	-0.5032678429	0.2205328623	1.751814634	0.3564419543	0.01565865892	2022-12-14 20:05:54.293641	2022-12-14 20:05:54.293641
107	2371	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.914171429	1.596514573	-0.1398678429	0.1285328623	1.602814634	0.2763419543	0.04462865892	2022-12-14 20:05:54.305169	2022-12-14 20:05:54.305169
108	353	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	9.571371429	1.871314573	0.3731321571	0.1233328623	1.890524634	0.3673419543	-0.02024134108	2022-12-14 20:05:54.312035	2022-12-14 20:05:54.312035
109	363	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	10.02657143	1.965534573	0.2256321571	-0.05719413775	1.946454634	0.5646019543	0.1630986589	2022-12-14 20:05:54.317513	2022-12-14 20:05:54.317513
110	2374	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.11477143	2.051514573	0.2384321571	-0.05897513775	1.701914634	0.4037519543	0.1791286589	2022-12-14 20:05:54.324221	2022-12-14 20:05:54.324221
111	2375	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	10.76537143	2.111514573	0.2496321571	-0.02743713775	1.897164634	0.4637419543	0.1096686589	2022-12-14 20:05:54.334877	2022-12-14 20:05:54.334877
112	2376	f	t	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	13.06657143	2.081814573	0.1068121571	-0.1724671377	1.913344634	0.4509419543	0.2278586589	2022-12-14 20:05:54.341962	2022-12-14 20:05:54.341962
113	2377	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	11.52687143	2.149814573	0.0828821571	-0.1966671377	1.932724634	0.4580919543	0.09232865892	2022-12-14 20:05:54.349576	2022-12-14 20:05:54.349576
114	2378	t	f	f	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	f	f	10.25427143	1.961644573	0.2618321571	-0.02744713775	1.970586634	0.5258319543	0.1000186589	2022-12-14 20:05:54.357552	2022-12-14 20:05:54.357552
115	2379	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	9.888771429	2.028614573	0.2844321571	-0.03024713775	1.980324634	0.3948419543	0.09492865892	2022-12-14 20:05:54.365004	2022-12-14 20:05:54.365004
116	373	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	t	11.97777143	1.992454573	-0.1497678429	0.2128328623	1.903524634	0.3965619543	0.1783486589	2022-12-14 20:05:54.371406	2022-12-14 20:05:54.371406
117	383	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	9.715671429	2.001924573	0.2736321571	-0.03797713775	1.818414634	0.3940019543	0.1330886589	2022-12-14 20:05:54.378737	2022-12-14 20:05:54.378737
118	392	t	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.67697143	1.781114573	-0.2752678429	0.1916328623	1.867364634	0.4876919543	0.01865865892	2022-12-14 20:05:54.387591	2022-12-14 20:05:54.387591
119	2383	t	f	f	f	t	t	f	t	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	10.44780143	1.973504573	-0.0487678429	-0.1996671377	2.218314634	0.6470419543	0.01305865892	2022-12-14 20:05:54.394311	2022-12-14 20:05:54.394311
120	402	t	f	f	f	t	t	f	t	t	t	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	9.509571429	1.709814573	-0.1245678429	-0.08450713775	2.022524634	0.5585219543	0.1793986589	2022-12-14 20:05:54.400642	2022-12-14 20:05:54.400642
121	2385	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	12.64777143	2.346614573	0.3566321571	0.01918286225	2.038224634	0.5575219543	0.03345865892	2022-12-14 20:05:54.407267	2022-12-14 20:05:54.407267
122	2386	t	f	t	f	f	f	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	f	8.835771429	1.848584573	0.1027021571	-0.1513771377	2.041624634	0.4075819543	0.1425586589	2022-12-14 20:05:54.414752	2022-12-14 20:05:54.414752
123	2387	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	10.43388143	2.128714573	0.1062821571	-0.1211571377	1.916974634	0.4516719543	0.1330386589	2022-12-14 20:05:54.424508	2022-12-14 20:05:54.424508
124	407	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.47632143	2.037514573	0.1941321571	-0.01057713775	2.063354634	0.5539819543	0.2037986589	2022-12-14 20:05:54.436467	2022-12-14 20:05:54.436467
125	1237	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	t	f	f	f	f	10.46649143	2.084414573	0.2647321571	0.06033286225	1.759214634	0.3663419543	0.07518865892	2022-12-14 20:05:54.447051	2022-12-14 20:05:54.447051
126	417	t	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	8.988571429	1.885914573	0.2664321571	0.03792286225	2.071314634	0.3373419543	0.06527865892	2022-12-14 20:05:54.452811	2022-12-14 20:05:54.452811
127	425	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	9.536671429	1.724214573	-0.5530678429	0.03154286225	1.959084634	0.4767549543	0.2276486589	2022-12-14 20:05:54.458962	2022-12-14 20:05:54.458962
128	2392	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	9.995971429	1.916174573	-0.5409678429	-0.07377713775	1.954584634	0.4725389543	0.07920865892	2022-12-14 20:05:54.465489	2022-12-14 20:05:54.465489
129	2393	f	f	t	f	f	f	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	13.24107143	2.387814573	0.2585321571	-0.05093913775	0	0	0	2022-12-14 20:05:54.471564	2022-12-14 20:05:54.471564
130	2394	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	t	f	f	11.12637143	2.173114573	0.1529121571	-0.03711713775	2.035604634	0.4552719543	0.06497865892	2022-12-14 20:05:54.480729	2022-12-14 20:05:54.480729
131	2395	t	f	t	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	9.942371429	2.063214573	0.1258421571	-0.09647713775	2.102714634	0.6371419543	-0.05114134108	2022-12-14 20:05:54.490498	2022-12-14 20:05:54.490498
132	2396	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.66967143	1.880844573	0.1124421571	0.1140328623	2.006914634	0.5546919543	0.08082865892	2022-12-14 20:05:54.496512	2022-12-14 20:05:54.496512
133	2397	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	10.52127143	2.124714573	0.1523321571	-0.1390171377	1.819214634	0.4040319543	0.2861586589	2022-12-14 20:05:54.503724	2022-12-14 20:05:54.503724
134	435	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	9.690571429	1.719514573	0.2770321571	-0.001857137747	1.698314634	0.3274419543	0.2852586589	2022-12-14 20:05:54.511799	2022-12-14 20:05:54.511799
135	2399	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	10.11937143	1.951834573	0.2372321571	-0.04673713775	0	0	0	2022-12-14 20:05:54.519685	2022-12-14 20:05:54.519685
136	2400	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	10.60727143	2.131314573	0.3021321571	0.05323286225	1.993404634	0.4959719543	0.06496865892	2022-12-14 20:05:54.527888	2022-12-14 20:05:54.527888
137	2401	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	11.36997143	2.148914573	0.1976321571	-0.02696713775	1.966152634	0.4838019543	0.1891386589	2022-12-14 20:05:54.53388	2022-12-14 20:05:54.53388
138	2402	t	f	t	f	t	t	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	t	f	f	8.565171429	1.495214573	-0.5493678429	-0.1881671377	1.827114634	0.4741159543	0.1846686589	2022-12-14 20:05:54.540576	2022-12-14 20:05:54.540576
139	2403	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.509771429	1.521214573	-0.2700678429	0.1866328623	1.768214634	0.3654419543	0.1973286589	2022-12-14 20:05:54.548422	2022-12-14 20:05:54.548422
140	443	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	7.895071429	1.401314573	0.1838321571	-0.07987713775	2.098314634	0.3880219543	0.2900586589	2022-12-14 20:05:54.558682	2022-12-14 20:05:54.558682
141	2405	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	10.22077143	2.156414573	0.1470321571	-0.06420713775	0	0	0	2022-12-14 20:05:54.570727	2022-12-14 20:05:54.570727
142	450	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	9.725371429	1.907754573	0.1274021571	-0.1319571377	1.900804634	0.4529419543	0.1117686589	2022-12-14 20:05:54.581332	2022-12-14 20:05:54.581332
143	460	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	9.996671429	1.886344573	0.1395821571	-0.1206071377	1.898364634	0.4359419543	0.06194865892	2022-12-14 20:05:54.587001	2022-12-14 20:05:54.587001
144	2408	t	f	t	t	t	f	t	f	f	f	f	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	12.81587143	2.216114573	0.008862157095	-0.04005713775	1.874064634	0.3734219543	-0.06644134108	2022-12-14 20:05:54.593606	2022-12-14 20:05:54.593606
145	2409	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	9.800071429	2.008964573	0.1507921571	-0.07710713775	2.050864634	0.6193419543	0.08802865892	2022-12-14 20:05:54.599497	2022-12-14 20:05:54.599497
146	2410	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	9.376571429	1.919054573	0.2546321571	-0.01540713775	1.865374634	0.4111019543	0.1972986589	2022-12-14 20:05:54.60551	2022-12-14 20:05:54.60551
147	470	t	f	t	f	f	f	t	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	10.23427143	1.970274573	0.1253521571	-0.1298371377	2.092314634	0.4786989543	0.02995865892	2022-12-14 20:05:54.61351	2022-12-14 20:05:54.61351
148	480	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	t	f	f	t	f	f	f	t	f	f	8.765371429	1.581914573	0.3026321571	0.1402328623	0	0	0	2022-12-14 20:05:54.625716	2022-12-14 20:05:54.625716
149	2413	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.13507143	1.931089573	-0.2395678429	0.2078328623	0	0	0	2022-12-14 20:05:54.632226	2022-12-14 20:05:54.632226
150	2414	t	f	f	f	t	t	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.758871429	2.027114573	-0.0830678429	-0.4525671377	2.118914634	0.5235319543	0.2530586589	2022-12-14 20:05:54.638687	2022-12-14 20:05:54.638687
151	490	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	7.038871429	0.9764145733	-0.8108678429	-0.01227713775	2.126614634	0.6060419543	0.2489586589	2022-12-14 20:05:54.644766	2022-12-14 20:05:54.644766
152	2416	t	f	f	f	t	t	f	f	t	t	f	t	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.987471429	1.931995573	-0.1377678429	-0.3168671377	1.905624634	0.4693019543	0.2836586589	2022-12-14 20:05:54.650783	2022-12-14 20:05:54.650783
153	2417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	0	2022-12-14 20:05:54.656852	2022-12-14 20:05:54.656852
154	2418	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	9.878771429	1.709914573	0.2135321571	-0.01419713775	1.859814634	0.4130019543	0.1870986589	2022-12-14 20:05:54.663803	2022-12-14 20:05:54.663803
155	500	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	10.89957143	2.154114573	0.1959321571	-0.06792713775	1.846214634	0.4084419543	0.1744186589	2022-12-14 20:05:54.674379	2022-12-14 20:05:54.674379
156	2420	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	13.64287143	2.470914573	0.1769321571	0.08433286225	0	0	0	2022-12-14 20:05:54.683848	2022-12-14 20:05:54.683848
157	2421	t	f	t	f	t	t	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	11.43667143	2.028614573	0.3904321571	0.07483286225	1.721014634	0.4282819543	0.2170386589	2022-12-14 20:05:54.690174	2022-12-14 20:05:54.690174
158	509	t	f	t	f	f	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	9.629671429	1.612814573	-0.1783678429	0.2042328623	2.330014634	0.4026319543	0.09348865892	2022-12-14 20:05:54.698181	2022-12-14 20:05:54.698181
159	2423	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	9.790771429	1.843894573	0.2423321571	-0.04072713775	2.226514634	0.4459819543	0.1296486589	2022-12-14 20:05:54.7056	2022-12-14 20:05:54.7056
160	517	f	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	12.26547143	2.224314573	0.1733321571	-0.07297713775	1.957994634	0.3837519543	0.3184586589	2022-12-14 20:05:54.713027	2022-12-14 20:05:54.713027
161	2425	t	f	t	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	9.505171429	1.860194573	0.1743321571	-0.09554713775	2.156714634	0.5895419543	0.2247686589	2022-12-14 20:05:54.725309	2022-12-14 20:05:54.725309
162	526	t	f	t	f	t	t	f	t	f	f	t	f	f	t	f	f	t	f	t	f	t	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	12.58567143	2.312614573	0.2507321571	-0.3315671377	2.368014634	0.7728419543	0.3635586589	2022-12-14 20:05:54.73516	2022-12-14 20:05:54.73516
163	536	t	f	f	f	t	t	f	t	t	t	t	f	f	f	f	f	t	f	f	t	f	f	t	t	t	f	f	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	10.07307143	2.029414573	-0.0382778429	-0.4183671377	1.805114634	0.2372419543	0.2059186589	2022-12-14 20:05:54.743724	2022-12-14 20:05:54.743724
164	546	t	f	t	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	12.24357143	2.232214573	0.1792321571	0.1054328623	2.081014634	0.5984419543	0.2216386589	2022-12-14 20:05:54.756466	2022-12-14 20:05:54.756466
165	556	t	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	9.936571429	1.270014573	-0.4120678429	0.2358328623	1.730914634	0.3456419543	-0.04924134108	2022-12-14 20:05:54.770291	2022-12-14 20:05:54.770291
166	566	t	f	f	f	f	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	10.42206143	1.686414573	-0.3026678429	0.1820328623	0	0	0	2022-12-14 20:05:54.777868	2022-12-14 20:05:54.777868
167	2431	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	9.351571429	1.837114573	0.3847321571	0.1137328623	1.961594634	0.5246119543	0.1541666589	2022-12-14 20:05:54.783592	2022-12-14 20:05:54.783592
168	574	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	13.29577143	2.415014573	0.2452321571	-0.01888713775	1.831314634	0.4031219543	0.2512586589	2022-12-14 20:05:54.791466	2022-12-14 20:05:54.791466
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
20221205184225
\.


--
-- Data for Name: seedboxes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.seedboxes (id, name, created_at, updated_at) FROM stdin;
1	1	2022-12-14 20:05:32.929841	2022-12-14 20:05:32.929841
97	2	2022-12-14 20:05:33.715588	2022-12-14 20:05:33.715588
196	3	2022-12-14 20:05:34.463663	2022-12-14 20:05:34.463663
296	4	2022-12-14 20:05:35.225831	2022-12-14 20:05:35.225831
394	5	2022-12-14 20:05:35.968267	2022-12-14 20:05:35.968267
490	6	2022-12-14 20:05:36.965819	2022-12-14 20:05:36.965819
584	7	2022-12-14 20:05:37.658685	2022-12-14 20:05:37.658685
684	8	2022-12-14 20:05:38.399759	2022-12-14 20:05:38.399759
784	188	2022-12-14 20:05:39.138946	2022-12-14 20:05:39.138946
884	10	2022-12-14 20:05:39.89526	2022-12-14 20:05:39.89526
980	11	2022-12-14 20:05:40.634151	2022-12-14 20:05:40.634151
1080	12	2022-12-14 20:05:41.436482	2022-12-14 20:05:41.436482
1179	13	2022-12-14 20:05:42.2286	2022-12-14 20:05:42.2286
1276	14	2022-12-14 20:05:42.945298	2022-12-14 20:05:42.945298
1374	15	2022-12-14 20:05:43.979839	2022-12-14 20:05:43.979839
1401	16	2022-12-14 20:05:44.17265	2022-12-14 20:05:44.17265
1495	180	2022-12-14 20:05:44.875789	2022-12-14 20:05:44.875789
1561	181	2022-12-14 20:05:45.364729	2022-12-14 20:05:45.364729
1647	182	2022-12-14 20:05:46.042839	2022-12-14 20:05:46.042839
1728	183	2022-12-14 20:05:46.67163	2022-12-14 20:05:46.67163
1818	184	2022-12-14 20:05:47.373829	2022-12-14 20:05:47.373829
1905	185	2022-12-14 20:05:48.062487	2022-12-14 20:05:48.062487
1995	186	2022-12-14 20:05:48.725858	2022-12-14 20:05:48.725858
2094	187	2022-12-14 20:05:49.495587	2022-12-14 20:05:49.495587
2174	404	2022-12-14 20:05:50.206439	2022-12-14 20:05:50.206439
2196	9	2022-12-14 20:05:50.382515	2022-12-14 20:05:50.382515
\.


--
-- Data for Name: seeds; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.seeds (id, generation, created_at, updated_at, parent_id, accession_id, species_id) FROM stdin;
1	1	2022-12-14 20:05:32.929841	2022-12-14 20:05:32.929841	\N	1	1
2	1	2022-12-14 20:05:33.0109	2022-12-14 20:05:33.0109	\N	2	1
3	1	2022-12-14 20:05:33.019692	2022-12-14 20:05:33.019692	\N	3	1
4	1	2022-12-14 20:05:33.027051	2022-12-14 20:05:33.027051	\N	4	1
5	1	2022-12-14 20:05:33.036898	2022-12-14 20:05:33.036898	\N	5	1
6	1	2022-12-14 20:05:33.045591	2022-12-14 20:05:33.045591	\N	6	1
7	1	2022-12-14 20:05:33.053579	2022-12-14 20:05:33.053579	\N	7	1
8	1	2022-12-14 20:05:33.06148	2022-12-14 20:05:33.06148	\N	8	1
9	1	2022-12-14 20:05:33.068295	2022-12-14 20:05:33.068295	\N	9	1
10	1	2022-12-14 20:05:33.075711	2022-12-14 20:05:33.075711	\N	10	1
11	1	2022-12-14 20:05:33.083601	2022-12-14 20:05:33.083601	\N	11	1
12	1	2022-12-14 20:05:33.091747	2022-12-14 20:05:33.091747	\N	12	1
13	1	2022-12-14 20:05:33.099465	2022-12-14 20:05:33.099465	\N	13	1
14	1	2022-12-14 20:05:33.115097	2022-12-14 20:05:33.115097	\N	14	1
15	1	2022-12-14 20:05:33.122958	2022-12-14 20:05:33.122958	\N	15	1
16	1	2022-12-14 20:05:33.130743	2022-12-14 20:05:33.130743	\N	16	1
17	1	2022-12-14 20:05:33.138717	2022-12-14 20:05:33.138717	\N	17	1
18	1	2022-12-14 20:05:33.14619	2022-12-14 20:05:33.14619	\N	18	1
19	1	2022-12-14 20:05:33.153077	2022-12-14 20:05:33.153077	\N	19	1
20	1	2022-12-14 20:05:33.160709	2022-12-14 20:05:33.160709	\N	20	1
21	1	2022-12-14 20:05:33.167898	2022-12-14 20:05:33.167898	\N	21	1
22	1	2022-12-14 20:05:33.174712	2022-12-14 20:05:33.174712	\N	22	1
23	2	2022-12-14 20:05:33.181374	2022-12-14 20:05:33.181374	\N	23	1
24	2	2022-12-14 20:05:33.189085	2022-12-14 20:05:33.189085	\N	24	1
25	2	2022-12-14 20:05:33.195484	2022-12-14 20:05:33.195484	\N	25	1
26	1	2022-12-14 20:05:33.203417	2022-12-14 20:05:33.203417	\N	26	1
27	1	2022-12-14 20:05:33.210161	2022-12-14 20:05:33.210161	\N	27	1
28	1	2022-12-14 20:05:33.216842	2022-12-14 20:05:33.216842	\N	28	1
29	1	2022-12-14 20:05:33.225928	2022-12-14 20:05:33.225928	\N	29	1
30	1	2022-12-14 20:05:33.232042	2022-12-14 20:05:33.232042	\N	30	1
31	1	2022-12-14 20:05:33.239766	2022-12-14 20:05:33.239766	\N	31	1
32	1	2022-12-14 20:05:33.246058	2022-12-14 20:05:33.246058	\N	32	1
33	1	2022-12-14 20:05:33.25242	2022-12-14 20:05:33.25242	\N	33	1
34	1	2022-12-14 20:05:33.259806	2022-12-14 20:05:33.259806	\N	34	1
35	1	2022-12-14 20:05:33.266433	2022-12-14 20:05:33.266433	\N	35	1
36	1	2022-12-14 20:05:33.275051	2022-12-14 20:05:33.275051	\N	36	1
37	1	2022-12-14 20:05:33.282966	2022-12-14 20:05:33.282966	\N	37	1
38	1	2022-12-14 20:05:33.291253	2022-12-14 20:05:33.291253	\N	38	1
39	2	2022-12-14 20:05:33.298408	2022-12-14 20:05:33.298408	\N	39	1
40	1	2022-12-14 20:05:33.306257	2022-12-14 20:05:33.306257	\N	40	1
41	1	2022-12-14 20:05:33.313351	2022-12-14 20:05:33.313351	\N	41	1
42	1	2022-12-14 20:05:33.321279	2022-12-14 20:05:33.321279	\N	42	1
43	1	2022-12-14 20:05:33.327883	2022-12-14 20:05:33.327883	\N	43	1
44	1	2022-12-14 20:05:33.335008	2022-12-14 20:05:33.335008	\N	44	1
45	1	2022-12-14 20:05:33.342354	2022-12-14 20:05:33.342354	\N	45	1
46	1	2022-12-14 20:05:33.350048	2022-12-14 20:05:33.350048	\N	46	1
47	1	2022-12-14 20:05:33.35714	2022-12-14 20:05:33.35714	\N	47	1
48	1	2022-12-14 20:05:33.36322	2022-12-14 20:05:33.36322	\N	48	1
49	1	2022-12-14 20:05:33.369803	2022-12-14 20:05:33.369803	\N	49	1
50	1	2022-12-14 20:05:33.376544	2022-12-14 20:05:33.376544	\N	50	1
51	1	2022-12-14 20:05:33.38227	2022-12-14 20:05:33.38227	\N	51	1
52	1	2022-12-14 20:05:33.388843	2022-12-14 20:05:33.388843	\N	52	1
53	1	2022-12-14 20:05:33.394661	2022-12-14 20:05:33.394661	\N	53	1
54	1	2022-12-14 20:05:33.400363	2022-12-14 20:05:33.400363	\N	54	1
55	1	2022-12-14 20:05:33.407472	2022-12-14 20:05:33.407472	\N	55	1
56	1	2022-12-14 20:05:33.413611	2022-12-14 20:05:33.413611	\N	56	1
57	1	2022-12-14 20:05:33.420229	2022-12-14 20:05:33.420229	\N	57	1
58	1	2022-12-14 20:05:33.427704	2022-12-14 20:05:33.427704	\N	58	1
59	1	2022-12-14 20:05:33.434616	2022-12-14 20:05:33.434616	\N	59	1
60	1	2022-12-14 20:05:33.441873	2022-12-14 20:05:33.441873	\N	60	1
61	1	2022-12-14 20:05:33.448841	2022-12-14 20:05:33.448841	\N	61	1
62	1	2022-12-14 20:05:33.456295	2022-12-14 20:05:33.456295	\N	62	1
63	1	2022-12-14 20:05:33.462443	2022-12-14 20:05:33.462443	\N	63	1
64	1	2022-12-14 20:05:33.469104	2022-12-14 20:05:33.469104	\N	64	1
65	2	2022-12-14 20:05:33.476365	2022-12-14 20:05:33.476365	\N	65	1
66	1	2022-12-14 20:05:33.483391	2022-12-14 20:05:33.483391	\N	66	1
67	1	2022-12-14 20:05:33.490454	2022-12-14 20:05:33.490454	\N	67	1
68	1	2022-12-14 20:05:33.497099	2022-12-14 20:05:33.497099	\N	68	1
69	1	2022-12-14 20:05:33.503857	2022-12-14 20:05:33.503857	\N	69	1
70	1	2022-12-14 20:05:33.510781	2022-12-14 20:05:33.510781	\N	70	1
71	1	2022-12-14 20:05:33.517718	2022-12-14 20:05:33.517718	\N	71	1
72	1	2022-12-14 20:05:33.525528	2022-12-14 20:05:33.525528	\N	72	1
73	1	2022-12-14 20:05:33.533538	2022-12-14 20:05:33.533538	\N	73	1
74	1	2022-12-14 20:05:33.540879	2022-12-14 20:05:33.540879	\N	74	1
75	1	2022-12-14 20:05:33.548892	2022-12-14 20:05:33.548892	\N	75	1
76	1	2022-12-14 20:05:33.556583	2022-12-14 20:05:33.556583	\N	76	1
77	1	2022-12-14 20:05:33.563683	2022-12-14 20:05:33.563683	\N	77	1
78	1	2022-12-14 20:05:33.57164	2022-12-14 20:05:33.57164	\N	78	1
79	1	2022-12-14 20:05:33.578564	2022-12-14 20:05:33.578564	\N	79	1
80	1	2022-12-14 20:05:33.587194	2022-12-14 20:05:33.587194	\N	80	1
81	1	2022-12-14 20:05:33.594912	2022-12-14 20:05:33.594912	\N	81	1
82	1	2022-12-14 20:05:33.602279	2022-12-14 20:05:33.602279	\N	82	1
83	1	2022-12-14 20:05:33.609581	2022-12-14 20:05:33.609581	\N	83	1
84	2	2022-12-14 20:05:33.616577	2022-12-14 20:05:33.616577	\N	84	1
85	2	2022-12-14 20:05:33.624831	2022-12-14 20:05:33.624831	\N	85	1
86	1	2022-12-14 20:05:33.631805	2022-12-14 20:05:33.631805	\N	86	1
87	1	2022-12-14 20:05:33.638611	2022-12-14 20:05:33.638611	\N	87	1
88	1	2022-12-14 20:05:33.645924	2022-12-14 20:05:33.645924	\N	88	1
89	1	2022-12-14 20:05:33.652271	2022-12-14 20:05:33.652271	\N	89	1
90	1	2022-12-14 20:05:33.659248	2022-12-14 20:05:33.659248	\N	90	1
91	1	2022-12-14 20:05:33.664995	2022-12-14 20:05:33.664995	\N	91	1
92	1	2022-12-14 20:05:33.672247	2022-12-14 20:05:33.672247	\N	92	1
93	1	2022-12-14 20:05:33.683762	2022-12-14 20:05:33.683762	\N	93	1
94	1	2022-12-14 20:05:33.692705	2022-12-14 20:05:33.692705	\N	94	1
95	1	2022-12-14 20:05:33.699836	2022-12-14 20:05:33.699836	\N	95	1
96	1	2022-12-14 20:05:33.707717	2022-12-14 20:05:33.707717	\N	96	1
97	1	2022-12-14 20:05:33.715588	2022-12-14 20:05:33.715588	\N	97	1
98	1	2022-12-14 20:05:33.723231	2022-12-14 20:05:33.723231	\N	98	1
99	1	2022-12-14 20:05:33.73127	2022-12-14 20:05:33.73127	\N	99	1
100	1	2022-12-14 20:05:33.73865	2022-12-14 20:05:33.73865	\N	100	1
101	1	2022-12-14 20:05:33.747335	2022-12-14 20:05:33.747335	\N	101	1
102	1	2022-12-14 20:05:33.754833	2022-12-14 20:05:33.754833	\N	102	1
103	1	2022-12-14 20:05:33.763303	2022-12-14 20:05:33.763303	\N	103	1
104	1	2022-12-14 20:05:33.772916	2022-12-14 20:05:33.772916	\N	104	1
105	1	2022-12-14 20:05:33.782064	2022-12-14 20:05:33.782064	\N	105	1
106	1	2022-12-14 20:05:33.789797	2022-12-14 20:05:33.789797	\N	106	1
107	1	2022-12-14 20:05:33.797631	2022-12-14 20:05:33.797631	\N	107	1
108	1	2022-12-14 20:05:33.804962	2022-12-14 20:05:33.804962	\N	108	1
109	1	2022-12-14 20:05:33.812419	2022-12-14 20:05:33.812419	\N	109	1
110	1	2022-12-14 20:05:33.819072	2022-12-14 20:05:33.819072	\N	110	1
111	1	2022-12-14 20:05:33.825763	2022-12-14 20:05:33.825763	\N	111	1
112	1	2022-12-14 20:05:33.833274	2022-12-14 20:05:33.833274	\N	112	1
113	1	2022-12-14 20:05:33.840599	2022-12-14 20:05:33.840599	\N	113	1
114	1	2022-12-14 20:05:33.847812	2022-12-14 20:05:33.847812	\N	114	1
115	1	2022-12-14 20:05:33.855789	2022-12-14 20:05:33.855789	\N	115	1
116	1	2022-12-14 20:05:33.864112	2022-12-14 20:05:33.864112	\N	116	1
117	1	2022-12-14 20:05:33.871073	2022-12-14 20:05:33.871073	\N	117	1
118	1	2022-12-14 20:05:33.877908	2022-12-14 20:05:33.877908	\N	118	1
119	1	2022-12-14 20:05:33.885676	2022-12-14 20:05:33.885676	\N	119	1
120	1	2022-12-14 20:05:33.892925	2022-12-14 20:05:33.892925	\N	120	1
121	1	2022-12-14 20:05:33.900538	2022-12-14 20:05:33.900538	\N	121	1
122	1	2022-12-14 20:05:33.908876	2022-12-14 20:05:33.908876	\N	122	1
123	1	2022-12-14 20:05:33.916492	2022-12-14 20:05:33.916492	\N	123	1
124	1	2022-12-14 20:05:33.924976	2022-12-14 20:05:33.924976	\N	124	1
125	1	2022-12-14 20:05:33.933202	2022-12-14 20:05:33.933202	\N	125	1
126	1	2022-12-14 20:05:33.940193	2022-12-14 20:05:33.940193	\N	126	1
127	1	2022-12-14 20:05:33.9478	2022-12-14 20:05:33.9478	\N	127	1
128	1	2022-12-14 20:05:33.95476	2022-12-14 20:05:33.95476	\N	128	1
129	1	2022-12-14 20:05:33.963152	2022-12-14 20:05:33.963152	\N	129	1
130	1	2022-12-14 20:05:33.969764	2022-12-14 20:05:33.969764	\N	130	1
131	1	2022-12-14 20:05:33.977241	2022-12-14 20:05:33.977241	\N	131	1
132	1	2022-12-14 20:05:33.983902	2022-12-14 20:05:33.983902	\N	132	1
133	1	2022-12-14 20:05:33.991038	2022-12-14 20:05:33.991038	\N	133	1
134	1	2022-12-14 20:05:33.998074	2022-12-14 20:05:33.998074	\N	134	1
135	1	2022-12-14 20:05:34.005729	2022-12-14 20:05:34.005729	\N	135	1
136	1	2022-12-14 20:05:34.013223	2022-12-14 20:05:34.013223	\N	136	1
137	1	2022-12-14 20:05:34.019386	2022-12-14 20:05:34.019386	\N	137	1
138	1	2022-12-14 20:05:34.026026	2022-12-14 20:05:34.026026	\N	138	1
139	1	2022-12-14 20:05:34.033862	2022-12-14 20:05:34.033862	\N	139	1
140	1	2022-12-14 20:05:34.041108	2022-12-14 20:05:34.041108	\N	140	1
141	1	2022-12-14 20:05:34.047409	2022-12-14 20:05:34.047409	\N	141	1
142	1	2022-12-14 20:05:34.054676	2022-12-14 20:05:34.054676	\N	142	1
143	1	2022-12-14 20:05:34.061908	2022-12-14 20:05:34.061908	\N	143	1
144	1	2022-12-14 20:05:34.069506	2022-12-14 20:05:34.069506	\N	144	1
145	1	2022-12-14 20:05:34.076676	2022-12-14 20:05:34.076676	\N	145	1
146	1	2022-12-14 20:05:34.0844	2022-12-14 20:05:34.0844	\N	146	1
147	1	2022-12-14 20:05:34.091999	2022-12-14 20:05:34.091999	\N	147	1
148	1	2022-12-14 20:05:34.100266	2022-12-14 20:05:34.100266	\N	148	1
149	1	2022-12-14 20:05:34.107058	2022-12-14 20:05:34.107058	\N	149	1
150	1	2022-12-14 20:05:34.115106	2022-12-14 20:05:34.115106	\N	150	1
151	1	2022-12-14 20:05:34.123155	2022-12-14 20:05:34.123155	\N	151	1
152	1	2022-12-14 20:05:34.131204	2022-12-14 20:05:34.131204	\N	152	1
153	1	2022-12-14 20:05:34.138068	2022-12-14 20:05:34.138068	\N	153	1
154	1	2022-12-14 20:05:34.145186	2022-12-14 20:05:34.145186	\N	154	1
155	1	2022-12-14 20:05:34.153515	2022-12-14 20:05:34.153515	\N	155	1
156	1	2022-12-14 20:05:34.160956	2022-12-14 20:05:34.160956	\N	156	1
157	1	2022-12-14 20:05:34.167658	2022-12-14 20:05:34.167658	\N	157	1
158	1	2022-12-14 20:05:34.174852	2022-12-14 20:05:34.174852	\N	158	1
159	1	2022-12-14 20:05:34.181985	2022-12-14 20:05:34.181985	\N	159	1
160	1	2022-12-14 20:05:34.189109	2022-12-14 20:05:34.189109	\N	160	1
161	1	2022-12-14 20:05:34.197036	2022-12-14 20:05:34.197036	\N	161	1
162	1	2022-12-14 20:05:34.204193	2022-12-14 20:05:34.204193	\N	162	1
163	1	2022-12-14 20:05:34.210661	2022-12-14 20:05:34.210661	\N	163	1
164	1	2022-12-14 20:05:34.218685	2022-12-14 20:05:34.218685	\N	164	1
165	1	2022-12-14 20:05:34.227425	2022-12-14 20:05:34.227425	\N	165	1
166	1	2022-12-14 20:05:34.234277	2022-12-14 20:05:34.234277	\N	166	1
167	1	2022-12-14 20:05:34.242459	2022-12-14 20:05:34.242459	\N	167	1
168	1	2022-12-14 20:05:34.250526	2022-12-14 20:05:34.250526	\N	168	1
169	1	2022-12-14 20:05:34.257669	2022-12-14 20:05:34.257669	\N	169	1
170	1	2022-12-14 20:05:34.265723	2022-12-14 20:05:34.265723	\N	170	1
171	1	2022-12-14 20:05:34.273667	2022-12-14 20:05:34.273667	\N	171	1
172	1	2022-12-14 20:05:34.28053	2022-12-14 20:05:34.28053	\N	172	1
173	1	2022-12-14 20:05:34.288001	2022-12-14 20:05:34.288001	\N	173	1
174	1	2022-12-14 20:05:34.295817	2022-12-14 20:05:34.295817	\N	174	1
175	1	2022-12-14 20:05:34.302179	2022-12-14 20:05:34.302179	\N	175	1
176	1	2022-12-14 20:05:34.309249	2022-12-14 20:05:34.309249	\N	176	1
177	1	2022-12-14 20:05:34.315907	2022-12-14 20:05:34.315907	\N	177	1
178	1	2022-12-14 20:05:34.323012	2022-12-14 20:05:34.323012	\N	178	1
179	1	2022-12-14 20:05:34.330373	2022-12-14 20:05:34.330373	\N	179	1
180	1	2022-12-14 20:05:34.337353	2022-12-14 20:05:34.337353	\N	180	1
181	1	2022-12-14 20:05:34.344369	2022-12-14 20:05:34.344369	\N	181	1
182	1	2022-12-14 20:05:34.351648	2022-12-14 20:05:34.351648	\N	182	1
183	1	2022-12-14 20:05:34.358275	2022-12-14 20:05:34.358275	\N	183	1
184	1	2022-12-14 20:05:34.364825	2022-12-14 20:05:34.364825	\N	184	1
185	1	2022-12-14 20:05:34.372304	2022-12-14 20:05:34.372304	\N	185	1
186	1	2022-12-14 20:05:34.378683	2022-12-14 20:05:34.378683	\N	186	1
187	1	2022-12-14 20:05:34.385627	2022-12-14 20:05:34.385627	\N	187	1
188	2	2022-12-14 20:05:34.393335	2022-12-14 20:05:34.393335	\N	188	1
189	1	2022-12-14 20:05:34.401902	2022-12-14 20:05:34.401902	\N	189	1
190	1	2022-12-14 20:05:34.410308	2022-12-14 20:05:34.410308	\N	190	1
191	2	2022-12-14 20:05:34.418863	2022-12-14 20:05:34.418863	\N	191	1
192	1	2022-12-14 20:05:34.427246	2022-12-14 20:05:34.427246	\N	192	1
193	1	2022-12-14 20:05:34.439901	2022-12-14 20:05:34.439901	\N	193	1
194	1	2022-12-14 20:05:34.447892	2022-12-14 20:05:34.447892	\N	194	1
195	1	2022-12-14 20:05:34.455903	2022-12-14 20:05:34.455903	\N	195	1
196	1	2022-12-14 20:05:34.463663	2022-12-14 20:05:34.463663	\N	196	1
197	1	2022-12-14 20:05:34.471492	2022-12-14 20:05:34.471492	\N	197	1
198	1	2022-12-14 20:05:34.479749	2022-12-14 20:05:34.479749	\N	198	1
199	1	2022-12-14 20:05:34.487078	2022-12-14 20:05:34.487078	\N	199	1
200	1	2022-12-14 20:05:34.494213	2022-12-14 20:05:34.494213	\N	200	1
201	1	2022-12-14 20:05:34.501877	2022-12-14 20:05:34.501877	\N	201	1
202	1	2022-12-14 20:05:34.509705	2022-12-14 20:05:34.509705	\N	202	1
203	1	2022-12-14 20:05:34.51709	2022-12-14 20:05:34.51709	\N	203	1
204	1	2022-12-14 20:05:34.524886	2022-12-14 20:05:34.524886	\N	204	1
205	1	2022-12-14 20:05:34.53271	2022-12-14 20:05:34.53271	\N	205	1
206	1	2022-12-14 20:05:34.540129	2022-12-14 20:05:34.540129	\N	206	1
207	1	2022-12-14 20:05:34.54742	2022-12-14 20:05:34.54742	\N	207	1
208	1	2022-12-14 20:05:34.555067	2022-12-14 20:05:34.555067	\N	208	1
209	1	2022-12-14 20:05:34.562116	2022-12-14 20:05:34.562116	\N	209	1
210	1	2022-12-14 20:05:34.569536	2022-12-14 20:05:34.569536	\N	210	1
211	1	2022-12-14 20:05:34.577632	2022-12-14 20:05:34.577632	\N	211	1
212	1	2022-12-14 20:05:34.585561	2022-12-14 20:05:34.585561	\N	212	1
213	1	2022-12-14 20:05:34.593252	2022-12-14 20:05:34.593252	\N	213	1
214	1	2022-12-14 20:05:34.600568	2022-12-14 20:05:34.600568	\N	214	1
215	1	2022-12-14 20:05:34.609155	2022-12-14 20:05:34.609155	\N	215	1
216	1	2022-12-14 20:05:34.616038	2022-12-14 20:05:34.616038	\N	216	1
217	1	2022-12-14 20:05:34.623539	2022-12-14 20:05:34.623539	\N	217	1
218	1	2022-12-14 20:05:34.632037	2022-12-14 20:05:34.632037	\N	218	1
219	1	2022-12-14 20:05:34.639586	2022-12-14 20:05:34.639586	\N	219	1
220	1	2022-12-14 20:05:34.646939	2022-12-14 20:05:34.646939	\N	220	1
221	2	2022-12-14 20:05:34.65482	2022-12-14 20:05:34.65482	\N	221	1
222	1	2022-12-14 20:05:34.662309	2022-12-14 20:05:34.662309	\N	222	1
223	1	2022-12-14 20:05:34.669124	2022-12-14 20:05:34.669124	\N	223	1
224	2	2022-12-14 20:05:34.676927	2022-12-14 20:05:34.676927	\N	224	1
225	2	2022-12-14 20:05:34.686441	2022-12-14 20:05:34.686441	\N	225	1
226	1	2022-12-14 20:05:34.694971	2022-12-14 20:05:34.694971	\N	226	1
227	1	2022-12-14 20:05:34.702287	2022-12-14 20:05:34.702287	\N	227	1
228	1	2022-12-14 20:05:34.713355	2022-12-14 20:05:34.713355	\N	228	1
229	1	2022-12-14 20:05:34.721455	2022-12-14 20:05:34.721455	\N	229	1
230	1	2022-12-14 20:05:34.728515	2022-12-14 20:05:34.728515	\N	230	1
231	1	2022-12-14 20:05:34.737501	2022-12-14 20:05:34.737501	\N	231	1
232	1	2022-12-14 20:05:34.74472	2022-12-14 20:05:34.74472	\N	232	1
233	1	2022-12-14 20:05:34.751638	2022-12-14 20:05:34.751638	\N	233	1
234	1	2022-12-14 20:05:34.760501	2022-12-14 20:05:34.760501	\N	234	1
235	1	2022-12-14 20:05:34.767846	2022-12-14 20:05:34.767846	\N	235	1
236	1	2022-12-14 20:05:34.77529	2022-12-14 20:05:34.77529	\N	236	1
237	1	2022-12-14 20:05:34.782417	2022-12-14 20:05:34.782417	\N	237	1
238	2	2022-12-14 20:05:34.790827	2022-12-14 20:05:34.790827	\N	238	1
239	2	2022-12-14 20:05:34.79744	2022-12-14 20:05:34.79744	\N	239	1
240	2	2022-12-14 20:05:34.804974	2022-12-14 20:05:34.804974	\N	240	1
241	2	2022-12-14 20:05:34.812288	2022-12-14 20:05:34.812288	\N	241	1
242	2	2022-12-14 20:05:34.820115	2022-12-14 20:05:34.820115	\N	242	1
243	2	2022-12-14 20:05:34.826551	2022-12-14 20:05:34.826551	\N	243	1
244	2	2022-12-14 20:05:34.834951	2022-12-14 20:05:34.834951	\N	244	1
245	2	2022-12-14 20:05:34.841974	2022-12-14 20:05:34.841974	\N	245	1
246	2	2022-12-14 20:05:34.848714	2022-12-14 20:05:34.848714	\N	246	1
247	2	2022-12-14 20:05:34.85623	2022-12-14 20:05:34.85623	\N	247	1
248	2	2022-12-14 20:05:34.862796	2022-12-14 20:05:34.862796	\N	248	1
249	2	2022-12-14 20:05:34.87105	2022-12-14 20:05:34.87105	\N	249	1
250	2	2022-12-14 20:05:34.877405	2022-12-14 20:05:34.877405	\N	250	1
251	-999	2022-12-14 20:05:34.883979	2022-12-14 20:05:34.883979	\N	251	1
252	2	2022-12-14 20:05:34.89119	2022-12-14 20:05:34.89119	\N	252	1
253	2	2022-12-14 20:05:34.897664	2022-12-14 20:05:34.897664	\N	253	1
254	2	2022-12-14 20:05:34.906398	2022-12-14 20:05:34.906398	\N	254	1
255	2	2022-12-14 20:05:34.914465	2022-12-14 20:05:34.914465	\N	255	1
256	1	2022-12-14 20:05:34.922776	2022-12-14 20:05:34.922776	\N	256	1
257	2	2022-12-14 20:05:34.930439	2022-12-14 20:05:34.930439	\N	257	1
258	2	2022-12-14 20:05:34.940816	2022-12-14 20:05:34.940816	\N	258	1
259	1	2022-12-14 20:05:34.948835	2022-12-14 20:05:34.948835	\N	259	1
260	2	2022-12-14 20:05:34.958346	2022-12-14 20:05:34.958346	\N	260	1
261	2	2022-12-14 20:05:34.96516	2022-12-14 20:05:34.96516	\N	261	1
262	2	2022-12-14 20:05:34.972298	2022-12-14 20:05:34.972298	\N	262	1
263	2	2022-12-14 20:05:34.97912	2022-12-14 20:05:34.97912	\N	263	1
264	2	2022-12-14 20:05:34.985831	2022-12-14 20:05:34.985831	\N	264	1
265	2	2022-12-14 20:05:34.992917	2022-12-14 20:05:34.992917	\N	265	1
266	2	2022-12-14 20:05:34.999864	2022-12-14 20:05:34.999864	\N	266	1
267	2	2022-12-14 20:05:35.007676	2022-12-14 20:05:35.007676	\N	267	1
268	1	2022-12-14 20:05:35.014756	2022-12-14 20:05:35.014756	\N	268	1
269	2	2022-12-14 20:05:35.021922	2022-12-14 20:05:35.021922	\N	269	1
270	2	2022-12-14 20:05:35.028291	2022-12-14 20:05:35.028291	\N	270	1
271	2	2022-12-14 20:05:35.035555	2022-12-14 20:05:35.035555	\N	271	1
272	1	2022-12-14 20:05:35.042982	2022-12-14 20:05:35.042982	\N	272	1
273	1	2022-12-14 20:05:35.050405	2022-12-14 20:05:35.050405	\N	273	1
274	1	2022-12-14 20:05:35.057889	2022-12-14 20:05:35.057889	\N	274	1
275	1	2022-12-14 20:05:35.06499	2022-12-14 20:05:35.06499	\N	275	1
276	1	2022-12-14 20:05:35.072179	2022-12-14 20:05:35.072179	\N	276	1
277	1	2022-12-14 20:05:35.08162	2022-12-14 20:05:35.08162	\N	277	1
278	2	2022-12-14 20:05:35.089639	2022-12-14 20:05:35.089639	\N	278	1
279	1	2022-12-14 20:05:35.097446	2022-12-14 20:05:35.097446	\N	279	1
280	1	2022-12-14 20:05:35.105441	2022-12-14 20:05:35.105441	\N	280	1
281	1	2022-12-14 20:05:35.112933	2022-12-14 20:05:35.112933	\N	281	1
282	1	2022-12-14 20:05:35.120779	2022-12-14 20:05:35.120779	\N	282	1
283	1	2022-12-14 20:05:35.127725	2022-12-14 20:05:35.127725	\N	283	1
284	1	2022-12-14 20:05:35.134702	2022-12-14 20:05:35.134702	\N	284	1
285	2	2022-12-14 20:05:35.142504	2022-12-14 20:05:35.142504	\N	285	1
286	2	2022-12-14 20:05:35.149975	2022-12-14 20:05:35.149975	\N	286	1
287	2	2022-12-14 20:05:35.157004	2022-12-14 20:05:35.157004	\N	287	1
288	2	2022-12-14 20:05:35.164126	2022-12-14 20:05:35.164126	\N	288	1
289	2	2022-12-14 20:05:35.171446	2022-12-14 20:05:35.171446	\N	289	1
290	2	2022-12-14 20:05:35.178886	2022-12-14 20:05:35.178886	\N	290	1
291	2	2022-12-14 20:05:35.186455	2022-12-14 20:05:35.186455	\N	291	1
292	1	2022-12-14 20:05:35.193799	2022-12-14 20:05:35.193799	\N	292	1
293	2	2022-12-14 20:05:35.201344	2022-12-14 20:05:35.201344	\N	293	1
294	1	2022-12-14 20:05:35.209171	2022-12-14 20:05:35.209171	\N	294	1
295	1	2022-12-14 20:05:35.216612	2022-12-14 20:05:35.216612	\N	295	1
296	2	2022-12-14 20:05:35.225831	2022-12-14 20:05:35.225831	\N	296	1
297	2	2022-12-14 20:05:35.236178	2022-12-14 20:05:35.236178	\N	297	1
298	2	2022-12-14 20:05:35.243247	2022-12-14 20:05:35.243247	\N	298	1
299	1	2022-12-14 20:05:35.25103	2022-12-14 20:05:35.25103	\N	299	1
300	2	2022-12-14 20:05:35.258983	2022-12-14 20:05:35.258983	\N	300	1
301	2	2022-12-14 20:05:35.266741	2022-12-14 20:05:35.266741	\N	301	1
302	2	2022-12-14 20:05:35.274094	2022-12-14 20:05:35.274094	\N	302	1
303	1	2022-12-14 20:05:35.282702	2022-12-14 20:05:35.282702	\N	303	1
304	1	2022-12-14 20:05:35.290749	2022-12-14 20:05:35.290749	\N	304	1
305	1	2022-12-14 20:05:35.298547	2022-12-14 20:05:35.298547	\N	305	1
306	1	2022-12-14 20:05:35.306194	2022-12-14 20:05:35.306194	\N	306	1
307	1	2022-12-14 20:05:35.313801	2022-12-14 20:05:35.313801	\N	307	1
308	1	2022-12-14 20:05:35.321997	2022-12-14 20:05:35.321997	\N	308	1
309	1	2022-12-14 20:05:35.329594	2022-12-14 20:05:35.329594	\N	309	1
310	1	2022-12-14 20:05:35.335984	2022-12-14 20:05:35.335984	\N	310	1
311	1	2022-12-14 20:05:35.343005	2022-12-14 20:05:35.343005	\N	311	1
312	1	2022-12-14 20:05:35.350446	2022-12-14 20:05:35.350446	\N	312	1
313	1	2022-12-14 20:05:35.358233	2022-12-14 20:05:35.358233	\N	313	1
314	1	2022-12-14 20:05:35.365827	2022-12-14 20:05:35.365827	\N	314	1
315	1	2022-12-14 20:05:35.373793	2022-12-14 20:05:35.373793	\N	315	1
316	1	2022-12-14 20:05:35.380531	2022-12-14 20:05:35.380531	\N	316	1
317	2	2022-12-14 20:05:35.388661	2022-12-14 20:05:35.388661	\N	317	1
318	2	2022-12-14 20:05:35.395835	2022-12-14 20:05:35.395835	\N	318	1
319	2	2022-12-14 20:05:35.401791	2022-12-14 20:05:35.401791	\N	319	1
320	2	2022-12-14 20:05:35.409456	2022-12-14 20:05:35.409456	\N	320	1
321	2	2022-12-14 20:05:35.417071	2022-12-14 20:05:35.417071	\N	321	1
322	2	2022-12-14 20:05:35.424217	2022-12-14 20:05:35.424217	\N	322	1
323	2	2022-12-14 20:05:35.432492	2022-12-14 20:05:35.432492	\N	323	1
324	1	2022-12-14 20:05:35.441286	2022-12-14 20:05:35.441286	\N	324	1
325	2	2022-12-14 20:05:35.448287	2022-12-14 20:05:35.448287	\N	325	1
326	1	2022-12-14 20:05:35.456236	2022-12-14 20:05:35.456236	\N	326	1
327	1	2022-12-14 20:05:35.463376	2022-12-14 20:05:35.463376	\N	327	1
328	1	2022-12-14 20:05:35.471021	2022-12-14 20:05:35.471021	\N	328	1
329	1	2022-12-14 20:05:35.478119	2022-12-14 20:05:35.478119	\N	329	1
330	1	2022-12-14 20:05:35.485323	2022-12-14 20:05:35.485323	\N	330	1
331	1	2022-12-14 20:05:35.492766	2022-12-14 20:05:35.492766	\N	331	1
332	1	2022-12-14 20:05:35.500305	2022-12-14 20:05:35.500305	\N	332	1
333	1	2022-12-14 20:05:35.508588	2022-12-14 20:05:35.508588	\N	333	1
334	2	2022-12-14 20:05:35.515578	2022-12-14 20:05:35.515578	\N	334	1
335	1	2022-12-14 20:05:35.523135	2022-12-14 20:05:35.523135	\N	335	1
336	1	2022-12-14 20:05:35.529103	2022-12-14 20:05:35.529103	\N	336	1
337	2	2022-12-14 20:05:35.53519	2022-12-14 20:05:35.53519	\N	337	1
338	2	2022-12-14 20:05:35.541717	2022-12-14 20:05:35.541717	\N	338	1
339	2	2022-12-14 20:05:35.54749	2022-12-14 20:05:35.54749	\N	339	1
340	1	2022-12-14 20:05:35.554237	2022-12-14 20:05:35.554237	\N	340	1
341	2	2022-12-14 20:05:35.560517	2022-12-14 20:05:35.560517	\N	341	1
342	2	2022-12-14 20:05:35.566496	2022-12-14 20:05:35.566496	\N	342	1
343	2	2022-12-14 20:05:35.574944	2022-12-14 20:05:35.574944	\N	343	1
344	2	2022-12-14 20:05:35.581256	2022-12-14 20:05:35.581256	\N	344	1
345	2	2022-12-14 20:05:35.588561	2022-12-14 20:05:35.588561	\N	345	1
346	2	2022-12-14 20:05:35.594926	2022-12-14 20:05:35.594926	\N	346	1
347	2	2022-12-14 20:05:35.601038	2022-12-14 20:05:35.601038	\N	347	1
348	2	2022-12-14 20:05:35.608212	2022-12-14 20:05:35.608212	\N	348	1
349	2	2022-12-14 20:05:35.615148	2022-12-14 20:05:35.615148	\N	349	1
350	2	2022-12-14 20:05:35.622142	2022-12-14 20:05:35.622142	\N	350	1
351	2	2022-12-14 20:05:35.629296	2022-12-14 20:05:35.629296	\N	351	1
352	2	2022-12-14 20:05:35.636128	2022-12-14 20:05:35.636128	\N	352	1
353	1	2022-12-14 20:05:35.642936	2022-12-14 20:05:35.642936	\N	353	1
354	1	2022-12-14 20:05:35.649208	2022-12-14 20:05:35.649208	\N	354	1
355	1	2022-12-14 20:05:35.656342	2022-12-14 20:05:35.656342	\N	355	1
356	1	2022-12-14 20:05:35.663608	2022-12-14 20:05:35.663608	\N	356	1
357	1	2022-12-14 20:05:35.671545	2022-12-14 20:05:35.671545	\N	357	1
358	1	2022-12-14 20:05:35.679182	2022-12-14 20:05:35.679182	\N	358	1
359	1	2022-12-14 20:05:35.692204	2022-12-14 20:05:35.692204	\N	359	1
360	1	2022-12-14 20:05:35.69991	2022-12-14 20:05:35.69991	\N	360	1
361	1	2022-12-14 20:05:35.70778	2022-12-14 20:05:35.70778	\N	361	1
362	1	2022-12-14 20:05:35.715399	2022-12-14 20:05:35.715399	\N	362	1
363	1	2022-12-14 20:05:35.723032	2022-12-14 20:05:35.723032	\N	363	1
364	1	2022-12-14 20:05:35.735535	2022-12-14 20:05:35.735535	\N	364	1
365	1	2022-12-14 20:05:35.744609	2022-12-14 20:05:35.744609	\N	365	1
366	1	2022-12-14 20:05:35.752247	2022-12-14 20:05:35.752247	\N	366	1
367	1	2022-12-14 20:05:35.759945	2022-12-14 20:05:35.759945	\N	367	1
368	1	2022-12-14 20:05:35.76796	2022-12-14 20:05:35.76796	\N	368	1
369	1	2022-12-14 20:05:35.776133	2022-12-14 20:05:35.776133	\N	369	1
370	1	2022-12-14 20:05:35.783371	2022-12-14 20:05:35.783371	\N	370	1
371	1	2022-12-14 20:05:35.789978	2022-12-14 20:05:35.789978	\N	371	1
372	1	2022-12-14 20:05:35.797995	2022-12-14 20:05:35.797995	\N	372	1
373	1	2022-12-14 20:05:35.806874	2022-12-14 20:05:35.806874	\N	373	1
374	1	2022-12-14 20:05:35.815473	2022-12-14 20:05:35.815473	\N	374	1
375	1	2022-12-14 20:05:35.822615	2022-12-14 20:05:35.822615	\N	375	1
376	1	2022-12-14 20:05:35.829847	2022-12-14 20:05:35.829847	\N	376	1
377	1	2022-12-14 20:05:35.837568	2022-12-14 20:05:35.837568	\N	377	1
378	1	2022-12-14 20:05:35.844597	2022-12-14 20:05:35.844597	\N	378	1
379	2	2022-12-14 20:05:35.851813	2022-12-14 20:05:35.851813	\N	379	1
380	1	2022-12-14 20:05:35.858788	2022-12-14 20:05:35.858788	\N	380	1
381	1	2022-12-14 20:05:35.866796	2022-12-14 20:05:35.866796	\N	381	1
382	1	2022-12-14 20:05:35.873956	2022-12-14 20:05:35.873956	\N	382	1
383	1	2022-12-14 20:05:35.88134	2022-12-14 20:05:35.88134	\N	383	1
384	1	2022-12-14 20:05:35.889037	2022-12-14 20:05:35.889037	\N	384	1
385	1	2022-12-14 20:05:35.896452	2022-12-14 20:05:35.896452	\N	385	1
386	1	2022-12-14 20:05:35.904125	2022-12-14 20:05:35.904125	\N	386	1
387	1	2022-12-14 20:05:35.912955	2022-12-14 20:05:35.912955	\N	387	1
388	1	2022-12-14 20:05:35.920591	2022-12-14 20:05:35.920591	\N	388	1
389	1	2022-12-14 20:05:35.928391	2022-12-14 20:05:35.928391	\N	389	1
390	1	2022-12-14 20:05:35.936509	2022-12-14 20:05:35.936509	\N	390	1
391	1	2022-12-14 20:05:35.944594	2022-12-14 20:05:35.944594	\N	391	1
392	1	2022-12-14 20:05:35.952935	2022-12-14 20:05:35.952935	\N	392	1
393	1	2022-12-14 20:05:35.959786	2022-12-14 20:05:35.959786	\N	393	1
394	1	2022-12-14 20:05:35.968267	2022-12-14 20:05:35.968267	\N	394	1
395	1	2022-12-14 20:05:35.975339	2022-12-14 20:05:35.975339	\N	395	1
396	1	2022-12-14 20:05:35.982039	2022-12-14 20:05:35.982039	\N	396	1
397	1	2022-12-14 20:05:35.989497	2022-12-14 20:05:35.989497	\N	397	1
398	1	2022-12-14 20:05:35.996636	2022-12-14 20:05:35.996636	\N	398	1
399	1	2022-12-14 20:05:36.003444	2022-12-14 20:05:36.003444	\N	399	1
400	1	2022-12-14 20:05:36.010391	2022-12-14 20:05:36.010391	\N	400	1
401	1	2022-12-14 20:05:36.016942	2022-12-14 20:05:36.016942	\N	401	1
402	2	2022-12-14 20:05:36.023742	2022-12-14 20:05:36.023742	\N	402	1
403	2	2022-12-14 20:05:36.031604	2022-12-14 20:05:36.031604	\N	403	1
404	2	2022-12-14 20:05:36.039864	2022-12-14 20:05:36.039864	\N	404	1
405	2	2022-12-14 20:05:36.046593	2022-12-14 20:05:36.046593	\N	405	1
406	2	2022-12-14 20:05:36.052569	2022-12-14 20:05:36.052569	\N	406	1
407	1	2022-12-14 20:05:36.060048	2022-12-14 20:05:36.060048	\N	407	1
408	1	2022-12-14 20:05:36.067041	2022-12-14 20:05:36.067041	\N	408	1
409	1	2022-12-14 20:05:36.0772	2022-12-14 20:05:36.0772	\N	409	1
410	1	2022-12-14 20:05:36.084963	2022-12-14 20:05:36.084963	\N	410	1
411	1	2022-12-14 20:05:36.092315	2022-12-14 20:05:36.092315	\N	411	1
412	2	2022-12-14 20:05:36.100371	2022-12-14 20:05:36.100371	\N	412	1
413	1	2022-12-14 20:05:36.108184	2022-12-14 20:05:36.108184	\N	413	1
414	1	2022-12-14 20:05:36.115837	2022-12-14 20:05:36.115837	\N	414	1
415	1	2022-12-14 20:05:36.122869	2022-12-14 20:05:36.122869	\N	415	1
416	1	2022-12-14 20:05:36.130506	2022-12-14 20:05:36.130506	\N	416	1
417	2	2022-12-14 20:05:36.137829	2022-12-14 20:05:36.137829	\N	417	1
418	1	2022-12-14 20:05:36.145667	2022-12-14 20:05:36.145667	\N	418	1
419	1	2022-12-14 20:05:36.152785	2022-12-14 20:05:36.152785	\N	419	1
420	1	2022-12-14 20:05:36.159383	2022-12-14 20:05:36.159383	\N	420	1
421	1	2022-12-14 20:05:36.167017	2022-12-14 20:05:36.167017	\N	421	1
422	1	2022-12-14 20:05:36.174417	2022-12-14 20:05:36.174417	\N	422	1
423	1	2022-12-14 20:05:36.181739	2022-12-14 20:05:36.181739	\N	423	1
424	1	2022-12-14 20:05:36.189486	2022-12-14 20:05:36.189486	\N	424	1
425	2	2022-12-14 20:05:36.197334	2022-12-14 20:05:36.197334	\N	425	1
426	2	2022-12-14 20:05:36.203834	2022-12-14 20:05:36.203834	\N	426	1
427	2	2022-12-14 20:05:36.211023	2022-12-14 20:05:36.211023	\N	427	1
428	2	2022-12-14 20:05:36.218623	2022-12-14 20:05:36.218623	\N	428	1
429	2	2022-12-14 20:05:36.259305	2022-12-14 20:05:36.259305	\N	429	1
430	2	2022-12-14 20:05:36.278063	2022-12-14 20:05:36.278063	\N	430	1
431	2	2022-12-14 20:05:36.298818	2022-12-14 20:05:36.298818	\N	431	1
432	2	2022-12-14 20:05:36.316838	2022-12-14 20:05:36.316838	\N	432	1
433	2	2022-12-14 20:05:36.333706	2022-12-14 20:05:36.333706	\N	433	1
434	2	2022-12-14 20:05:36.357528	2022-12-14 20:05:36.357528	\N	434	1
435	1	2022-12-14 20:05:36.377811	2022-12-14 20:05:36.377811	\N	435	1
436	1	2022-12-14 20:05:36.399395	2022-12-14 20:05:36.399395	\N	436	1
437	1	2022-12-14 20:05:36.421419	2022-12-14 20:05:36.421419	\N	437	1
438	1	2022-12-14 20:05:36.43863	2022-12-14 20:05:36.43863	\N	438	1
439	1	2022-12-14 20:05:36.457571	2022-12-14 20:05:36.457571	\N	439	1
440	1	2022-12-14 20:05:36.475466	2022-12-14 20:05:36.475466	\N	440	1
441	1	2022-12-14 20:05:36.492405	2022-12-14 20:05:36.492405	\N	441	1
442	1	2022-12-14 20:05:36.511495	2022-12-14 20:05:36.511495	\N	442	1
443	2	2022-12-14 20:05:36.526121	2022-12-14 20:05:36.526121	\N	443	1
444	2	2022-12-14 20:05:36.541967	2022-12-14 20:05:36.541967	\N	444	1
445	2	2022-12-14 20:05:36.557648	2022-12-14 20:05:36.557648	\N	445	1
446	1	2022-12-14 20:05:36.572251	2022-12-14 20:05:36.572251	\N	446	1
447	2	2022-12-14 20:05:36.58765	2022-12-14 20:05:36.58765	\N	447	1
448	2	2022-12-14 20:05:36.597663	2022-12-14 20:05:36.597663	\N	448	1
449	2	2022-12-14 20:05:36.604682	2022-12-14 20:05:36.604682	\N	449	1
450	1	2022-12-14 20:05:36.612411	2022-12-14 20:05:36.612411	\N	450	1
451	1	2022-12-14 20:05:36.619612	2022-12-14 20:05:36.619612	\N	451	1
452	1	2022-12-14 20:05:36.627493	2022-12-14 20:05:36.627493	\N	452	1
453	1	2022-12-14 20:05:36.63584	2022-12-14 20:05:36.63584	\N	453	1
454	1	2022-12-14 20:05:36.643156	2022-12-14 20:05:36.643156	\N	454	1
455	1	2022-12-14 20:05:36.653255	2022-12-14 20:05:36.653255	\N	455	1
456	1	2022-12-14 20:05:36.66747	2022-12-14 20:05:36.66747	\N	456	1
457	0	2022-12-14 20:05:36.67679	2022-12-14 20:05:36.67679	\N	457	1
458	1	2022-12-14 20:05:36.683201	2022-12-14 20:05:36.683201	\N	458	1
459	1	2022-12-14 20:05:36.689858	2022-12-14 20:05:36.689858	\N	459	1
460	1	2022-12-14 20:05:36.715026	2022-12-14 20:05:36.715026	\N	460	1
461	1	2022-12-14 20:05:36.731703	2022-12-14 20:05:36.731703	\N	461	1
462	1	2022-12-14 20:05:36.743697	2022-12-14 20:05:36.743697	\N	462	1
463	1	2022-12-14 20:05:36.751022	2022-12-14 20:05:36.751022	\N	463	1
464	1	2022-12-14 20:05:36.763078	2022-12-14 20:05:36.763078	\N	464	1
465	1	2022-12-14 20:05:36.772405	2022-12-14 20:05:36.772405	\N	465	1
466	1	2022-12-14 20:05:36.779943	2022-12-14 20:05:36.779943	\N	466	1
467	1	2022-12-14 20:05:36.787354	2022-12-14 20:05:36.787354	\N	467	1
468	1	2022-12-14 20:05:36.795259	2022-12-14 20:05:36.795259	\N	468	1
469	1	2022-12-14 20:05:36.80747	2022-12-14 20:05:36.80747	\N	469	1
470	1	2022-12-14 20:05:36.820407	2022-12-14 20:05:36.820407	\N	470	1
471	1	2022-12-14 20:05:36.828268	2022-12-14 20:05:36.828268	\N	471	1
472	1	2022-12-14 20:05:36.834859	2022-12-14 20:05:36.834859	\N	472	1
473	1	2022-12-14 20:05:36.841467	2022-12-14 20:05:36.841467	\N	473	1
474	1	2022-12-14 20:05:36.849962	2022-12-14 20:05:36.849962	\N	474	1
475	1	2022-12-14 20:05:36.857141	2022-12-14 20:05:36.857141	\N	475	1
476	1	2022-12-14 20:05:36.862807	2022-12-14 20:05:36.862807	\N	476	1
477	1	2022-12-14 20:05:36.868583	2022-12-14 20:05:36.868583	\N	477	1
478	1	2022-12-14 20:05:36.875075	2022-12-14 20:05:36.875075	\N	478	1
479	1	2022-12-14 20:05:36.881845	2022-12-14 20:05:36.881845	\N	479	1
480	1	2022-12-14 20:05:36.889377	2022-12-14 20:05:36.889377	\N	480	1
481	1	2022-12-14 20:05:36.896179	2022-12-14 20:05:36.896179	\N	481	1
482	1	2022-12-14 20:05:36.903673	2022-12-14 20:05:36.903673	\N	482	1
483	1	2022-12-14 20:05:36.910898	2022-12-14 20:05:36.910898	\N	483	1
484	1	2022-12-14 20:05:36.919314	2022-12-14 20:05:36.919314	\N	484	1
485	1	2022-12-14 20:05:36.926769	2022-12-14 20:05:36.926769	\N	485	1
486	1	2022-12-14 20:05:36.93393	2022-12-14 20:05:36.93393	\N	486	1
487	1	2022-12-14 20:05:36.942194	2022-12-14 20:05:36.942194	\N	487	1
488	1	2022-12-14 20:05:36.949077	2022-12-14 20:05:36.949077	\N	488	1
489	1	2022-12-14 20:05:36.957578	2022-12-14 20:05:36.957578	\N	489	1
490	1	2022-12-14 20:05:36.965819	2022-12-14 20:05:36.965819	\N	490	1
491	1	2022-12-14 20:05:36.973775	2022-12-14 20:05:36.973775	\N	491	1
492	1	2022-12-14 20:05:36.980008	2022-12-14 20:05:36.980008	\N	492	1
493	1	2022-12-14 20:05:36.98706	2022-12-14 20:05:36.98706	\N	493	1
494	1	2022-12-14 20:05:36.995199	2022-12-14 20:05:36.995199	\N	494	1
495	1	2022-12-14 20:05:37.001877	2022-12-14 20:05:37.001877	\N	495	1
496	1	2022-12-14 20:05:37.009882	2022-12-14 20:05:37.009882	\N	496	1
497	1	2022-12-14 20:05:37.01898	2022-12-14 20:05:37.01898	\N	497	1
498	1	2022-12-14 20:05:37.026432	2022-12-14 20:05:37.026432	\N	498	1
499	1	2022-12-14 20:05:37.033333	2022-12-14 20:05:37.033333	\N	499	1
500	1	2022-12-14 20:05:37.040936	2022-12-14 20:05:37.040936	\N	500	1
501	1	2022-12-14 20:05:37.048276	2022-12-14 20:05:37.048276	\N	501	1
502	1	2022-12-14 20:05:37.055339	2022-12-14 20:05:37.055339	\N	502	1
503	1	2022-12-14 20:05:37.062675	2022-12-14 20:05:37.062675	\N	503	1
504	1	2022-12-14 20:05:37.07033	2022-12-14 20:05:37.07033	\N	504	1
505	1	2022-12-14 20:05:37.077877	2022-12-14 20:05:37.077877	\N	505	1
506	1	2022-12-14 20:05:37.08582	2022-12-14 20:05:37.08582	\N	506	1
507	1	2022-12-14 20:05:37.093603	2022-12-14 20:05:37.093603	\N	507	1
508	1	2022-12-14 20:05:37.101643	2022-12-14 20:05:37.101643	\N	508	1
509	1	2022-12-14 20:05:37.109275	2022-12-14 20:05:37.109275	\N	509	1
510	1	2022-12-14 20:05:37.116795	2022-12-14 20:05:37.116795	\N	510	1
511	1	2022-12-14 20:05:37.124287	2022-12-14 20:05:37.124287	\N	511	1
512	1	2022-12-14 20:05:37.13126	2022-12-14 20:05:37.13126	\N	512	1
513	1	2022-12-14 20:05:37.138988	2022-12-14 20:05:37.138988	\N	513	1
514	1	2022-12-14 20:05:37.146162	2022-12-14 20:05:37.146162	\N	514	1
515	1	2022-12-14 20:05:37.154313	2022-12-14 20:05:37.154313	\N	515	1
516	1	2022-12-14 20:05:37.160488	2022-12-14 20:05:37.160488	\N	516	1
517	1	2022-12-14 20:05:37.167896	2022-12-14 20:05:37.167896	\N	517	1
518	1	2022-12-14 20:05:37.175891	2022-12-14 20:05:37.175891	\N	518	1
519	1	2022-12-14 20:05:37.183458	2022-12-14 20:05:37.183458	\N	519	1
520	1	2022-12-14 20:05:37.190955	2022-12-14 20:05:37.190955	\N	520	1
521	1	2022-12-14 20:05:37.197714	2022-12-14 20:05:37.197714	\N	521	1
522	1	2022-12-14 20:05:37.20494	2022-12-14 20:05:37.20494	\N	522	1
523	1	2022-12-14 20:05:37.212078	2022-12-14 20:05:37.212078	\N	523	1
524	1	2022-12-14 20:05:37.219923	2022-12-14 20:05:37.219923	\N	524	1
525	1	2022-12-14 20:05:37.22815	2022-12-14 20:05:37.22815	\N	525	1
526	1	2022-12-14 20:05:37.237468	2022-12-14 20:05:37.237468	\N	526	1
527	1	2022-12-14 20:05:37.244755	2022-12-14 20:05:37.244755	\N	527	1
528	1	2022-12-14 20:05:37.251002	2022-12-14 20:05:37.251002	\N	528	1
529	1	2022-12-14 20:05:37.25863	2022-12-14 20:05:37.25863	\N	529	1
530	1	2022-12-14 20:05:37.26562	2022-12-14 20:05:37.26562	\N	530	1
531	1	2022-12-14 20:05:37.273165	2022-12-14 20:05:37.273165	\N	531	1
532	1	2022-12-14 20:05:37.280497	2022-12-14 20:05:37.280497	\N	532	1
533	1	2022-12-14 20:05:37.28871	2022-12-14 20:05:37.28871	\N	533	1
534	1	2022-12-14 20:05:37.296285	2022-12-14 20:05:37.296285	\N	534	1
535	1	2022-12-14 20:05:37.303248	2022-12-14 20:05:37.303248	\N	535	1
536	1	2022-12-14 20:05:37.310678	2022-12-14 20:05:37.310678	\N	536	1
537	1	2022-12-14 20:05:37.317707	2022-12-14 20:05:37.317707	\N	537	1
538	1	2022-12-14 20:05:37.326068	2022-12-14 20:05:37.326068	\N	538	1
539	1	2022-12-14 20:05:37.333589	2022-12-14 20:05:37.333589	\N	539	1
540	1	2022-12-14 20:05:37.342406	2022-12-14 20:05:37.342406	\N	540	1
541	1	2022-12-14 20:05:37.350228	2022-12-14 20:05:37.350228	\N	541	1
542	1	2022-12-14 20:05:37.358519	2022-12-14 20:05:37.358519	\N	542	1
543	1	2022-12-14 20:05:37.366056	2022-12-14 20:05:37.366056	\N	543	1
544	1	2022-12-14 20:05:37.374449	2022-12-14 20:05:37.374449	\N	544	1
545	1	2022-12-14 20:05:37.381929	2022-12-14 20:05:37.381929	\N	545	1
546	1	2022-12-14 20:05:37.389189	2022-12-14 20:05:37.389189	\N	546	1
547	1	2022-12-14 20:05:37.396042	2022-12-14 20:05:37.396042	\N	547	1
548	2	2022-12-14 20:05:37.402544	2022-12-14 20:05:37.402544	\N	548	1
549	2	2022-12-14 20:05:37.409413	2022-12-14 20:05:37.409413	\N	549	1
550	1	2022-12-14 20:05:37.416827	2022-12-14 20:05:37.416827	\N	550	1
551	2	2022-12-14 20:05:37.4236	2022-12-14 20:05:37.4236	\N	551	1
552	2	2022-12-14 20:05:37.430955	2022-12-14 20:05:37.430955	\N	552	1
553	2	2022-12-14 20:05:37.438497	2022-12-14 20:05:37.438497	\N	553	1
554	2	2022-12-14 20:05:37.447702	2022-12-14 20:05:37.447702	\N	554	1
555	2	2022-12-14 20:05:37.454519	2022-12-14 20:05:37.454519	\N	555	1
556	1	2022-12-14 20:05:37.460765	2022-12-14 20:05:37.460765	\N	556	1
557	1	2022-12-14 20:05:37.466451	2022-12-14 20:05:37.466451	\N	557	1
558	1	2022-12-14 20:05:37.472853	2022-12-14 20:05:37.472853	\N	558	1
559	1	2022-12-14 20:05:37.478916	2022-12-14 20:05:37.478916	\N	559	1
560	1	2022-12-14 20:05:37.485789	2022-12-14 20:05:37.485789	\N	560	1
561	1	2022-12-14 20:05:37.492796	2022-12-14 20:05:37.492796	\N	561	1
562	1	2022-12-14 20:05:37.500042	2022-12-14 20:05:37.500042	\N	562	1
563	1	2022-12-14 20:05:37.507193	2022-12-14 20:05:37.507193	\N	563	1
564	1	2022-12-14 20:05:37.513789	2022-12-14 20:05:37.513789	\N	564	1
565	1	2022-12-14 20:05:37.520914	2022-12-14 20:05:37.520914	\N	565	1
566	2	2022-12-14 20:05:37.52775	2022-12-14 20:05:37.52775	\N	566	1
567	2	2022-12-14 20:05:37.53473	2022-12-14 20:05:37.53473	\N	567	1
568	2	2022-12-14 20:05:37.541738	2022-12-14 20:05:37.541738	\N	568	1
569	2	2022-12-14 20:05:37.548098	2022-12-14 20:05:37.548098	\N	569	1
570	2	2022-12-14 20:05:37.555478	2022-12-14 20:05:37.555478	\N	570	1
571	2	2022-12-14 20:05:37.562178	2022-12-14 20:05:37.562178	\N	571	1
572	2	2022-12-14 20:05:37.569907	2022-12-14 20:05:37.569907	\N	572	1
573	2	2022-12-14 20:05:37.576679	2022-12-14 20:05:37.576679	\N	573	1
574	1	2022-12-14 20:05:37.582609	2022-12-14 20:05:37.582609	\N	574	1
575	1	2022-12-14 20:05:37.589547	2022-12-14 20:05:37.589547	\N	575	1
576	1	2022-12-14 20:05:37.59644	2022-12-14 20:05:37.59644	\N	576	1
577	1	2022-12-14 20:05:37.604295	2022-12-14 20:05:37.604295	\N	577	1
578	1	2022-12-14 20:05:37.611601	2022-12-14 20:05:37.611601	\N	578	1
579	1	2022-12-14 20:05:37.619337	2022-12-14 20:05:37.619337	\N	579	1
580	1	2022-12-14 20:05:37.626991	2022-12-14 20:05:37.626991	\N	580	1
581	1	2022-12-14 20:05:37.63532	2022-12-14 20:05:37.63532	\N	581	1
582	1	2022-12-14 20:05:37.642804	2022-12-14 20:05:37.642804	\N	582	1
583	1	2022-12-14 20:05:37.649826	2022-12-14 20:05:37.649826	\N	583	1
667	0	2022-12-14 20:05:38.280368	2022-12-14 20:05:38.280368	\N	559	1
712	1	2022-12-14 20:05:38.600692	2022-12-14 20:05:38.600692	\N	379	1
733	1	2022-12-14 20:05:38.756307	2022-12-14 20:05:38.756307	\N	325	1
790	1	2022-12-14 20:05:39.184184	2022-12-14 20:05:39.184184	\N	25	1
803	1	2022-12-14 20:05:39.29128	2022-12-14 20:05:39.29128	\N	191	1
837	1	2022-12-14 20:05:39.539149	2022-12-14 20:05:39.539149	\N	247	1
838	1	2022-12-14 20:05:39.546184	2022-12-14 20:05:39.546184	\N	244	1
839	1	2022-12-14 20:05:39.552861	2022-12-14 20:05:39.552861	\N	252	1
840	-999	2022-12-14 20:05:39.559779	2022-12-14 20:05:39.559779	\N	165	1
843	1	2022-12-14 20:05:39.580583	2022-12-14 20:05:39.580583	\N	242	1
844	1	2022-12-14 20:05:39.589718	2022-12-14 20:05:39.589718	\N	243	1
845	1	2022-12-14 20:05:39.597687	2022-12-14 20:05:39.597687	\N	245	1
846	1	2022-12-14 20:05:39.605533	2022-12-14 20:05:39.605533	\N	248	1
847	1	2022-12-14 20:05:39.612584	2022-12-14 20:05:39.612584	\N	249	1
848	1	2022-12-14 20:05:39.619587	2022-12-14 20:05:39.619587	\N	250	1
851	1	2022-12-14 20:05:39.639488	2022-12-14 20:05:39.639488	\N	39	1
852	1	2022-12-14 20:05:39.646505	2022-12-14 20:05:39.646505	\N	221	1
856	1	2022-12-14 20:05:39.675768	2022-12-14 20:05:39.675768	\N	23	1
857	1	2022-12-14 20:05:39.683856	2022-12-14 20:05:39.683856	\N	24	1
858	1	2022-12-14 20:05:39.692403	2022-12-14 20:05:39.692403	\N	65	1
860	1	2022-12-14 20:05:39.707689	2022-12-14 20:05:39.707689	\N	85	1
862	1	2022-12-14 20:05:39.724159	2022-12-14 20:05:39.724159	\N	188	1
863	1	2022-12-14 20:05:39.73099	2022-12-14 20:05:39.73099	\N	224	1
864	1	2022-12-14 20:05:39.741759	2022-12-14 20:05:39.741759	\N	225	1
865	1	2022-12-14 20:05:39.749401	2022-12-14 20:05:39.749401	\N	238	1
866	1	2022-12-14 20:05:39.757115	2022-12-14 20:05:39.757115	\N	239	1
867	1	2022-12-14 20:05:39.764431	2022-12-14 20:05:39.764431	\N	240	1
868	1	2022-12-14 20:05:39.773823	2022-12-14 20:05:39.773823	\N	241	1
869	1	2022-12-14 20:05:39.78072	2022-12-14 20:05:39.78072	\N	246	1
870	1	2022-12-14 20:05:39.789515	2022-12-14 20:05:39.789515	\N	253	1
871	1	2022-12-14 20:05:39.798661	2022-12-14 20:05:39.798661	\N	254	1
872	1	2022-12-14 20:05:39.807201	2022-12-14 20:05:39.807201	\N	255	1
873	1	2022-12-14 20:05:39.813992	2022-12-14 20:05:39.813992	\N	261	1
874	1	2022-12-14 20:05:39.821591	2022-12-14 20:05:39.821591	\N	266	1
875	1	2022-12-14 20:05:39.8298	2022-12-14 20:05:39.8298	\N	352	1
876	1	2022-12-14 20:05:39.83762	2022-12-14 20:05:39.83762	\N	432	1
879	2	2022-12-14 20:05:39.859228	2022-12-14 20:05:39.859228	\N	104	1
881	2	2022-12-14 20:05:39.873696	2022-12-14 20:05:39.873696	\N	268	1
883	2	2022-12-14 20:05:39.887345	2022-12-14 20:05:39.887345	\N	272	1
884	1	2022-12-14 20:05:39.89526	2022-12-14 20:05:39.89526	\N	1	884
885	1	2022-12-14 20:05:39.903575	2022-12-14 20:05:39.903575	\N	2	884
886	1	2022-12-14 20:05:39.910639	2022-12-14 20:05:39.910639	\N	3	884
887	1	2022-12-14 20:05:39.917737	2022-12-14 20:05:39.917737	\N	4	884
888	1	2022-12-14 20:05:39.924877	2022-12-14 20:05:39.924877	\N	5	884
889	-999	2022-12-14 20:05:39.932326	2022-12-14 20:05:39.932326	\N	6	884
890	-999	2022-12-14 20:05:39.940854	2022-12-14 20:05:39.940854	\N	7	884
891	1	2022-12-14 20:05:39.948533	2022-12-14 20:05:39.948533	\N	8	884
892	1	2022-12-14 20:05:39.956371	2022-12-14 20:05:39.956371	\N	9	884
893	1	2022-12-14 20:05:39.963377	2022-12-14 20:05:39.963377	\N	10	884
894	1	2022-12-14 20:05:39.970956	2022-12-14 20:05:39.970956	\N	11	884
895	1	2022-12-14 20:05:39.978097	2022-12-14 20:05:39.978097	\N	12	884
896	1	2022-12-14 20:05:39.986017	2022-12-14 20:05:39.986017	\N	13	884
897	1	2022-12-14 20:05:39.994523	2022-12-14 20:05:39.994523	\N	14	884
898	0	2022-12-14 20:05:40.001961	2022-12-14 20:05:40.001961	\N	898	884
899	0	2022-12-14 20:05:40.010085	2022-12-14 20:05:40.010085	\N	15	884
900	1	2022-12-14 20:05:40.017841	2022-12-14 20:05:40.017841	\N	900	884
901	1	2022-12-14 20:05:40.025929	2022-12-14 20:05:40.025929	\N	901	884
902	1	2022-12-14 20:05:40.033768	2022-12-14 20:05:40.033768	\N	902	884
903	1	2022-12-14 20:05:40.041717	2022-12-14 20:05:40.041717	\N	16	884
904	1	2022-12-14 20:05:40.048653	2022-12-14 20:05:40.048653	\N	904	884
905	1	2022-12-14 20:05:40.055988	2022-12-14 20:05:40.055988	\N	19	884
906	1	2022-12-14 20:05:40.063319	2022-12-14 20:05:40.063319	\N	906	884
907	1	2022-12-14 20:05:40.071745	2022-12-14 20:05:40.071745	\N	20	884
908	1	2022-12-14 20:05:40.079528	2022-12-14 20:05:40.079528	\N	21	884
909	1	2022-12-14 20:05:40.087416	2022-12-14 20:05:40.087416	\N	909	884
910	1	2022-12-14 20:05:40.094436	2022-12-14 20:05:40.094436	\N	22	884
911	1	2022-12-14 20:05:40.104294	2022-12-14 20:05:40.104294	\N	23	884
912	1	2022-12-14 20:05:40.112778	2022-12-14 20:05:40.112778	\N	24	884
913	1	2022-12-14 20:05:40.120442	2022-12-14 20:05:40.120442	\N	25	884
914	1	2022-12-14 20:05:40.128142	2022-12-14 20:05:40.128142	\N	27	884
915	1	2022-12-14 20:05:40.135762	2022-12-14 20:05:40.135762	\N	29	884
916	1	2022-12-14 20:05:40.143294	2022-12-14 20:05:40.143294	\N	30	884
917	-999	2022-12-14 20:05:40.151535	2022-12-14 20:05:40.151535	\N	31	884
918	1	2022-12-14 20:05:40.15913	2022-12-14 20:05:40.15913	\N	32	884
919	1	2022-12-14 20:05:40.166882	2022-12-14 20:05:40.166882	\N	33	884
920	1	2022-12-14 20:05:40.174166	2022-12-14 20:05:40.174166	\N	34	884
921	-999	2022-12-14 20:05:40.181529	2022-12-14 20:05:40.181529	\N	35	884
922	2	2022-12-14 20:05:40.18933	2022-12-14 20:05:40.18933	\N	36	884
923	0	2022-12-14 20:05:40.196924	2022-12-14 20:05:40.196924	\N	46	884
924	0	2022-12-14 20:05:40.203937	2022-12-14 20:05:40.203937	\N	47	884
925	1	2022-12-14 20:05:40.211214	2022-12-14 20:05:40.211214	\N	48	884
926	1	2022-12-14 20:05:40.218659	2022-12-14 20:05:40.218659	\N	49	884
927	-999	2022-12-14 20:05:40.226151	2022-12-14 20:05:40.226151	\N	50	884
928	1	2022-12-14 20:05:40.233721	2022-12-14 20:05:40.233721	\N	51	884
929	1	2022-12-14 20:05:40.241302	2022-12-14 20:05:40.241302	\N	52	884
930	1	2022-12-14 20:05:40.248334	2022-12-14 20:05:40.248334	\N	53	884
931	1	2022-12-14 20:05:40.255663	2022-12-14 20:05:40.255663	\N	54	884
932	2	2022-12-14 20:05:40.263219	2022-12-14 20:05:40.263219	\N	55	884
933	0	2022-12-14 20:05:40.270426	2022-12-14 20:05:40.270426	\N	56	884
934	1	2022-12-14 20:05:40.278753	2022-12-14 20:05:40.278753	\N	57	884
935	1	2022-12-14 20:05:40.287286	2022-12-14 20:05:40.287286	\N	58	884
936	1	2022-12-14 20:05:40.295553	2022-12-14 20:05:40.295553	\N	59	884
937	1	2022-12-14 20:05:40.303965	2022-12-14 20:05:40.303965	\N	60	884
938	1	2022-12-14 20:05:40.31101	2022-12-14 20:05:40.31101	\N	61	884
939	1	2022-12-14 20:05:40.319323	2022-12-14 20:05:40.319323	\N	62	884
940	1	2022-12-14 20:05:40.327279	2022-12-14 20:05:40.327279	\N	64	884
941	0	2022-12-14 20:05:40.336867	2022-12-14 20:05:40.336867	\N	65	884
942	1	2022-12-14 20:05:40.344883	2022-12-14 20:05:40.344883	\N	67	884
943	1	2022-12-14 20:05:40.351899	2022-12-14 20:05:40.351899	\N	68	884
944	1	2022-12-14 20:05:40.358672	2022-12-14 20:05:40.358672	\N	69	884
945	1	2022-12-14 20:05:40.366756	2022-12-14 20:05:40.366756	\N	70	884
946	1	2022-12-14 20:05:40.37499	2022-12-14 20:05:40.37499	\N	71	884
947	-999	2022-12-14 20:05:40.383262	2022-12-14 20:05:40.383262	\N	72	884
948	1	2022-12-14 20:05:40.390377	2022-12-14 20:05:40.390377	\N	73	884
949	1	2022-12-14 20:05:40.39817	2022-12-14 20:05:40.39817	\N	74	884
950	1	2022-12-14 20:05:40.405845	2022-12-14 20:05:40.405845	\N	75	884
951	1	2022-12-14 20:05:40.413662	2022-12-14 20:05:40.413662	\N	76	884
952	0	2022-12-14 20:05:40.421333	2022-12-14 20:05:40.421333	\N	82	884
953	1	2022-12-14 20:05:40.427664	2022-12-14 20:05:40.427664	\N	86	884
954	1	2022-12-14 20:05:40.434974	2022-12-14 20:05:40.434974	\N	954	884
955	2	2022-12-14 20:05:40.441956	2022-12-14 20:05:40.441956	\N	89	884
956	1	2022-12-14 20:05:40.450436	2022-12-14 20:05:40.450436	\N	956	884
957	2	2022-12-14 20:05:40.456759	2022-12-14 20:05:40.456759	\N	957	884
958	1	2022-12-14 20:05:40.464089	2022-12-14 20:05:40.464089	\N	91	884
959	1	2022-12-14 20:05:40.471616	2022-12-14 20:05:40.471616	\N	959	884
960	1	2022-12-14 20:05:40.478936	2022-12-14 20:05:40.478936	\N	92	884
961	1	2022-12-14 20:05:40.486688	2022-12-14 20:05:40.486688	\N	93	884
962	1	2022-12-14 20:05:40.49483	2022-12-14 20:05:40.49483	\N	94	884
963	1	2022-12-14 20:05:40.503374	2022-12-14 20:05:40.503374	\N	95	884
964	1	2022-12-14 20:05:40.512635	2022-12-14 20:05:40.512635	\N	96	884
965	1	2022-12-14 20:05:40.519644	2022-12-14 20:05:40.519644	\N	97	884
966	1	2022-12-14 20:05:40.528084	2022-12-14 20:05:40.528084	\N	98	884
967	-999	2022-12-14 20:05:40.538618	2022-12-14 20:05:40.538618	\N	99	884
968	1	2022-12-14 20:05:40.546119	2022-12-14 20:05:40.546119	\N	100	884
969	1	2022-12-14 20:05:40.552637	2022-12-14 20:05:40.552637	\N	101	884
970	1	2022-12-14 20:05:40.559341	2022-12-14 20:05:40.559341	\N	970	884
971	2	2022-12-14 20:05:40.565729	2022-12-14 20:05:40.565729	\N	971	884
972	1	2022-12-14 20:05:40.572896	2022-12-14 20:05:40.572896	\N	103	884
973	1	2022-12-14 20:05:40.580194	2022-12-14 20:05:40.580194	\N	104	884
974	1	2022-12-14 20:05:40.58772	2022-12-14 20:05:40.58772	\N	105	884
975	1	2022-12-14 20:05:40.594792	2022-12-14 20:05:40.594792	\N	106	884
976	1	2022-12-14 20:05:40.603053	2022-12-14 20:05:40.603053	\N	107	884
977	1	2022-12-14 20:05:40.612842	2022-12-14 20:05:40.612842	\N	108	884
978	2	2022-12-14 20:05:40.619767	2022-12-14 20:05:40.619767	\N	111	884
979	1	2022-12-14 20:05:40.626857	2022-12-14 20:05:40.626857	\N	112	884
980	1	2022-12-14 20:05:40.634151	2022-12-14 20:05:40.634151	\N	980	884
981	1	2022-12-14 20:05:40.64141	2022-12-14 20:05:40.64141	\N	113	884
982	1	2022-12-14 20:05:40.647794	2022-12-14 20:05:40.647794	\N	982	884
983	1	2022-12-14 20:05:40.653479	2022-12-14 20:05:40.653479	\N	114	884
984	-999	2022-12-14 20:05:40.660521	2022-12-14 20:05:40.660521	\N	115	884
985	1	2022-12-14 20:05:40.667759	2022-12-14 20:05:40.667759	\N	985	884
986	1	2022-12-14 20:05:40.674506	2022-12-14 20:05:40.674506	\N	116	884
987	1	2022-12-14 20:05:40.681778	2022-12-14 20:05:40.681778	\N	117	884
988	1	2022-12-14 20:05:40.689399	2022-12-14 20:05:40.689399	\N	988	884
989	2	2022-12-14 20:05:40.696483	2022-12-14 20:05:40.696483	\N	989	884
990	2	2022-12-14 20:05:40.70758	2022-12-14 20:05:40.70758	\N	127	884
991	0	2022-12-14 20:05:40.715561	2022-12-14 20:05:40.715561	\N	991	884
992	2	2022-12-14 20:05:40.722798	2022-12-14 20:05:40.722798	\N	128	884
993	2	2022-12-14 20:05:40.729952	2022-12-14 20:05:40.729952	\N	129	884
994	1	2022-12-14 20:05:40.73651	2022-12-14 20:05:40.73651	\N	130	884
995	0	2022-12-14 20:05:40.746294	2022-12-14 20:05:40.746294	\N	132	884
996	2	2022-12-14 20:05:40.754995	2022-12-14 20:05:40.754995	\N	133	884
997	1	2022-12-14 20:05:40.762562	2022-12-14 20:05:40.762562	\N	997	884
998	1	2022-12-14 20:05:40.768635	2022-12-14 20:05:40.768635	\N	136	884
999	1	2022-12-14 20:05:40.777298	2022-12-14 20:05:40.777298	\N	137	884
1000	1	2022-12-14 20:05:40.784109	2022-12-14 20:05:40.784109	\N	138	884
1001	1	2022-12-14 20:05:40.791855	2022-12-14 20:05:40.791855	\N	1001	884
1002	1	2022-12-14 20:05:40.799307	2022-12-14 20:05:40.799307	\N	139	884
1003	1	2022-12-14 20:05:40.806778	2022-12-14 20:05:40.806778	\N	1003	884
1004	1	2022-12-14 20:05:40.813903	2022-12-14 20:05:40.813903	\N	1004	884
1005	1	2022-12-14 20:05:40.821716	2022-12-14 20:05:40.821716	\N	140	884
1006	1	2022-12-14 20:05:40.828801	2022-12-14 20:05:40.828801	\N	141	884
1007	1	2022-12-14 20:05:40.836416	2022-12-14 20:05:40.836416	\N	154	884
1008	1	2022-12-14 20:05:40.844013	2022-12-14 20:05:40.844013	\N	155	884
1009	1	2022-12-14 20:05:40.850393	2022-12-14 20:05:40.850393	\N	156	884
1010	1	2022-12-14 20:05:40.857326	2022-12-14 20:05:40.857326	\N	157	884
1011	-999	2022-12-14 20:05:40.864337	2022-12-14 20:05:40.864337	\N	158	884
1012	1	2022-12-14 20:05:40.8717	2022-12-14 20:05:40.8717	\N	159	884
1013	1	2022-12-14 20:05:40.879281	2022-12-14 20:05:40.879281	\N	160	884
1014	1	2022-12-14 20:05:40.887425	2022-12-14 20:05:40.887425	\N	161	884
1015	1	2022-12-14 20:05:40.89496	2022-12-14 20:05:40.89496	\N	162	884
1016	1	2022-12-14 20:05:40.903013	2022-12-14 20:05:40.903013	\N	163	884
1017	1	2022-12-14 20:05:40.910458	2022-12-14 20:05:40.910458	\N	164	884
1018	1	2022-12-14 20:05:40.918355	2022-12-14 20:05:40.918355	\N	165	884
1019	1	2022-12-14 20:05:40.925785	2022-12-14 20:05:40.925785	\N	166	884
1020	1	2022-12-14 20:05:40.933533	2022-12-14 20:05:40.933533	\N	167	884
1021	1	2022-12-14 20:05:40.94205	2022-12-14 20:05:40.94205	\N	168	884
1022	1	2022-12-14 20:05:40.949373	2022-12-14 20:05:40.949373	\N	169	884
1023	1	2022-12-14 20:05:40.957651	2022-12-14 20:05:40.957651	\N	1023	884
1024	1	2022-12-14 20:05:40.965172	2022-12-14 20:05:40.965172	\N	171	884
1025	1	2022-12-14 20:05:40.973151	2022-12-14 20:05:40.973151	\N	172	884
1026	1	2022-12-14 20:05:40.980202	2022-12-14 20:05:40.980202	\N	173	884
1027	1	2022-12-14 20:05:40.988174	2022-12-14 20:05:40.988174	\N	174	884
1028	1	2022-12-14 20:05:40.995371	2022-12-14 20:05:40.995371	\N	175	884
1029	1	2022-12-14 20:05:41.001533	2022-12-14 20:05:41.001533	\N	176	884
1030	1	2022-12-14 20:05:41.009387	2022-12-14 20:05:41.009387	\N	177	884
1031	1	2022-12-14 20:05:41.016879	2022-12-14 20:05:41.016879	\N	178	884
1032	1	2022-12-14 20:05:41.024525	2022-12-14 20:05:41.024525	\N	179	884
1033	1	2022-12-14 20:05:41.031541	2022-12-14 20:05:41.031541	\N	180	884
1034	1	2022-12-14 20:05:41.039186	2022-12-14 20:05:41.039186	\N	181	884
1035	1	2022-12-14 20:05:41.046555	2022-12-14 20:05:41.046555	\N	1035	884
1036	1	2022-12-14 20:05:41.054972	2022-12-14 20:05:41.054972	\N	183	884
1037	0	2022-12-14 20:05:41.062321	2022-12-14 20:05:41.062321	\N	184	884
1038	2	2022-12-14 20:05:41.069125	2022-12-14 20:05:41.069125	\N	185	884
1039	2	2022-12-14 20:05:41.07615	2022-12-14 20:05:41.07615	\N	186	884
1040	1	2022-12-14 20:05:41.084052	2022-12-14 20:05:41.084052	\N	1040	884
1041	1	2022-12-14 20:05:41.091919	2022-12-14 20:05:41.091919	\N	188	884
1042	1	2022-12-14 20:05:41.111244	2022-12-14 20:05:41.111244	\N	1042	884
1043	1	2022-12-14 20:05:41.121092	2022-12-14 20:05:41.121092	\N	191	884
1044	1	2022-12-14 20:05:41.128254	2022-12-14 20:05:41.128254	\N	1044	884
1045	1	2022-12-14 20:05:41.136314	2022-12-14 20:05:41.136314	\N	192	884
1046	1	2022-12-14 20:05:41.143886	2022-12-14 20:05:41.143886	\N	193	884
1047	1	2022-12-14 20:05:41.152285	2022-12-14 20:05:41.152285	\N	194	884
1048	1	2022-12-14 20:05:41.160137	2022-12-14 20:05:41.160137	\N	195	884
1049	2	2022-12-14 20:05:41.169151	2022-12-14 20:05:41.169151	\N	196	884
1050	1	2022-12-14 20:05:41.177318	2022-12-14 20:05:41.177318	\N	197	884
1051	1	2022-12-14 20:05:41.185105	2022-12-14 20:05:41.185105	\N	198	884
1052	1	2022-12-14 20:05:41.192643	2022-12-14 20:05:41.192643	\N	199	884
1053	1	2022-12-14 20:05:41.201233	2022-12-14 20:05:41.201233	\N	201	884
1054	1	2022-12-14 20:05:41.22326	2022-12-14 20:05:41.22326	\N	203	884
1055	1	2022-12-14 20:05:41.236514	2022-12-14 20:05:41.236514	\N	204	884
1056	0	2022-12-14 20:05:41.24672	2022-12-14 20:05:41.24672	\N	1056	884
1057	2	2022-12-14 20:05:41.257419	2022-12-14 20:05:41.257419	\N	1057	884
1058	1	2022-12-14 20:05:41.264841	2022-12-14 20:05:41.264841	\N	205	884
1059	1	2022-12-14 20:05:41.272174	2022-12-14 20:05:41.272174	\N	206	884
1060	1	2022-12-14 20:05:41.279474	2022-12-14 20:05:41.279474	\N	207	884
1061	0	2022-12-14 20:05:41.286701	2022-12-14 20:05:41.286701	\N	208	884
1062	1	2022-12-14 20:05:41.294384	2022-12-14 20:05:41.294384	\N	211	884
1063	1	2022-12-14 20:05:41.303227	2022-12-14 20:05:41.303227	\N	212	884
1064	0	2022-12-14 20:05:41.314611	2022-12-14 20:05:41.314611	\N	214	884
1065	1	2022-12-14 20:05:41.323982	2022-12-14 20:05:41.323982	\N	215	884
1066	1	2022-12-14 20:05:41.331712	2022-12-14 20:05:41.331712	\N	216	884
1067	1	2022-12-14 20:05:41.339671	2022-12-14 20:05:41.339671	\N	217	884
1068	1	2022-12-14 20:05:41.346463	2022-12-14 20:05:41.346463	\N	218	884
1069	1	2022-12-14 20:05:41.353314	2022-12-14 20:05:41.353314	\N	219	884
1070	1	2022-12-14 20:05:41.360912	2022-12-14 20:05:41.360912	\N	220	884
1071	1	2022-12-14 20:05:41.368812	2022-12-14 20:05:41.368812	\N	1071	884
1072	0	2022-12-14 20:05:41.376751	2022-12-14 20:05:41.376751	\N	221	884
1073	1	2022-12-14 20:05:41.383129	2022-12-14 20:05:41.383129	\N	222	884
1074	0	2022-12-14 20:05:41.390937	2022-12-14 20:05:41.390937	\N	1074	884
1075	1	2022-12-14 20:05:41.397545	2022-12-14 20:05:41.397545	\N	1075	884
1076	1	2022-12-14 20:05:41.407082	2022-12-14 20:05:41.407082	\N	223	884
1077	1	2022-12-14 20:05:41.414636	2022-12-14 20:05:41.414636	\N	1077	884
1078	0	2022-12-14 20:05:41.422774	2022-12-14 20:05:41.422774	\N	1078	884
1079	0	2022-12-14 20:05:41.429561	2022-12-14 20:05:41.429561	\N	1079	884
1080	2	2022-12-14 20:05:41.436482	2022-12-14 20:05:41.436482	\N	1080	884
1081	-999	2022-12-14 20:05:41.444394	2022-12-14 20:05:41.444394	\N	226	884
1082	-999	2022-12-14 20:05:41.451761	2022-12-14 20:05:41.451761	\N	227	884
1083	1	2022-12-14 20:05:41.45884	2022-12-14 20:05:41.45884	\N	228	884
1084	1	2022-12-14 20:05:41.465756	2022-12-14 20:05:41.465756	\N	1084	884
1085	2	2022-12-14 20:05:41.474678	2022-12-14 20:05:41.474678	\N	229	884
1086	1	2022-12-14 20:05:41.482149	2022-12-14 20:05:41.482149	\N	232	884
1087	2	2022-12-14 20:05:41.490948	2022-12-14 20:05:41.490948	\N	1087	884
1088	1	2022-12-14 20:05:41.497654	2022-12-14 20:05:41.497654	\N	235	884
1089	1	2022-12-14 20:05:41.50572	2022-12-14 20:05:41.50572	\N	1089	884
1090	1	2022-12-14 20:05:41.512509	2022-12-14 20:05:41.512509	\N	236	884
1091	1	2022-12-14 20:05:41.520518	2022-12-14 20:05:41.520518	\N	237	884
1092	1	2022-12-14 20:05:41.528966	2022-12-14 20:05:41.528966	\N	1092	884
1093	2	2022-12-14 20:05:41.537574	2022-12-14 20:05:41.537574	\N	1093	884
1094	2	2022-12-14 20:05:41.545928	2022-12-14 20:05:41.545928	\N	1094	884
1095	2	2022-12-14 20:05:41.55594	2022-12-14 20:05:41.55594	\N	1095	884
1096	1	2022-12-14 20:05:41.563775	2022-12-14 20:05:41.563775	\N	238	884
1097	2	2022-12-14 20:05:41.571914	2022-12-14 20:05:41.571914	\N	252	884
1098	2	2022-12-14 20:05:41.579747	2022-12-14 20:05:41.579747	\N	253	884
1099	0	2022-12-14 20:05:41.587067	2022-12-14 20:05:41.587067	\N	254	884
1100	2	2022-12-14 20:05:41.593552	2022-12-14 20:05:41.593552	\N	255	884
1101	2	2022-12-14 20:05:41.600337	2022-12-14 20:05:41.600337	\N	256	884
1102	2	2022-12-14 20:05:41.609148	2022-12-14 20:05:41.609148	\N	257	884
1103	2	2022-12-14 20:05:41.617568	2022-12-14 20:05:41.617568	\N	258	884
1104	2	2022-12-14 20:05:41.625073	2022-12-14 20:05:41.625073	\N	259	884
1105	2	2022-12-14 20:05:41.633214	2022-12-14 20:05:41.633214	\N	260	884
1106	2	2022-12-14 20:05:41.640719	2022-12-14 20:05:41.640719	\N	262	884
1107	0	2022-12-14 20:05:41.64806	2022-12-14 20:05:41.64806	\N	263	884
1108	1	2022-12-14 20:05:41.655809	2022-12-14 20:05:41.655809	\N	264	884
1109	0	2022-12-14 20:05:41.663992	2022-12-14 20:05:41.663992	\N	265	884
1110	2	2022-12-14 20:05:41.67205	2022-12-14 20:05:41.67205	\N	266	884
1111	0	2022-12-14 20:05:41.679356	2022-12-14 20:05:41.679356	\N	267	884
1112	2	2022-12-14 20:05:41.688266	2022-12-14 20:05:41.688266	\N	268	884
1113	2	2022-12-14 20:05:41.697129	2022-12-14 20:05:41.697129	\N	269	884
1114	2	2022-12-14 20:05:41.705415	2022-12-14 20:05:41.705415	\N	270	884
1115	2	2022-12-14 20:05:41.713875	2022-12-14 20:05:41.713875	\N	271	884
1116	1	2022-12-14 20:05:41.721331	2022-12-14 20:05:41.721331	\N	273	884
1117	1	2022-12-14 20:05:41.731049	2022-12-14 20:05:41.731049	\N	274	884
1118	1	2022-12-14 20:05:41.741619	2022-12-14 20:05:41.741619	\N	275	884
1119	-999	2022-12-14 20:05:41.748887	2022-12-14 20:05:41.748887	\N	283	884
1120	2	2022-12-14 20:05:41.756466	2022-12-14 20:05:41.756466	\N	285	884
1121	1	2022-12-14 20:05:41.764118	2022-12-14 20:05:41.764118	\N	286	884
1122	1	2022-12-14 20:05:41.77249	2022-12-14 20:05:41.77249	\N	287	884
1123	1	2022-12-14 20:05:41.780618	2022-12-14 20:05:41.780618	\N	288	884
1124	2	2022-12-14 20:05:41.787865	2022-12-14 20:05:41.787865	\N	289	884
1125	2	2022-12-14 20:05:41.795385	2022-12-14 20:05:41.795385	\N	290	884
1126	0	2022-12-14 20:05:41.802905	2022-12-14 20:05:41.802905	\N	291	884
1127	1	2022-12-14 20:05:41.810414	2022-12-14 20:05:41.810414	\N	292	884
1128	1	2022-12-14 20:05:41.81762	2022-12-14 20:05:41.81762	\N	293	884
1129	1	2022-12-14 20:05:41.825371	2022-12-14 20:05:41.825371	\N	294	884
1130	1	2022-12-14 20:05:41.833541	2022-12-14 20:05:41.833541	\N	295	884
1131	1	2022-12-14 20:05:41.841795	2022-12-14 20:05:41.841795	\N	296	884
1132	1	2022-12-14 20:05:41.849985	2022-12-14 20:05:41.849985	\N	297	884
1133	1	2022-12-14 20:05:41.858467	2022-12-14 20:05:41.858467	\N	298	884
1134	1	2022-12-14 20:05:41.866973	2022-12-14 20:05:41.866973	\N	299	884
1135	1	2022-12-14 20:05:41.875414	2022-12-14 20:05:41.875414	\N	300	884
1136	1	2022-12-14 20:05:41.882314	2022-12-14 20:05:41.882314	\N	301	884
1137	1	2022-12-14 20:05:41.889378	2022-12-14 20:05:41.889378	\N	303	884
1138	1	2022-12-14 20:05:41.896665	2022-12-14 20:05:41.896665	\N	304	884
1139	1	2022-12-14 20:05:41.90415	2022-12-14 20:05:41.90415	\N	305	884
1140	1	2022-12-14 20:05:41.911142	2022-12-14 20:05:41.911142	\N	306	884
1141	1	2022-12-14 20:05:41.917958	2022-12-14 20:05:41.917958	\N	307	884
1142	1	2022-12-14 20:05:41.924827	2022-12-14 20:05:41.924827	\N	308	884
1143	1	2022-12-14 20:05:41.932897	2022-12-14 20:05:41.932897	\N	309	884
1144	1	2022-12-14 20:05:41.940388	2022-12-14 20:05:41.940388	\N	310	884
1145	1	2022-12-14 20:05:41.94778	2022-12-14 20:05:41.94778	\N	311	884
1146	1	2022-12-14 20:05:41.955071	2022-12-14 20:05:41.955071	\N	312	884
1147	1	2022-12-14 20:05:41.963459	2022-12-14 20:05:41.963459	\N	1147	884
1148	1	2022-12-14 20:05:41.975267	2022-12-14 20:05:41.975267	\N	1148	884
1149	1	2022-12-14 20:05:41.989378	2022-12-14 20:05:41.989378	\N	1149	884
1150	1	2022-12-14 20:05:42.0018	2022-12-14 20:05:42.0018	\N	1150	884
1151	1	2022-12-14 20:05:42.015367	2022-12-14 20:05:42.015367	\N	1151	884
1152	1	2022-12-14 20:05:42.02471	2022-12-14 20:05:42.02471	\N	1152	884
1153	1	2022-12-14 20:05:42.033415	2022-12-14 20:05:42.033415	\N	1153	884
1154	1	2022-12-14 20:05:42.041037	2022-12-14 20:05:42.041037	\N	1154	884
1155	1	2022-12-14 20:05:42.048516	2022-12-14 20:05:42.048516	\N	314	884
1156	1	2022-12-14 20:05:42.055969	2022-12-14 20:05:42.055969	\N	1156	884
1157	2	2022-12-14 20:05:42.0639	2022-12-14 20:05:42.0639	\N	1157	884
1158	1	2022-12-14 20:05:42.070805	2022-12-14 20:05:42.070805	\N	316	884
1159	1	2022-12-14 20:05:42.077606	2022-12-14 20:05:42.077606	\N	317	884
1160	-999	2022-12-14 20:05:42.084055	2022-12-14 20:05:42.084055	\N	318	884
1161	1	2022-12-14 20:05:42.091727	2022-12-14 20:05:42.091727	\N	319	884
1162	2	2022-12-14 20:05:42.100035	2022-12-14 20:05:42.100035	\N	320	884
1163	1	2022-12-14 20:05:42.106939	2022-12-14 20:05:42.106939	\N	321	884
1164	1	2022-12-14 20:05:42.114597	2022-12-14 20:05:42.114597	\N	324	884
1165	1	2022-12-14 20:05:42.121917	2022-12-14 20:05:42.121917	\N	325	884
1166	1	2022-12-14 20:05:42.12976	2022-12-14 20:05:42.12976	\N	326	884
1167	1	2022-12-14 20:05:42.138256	2022-12-14 20:05:42.138256	\N	328	884
1168	1	2022-12-14 20:05:42.146011	2022-12-14 20:05:42.146011	\N	329	884
1169	1	2022-12-14 20:05:42.153146	2022-12-14 20:05:42.153146	\N	330	884
1170	1	2022-12-14 20:05:42.16021	2022-12-14 20:05:42.16021	\N	331	884
1171	2	2022-12-14 20:05:42.167714	2022-12-14 20:05:42.167714	\N	332	884
1172	1	2022-12-14 20:05:42.175424	2022-12-14 20:05:42.175424	\N	333	884
1173	0	2022-12-14 20:05:42.183037	2022-12-14 20:05:42.183037	\N	334	884
1174	1	2022-12-14 20:05:42.190064	2022-12-14 20:05:42.190064	\N	335	884
1175	1	2022-12-14 20:05:42.196893	2022-12-14 20:05:42.196893	\N	336	884
1176	1	2022-12-14 20:05:42.20397	2022-12-14 20:05:42.20397	\N	1176	884
1177	2	2022-12-14 20:05:42.210489	2022-12-14 20:05:42.210489	\N	337	884
1178	0	2022-12-14 20:05:42.217393	2022-12-14 20:05:42.217393	\N	338	884
1179	2	2022-12-14 20:05:42.2286	2022-12-14 20:05:42.2286	\N	339	884
1180	1	2022-12-14 20:05:42.235455	2022-12-14 20:05:42.235455	\N	340	884
1181	1	2022-12-14 20:05:42.243514	2022-12-14 20:05:42.243514	\N	341	884
1182	2	2022-12-14 20:05:42.25103	2022-12-14 20:05:42.25103	\N	342	884
1183	1	2022-12-14 20:05:42.2587	2022-12-14 20:05:42.2587	\N	343	884
1184	1	2022-12-14 20:05:42.26542	2022-12-14 20:05:42.26542	\N	344	884
1185	1	2022-12-14 20:05:42.271639	2022-12-14 20:05:42.271639	\N	345	884
1186	1	2022-12-14 20:05:42.27855	2022-12-14 20:05:42.27855	\N	346	884
1187	1	2022-12-14 20:05:42.286587	2022-12-14 20:05:42.286587	\N	347	884
1188	1	2022-12-14 20:05:42.294813	2022-12-14 20:05:42.294813	\N	348	884
1189	1	2022-12-14 20:05:42.30174	2022-12-14 20:05:42.30174	\N	349	884
1190	1	2022-12-14 20:05:42.309049	2022-12-14 20:05:42.309049	\N	350	884
1191	1	2022-12-14 20:05:42.316356	2022-12-14 20:05:42.316356	\N	352	884
1192	1	2022-12-14 20:05:42.323812	2022-12-14 20:05:42.323812	\N	353	884
1193	1	2022-12-14 20:05:42.332043	2022-12-14 20:05:42.332043	\N	354	884
1194	1	2022-12-14 20:05:42.339722	2022-12-14 20:05:42.339722	\N	355	884
1195	1	2022-12-14 20:05:42.347157	2022-12-14 20:05:42.347157	\N	358	884
1196	1	2022-12-14 20:05:42.355077	2022-12-14 20:05:42.355077	\N	359	884
1197	1	2022-12-14 20:05:42.362616	2022-12-14 20:05:42.362616	\N	360	884
1198	1	2022-12-14 20:05:42.370191	2022-12-14 20:05:42.370191	\N	361	884
1199	1	2022-12-14 20:05:42.376936	2022-12-14 20:05:42.376936	\N	362	884
1200	0	2022-12-14 20:05:42.384338	2022-12-14 20:05:42.384338	\N	363	884
1201	-999	2022-12-14 20:05:42.390873	2022-12-14 20:05:42.390873	\N	365	884
1202	0	2022-12-14 20:05:42.398447	2022-12-14 20:05:42.398447	\N	368	884
1203	0	2022-12-14 20:05:42.404845	2022-12-14 20:05:42.404845	\N	369	884
1204	-999	2022-12-14 20:05:42.410888	2022-12-14 20:05:42.410888	\N	370	884
1205	1	2022-12-14 20:05:42.41815	2022-12-14 20:05:42.41815	\N	371	884
1206	0	2022-12-14 20:05:42.425342	2022-12-14 20:05:42.425342	\N	372	884
1207	1	2022-12-14 20:05:42.432048	2022-12-14 20:05:42.432048	\N	373	884
1208	1	2022-12-14 20:05:42.439022	2022-12-14 20:05:42.439022	\N	374	884
1209	1	2022-12-14 20:05:42.446525	2022-12-14 20:05:42.446525	\N	375	884
1210	-999	2022-12-14 20:05:42.45407	2022-12-14 20:05:42.45407	\N	378	884
1211	-999	2022-12-14 20:05:42.460762	2022-12-14 20:05:42.460762	\N	379	884
1212	1	2022-12-14 20:05:42.468511	2022-12-14 20:05:42.468511	\N	1212	884
1213	1	2022-12-14 20:05:42.475894	2022-12-14 20:05:42.475894	\N	380	884
1214	1	2022-12-14 20:05:42.482815	2022-12-14 20:05:42.482815	\N	381	884
1215	1	2022-12-14 20:05:42.489331	2022-12-14 20:05:42.489331	\N	384	884
1216	1	2022-12-14 20:05:42.496586	2022-12-14 20:05:42.496586	\N	385	884
1217	1	2022-12-14 20:05:42.50312	2022-12-14 20:05:42.50312	\N	386	884
1218	1	2022-12-14 20:05:42.511562	2022-12-14 20:05:42.511562	\N	387	884
1219	1	2022-12-14 20:05:42.51883	2022-12-14 20:05:42.51883	\N	388	884
1220	1	2022-12-14 20:05:42.525883	2022-12-14 20:05:42.525883	\N	1220	884
1221	1	2022-12-14 20:05:42.533602	2022-12-14 20:05:42.533602	\N	389	884
1222	1	2022-12-14 20:05:42.541119	2022-12-14 20:05:42.541119	\N	390	884
1223	1	2022-12-14 20:05:42.54991	2022-12-14 20:05:42.54991	\N	392	884
1224	1	2022-12-14 20:05:42.556964	2022-12-14 20:05:42.556964	\N	393	884
1225	1	2022-12-14 20:05:42.56404	2022-12-14 20:05:42.56404	\N	394	884
1226	1	2022-12-14 20:05:42.570895	2022-12-14 20:05:42.570895	\N	395	884
1227	1	2022-12-14 20:05:42.578262	2022-12-14 20:05:42.578262	\N	396	884
1228	1	2022-12-14 20:05:42.584603	2022-12-14 20:05:42.584603	\N	398	884
1229	1	2022-12-14 20:05:42.591813	2022-12-14 20:05:42.591813	\N	399	884
1230	1	2022-12-14 20:05:42.599037	2022-12-14 20:05:42.599037	\N	400	884
1231	1	2022-12-14 20:05:42.606105	2022-12-14 20:05:42.606105	\N	401	884
1232	-999	2022-12-14 20:05:42.612355	2022-12-14 20:05:42.612355	\N	409	884
1233	1	2022-12-14 20:05:42.618732	2022-12-14 20:05:42.618732	\N	411	884
1234	2	2022-12-14 20:05:42.625876	2022-12-14 20:05:42.625876	\N	412	884
1235	2	2022-12-14 20:05:42.633781	2022-12-14 20:05:42.633781	\N	1235	884
1236	-999	2022-12-14 20:05:42.640978	2022-12-14 20:05:42.640978	\N	415	884
1237	0	2022-12-14 20:05:42.648214	2022-12-14 20:05:42.648214	\N	1237	884
1238	2	2022-12-14 20:05:42.655266	2022-12-14 20:05:42.655266	\N	1238	884
1239	0	2022-12-14 20:05:42.662597	2022-12-14 20:05:42.662597	\N	1239	884
1240	2	2022-12-14 20:05:42.670439	2022-12-14 20:05:42.670439	\N	1240	884
1241	0	2022-12-14 20:05:42.677713	2022-12-14 20:05:42.677713	\N	1241	884
1242	2	2022-12-14 20:05:42.686063	2022-12-14 20:05:42.686063	\N	1242	884
1243	2	2022-12-14 20:05:42.693546	2022-12-14 20:05:42.693546	\N	1243	884
1244	2	2022-12-14 20:05:42.701324	2022-12-14 20:05:42.701324	\N	1244	884
1245	0	2022-12-14 20:05:42.710183	2022-12-14 20:05:42.710183	\N	1245	884
1246	-999	2022-12-14 20:05:42.717503	2022-12-14 20:05:42.717503	\N	417	884
1247	0	2022-12-14 20:05:42.725136	2022-12-14 20:05:42.725136	\N	1247	884
1248	0	2022-12-14 20:05:42.732367	2022-12-14 20:05:42.732367	\N	418	884
1249	2	2022-12-14 20:05:42.738568	2022-12-14 20:05:42.738568	\N	419	884
1250	2	2022-12-14 20:05:42.74629	2022-12-14 20:05:42.74629	\N	1250	884
1251	2	2022-12-14 20:05:42.754534	2022-12-14 20:05:42.754534	\N	1251	884
1252	0	2022-12-14 20:05:42.764394	2022-12-14 20:05:42.764394	\N	420	884
1253	0	2022-12-14 20:05:42.774229	2022-12-14 20:05:42.774229	\N	435	884
1254	1	2022-12-14 20:05:42.780845	2022-12-14 20:05:42.780845	\N	1254	884
1255	0	2022-12-14 20:05:42.788154	2022-12-14 20:05:42.788154	\N	436	884
1256	1	2022-12-14 20:05:42.794847	2022-12-14 20:05:42.794847	\N	437	884
1257	1	2022-12-14 20:05:42.802157	2022-12-14 20:05:42.802157	\N	1257	884
1258	1	2022-12-14 20:05:42.80971	2022-12-14 20:05:42.80971	\N	438	884
1259	1	2022-12-14 20:05:42.818136	2022-12-14 20:05:42.818136	\N	1259	884
1260	-999	2022-12-14 20:05:42.825872	2022-12-14 20:05:42.825872	\N	1260	884
1261	0	2022-12-14 20:05:42.833065	2022-12-14 20:05:42.833065	\N	440	884
1262	0	2022-12-14 20:05:42.841276	2022-12-14 20:05:42.841276	\N	443	884
1263	2	2022-12-14 20:05:42.848202	2022-12-14 20:05:42.848202	\N	444	884
1264	2	2022-12-14 20:05:42.855038	2022-12-14 20:05:42.855038	\N	445	884
1265	2	2022-12-14 20:05:42.861782	2022-12-14 20:05:42.861782	\N	446	884
1266	2	2022-12-14 20:05:42.868986	2022-12-14 20:05:42.868986	\N	1266	884
1267	2	2022-12-14 20:05:42.875925	2022-12-14 20:05:42.875925	\N	447	884
1268	0	2022-12-14 20:05:42.884355	2022-12-14 20:05:42.884355	\N	448	884
1269	2	2022-12-14 20:05:42.891732	2022-12-14 20:05:42.891732	\N	449	884
1270	0	2022-12-14 20:05:42.898896	2022-12-14 20:05:42.898896	\N	1270	884
1271	1	2022-12-14 20:05:42.906745	2022-12-14 20:05:42.906745	\N	450	884
1272	-999	2022-12-14 20:05:42.914655	2022-12-14 20:05:42.914655	\N	451	884
1273	1	2022-12-14 20:05:42.923086	2022-12-14 20:05:42.923086	\N	452	884
1274	1	2022-12-14 20:05:42.930428	2022-12-14 20:05:42.930428	\N	1274	884
1275	2	2022-12-14 20:05:42.93836	2022-12-14 20:05:42.93836	\N	453	884
1276	-999	2022-12-14 20:05:42.945298	2022-12-14 20:05:42.945298	\N	1276	884
1277	1	2022-12-14 20:05:42.953129	2022-12-14 20:05:42.953129	\N	456	884
1278	1	2022-12-14 20:05:42.9608	2022-12-14 20:05:42.9608	\N	460	884
1279	1	2022-12-14 20:05:42.968393	2022-12-14 20:05:42.968393	\N	462	884
1280	1	2022-12-14 20:05:42.97594	2022-12-14 20:05:42.97594	\N	464	884
1281	1	2022-12-14 20:05:42.983681	2022-12-14 20:05:42.983681	\N	466	884
1282	1	2022-12-14 20:05:42.991502	2022-12-14 20:05:42.991502	\N	467	884
1283	1	2022-12-14 20:05:42.998197	2022-12-14 20:05:42.998197	\N	468	884
1284	-999	2022-12-14 20:05:43.006905	2022-12-14 20:05:43.006905	\N	470	884
1285	1	2022-12-14 20:05:43.014845	2022-12-14 20:05:43.014845	\N	471	884
1286	1	2022-12-14 20:05:43.022862	2022-12-14 20:05:43.022862	\N	472	884
1287	1	2022-12-14 20:05:43.030498	2022-12-14 20:05:43.030498	\N	473	884
1288	1	2022-12-14 20:05:43.03918	2022-12-14 20:05:43.03918	\N	475	884
1289	2	2022-12-14 20:05:43.046691	2022-12-14 20:05:43.046691	\N	476	884
1290	1	2022-12-14 20:05:43.054455	2022-12-14 20:05:43.054455	\N	477	884
1291	2	2022-12-14 20:05:43.06201	2022-12-14 20:05:43.06201	\N	478	884
1292	1	2022-12-14 20:05:43.069096	2022-12-14 20:05:43.069096	\N	479	884
1293	1	2022-12-14 20:05:43.076884	2022-12-14 20:05:43.076884	\N	480	884
1294	1	2022-12-14 20:05:43.085061	2022-12-14 20:05:43.085061	\N	481	884
1295	0	2022-12-14 20:05:43.092574	2022-12-14 20:05:43.092574	\N	482	884
1296	1	2022-12-14 20:05:43.099788	2022-12-14 20:05:43.099788	\N	1296	884
1297	1	2022-12-14 20:05:43.10773	2022-12-14 20:05:43.10773	\N	483	884
1298	2	2022-12-14 20:05:43.115219	2022-12-14 20:05:43.115219	\N	1298	884
1299	1	2022-12-14 20:05:43.123839	2022-12-14 20:05:43.123839	\N	484	884
1300	1	2022-12-14 20:05:43.130623	2022-12-14 20:05:43.130623	\N	485	884
1301	0	2022-12-14 20:05:43.138287	2022-12-14 20:05:43.138287	\N	486	884
1302	1	2022-12-14 20:05:43.145139	2022-12-14 20:05:43.145139	\N	1302	884
1303	1	2022-12-14 20:05:43.152664	2022-12-14 20:05:43.152664	\N	490	884
1304	-999	2022-12-14 20:05:43.161139	2022-12-14 20:05:43.161139	\N	491	884
1305	1	2022-12-14 20:05:43.168617	2022-12-14 20:05:43.168617	\N	492	884
1306	1	2022-12-14 20:05:43.178603	2022-12-14 20:05:43.178603	\N	493	884
1307	-999	2022-12-14 20:05:43.189185	2022-12-14 20:05:43.189185	\N	494	884
1308	1	2022-12-14 20:05:43.203862	2022-12-14 20:05:43.203862	\N	495	884
1309	1	2022-12-14 20:05:43.21836	2022-12-14 20:05:43.21836	\N	496	884
1310	1	2022-12-14 20:05:43.231611	2022-12-14 20:05:43.231611	\N	497	884
1311	1	2022-12-14 20:05:43.24551	2022-12-14 20:05:43.24551	\N	498	884
1312	1	2022-12-14 20:05:43.291168	2022-12-14 20:05:43.291168	\N	499	884
1313	1	2022-12-14 20:05:43.308938	2022-12-14 20:05:43.308938	\N	1313	884
1314	1	2022-12-14 20:05:43.32386	2022-12-14 20:05:43.32386	\N	500	884
1315	1	2022-12-14 20:05:43.338365	2022-12-14 20:05:43.338365	\N	501	884
1316	1	2022-12-14 20:05:43.35311	2022-12-14 20:05:43.35311	\N	502	884
1317	1	2022-12-14 20:05:43.371914	2022-12-14 20:05:43.371914	\N	503	884
1318	1	2022-12-14 20:05:43.391717	2022-12-14 20:05:43.391717	\N	504	884
1319	1	2022-12-14 20:05:43.41093	2022-12-14 20:05:43.41093	\N	505	884
1320	1	2022-12-14 20:05:43.428312	2022-12-14 20:05:43.428312	\N	506	884
1321	1	2022-12-14 20:05:43.446113	2022-12-14 20:05:43.446113	\N	508	884
1322	1	2022-12-14 20:05:43.463282	2022-12-14 20:05:43.463282	\N	509	884
1323	1	2022-12-14 20:05:43.481219	2022-12-14 20:05:43.481219	\N	1323	884
1324	1	2022-12-14 20:05:43.497967	2022-12-14 20:05:43.497967	\N	511	884
1325	1	2022-12-14 20:05:43.514072	2022-12-14 20:05:43.514072	\N	512	884
1326	1	2022-12-14 20:05:43.529159	2022-12-14 20:05:43.529159	\N	1326	884
1327	1	2022-12-14 20:05:43.544034	2022-12-14 20:05:43.544034	\N	513	884
1328	1	2022-12-14 20:05:43.560985	2022-12-14 20:05:43.560985	\N	517	884
1329	1	2022-12-14 20:05:43.576848	2022-12-14 20:05:43.576848	\N	519	884
1330	1	2022-12-14 20:05:43.591991	2022-12-14 20:05:43.591991	\N	520	884
1331	0	2022-12-14 20:05:43.607836	2022-12-14 20:05:43.607836	\N	521	884
1332	1	2022-12-14 20:05:43.620556	2022-12-14 20:05:43.620556	\N	522	884
1333	1	2022-12-14 20:05:43.629805	2022-12-14 20:05:43.629805	\N	1333	884
1334	-999	2022-12-14 20:05:43.638362	2022-12-14 20:05:43.638362	\N	523	884
1335	1	2022-12-14 20:05:43.646363	2022-12-14 20:05:43.646363	\N	524	884
1336	1	2022-12-14 20:05:43.655179	2022-12-14 20:05:43.655179	\N	525	884
1337	1	2022-12-14 20:05:43.663423	2022-12-14 20:05:43.663423	\N	526	884
1338	1	2022-12-14 20:05:43.678918	2022-12-14 20:05:43.678918	\N	538	884
1339	1	2022-12-14 20:05:43.691426	2022-12-14 20:05:43.691426	\N	530	884
1340	1	2022-12-14 20:05:43.702175	2022-12-14 20:05:43.702175	\N	531	884
1341	1	2022-12-14 20:05:43.709999	2022-12-14 20:05:43.709999	\N	532	884
1342	1	2022-12-14 20:05:43.717173	2022-12-14 20:05:43.717173	\N	533	884
1343	1	2022-12-14 20:05:43.725824	2022-12-14 20:05:43.725824	\N	534	884
1344	1	2022-12-14 20:05:43.733275	2022-12-14 20:05:43.733275	\N	535	884
1345	1	2022-12-14 20:05:43.745169	2022-12-14 20:05:43.745169	\N	536	884
1346	1	2022-12-14 20:05:43.755563	2022-12-14 20:05:43.755563	\N	537	884
1348	1	2022-12-14 20:05:43.769591	2022-12-14 20:05:43.769591	\N	539	884
1349	1	2022-12-14 20:05:43.78298	2022-12-14 20:05:43.78298	\N	540	884
1350	1	2022-12-14 20:05:43.791152	2022-12-14 20:05:43.791152	\N	541	884
1351	1	2022-12-14 20:05:43.798179	2022-12-14 20:05:43.798179	\N	542	884
1352	1	2022-12-14 20:05:43.805954	2022-12-14 20:05:43.805954	\N	543	884
1353	1	2022-12-14 20:05:43.813551	2022-12-14 20:05:43.813551	\N	544	884
1354	-999	2022-12-14 20:05:43.821648	2022-12-14 20:05:43.821648	\N	545	884
1355	1	2022-12-14 20:05:43.82903	2022-12-14 20:05:43.82903	\N	546	884
1356	1	2022-12-14 20:05:43.836243	2022-12-14 20:05:43.836243	\N	547	884
1357	2	2022-12-14 20:05:43.843948	2022-12-14 20:05:43.843948	\N	548	884
1358	2	2022-12-14 20:05:43.851042	2022-12-14 20:05:43.851042	\N	549	884
1359	2	2022-12-14 20:05:43.858491	2022-12-14 20:05:43.858491	\N	550	884
1360	2	2022-12-14 20:05:43.867444	2022-12-14 20:05:43.867444	\N	551	884
1361	-999	2022-12-14 20:05:43.87453	2022-12-14 20:05:43.87453	\N	552	884
1362	-999	2022-12-14 20:05:43.885092	2022-12-14 20:05:43.885092	\N	553	884
1363	-999	2022-12-14 20:05:43.898086	2022-12-14 20:05:43.898086	\N	554	884
1364	1	2022-12-14 20:05:43.908819	2022-12-14 20:05:43.908819	\N	555	884
1365	1	2022-12-14 20:05:43.915622	2022-12-14 20:05:43.915622	\N	556	884
1366	1	2022-12-14 20:05:43.921822	2022-12-14 20:05:43.921822	\N	557	884
1367	1	2022-12-14 20:05:43.928461	2022-12-14 20:05:43.928461	\N	558	884
1368	1	2022-12-14 20:05:43.935034	2022-12-14 20:05:43.935034	\N	559	884
1369	1	2022-12-14 20:05:43.942128	2022-12-14 20:05:43.942128	\N	560	884
1370	1	2022-12-14 20:05:43.948322	2022-12-14 20:05:43.948322	\N	561	884
1371	1	2022-12-14 20:05:43.956289	2022-12-14 20:05:43.956289	\N	1371	884
1372	1	2022-12-14 20:05:43.964051	2022-12-14 20:05:43.964051	\N	563	884
1373	1	2022-12-14 20:05:43.971714	2022-12-14 20:05:43.971714	\N	564	884
1374	1	2022-12-14 20:05:43.979839	2022-12-14 20:05:43.979839	\N	575	884
1375	1	2022-12-14 20:05:43.987597	2022-12-14 20:05:43.987597	\N	581	884
1376	1	2022-12-14 20:05:43.995381	2022-12-14 20:05:43.995381	\N	583	884
1377	1	2022-12-14 20:05:44.003776	2022-12-14 20:05:44.003776	\N	1377	884
1378	1	2022-12-14 20:05:44.01074	2022-12-14 20:05:44.01074	\N	289	884
1379	2	2022-12-14 20:05:44.01811	2022-12-14 20:05:44.01811	\N	11	884
1380	2	2022-12-14 20:05:44.025571	2022-12-14 20:05:44.025571	\N	28	884
1381	2	2022-12-14 20:05:44.03221	2022-12-14 20:05:44.03221	\N	31	884
1382	2	2022-12-14 20:05:44.039837	2022-12-14 20:05:44.039837	\N	32	884
1383	2	2022-12-14 20:05:44.046549	2022-12-14 20:05:44.046549	\N	33	884
1384	2	2022-12-14 20:05:44.053151	2022-12-14 20:05:44.053151	\N	553	884
1385	2	2022-12-14 20:05:44.0597	2022-12-14 20:05:44.0597	\N	554	884
1386	1	2022-12-14 20:05:44.067238	2022-12-14 20:05:44.067238	\N	102	884
1388	2	2022-12-14 20:05:44.081724	2022-12-14 20:05:44.081724	\N	27	884
1389	2	2022-12-14 20:05:44.088999	2022-12-14 20:05:44.088999	\N	30	884
1390	2	2022-12-14 20:05:44.096046	2022-12-14 20:05:44.096046	\N	34	884
1391	0	2022-12-14 20:05:44.103475	2022-12-14 20:05:44.103475	\N	1391	884
1392	0	2022-12-14 20:05:44.11077	2022-12-14 20:05:44.11077	\N	1392	884
1393	0	2022-12-14 20:05:44.118777	2022-12-14 20:05:44.118777	\N	1393	884
1394	0	2022-12-14 20:05:44.125936	2022-12-14 20:05:44.125936	\N	1394	884
1395	0	2022-12-14 20:05:44.132419	2022-12-14 20:05:44.132419	\N	126	884
1396	0	2022-12-14 20:05:44.139409	2022-12-14 20:05:44.139409	\N	131	884
1397	0	2022-12-14 20:05:44.145943	2022-12-14 20:05:44.145943	\N	213	884
1398	0	2022-12-14 20:05:44.151427	2022-12-14 20:05:44.151427	\N	233	884
1399	0	2022-12-14 20:05:44.158912	2022-12-14 20:05:44.158912	\N	397	884
1400	0	2022-12-14 20:05:44.165583	2022-12-14 20:05:44.165583	\N	454	884
1401	-999	2022-12-14 20:05:44.17265	2022-12-14 20:05:44.17265	\N	10	884
1406	-999	2022-12-14 20:05:44.211193	2022-12-14 20:05:44.211193	\N	11	884
1407	-999	2022-12-14 20:05:44.218534	2022-12-14 20:05:44.218534	\N	14	884
1408	-999	2022-12-14 20:05:44.227072	2022-12-14 20:05:44.227072	\N	900	884
1409	-999	2022-12-14 20:05:44.234443	2022-12-14 20:05:44.234443	\N	901	884
1412	-999	2022-12-14 20:05:44.257161	2022-12-14 20:05:44.257161	\N	23	884
1413	-999	2022-12-14 20:05:44.264696	2022-12-14 20:05:44.264696	\N	24	884
1415	1	2022-12-14 20:05:44.279662	2022-12-14 20:05:44.279662	\N	31	884
1417	1	2022-12-14 20:05:44.294414	2022-12-14 20:05:44.294414	\N	35	884
1418	1	2022-12-14 20:05:44.30225	2022-12-14 20:05:44.30225	\N	50	884
1420	1	2022-12-14 20:05:44.315865	2022-12-14 20:05:44.315865	\N	72	884
1422	-999	2022-12-14 20:05:44.33148	2022-12-14 20:05:44.33148	\N	101	884
1426	1	2022-12-14 20:05:44.360857	2022-12-14 20:05:44.360857	\N	111	884
1431	1	2022-12-14 20:05:44.398441	2022-12-14 20:05:44.398441	\N	115	884
1433	-999	2022-12-14 20:05:44.413816	2022-12-14 20:05:44.413816	\N	141	884
1434	-999	2022-12-14 20:05:44.420889	2022-12-14 20:05:44.420889	\N	137	884
1435	-999	2022-12-14 20:05:44.428132	2022-12-14 20:05:44.428132	\N	138	884
1436	-999	2022-12-14 20:05:44.434565	2022-12-14 20:05:44.434565	\N	1001	884
1439	1	2022-12-14 20:05:44.456859	2022-12-14 20:05:44.456859	\N	158	884
1447	-999	2022-12-14 20:05:44.51495	2022-12-14 20:05:44.51495	\N	195	884
1451	1	2022-12-14 20:05:44.544297	2022-12-14 20:05:44.544297	\N	229	884
1453	-999	2022-12-14 20:05:44.559706	2022-12-14 20:05:44.559706	\N	303	884
1456	-999	2022-12-14 20:05:44.581764	2022-12-14 20:05:44.581764	\N	311	884
1458	-999	2022-12-14 20:05:44.59559	2022-12-14 20:05:44.59559	\N	1149	884
1460	1	2022-12-14 20:05:44.611995	2022-12-14 20:05:44.611995	\N	318	884
1461	-999	2022-12-14 20:05:44.619329	2022-12-14 20:05:44.619329	\N	329	884
1462	-999	2022-12-14 20:05:44.626735	2022-12-14 20:05:44.626735	\N	332	884
1464	-999	2022-12-14 20:05:44.642268	2022-12-14 20:05:44.642268	\N	362	884
1465	1	2022-12-14 20:05:44.649677	2022-12-14 20:05:44.649677	\N	379	884
1466	-999	2022-12-14 20:05:44.657463	2022-12-14 20:05:44.657463	\N	1212	884
1469	1	2022-12-14 20:05:44.678669	2022-12-14 20:05:44.678669	\N	412	884
1470	-999	2022-12-14 20:05:44.685534	2022-12-14 20:05:44.685534	\N	1259	884
1471	1	2022-12-14 20:05:44.693041	2022-12-14 20:05:44.693041	\N	451	884
1473	1	2022-12-14 20:05:44.709167	2022-12-14 20:05:44.709167	\N	453	884
1474	1	2022-12-14 20:05:44.716968	2022-12-14 20:05:44.716968	\N	1276	884
1477	1	2022-12-14 20:05:44.743333	2022-12-14 20:05:44.743333	\N	476	884
1478	1	2022-12-14 20:05:44.750423	2022-12-14 20:05:44.750423	\N	478	884
1483	-999	2022-12-14 20:05:44.791195	2022-12-14 20:05:44.791195	\N	524	884
1484	1	2022-12-14 20:05:44.798361	2022-12-14 20:05:44.798361	\N	528	884
1486	-999	2022-12-14 20:05:44.812632	2022-12-14 20:05:44.812632	\N	533	884
1487	-999	2022-12-14 20:05:44.820005	2022-12-14 20:05:44.820005	\N	534	884
1489	1	2022-12-14 20:05:44.834253	2022-12-14 20:05:44.834253	\N	545	884
1490	-999	2022-12-14 20:05:44.841591	2022-12-14 20:05:44.841591	\N	556	884
1492	-999	2022-12-14 20:05:44.855179	2022-12-14 20:05:44.855179	\N	560	884
1493	-999	2022-12-14 20:05:44.861362	2022-12-14 20:05:44.861362	\N	581	884
1494	-999	2022-12-14 20:05:44.868494	2022-12-14 20:05:44.868494	\N	100	884
1495	1	2022-12-14 20:05:44.875789	2022-12-14 20:05:44.875789	\N	55	884
1496	1	2022-12-14 20:05:44.883078	2022-12-14 20:05:44.883078	\N	89	884
1497	1	2022-12-14 20:05:44.891302	2022-12-14 20:05:44.891302	\N	971	884
1499	1	2022-12-14 20:05:44.906465	2022-12-14 20:05:44.906465	\N	989	884
1500	1	2022-12-14 20:05:44.913319	2022-12-14 20:05:44.913319	\N	127	884
1501	1	2022-12-14 20:05:44.920167	2022-12-14 20:05:44.920167	\N	128	884
1502	1	2022-12-14 20:05:44.928066	2022-12-14 20:05:44.928066	\N	129	884
1503	1	2022-12-14 20:05:44.934514	2022-12-14 20:05:44.934514	\N	133	884
1505	1	2022-12-14 20:05:44.949573	2022-12-14 20:05:44.949573	\N	185	884
1506	1	2022-12-14 20:05:44.957217	2022-12-14 20:05:44.957217	\N	186	884
1507	1	2022-12-14 20:05:44.965272	2022-12-14 20:05:44.965272	\N	1057	884
1508	1	2022-12-14 20:05:44.973756	2022-12-14 20:05:44.973756	\N	1080	884
1509	1	2022-12-14 20:05:44.98086	2022-12-14 20:05:44.98086	\N	1087	884
1510	1	2022-12-14 20:05:44.989622	2022-12-14 20:05:44.989622	\N	1093	884
1511	1	2022-12-14 20:05:44.9969	2022-12-14 20:05:44.9969	\N	1094	884
1512	1	2022-12-14 20:05:45.00447	2022-12-14 20:05:45.00447	\N	1095	884
1513	1	2022-12-14 20:05:45.010831	2022-12-14 20:05:45.010831	\N	252	884
1514	1	2022-12-14 20:05:45.01828	2022-12-14 20:05:45.01828	\N	253	884
1515	1	2022-12-14 20:05:45.025938	2022-12-14 20:05:45.025938	\N	255	884
1516	1	2022-12-14 20:05:45.033399	2022-12-14 20:05:45.033399	\N	256	884
1517	1	2022-12-14 20:05:45.040784	2022-12-14 20:05:45.040784	\N	257	884
1518	1	2022-12-14 20:05:45.048011	2022-12-14 20:05:45.048011	\N	258	884
1519	1	2022-12-14 20:05:45.055324	2022-12-14 20:05:45.055324	\N	259	884
1520	1	2022-12-14 20:05:45.062201	2022-12-14 20:05:45.062201	\N	260	884
1521	1	2022-12-14 20:05:45.069681	2022-12-14 20:05:45.069681	\N	262	884
1522	1	2022-12-14 20:05:45.077575	2022-12-14 20:05:45.077575	\N	266	884
1523	1	2022-12-14 20:05:45.084697	2022-12-14 20:05:45.084697	\N	268	884
1524	1	2022-12-14 20:05:45.093546	2022-12-14 20:05:45.093546	\N	269	884
1525	1	2022-12-14 20:05:45.101344	2022-12-14 20:05:45.101344	\N	270	884
1526	1	2022-12-14 20:05:45.109469	2022-12-14 20:05:45.109469	\N	271	884
1527	1	2022-12-14 20:05:45.117108	2022-12-14 20:05:45.117108	\N	285	884
1528	1	2022-12-14 20:05:45.125018	2022-12-14 20:05:45.125018	\N	290	884
1529	1	2022-12-14 20:05:45.131724	2022-12-14 20:05:45.131724	\N	1157	884
1530	1	2022-12-14 20:05:45.139265	2022-12-14 20:05:45.139265	\N	320	884
1531	1	2022-12-14 20:05:45.146693	2022-12-14 20:05:45.146693	\N	332	884
1532	1	2022-12-14 20:05:45.155114	2022-12-14 20:05:45.155114	\N	337	884
1533	1	2022-12-14 20:05:45.162183	2022-12-14 20:05:45.162183	\N	339	884
1534	1	2022-12-14 20:05:45.170196	2022-12-14 20:05:45.170196	\N	342	884
1535	1	2022-12-14 20:05:45.178167	2022-12-14 20:05:45.178167	\N	1235	884
1537	1	2022-12-14 20:05:45.192582	2022-12-14 20:05:45.192582	\N	1238	884
1538	1	2022-12-14 20:05:45.199751	2022-12-14 20:05:45.199751	\N	1240	884
1539	1	2022-12-14 20:05:45.207543	2022-12-14 20:05:45.207543	\N	1242	884
1540	1	2022-12-14 20:05:45.215164	2022-12-14 20:05:45.215164	\N	1243	884
1541	1	2022-12-14 20:05:45.224948	2022-12-14 20:05:45.224948	\N	1244	884
1542	1	2022-12-14 20:05:45.232019	2022-12-14 20:05:45.232019	\N	419	884
1543	1	2022-12-14 20:05:45.239468	2022-12-14 20:05:45.239468	\N	1250	884
1544	1	2022-12-14 20:05:45.246601	2022-12-14 20:05:45.246601	\N	1251	884
1545	1	2022-12-14 20:05:45.254834	2022-12-14 20:05:45.254834	\N	444	884
1546	1	2022-12-14 20:05:45.263692	2022-12-14 20:05:45.263692	\N	445	884
1547	1	2022-12-14 20:05:45.271386	2022-12-14 20:05:45.271386	\N	446	884
1548	1	2022-12-14 20:05:45.277208	2022-12-14 20:05:45.277208	\N	1266	884
1549	1	2022-12-14 20:05:45.283721	2022-12-14 20:05:45.283721	\N	447	884
1550	1	2022-12-14 20:05:45.290649	2022-12-14 20:05:45.290649	\N	449	884
1551	1	2022-12-14 20:05:45.297469	2022-12-14 20:05:45.297469	\N	1298	884
1553	1	2022-12-14 20:05:45.311512	2022-12-14 20:05:45.311512	\N	550	884
1554	-999	2022-12-14 20:05:45.318199	2022-12-14 20:05:45.318199	\N	550	884
1555	1	2022-12-14 20:05:45.325672	2022-12-14 20:05:45.325672	\N	551	884
1556	1	2022-12-14 20:05:45.331714	2022-12-14 20:05:45.331714	\N	553	884
1557	1	2022-12-14 20:05:45.337954	2022-12-14 20:05:45.337954	\N	554	884
1558	-999	2022-12-14 20:05:45.343924	2022-12-14 20:05:45.343924	\N	906	884
1559	-999	2022-12-14 20:05:45.350178	2022-12-14 20:05:45.350178	\N	20	884
1561	0	2022-12-14 20:05:45.364729	2022-12-14 20:05:45.364729	\N	3	1561
1562	2	2022-12-14 20:05:45.371754	2022-12-14 20:05:45.371754	\N	5	1561
1563	0	2022-12-14 20:05:45.378655	2022-12-14 20:05:45.378655	\N	7	1561
1564	0	2022-12-14 20:05:45.385293	2022-12-14 20:05:45.385293	\N	8	1561
1565	0	2022-12-14 20:05:45.392601	2022-12-14 20:05:45.392601	\N	9	1561
1566	2	2022-12-14 20:05:45.400912	2022-12-14 20:05:45.400912	\N	1566	1561
1567	2	2022-12-14 20:05:45.408472	2022-12-14 20:05:45.408472	\N	11	1561
1568	2	2022-12-14 20:05:45.417319	2022-12-14 20:05:45.417319	\N	12	1561
1569	2	2022-12-14 20:05:45.425267	2022-12-14 20:05:45.425267	\N	13	1561
1570	2	2022-12-14 20:05:45.432587	2022-12-14 20:05:45.432587	\N	14	1561
1571	2	2022-12-14 20:05:45.445677	2022-12-14 20:05:45.445677	\N	898	1561
1572	1	2022-12-14 20:05:45.456953	2022-12-14 20:05:45.456953	\N	15	1561
1573	1	2022-12-14 20:05:45.464593	2022-12-14 20:05:45.464593	\N	900	1561
1574	2	2022-12-14 20:05:45.472221	2022-12-14 20:05:45.472221	\N	901	1561
1575	2	2022-12-14 20:05:45.47927	2022-12-14 20:05:45.47927	\N	902	1561
1576	2	2022-12-14 20:05:45.48622	2022-12-14 20:05:45.48622	\N	904	1561
1577	1	2022-12-14 20:05:45.493447	2022-12-14 20:05:45.493447	\N	19	1561
1578	1	2022-12-14 20:05:45.501147	2022-12-14 20:05:45.501147	\N	906	1561
1579	1	2022-12-14 20:05:45.50945	2022-12-14 20:05:45.50945	\N	20	1561
1580	2	2022-12-14 20:05:45.516422	2022-12-14 20:05:45.516422	\N	21	1561
1581	0	2022-12-14 20:05:45.524007	2022-12-14 20:05:45.524007	\N	909	1561
1582	0	2022-12-14 20:05:45.531244	2022-12-14 20:05:45.531244	\N	22	1561
1583	2	2022-12-14 20:05:45.537888	2022-12-14 20:05:45.537888	\N	23	1561
1584	2	2022-12-14 20:05:45.54999	2022-12-14 20:05:45.54999	\N	24	1561
1585	2	2022-12-14 20:05:45.557999	2022-12-14 20:05:45.557999	\N	25	1561
1586	1	2022-12-14 20:05:45.565508	2022-12-14 20:05:45.565508	\N	26	1561
1587	2	2022-12-14 20:05:45.573801	2022-12-14 20:05:45.573801	\N	27	1561
1588	0	2022-12-14 20:05:45.580634	2022-12-14 20:05:45.580634	\N	28	1561
1589	1	2022-12-14 20:05:45.58965	2022-12-14 20:05:45.58965	\N	29	1561
1590	2	2022-12-14 20:05:45.596824	2022-12-14 20:05:45.596824	\N	31	1561
1591	1	2022-12-14 20:05:45.604335	2022-12-14 20:05:45.604335	\N	34	1561
1592	1	2022-12-14 20:05:45.61197	2022-12-14 20:05:45.61197	\N	35	1561
1593	1	2022-12-14 20:05:45.619656	2022-12-14 20:05:45.619656	\N	1593	1561
1594	1	2022-12-14 20:05:45.627345	2022-12-14 20:05:45.627345	\N	1594	1561
1595	1	2022-12-14 20:05:45.63423	2022-12-14 20:05:45.63423	\N	1595	1561
1596	1	2022-12-14 20:05:45.64254	2022-12-14 20:05:45.64254	\N	1596	1561
1597	1	2022-12-14 20:05:45.649447	2022-12-14 20:05:45.649447	\N	37	1561
1598	1	2022-12-14 20:05:45.658472	2022-12-14 20:05:45.658472	\N	38	1561
1599	1	2022-12-14 20:05:45.666117	2022-12-14 20:05:45.666117	\N	39	1561
1600	2	2022-12-14 20:05:45.673995	2022-12-14 20:05:45.673995	\N	40	1561
1601	1	2022-12-14 20:05:45.680924	2022-12-14 20:05:45.680924	\N	1601	1561
1602	2	2022-12-14 20:05:45.6887	2022-12-14 20:05:45.6887	\N	1602	1561
1603	2	2022-12-14 20:05:45.695506	2022-12-14 20:05:45.695506	\N	41	1561
1604	0	2022-12-14 20:05:45.70299	2022-12-14 20:05:45.70299	\N	1604	1561
1605	1	2022-12-14 20:05:45.7129	2022-12-14 20:05:45.7129	\N	1605	1561
1606	1	2022-12-14 20:05:45.721168	2022-12-14 20:05:45.721168	\N	1606	1561
1607	1	2022-12-14 20:05:45.72918	2022-12-14 20:05:45.72918	\N	46	1561
1608	0	2022-12-14 20:05:45.737065	2022-12-14 20:05:45.737065	\N	48	1561
1609	1	2022-12-14 20:05:45.743633	2022-12-14 20:05:45.743633	\N	50	1561
1610	0	2022-12-14 20:05:45.750409	2022-12-14 20:05:45.750409	\N	51	1561
1611	1	2022-12-14 20:05:45.760089	2022-12-14 20:05:45.760089	\N	52	1561
1612	0	2022-12-14 20:05:45.769331	2022-12-14 20:05:45.769331	\N	53	1561
1613	1	2022-12-14 20:05:45.777484	2022-12-14 20:05:45.777484	\N	54	1561
1614	0	2022-12-14 20:05:45.78511	2022-12-14 20:05:45.78511	\N	1614	1561
1615	0	2022-12-14 20:05:45.795641	2022-12-14 20:05:45.795641	\N	1615	1561
1616	0	2022-12-14 20:05:45.802706	2022-12-14 20:05:45.802706	\N	1616	1561
1617	1	2022-12-14 20:05:45.810005	2022-12-14 20:05:45.810005	\N	1617	1561
1618	0	2022-12-14 20:05:45.817052	2022-12-14 20:05:45.817052	\N	1618	1561
1619	1	2022-12-14 20:05:45.823871	2022-12-14 20:05:45.823871	\N	61	1561
1620	1	2022-12-14 20:05:45.832584	2022-12-14 20:05:45.832584	\N	62	1561
1621	1	2022-12-14 20:05:45.8407	2022-12-14 20:05:45.8407	\N	63	1561
1622	1	2022-12-14 20:05:45.848212	2022-12-14 20:05:45.848212	\N	65	1561
1623	1	2022-12-14 20:05:45.856383	2022-12-14 20:05:45.856383	\N	66	1561
1624	1	2022-12-14 20:05:45.864756	2022-12-14 20:05:45.864756	\N	1624	1561
1625	1	2022-12-14 20:05:45.87162	2022-12-14 20:05:45.87162	\N	77	1561
1626	2	2022-12-14 20:05:45.879471	2022-12-14 20:05:45.879471	\N	1626	1561
1627	3	2022-12-14 20:05:45.887447	2022-12-14 20:05:45.887447	\N	1627	1561
1628	2	2022-12-14 20:05:45.894644	2022-12-14 20:05:45.894644	\N	1628	1561
1629	2	2022-12-14 20:05:45.901738	2022-12-14 20:05:45.901738	\N	81	1561
1630	1	2022-12-14 20:05:45.909701	2022-12-14 20:05:45.909701	\N	82	1561
1631	2	2022-12-14 20:05:45.917128	2022-12-14 20:05:45.917128	\N	83	1561
1632	1	2022-12-14 20:05:45.923578	2022-12-14 20:05:45.923578	\N	88	1561
1633	2	2022-12-14 20:05:45.931787	2022-12-14 20:05:45.931787	\N	89	1561
1634	2	2022-12-14 20:05:45.939924	2022-12-14 20:05:45.939924	\N	1634	1561
1635	2	2022-12-14 20:05:45.947264	2022-12-14 20:05:45.947264	\N	1635	1561
1636	3	2022-12-14 20:05:45.954392	2022-12-14 20:05:45.954392	\N	956	1561
1637	1	2022-12-14 20:05:45.962501	2022-12-14 20:05:45.962501	\N	957	1561
1638	1	2022-12-14 20:05:45.970961	2022-12-14 20:05:45.970961	\N	1638	1561
1639	1	2022-12-14 20:05:45.978171	2022-12-14 20:05:45.978171	\N	91	1561
1640	1	2022-12-14 20:05:45.986129	2022-12-14 20:05:45.986129	\N	959	1561
1641	2	2022-12-14 20:05:45.993665	2022-12-14 20:05:45.993665	\N	1641	1561
1642	2	2022-12-14 20:05:46.001606	2022-12-14 20:05:46.001606	\N	1642	1561
1643	2	2022-12-14 20:05:46.010902	2022-12-14 20:05:46.010902	\N	92	1561
1644	2	2022-12-14 20:05:46.019674	2022-12-14 20:05:46.019674	\N	93	1561
1645	2	2022-12-14 20:05:46.026586	2022-12-14 20:05:46.026586	\N	94	1561
1646	2	2022-12-14 20:05:46.033475	2022-12-14 20:05:46.033475	\N	95	1561
1647	2	2022-12-14 20:05:46.042839	2022-12-14 20:05:46.042839	\N	971	1561
1648	1	2022-12-14 20:05:46.051171	2022-12-14 20:05:46.051171	\N	102	1561
1649	1	2022-12-14 20:05:46.058351	2022-12-14 20:05:46.058351	\N	103	1561
1650	1	2022-12-14 20:05:46.066484	2022-12-14 20:05:46.066484	\N	1391	1561
1651	2	2022-12-14 20:05:46.073748	2022-12-14 20:05:46.073748	\N	104	1561
1652	1	2022-12-14 20:05:46.081562	2022-12-14 20:05:46.081562	\N	105	1561
1653	3	2022-12-14 20:05:46.088278	2022-12-14 20:05:46.088278	\N	107	1561
1654	2	2022-12-14 20:05:46.095362	2022-12-14 20:05:46.095362	\N	121	1561
1655	1	2022-12-14 20:05:46.104276	2022-12-14 20:05:46.104276	\N	123	1561
1656	1	2022-12-14 20:05:46.111343	2022-12-14 20:05:46.111343	\N	1392	1561
1657	1	2022-12-14 20:05:46.119357	2022-12-14 20:05:46.119357	\N	128	1561
1658	1	2022-12-14 20:05:46.127069	2022-12-14 20:05:46.127069	\N	130	1561
1659	2	2022-12-14 20:05:46.134609	2022-12-14 20:05:46.134609	\N	131	1561
1660	1	2022-12-14 20:05:46.141813	2022-12-14 20:05:46.141813	\N	132	1561
1661	1	2022-12-14 20:05:46.148469	2022-12-14 20:05:46.148469	\N	1661	1561
1662	2	2022-12-14 20:05:46.155957	2022-12-14 20:05:46.155957	\N	133	1561
1663	1	2022-12-14 20:05:46.163564	2022-12-14 20:05:46.163564	\N	997	1561
1664	1	2022-12-14 20:05:46.171009	2022-12-14 20:05:46.171009	\N	136	1561
1665	1	2022-12-14 20:05:46.178679	2022-12-14 20:05:46.178679	\N	137	1561
1666	2	2022-12-14 20:05:46.184688	2022-12-14 20:05:46.184688	\N	138	1561
1667	2	2022-12-14 20:05:46.192208	2022-12-14 20:05:46.192208	\N	1001	1561
1668	2	2022-12-14 20:05:46.19928	2022-12-14 20:05:46.19928	\N	139	1561
1669	2	2022-12-14 20:05:46.206504	2022-12-14 20:05:46.206504	\N	1003	1561
1670	2	2022-12-14 20:05:46.215205	2022-12-14 20:05:46.215205	\N	1004	1561
1671	1	2022-12-14 20:05:46.223327	2022-12-14 20:05:46.223327	\N	140	1561
1672	1	2022-12-14 20:05:46.230187	2022-12-14 20:05:46.230187	\N	141	1561
1673	1	2022-12-14 20:05:46.238519	2022-12-14 20:05:46.238519	\N	142	1561
1674	0	2022-12-14 20:05:46.247051	2022-12-14 20:05:46.247051	\N	145	1561
1675	1	2022-12-14 20:05:46.254086	2022-12-14 20:05:46.254086	\N	146	1561
1676	1	2022-12-14 20:05:46.262102	2022-12-14 20:05:46.262102	\N	147	1561
1677	1	2022-12-14 20:05:46.270767	2022-12-14 20:05:46.270767	\N	1677	1561
1678	1	2022-12-14 20:05:46.278382	2022-12-14 20:05:46.278382	\N	148	1561
1679	1	2022-12-14 20:05:46.292081	2022-12-14 20:05:46.292081	\N	149	1561
1680	1	2022-12-14 20:05:46.302097	2022-12-14 20:05:46.302097	\N	1680	1561
1681	1	2022-12-14 20:05:46.308899	2022-12-14 20:05:46.308899	\N	150	1561
1682	1	2022-12-14 20:05:46.314963	2022-12-14 20:05:46.314963	\N	151	1561
1683	1	2022-12-14 20:05:46.32173	2022-12-14 20:05:46.32173	\N	152	1561
1684	1	2022-12-14 20:05:46.329583	2022-12-14 20:05:46.329583	\N	153	1561
1685	2	2022-12-14 20:05:46.338366	2022-12-14 20:05:46.338366	\N	154	1561
1686	1	2022-12-14 20:05:46.346747	2022-12-14 20:05:46.346747	\N	157	1561
1687	1	2022-12-14 20:05:46.355015	2022-12-14 20:05:46.355015	\N	158	1561
1688	1	2022-12-14 20:05:46.362189	2022-12-14 20:05:46.362189	\N	161	1561
1689	2	2022-12-14 20:05:46.36935	2022-12-14 20:05:46.36935	\N	162	1561
1690	2	2022-12-14 20:05:46.376292	2022-12-14 20:05:46.376292	\N	1690	1561
1691	1	2022-12-14 20:05:46.382721	2022-12-14 20:05:46.382721	\N	164	1561
1692	2	2022-12-14 20:05:46.39036	2022-12-14 20:05:46.39036	\N	166	1561
1693	2	2022-12-14 20:05:46.399825	2022-12-14 20:05:46.399825	\N	167	1561
1694	2	2022-12-14 20:05:46.412719	2022-12-14 20:05:46.412719	\N	168	1561
1695	1	2022-12-14 20:05:46.421749	2022-12-14 20:05:46.421749	\N	169	1561
1696	2	2022-12-14 20:05:46.429495	2022-12-14 20:05:46.429495	\N	173	1561
1697	2	2022-12-14 20:05:46.436105	2022-12-14 20:05:46.436105	\N	174	1561
1698	1	2022-12-14 20:05:46.443818	2022-12-14 20:05:46.443818	\N	175	1561
1699	2	2022-12-14 20:05:46.451734	2022-12-14 20:05:46.451734	\N	176	1561
1700	2	2022-12-14 20:05:46.459043	2022-12-14 20:05:46.459043	\N	180	1561
1701	1	2022-12-14 20:05:46.467455	2022-12-14 20:05:46.467455	\N	183	1561
1702	1	2022-12-14 20:05:46.475485	2022-12-14 20:05:46.475485	\N	184	1561
1703	1	2022-12-14 20:05:46.482293	2022-12-14 20:05:46.482293	\N	185	1561
1704	2	2022-12-14 20:05:46.488461	2022-12-14 20:05:46.488461	\N	186	1561
1705	2	2022-12-14 20:05:46.495056	2022-12-14 20:05:46.495056	\N	1377	1561
1706	1	2022-12-14 20:05:46.503052	2022-12-14 20:05:46.503052	\N	1706	1561
1707	1	2022-12-14 20:05:46.510488	2022-12-14 20:05:46.510488	\N	1707	1561
1708	2	2022-12-14 20:05:46.517618	2022-12-14 20:05:46.517618	\N	1708	1561
1709	1	2022-12-14 20:05:46.525315	2022-12-14 20:05:46.525315	\N	191	1561
1710	1	2022-12-14 20:05:46.532462	2022-12-14 20:05:46.532462	\N	1044	1561
1711	2	2022-12-14 20:05:46.539808	2022-12-14 20:05:46.539808	\N	192	1561
1712	1	2022-12-14 20:05:46.546849	2022-12-14 20:05:46.546849	\N	193	1561
1713	1	2022-12-14 20:05:46.553775	2022-12-14 20:05:46.553775	\N	194	1561
1714	2	2022-12-14 20:05:46.561769	2022-12-14 20:05:46.561769	\N	195	1561
1715	2	2022-12-14 20:05:46.569049	2022-12-14 20:05:46.569049	\N	196	1561
1716	1	2022-12-14 20:05:46.577022	2022-12-14 20:05:46.577022	\N	197	1561
1717	1	2022-12-14 20:05:46.58903	2022-12-14 20:05:46.58903	\N	198	1561
1718	1	2022-12-14 20:05:46.598259	2022-12-14 20:05:46.598259	\N	199	1561
1719	2	2022-12-14 20:05:46.604703	2022-12-14 20:05:46.604703	\N	200	1561
1720	1	2022-12-14 20:05:46.611984	2022-12-14 20:05:46.611984	\N	1720	1561
1721	0	2022-12-14 20:05:46.619438	2022-12-14 20:05:46.619438	\N	201	1561
1722	1	2022-12-14 20:05:46.626766	2022-12-14 20:05:46.626766	\N	202	1561
1723	1	2022-12-14 20:05:46.633918	2022-12-14 20:05:46.633918	\N	203	1561
1724	0	2022-12-14 20:05:46.641368	2022-12-14 20:05:46.641368	\N	204	1561
1725	1	2022-12-14 20:05:46.649507	2022-12-14 20:05:46.649507	\N	1057	1561
1726	1	2022-12-14 20:05:46.656959	2022-12-14 20:05:46.656959	\N	205	1561
1727	1	2022-12-14 20:05:46.664068	2022-12-14 20:05:46.664068	\N	208	1561
1728	2	2022-12-14 20:05:46.67163	2022-12-14 20:05:46.67163	\N	211	1561
1729	2	2022-12-14 20:05:46.678609	2022-12-14 20:05:46.678609	\N	212	1561
1730	2	2022-12-14 20:05:46.685637	2022-12-14 20:05:46.685637	\N	213	1561
1731	2	2022-12-14 20:05:46.693163	2022-12-14 20:05:46.693163	\N	214	1561
1732	2	2022-12-14 20:05:46.700834	2022-12-14 20:05:46.700834	\N	1071	1561
1733	1	2022-12-14 20:05:46.708227	2022-12-14 20:05:46.708227	\N	222	1561
1734	1	2022-12-14 20:05:46.716662	2022-12-14 20:05:46.716662	\N	1074	1561
1735	2	2022-12-14 20:05:46.726414	2022-12-14 20:05:46.726414	\N	223	1561
1736	1	2022-12-14 20:05:46.742958	2022-12-14 20:05:46.742958	\N	1077	1561
1737	2	2022-12-14 20:05:46.748829	2022-12-14 20:05:46.748829	\N	1078	1561
1738	2	2022-12-14 20:05:46.755915	2022-12-14 20:05:46.755915	\N	1079	1561
1739	2	2022-12-14 20:05:46.762942	2022-12-14 20:05:46.762942	\N	226	1561
1740	2	2022-12-14 20:05:46.770794	2022-12-14 20:05:46.770794	\N	227	1561
1741	1	2022-12-14 20:05:46.778478	2022-12-14 20:05:46.778478	\N	228	1561
1742	2	2022-12-14 20:05:46.786903	2022-12-14 20:05:46.786903	\N	1084	1561
1743	2	2022-12-14 20:05:46.795399	2022-12-14 20:05:46.795399	\N	230	1561
1744	2	2022-12-14 20:05:46.807757	2022-12-14 20:05:46.807757	\N	231	1561
1745	1	2022-12-14 20:05:46.823064	2022-12-14 20:05:46.823064	\N	232	1561
1746	2	2022-12-14 20:05:46.834517	2022-12-14 20:05:46.834517	\N	233	1561
1747	1	2022-12-14 20:05:46.841944	2022-12-14 20:05:46.841944	\N	234	1561
1748	1	2022-12-14 20:05:46.849357	2022-12-14 20:05:46.849357	\N	1748	1561
1749	2	2022-12-14 20:05:46.856447	2022-12-14 20:05:46.856447	\N	1087	1561
1750	2	2022-12-14 20:05:46.862562	2022-12-14 20:05:46.862562	\N	235	1561
1751	1	2022-12-14 20:05:46.869616	2022-12-14 20:05:46.869616	\N	1089	1561
1752	2	2022-12-14 20:05:46.879334	2022-12-14 20:05:46.879334	\N	236	1561
1753	2	2022-12-14 20:05:46.889896	2022-12-14 20:05:46.889896	\N	242	1561
1754	0	2022-12-14 20:05:46.897505	2022-12-14 20:05:46.897505	\N	243	1561
1755	1	2022-12-14 20:05:46.905068	2022-12-14 20:05:46.905068	\N	244	1561
1756	2	2022-12-14 20:05:46.912767	2022-12-14 20:05:46.912767	\N	245	1561
1757	2	2022-12-14 20:05:46.920708	2022-12-14 20:05:46.920708	\N	246	1561
1758	2	2022-12-14 20:05:46.928112	2022-12-14 20:05:46.928112	\N	247	1561
1759	1	2022-12-14 20:05:46.935576	2022-12-14 20:05:46.935576	\N	248	1561
1760	0	2022-12-14 20:05:46.943111	2022-12-14 20:05:46.943111	\N	249	1561
1761	0	2022-12-14 20:05:46.951112	2022-12-14 20:05:46.951112	\N	250	1561
1762	1	2022-12-14 20:05:46.958207	2022-12-14 20:05:46.958207	\N	1762	1561
1763	1	2022-12-14 20:05:46.967436	2022-12-14 20:05:46.967436	\N	1763	1561
1764	2	2022-12-14 20:05:46.976016	2022-12-14 20:05:46.976016	\N	1764	1561
1765	1	2022-12-14 20:05:46.983249	2022-12-14 20:05:46.983249	\N	1765	1561
1766	2	2022-12-14 20:05:46.992026	2022-12-14 20:05:46.992026	\N	251	1561
1767	1	2022-12-14 20:05:46.999261	2022-12-14 20:05:46.999261	\N	252	1561
1768	2	2022-12-14 20:05:47.008814	2022-12-14 20:05:47.008814	\N	253	1561
1769	1	2022-12-14 20:05:47.018047	2022-12-14 20:05:47.018047	\N	254	1561
1770	2	2022-12-14 20:05:47.024787	2022-12-14 20:05:47.024787	\N	262	1561
1771	1	2022-12-14 20:05:47.031336	2022-12-14 20:05:47.031336	\N	263	1561
1772	1	2022-12-14 20:05:47.037707	2022-12-14 20:05:47.037707	\N	264	1561
1773	1	2022-12-14 20:05:47.045336	2022-12-14 20:05:47.045336	\N	266	1561
1774	1	2022-12-14 20:05:47.053278	2022-12-14 20:05:47.053278	\N	273	1561
1775	1	2022-12-14 20:05:47.060894	2022-12-14 20:05:47.060894	\N	274	1561
1776	1	2022-12-14 20:05:47.06776	2022-12-14 20:05:47.06776	\N	275	1561
1777	2	2022-12-14 20:05:47.075478	2022-12-14 20:05:47.075478	\N	276	1561
1778	1	2022-12-14 20:05:47.082376	2022-12-14 20:05:47.082376	\N	277	1561
1779	1	2022-12-14 20:05:47.090077	2022-12-14 20:05:47.090077	\N	278	1561
1780	1	2022-12-14 20:05:47.097707	2022-12-14 20:05:47.097707	\N	279	1561
1781	1	2022-12-14 20:05:47.106174	2022-12-14 20:05:47.106174	\N	281	1561
1782	2	2022-12-14 20:05:47.113486	2022-12-14 20:05:47.113486	\N	282	1561
1783	1	2022-12-14 20:05:47.121656	2022-12-14 20:05:47.121656	\N	1783	1561
1784	1	2022-12-14 20:05:47.129448	2022-12-14 20:05:47.129448	\N	1784	1561
1785	2	2022-12-14 20:05:47.136186	2022-12-14 20:05:47.136186	\N	1785	1561
1786	2	2022-12-14 20:05:47.144255	2022-12-14 20:05:47.144255	\N	1786	1561
1787	1	2022-12-14 20:05:47.151288	2022-12-14 20:05:47.151288	\N	1787	1561
1788	1	2022-12-14 20:05:47.158864	2022-12-14 20:05:47.158864	\N	284	1561
1789	2	2022-12-14 20:05:47.165734	2022-12-14 20:05:47.165734	\N	286	1561
1790	1	2022-12-14 20:05:47.174061	2022-12-14 20:05:47.174061	\N	288	1561
1791	1	2022-12-14 20:05:47.18141	2022-12-14 20:05:47.18141	\N	293	1561
1792	2	2022-12-14 20:05:47.189212	2022-12-14 20:05:47.189212	\N	295	1561
1793	2	2022-12-14 20:05:47.195615	2022-12-14 20:05:47.195615	\N	296	1561
1794	2	2022-12-14 20:05:47.201709	2022-12-14 20:05:47.201709	\N	1794	1561
1795	0	2022-12-14 20:05:47.209257	2022-12-14 20:05:47.209257	\N	1795	1561
1796	1	2022-12-14 20:05:47.216434	2022-12-14 20:05:47.216434	\N	1796	1561
1797	1	2022-12-14 20:05:47.225058	2022-12-14 20:05:47.225058	\N	1797	1561
1798	1	2022-12-14 20:05:47.232201	2022-12-14 20:05:47.232201	\N	1798	1561
1799	1	2022-12-14 20:05:47.239997	2022-12-14 20:05:47.239997	\N	1799	1561
1800	1	2022-12-14 20:05:47.246074	2022-12-14 20:05:47.246074	\N	1800	1561
1801	2	2022-12-14 20:05:47.253596	2022-12-14 20:05:47.253596	\N	1801	1561
1802	1	2022-12-14 20:05:47.261721	2022-12-14 20:05:47.261721	\N	1802	1561
1803	1	2022-12-14 20:05:47.269031	2022-12-14 20:05:47.269031	\N	1803	1561
1804	1	2022-12-14 20:05:47.275941	2022-12-14 20:05:47.275941	\N	303	1561
1805	2	2022-12-14 20:05:47.283236	2022-12-14 20:05:47.283236	\N	306	1561
1806	1	2022-12-14 20:05:47.291213	2022-12-14 20:05:47.291213	\N	307	1561
1807	0	2022-12-14 20:05:47.298914	2022-12-14 20:05:47.298914	\N	308	1561
1808	1	2022-12-14 20:05:47.306671	2022-12-14 20:05:47.306671	\N	312	1561
1809	0	2022-12-14 20:05:47.313843	2022-12-14 20:05:47.313843	\N	1809	1561
1810	0	2022-12-14 20:05:47.320624	2022-12-14 20:05:47.320624	\N	1810	1561
1811	0	2022-12-14 20:05:47.327005	2022-12-14 20:05:47.327005	\N	1811	1561
1812	1	2022-12-14 20:05:47.333092	2022-12-14 20:05:47.333092	\N	1812	1561
1813	1	2022-12-14 20:05:47.340457	2022-12-14 20:05:47.340457	\N	1813	1561
1814	1	2022-12-14 20:05:47.346833	2022-12-14 20:05:47.346833	\N	1147	1561
1815	2	2022-12-14 20:05:47.353223	2022-12-14 20:05:47.353223	\N	1148	1561
1816	0	2022-12-14 20:05:47.359926	2022-12-14 20:05:47.359926	\N	1149	1561
1817	1	2022-12-14 20:05:47.366586	2022-12-14 20:05:47.366586	\N	1150	1561
1818	1	2022-12-14 20:05:47.373829	2022-12-14 20:05:47.373829	\N	1151	1561
1819	1	2022-12-14 20:05:47.380294	2022-12-14 20:05:47.380294	\N	1152	1561
1820	2	2022-12-14 20:05:47.387761	2022-12-14 20:05:47.387761	\N	313	1561
1821	1	2022-12-14 20:05:47.394508	2022-12-14 20:05:47.394508	\N	1821	1561
1822	2	2022-12-14 20:05:47.401619	2022-12-14 20:05:47.401619	\N	1154	1561
1823	2	2022-12-14 20:05:47.408955	2022-12-14 20:05:47.408955	\N	319	1561
1824	1	2022-12-14 20:05:47.415557	2022-12-14 20:05:47.415557	\N	321	1561
1825	1	2022-12-14 20:05:47.422885	2022-12-14 20:05:47.422885	\N	322	1561
1826	1	2022-12-14 20:05:47.429787	2022-12-14 20:05:47.429787	\N	323	1561
1827	2	2022-12-14 20:05:47.437705	2022-12-14 20:05:47.437705	\N	334	1561
1828	2	2022-12-14 20:05:47.445345	2022-12-14 20:05:47.445345	\N	335	1561
1829	1	2022-12-14 20:05:47.454242	2022-12-14 20:05:47.454242	\N	336	1561
1830	1	2022-12-14 20:05:47.462506	2022-12-14 20:05:47.462506	\N	1176	1561
1831	1	2022-12-14 20:05:47.469928	2022-12-14 20:05:47.469928	\N	337	1561
1832	2	2022-12-14 20:05:47.477245	2022-12-14 20:05:47.477245	\N	338	1561
1833	1	2022-12-14 20:05:47.485549	2022-12-14 20:05:47.485549	\N	339	1561
1834	2	2022-12-14 20:05:47.492986	2022-12-14 20:05:47.492986	\N	340	1561
1835	2	2022-12-14 20:05:47.500529	2022-12-14 20:05:47.500529	\N	341	1561
1836	2	2022-12-14 20:05:47.509039	2022-12-14 20:05:47.509039	\N	342	1561
1837	0	2022-12-14 20:05:47.515483	2022-12-14 20:05:47.515483	\N	1837	1561
1838	2	2022-12-14 20:05:47.52228	2022-12-14 20:05:47.52228	\N	1838	1561
1839	1	2022-12-14 20:05:47.529284	2022-12-14 20:05:47.529284	\N	1839	1561
1840	2	2022-12-14 20:05:47.536377	2022-12-14 20:05:47.536377	\N	1840	1561
1841	1	2022-12-14 20:05:47.544036	2022-12-14 20:05:47.544036	\N	1841	1561
1842	0	2022-12-14 20:05:47.558848	2022-12-14 20:05:47.558848	\N	1842	1561
1843	1	2022-12-14 20:05:47.566504	2022-12-14 20:05:47.566504	\N	1843	1561
1844	1	2022-12-14 20:05:47.575219	2022-12-14 20:05:47.575219	\N	1844	1561
1845	2	2022-12-14 20:05:47.583081	2022-12-14 20:05:47.583081	\N	1845	1561
1846	1	2022-12-14 20:05:47.591588	2022-12-14 20:05:47.591588	\N	1846	1561
1847	1	2022-12-14 20:05:47.599836	2022-12-14 20:05:47.599836	\N	373	1561
1848	-999	2022-12-14 20:05:47.607988	2022-12-14 20:05:47.607988	\N	374	1561
1849	1	2022-12-14 20:05:47.615172	2022-12-14 20:05:47.615172	\N	375	1561
1850	2	2022-12-14 20:05:47.623205	2022-12-14 20:05:47.623205	\N	376	1561
1851	1	2022-12-14 20:05:47.631309	2022-12-14 20:05:47.631309	\N	377	1561
1852	2	2022-12-14 20:05:47.639912	2022-12-14 20:05:47.639912	\N	378	1561
1853	1	2022-12-14 20:05:47.647739	2022-12-14 20:05:47.647739	\N	379	1561
1854	2	2022-12-14 20:05:47.655592	2022-12-14 20:05:47.655592	\N	1212	1561
1855	2	2022-12-14 20:05:47.663242	2022-12-14 20:05:47.663242	\N	380	1561
1856	2	2022-12-14 20:05:47.672613	2022-12-14 20:05:47.672613	\N	381	1561
1857	1	2022-12-14 20:05:47.681271	2022-12-14 20:05:47.681271	\N	382	1561
1858	2	2022-12-14 20:05:47.689475	2022-12-14 20:05:47.689475	\N	1858	1561
1859	1	2022-12-14 20:05:47.697864	2022-12-14 20:05:47.697864	\N	1859	1561
1860	2	2022-12-14 20:05:47.705967	2022-12-14 20:05:47.705967	\N	392	1561
1861	1	2022-12-14 20:05:47.714609	2022-12-14 20:05:47.714609	\N	394	1561
1862	2	2022-12-14 20:05:47.722326	2022-12-14 20:05:47.722326	\N	395	1561
1863	1	2022-12-14 20:05:47.730782	2022-12-14 20:05:47.730782	\N	396	1561
1864	1	2022-12-14 20:05:47.740848	2022-12-14 20:05:47.740848	\N	397	1561
1865	1	2022-12-14 20:05:47.747723	2022-12-14 20:05:47.747723	\N	398	1561
1866	1	2022-12-14 20:05:47.757032	2022-12-14 20:05:47.757032	\N	399	1561
1867	1	2022-12-14 20:05:47.767228	2022-12-14 20:05:47.767228	\N	400	1561
1868	1	2022-12-14 20:05:47.774185	2022-12-14 20:05:47.774185	\N	401	1561
1869	1	2022-12-14 20:05:47.781072	2022-12-14 20:05:47.781072	\N	1869	1561
1870	2	2022-12-14 20:05:47.78993	2022-12-14 20:05:47.78993	\N	1870	1561
1871	2	2022-12-14 20:05:47.797027	2022-12-14 20:05:47.797027	\N	1237	1561
1872	2	2022-12-14 20:05:47.805198	2022-12-14 20:05:47.805198	\N	1238	1561
1873	2	2022-12-14 20:05:47.814219	2022-12-14 20:05:47.814219	\N	1239	1561
1874	2	2022-12-14 20:05:47.821498	2022-12-14 20:05:47.821498	\N	1240	1561
1875	2	2022-12-14 20:05:47.829178	2022-12-14 20:05:47.829178	\N	1875	1561
1876	2	2022-12-14 20:05:47.840826	2022-12-14 20:05:47.840826	\N	1241	1561
1877	2	2022-12-14 20:05:47.849453	2022-12-14 20:05:47.849453	\N	1242	1561
1878	2	2022-12-14 20:05:47.856876	2022-12-14 20:05:47.856876	\N	425	1561
1879	2	2022-12-14 20:05:47.864525	2022-12-14 20:05:47.864525	\N	426	1561
1880	2	2022-12-14 20:05:47.87209	2022-12-14 20:05:47.87209	\N	428	1561
1881	2	2022-12-14 20:05:47.879735	2022-12-14 20:05:47.879735	\N	429	1561
1882	2	2022-12-14 20:05:47.886482	2022-12-14 20:05:47.886482	\N	430	1561
1883	1	2022-12-14 20:05:47.894298	2022-12-14 20:05:47.894298	\N	431	1561
1884	1	2022-12-14 20:05:47.901898	2022-12-14 20:05:47.901898	\N	432	1561
1885	2	2022-12-14 20:05:47.909583	2022-12-14 20:05:47.909583	\N	433	1561
1886	1	2022-12-14 20:05:47.917662	2022-12-14 20:05:47.917662	\N	435	1561
1887	2	2022-12-14 20:05:47.925132	2022-12-14 20:05:47.925132	\N	1254	1561
1888	2	2022-12-14 20:05:47.933786	2022-12-14 20:05:47.933786	\N	436	1561
1889	2	2022-12-14 20:05:47.941331	2022-12-14 20:05:47.941331	\N	1257	1561
1890	1	2022-12-14 20:05:47.949527	2022-12-14 20:05:47.949527	\N	438	1561
1891	1	2022-12-14 20:05:47.956481	2022-12-14 20:05:47.956481	\N	1259	1561
1892	1	2022-12-14 20:05:47.964153	2022-12-14 20:05:47.964153	\N	1260	1561
1893	1	2022-12-14 20:05:47.97143	2022-12-14 20:05:47.97143	\N	439	1561
1894	0	2022-12-14 20:05:47.979342	2022-12-14 20:05:47.979342	\N	441	1561
1895	1	2022-12-14 20:05:47.987309	2022-12-14 20:05:47.987309	\N	442	1561
1896	1	2022-12-14 20:05:47.994782	2022-12-14 20:05:47.994782	\N	1896	1561
1897	0	2022-12-14 20:05:48.002463	2022-12-14 20:05:48.002463	\N	443	1561
1898	2	2022-12-14 20:05:48.009628	2022-12-14 20:05:48.009628	\N	444	1561
1899	2	2022-12-14 20:05:48.018011	2022-12-14 20:05:48.018011	\N	445	1561
1900	0	2022-12-14 20:05:48.02484	2022-12-14 20:05:48.02484	\N	446	1561
1901	0	2022-12-14 20:05:48.034172	2022-12-14 20:05:48.034172	\N	1266	1561
1902	0	2022-12-14 20:05:48.041685	2022-12-14 20:05:48.041685	\N	447	1561
1903	1	2022-12-14 20:05:48.049072	2022-12-14 20:05:48.049072	\N	448	1561
1904	1	2022-12-14 20:05:48.055748	2022-12-14 20:05:48.055748	\N	449	1561
1905	-999	2022-12-14 20:05:48.062487	2022-12-14 20:05:48.062487	\N	1270	1561
1906	2	2022-12-14 20:05:48.070264	2022-12-14 20:05:48.070264	\N	1906	1561
1907	0	2022-12-14 20:05:48.079406	2022-12-14 20:05:48.079406	\N	1907	1561
1908	0	2022-12-14 20:05:48.085306	2022-12-14 20:05:48.085306	\N	1908	1561
1909	0	2022-12-14 20:05:48.092244	2022-12-14 20:05:48.092244	\N	1909	1561
1910	2	2022-12-14 20:05:48.09848	2022-12-14 20:05:48.09848	\N	450	1561
1911	1	2022-12-14 20:05:48.106003	2022-12-14 20:05:48.106003	\N	451	1561
1912	2	2022-12-14 20:05:48.113456	2022-12-14 20:05:48.113456	\N	452	1561
1913	2	2022-12-14 20:05:48.121445	2022-12-14 20:05:48.121445	\N	1274	1561
1914	2	2022-12-14 20:05:48.128985	2022-12-14 20:05:48.128985	\N	453	1561
1915	1	2022-12-14 20:05:48.135302	2022-12-14 20:05:48.135302	\N	1276	1561
1916	2	2022-12-14 20:05:48.14196	2022-12-14 20:05:48.14196	\N	454	1561
1917	2	2022-12-14 20:05:48.150079	2022-12-14 20:05:48.150079	\N	455	1561
1918	2	2022-12-14 20:05:48.157698	2022-12-14 20:05:48.157698	\N	456	1561
1919	1	2022-12-14 20:05:48.165529	2022-12-14 20:05:48.165529	\N	457	1561
1920	2	2022-12-14 20:05:48.172758	2022-12-14 20:05:48.172758	\N	458	1561
1921	2	2022-12-14 20:05:48.180562	2022-12-14 20:05:48.180562	\N	470	1561
1922	2	2022-12-14 20:05:48.189961	2022-12-14 20:05:48.189961	\N	480	1561
1923	1	2022-12-14 20:05:48.196025	2022-12-14 20:05:48.196025	\N	481	1561
1924	2	2022-12-14 20:05:48.201745	2022-12-14 20:05:48.201745	\N	482	1561
1925	3	2022-12-14 20:05:48.208467	2022-12-14 20:05:48.208467	\N	1296	1561
1926	2	2022-12-14 20:05:48.21465	2022-12-14 20:05:48.21465	\N	483	1561
1927	1	2022-12-14 20:05:48.222992	2022-12-14 20:05:48.222992	\N	1298	1561
1928	2	2022-12-14 20:05:48.229778	2022-12-14 20:05:48.229778	\N	484	1561
1929	2	2022-12-14 20:05:48.236872	2022-12-14 20:05:48.236872	\N	485	1561
1930	1	2022-12-14 20:05:48.243784	2022-12-14 20:05:48.243784	\N	1302	1561
1931	0	2022-12-14 20:05:48.250422	2022-12-14 20:05:48.250422	\N	487	1561
1932	2	2022-12-14 20:05:48.257438	2022-12-14 20:05:48.257438	\N	491	1561
1933	2	2022-12-14 20:05:48.265396	2022-12-14 20:05:48.265396	\N	492	1561
1934	1	2022-12-14 20:05:48.272761	2022-12-14 20:05:48.272761	\N	493	1561
1935	2	2022-12-14 20:05:48.279772	2022-12-14 20:05:48.279772	\N	494	1561
1936	2	2022-12-14 20:05:48.286646	2022-12-14 20:05:48.286646	\N	495	1561
1937	2	2022-12-14 20:05:48.293366	2022-12-14 20:05:48.293366	\N	496	1561
1938	2	2022-12-14 20:05:48.301219	2022-12-14 20:05:48.301219	\N	497	1561
1939	2	2022-12-14 20:05:48.309302	2022-12-14 20:05:48.309302	\N	498	1561
1940	0	2022-12-14 20:05:48.317416	2022-12-14 20:05:48.317416	\N	499	1561
1941	2	2022-12-14 20:05:48.324441	2022-12-14 20:05:48.324441	\N	1941	1561
1942	2	2022-12-14 20:05:48.331916	2022-12-14 20:05:48.331916	\N	1313	1561
1943	1	2022-12-14 20:05:48.339144	2022-12-14 20:05:48.339144	\N	500	1561
1944	2	2022-12-14 20:05:48.345977	2022-12-14 20:05:48.345977	\N	501	1561
1945	1	2022-12-14 20:05:48.352304	2022-12-14 20:05:48.352304	\N	502	1561
1946	2	2022-12-14 20:05:48.360093	2022-12-14 20:05:48.360093	\N	503	1561
1947	1	2022-12-14 20:05:48.366841	2022-12-14 20:05:48.366841	\N	504	1561
1948	2	2022-12-14 20:05:48.373865	2022-12-14 20:05:48.373865	\N	505	1561
1949	2	2022-12-14 20:05:48.381713	2022-12-14 20:05:48.381713	\N	506	1561
1950	2	2022-12-14 20:05:48.390509	2022-12-14 20:05:48.390509	\N	509	1561
1951	0	2022-12-14 20:05:48.397924	2022-12-14 20:05:48.397924	\N	510	1561
1952	2	2022-12-14 20:05:48.404714	2022-12-14 20:05:48.404714	\N	511	1561
1953	0	2022-12-14 20:05:48.411716	2022-12-14 20:05:48.411716	\N	512	1561
1954	0	2022-12-14 20:05:48.418959	2022-12-14 20:05:48.418959	\N	1326	1561
1955	2	2022-12-14 20:05:48.426015	2022-12-14 20:05:48.426015	\N	513	1561
1956	2	2022-12-14 20:05:48.433104	2022-12-14 20:05:48.433104	\N	514	1561
1957	2	2022-12-14 20:05:48.44038	2022-12-14 20:05:48.44038	\N	515	1561
1958	0	2022-12-14 20:05:48.447374	2022-12-14 20:05:48.447374	\N	516	1561
1959	1	2022-12-14 20:05:48.454296	2022-12-14 20:05:48.454296	\N	1959	1561
1960	2	2022-12-14 20:05:48.462237	2022-12-14 20:05:48.462237	\N	1960	1561
1961	1	2022-12-14 20:05:48.469446	2022-12-14 20:05:48.469446	\N	546	1561
1962	2	2022-12-14 20:05:48.476873	2022-12-14 20:05:48.476873	\N	547	1561
1963	1	2022-12-14 20:05:48.484757	2022-12-14 20:05:48.484757	\N	548	1561
1964	1	2022-12-14 20:05:48.492265	2022-12-14 20:05:48.492265	\N	549	1561
1965	1	2022-12-14 20:05:48.499446	2022-12-14 20:05:48.499446	\N	550	1561
1966	2	2022-12-14 20:05:48.507884	2022-12-14 20:05:48.507884	\N	551	1561
1967	2	2022-12-14 20:05:48.515073	2022-12-14 20:05:48.515073	\N	552	1561
1968	2	2022-12-14 20:05:48.522665	2022-12-14 20:05:48.522665	\N	553	1561
1969	2	2022-12-14 20:05:48.529181	2022-12-14 20:05:48.529181	\N	554	1561
1970	0	2022-12-14 20:05:48.537001	2022-12-14 20:05:48.537001	\N	555	1561
1971	0	2022-12-14 20:05:48.543991	2022-12-14 20:05:48.543991	\N	1971	1561
1972	1	2022-12-14 20:05:48.552029	2022-12-14 20:05:48.552029	\N	1972	1561
1973	0	2022-12-14 20:05:48.559106	2022-12-14 20:05:48.559106	\N	1973	1561
1974	1	2022-12-14 20:05:48.566818	2022-12-14 20:05:48.566818	\N	1974	1561
1975	1	2022-12-14 20:05:48.574018	2022-12-14 20:05:48.574018	\N	556	1561
1976	1	2022-12-14 20:05:48.582077	2022-12-14 20:05:48.582077	\N	557	1561
1977	1	2022-12-14 20:05:48.58932	2022-12-14 20:05:48.58932	\N	558	1561
1978	1	2022-12-14 20:05:48.597689	2022-12-14 20:05:48.597689	\N	560	1561
1979	1	2022-12-14 20:05:48.60538	2022-12-14 20:05:48.60538	\N	561	1561
1980	0	2022-12-14 20:05:48.61693	2022-12-14 20:05:48.61693	\N	562	1561
1981	0	2022-12-14 20:05:48.626701	2022-12-14 20:05:48.626701	\N	563	1561
1982	1	2022-12-14 20:05:48.634074	2022-12-14 20:05:48.634074	\N	564	1561
1983	1	2022-12-14 20:05:48.641316	2022-12-14 20:05:48.641316	\N	565	1561
1984	0	2022-12-14 20:05:48.647809	2022-12-14 20:05:48.647809	\N	1984	1561
1985	1	2022-12-14 20:05:48.653798	2022-12-14 20:05:48.653798	\N	1985	1561
1986	2	2022-12-14 20:05:48.660073	2022-12-14 20:05:48.660073	\N	1986	1561
1987	2	2022-12-14 20:05:48.666747	2022-12-14 20:05:48.666747	\N	566	1561
1988	1	2022-12-14 20:05:48.674113	2022-12-14 20:05:48.674113	\N	1988	1561
1989	0	2022-12-14 20:05:48.681358	2022-12-14 20:05:48.681358	\N	1989	1561
1990	1	2022-12-14 20:05:48.688615	2022-12-14 20:05:48.688615	\N	568	1561
1991	2	2022-12-14 20:05:48.696386	2022-12-14 20:05:48.696386	\N	1991	1561
1992	-999	2022-12-14 20:05:48.703461	2022-12-14 20:05:48.703461	\N	337	1561
1995	1	2022-12-14 20:05:48.725858	2022-12-14 20:05:48.725858	\N	5	1561
1996	1	2022-12-14 20:05:48.732744	2022-12-14 20:05:48.732744	\N	1566	1561
1997	1	2022-12-14 20:05:48.743667	2022-12-14 20:05:48.743667	\N	11	1561
1998	1	2022-12-14 20:05:48.751051	2022-12-14 20:05:48.751051	\N	12	1561
1999	1	2022-12-14 20:05:48.758999	2022-12-14 20:05:48.758999	\N	13	1561
2000	1	2022-12-14 20:05:48.766601	2022-12-14 20:05:48.766601	\N	14	1561
2001	1	2022-12-14 20:05:48.774311	2022-12-14 20:05:48.774311	\N	898	1561
2002	0	2022-12-14 20:05:48.780836	2022-12-14 20:05:48.780836	\N	15	1561
2003	0	2022-12-14 20:05:48.788465	2022-12-14 20:05:48.788465	\N	900	1561
2004	1	2022-12-14 20:05:48.797277	2022-12-14 20:05:48.797277	\N	901	1561
2005	1	2022-12-14 20:05:48.805444	2022-12-14 20:05:48.805444	\N	902	1561
2006	1	2022-12-14 20:05:48.813245	2022-12-14 20:05:48.813245	\N	904	1561
2007	0	2022-12-14 20:05:48.823716	2022-12-14 20:05:48.823716	\N	19	1561
2008	0	2022-12-14 20:05:48.830703	2022-12-14 20:05:48.830703	\N	906	1561
2009	0	2022-12-14 20:05:48.83787	2022-12-14 20:05:48.83787	\N	20	1561
2010	1	2022-12-14 20:05:48.844714	2022-12-14 20:05:48.844714	\N	21	1561
2011	1	2022-12-14 20:05:48.852205	2022-12-14 20:05:48.852205	\N	23	1561
2012	1	2022-12-14 20:05:48.859296	2022-12-14 20:05:48.859296	\N	24	1561
2013	1	2022-12-14 20:05:48.865972	2022-12-14 20:05:48.865972	\N	25	1561
2014	0	2022-12-14 20:05:48.8733	2022-12-14 20:05:48.8733	\N	35	1561
2015	0	2022-12-14 20:05:48.879619	2022-12-14 20:05:48.879619	\N	1596	1561
2016	0	2022-12-14 20:05:48.887555	2022-12-14 20:05:48.887555	\N	37	1561
2017	0	2022-12-14 20:05:48.894984	2022-12-14 20:05:48.894984	\N	38	1561
2018	0	2022-12-14 20:05:48.903582	2022-12-14 20:05:48.903582	\N	39	1561
2019	1	2022-12-14 20:05:48.911325	2022-12-14 20:05:48.911325	\N	40	1561
2020	0	2022-12-14 20:05:48.919491	2022-12-14 20:05:48.919491	\N	1601	1561
2021	1	2022-12-14 20:05:48.92662	2022-12-14 20:05:48.92662	\N	1602	1561
2022	1	2022-12-14 20:05:48.934133	2022-12-14 20:05:48.934133	\N	41	1561
2023	0	2022-12-14 20:05:48.94158	2022-12-14 20:05:48.94158	\N	1605	1561
2024	2	2022-12-14 20:05:48.948888	2022-12-14 20:05:48.948888	\N	46	1561
2025	0	2022-12-14 20:05:48.957197	2022-12-14 20:05:48.957197	\N	50	1561
2026	0	2022-12-14 20:05:48.96539	2022-12-14 20:05:48.96539	\N	52	1561
2027	0	2022-12-14 20:05:48.973193	2022-12-14 20:05:48.973193	\N	54	1561
2028	1	2022-12-14 20:05:48.980433	2022-12-14 20:05:48.980433	\N	58	1561
2029	1	2022-12-14 20:05:48.988228	2022-12-14 20:05:48.988228	\N	59	1561
2030	1	2022-12-14 20:05:48.995212	2022-12-14 20:05:48.995212	\N	60	1561
2031	1	2022-12-14 20:05:49.002787	2022-12-14 20:05:49.002787	\N	1626	1561
2032	2	2022-12-14 20:05:49.010587	2022-12-14 20:05:49.010587	\N	1627	1561
2033	1	2022-12-14 20:05:49.018668	2022-12-14 20:05:49.018668	\N	81	1561
2034	1	2022-12-14 20:05:49.026712	2022-12-14 20:05:49.026712	\N	1635	1561
2035	2	2022-12-14 20:05:49.033871	2022-12-14 20:05:49.033871	\N	956	1561
2036	1	2022-12-14 20:05:49.041856	2022-12-14 20:05:49.041856	\N	93	1561
2037	1	2022-12-14 20:05:49.048796	2022-12-14 20:05:49.048796	\N	94	1561
2038	1	2022-12-14 20:05:49.060595	2022-12-14 20:05:49.060595	\N	971	1561
2039	1	2022-12-14 20:05:49.073183	2022-12-14 20:05:49.073183	\N	104	1561
2040	1	2022-12-14 20:05:49.085736	2022-12-14 20:05:49.085736	\N	121	1561
2041	1	2022-12-14 20:05:49.095005	2022-12-14 20:05:49.095005	\N	991	1561
2042	1	2022-12-14 20:05:49.102643	2022-12-14 20:05:49.102643	\N	129	1561
2043	1	2022-12-14 20:05:49.110427	2022-12-14 20:05:49.110427	\N	131	1561
2044	1	2022-12-14 20:05:49.118984	2022-12-14 20:05:49.118984	\N	133	1561
2045	1	2022-12-14 20:05:49.126538	2022-12-14 20:05:49.126538	\N	138	1561
2046	1	2022-12-14 20:05:49.133771	2022-12-14 20:05:49.133771	\N	1001	1561
2047	1	2022-12-14 20:05:49.141617	2022-12-14 20:05:49.141617	\N	139	1561
2048	1	2022-12-14 20:05:49.150183	2022-12-14 20:05:49.150183	\N	1003	1561
2049	1	2022-12-14 20:05:49.15761	2022-12-14 20:05:49.15761	\N	1004	1561
2050	0	2022-12-14 20:05:49.164981	2022-12-14 20:05:49.164981	\N	153	1561
2051	1	2022-12-14 20:05:49.17749	2022-12-14 20:05:49.17749	\N	154	1561
2052	1	2022-12-14 20:05:49.188838	2022-12-14 20:05:49.188838	\N	162	1561
2053	1	2022-12-14 20:05:49.195137	2022-12-14 20:05:49.195137	\N	1690	1561
2054	1	2022-12-14 20:05:49.201324	2022-12-14 20:05:49.201324	\N	167	1561
2055	1	2022-12-14 20:05:49.208721	2022-12-14 20:05:49.208721	\N	173	1561
2056	1	2022-12-14 20:05:49.216146	2022-12-14 20:05:49.216146	\N	174	1561
2057	1	2022-12-14 20:05:49.224111	2022-12-14 20:05:49.224111	\N	176	1561
2058	1	2022-12-14 20:05:49.230923	2022-12-14 20:05:49.230923	\N	180	1561
2059	1	2022-12-14 20:05:49.238616	2022-12-14 20:05:49.238616	\N	186	1561
2060	1	2022-12-14 20:05:49.245309	2022-12-14 20:05:49.245309	\N	1377	1561
2061	1	2022-12-14 20:05:49.252	2022-12-14 20:05:49.252	\N	1708	1561
2062	1	2022-12-14 20:05:49.261152	2022-12-14 20:05:49.261152	\N	192	1561
2063	1	2022-12-14 20:05:49.268846	2022-12-14 20:05:49.268846	\N	195	1561
2064	1	2022-12-14 20:05:49.275796	2022-12-14 20:05:49.275796	\N	196	1561
2065	1	2022-12-14 20:05:49.283368	2022-12-14 20:05:49.283368	\N	200	1561
2066	1	2022-12-14 20:05:49.291011	2022-12-14 20:05:49.291011	\N	211	1561
2067	1	2022-12-14 20:05:49.297119	2022-12-14 20:05:49.297119	\N	1071	1561
2068	1	2022-12-14 20:05:49.304435	2022-12-14 20:05:49.304435	\N	223	1561
2069	1	2022-12-14 20:05:49.31211	2022-12-14 20:05:49.31211	\N	1078	1561
2070	1	2022-12-14 20:05:49.320545	2022-12-14 20:05:49.320545	\N	1079	1561
2071	1	2022-12-14 20:05:49.327633	2022-12-14 20:05:49.327633	\N	226	1561
2072	1	2022-12-14 20:05:49.334609	2022-12-14 20:05:49.334609	\N	227	1561
2073	1	2022-12-14 20:05:49.341114	2022-12-14 20:05:49.341114	\N	1084	1561
2074	1	2022-12-14 20:05:49.347188	2022-12-14 20:05:49.347188	\N	230	1561
2075	1	2022-12-14 20:05:49.35458	2022-12-14 20:05:49.35458	\N	231	1561
2076	1	2022-12-14 20:05:49.361538	2022-12-14 20:05:49.361538	\N	233	1561
2077	1	2022-12-14 20:05:49.368646	2022-12-14 20:05:49.368646	\N	1087	1561
2078	1	2022-12-14 20:05:49.37623	2022-12-14 20:05:49.37623	\N	245	1561
2079	1	2022-12-14 20:05:49.382854	2022-12-14 20:05:49.382854	\N	246	1561
2080	1	2022-12-14 20:05:49.390112	2022-12-14 20:05:49.390112	\N	253	1561
2081	1	2022-12-14 20:05:49.39626	2022-12-14 20:05:49.39626	\N	262	1561
2082	1	2022-12-14 20:05:49.403368	2022-12-14 20:05:49.403368	\N	282	1561
2083	0	2022-12-14 20:05:49.410361	2022-12-14 20:05:49.410361	\N	288	1561
2084	1	2022-12-14 20:05:49.416672	2022-12-14 20:05:49.416672	\N	1801	1561
2085	1	2022-12-14 20:05:49.424142	2022-12-14 20:05:49.424142	\N	311	1561
2086	1	2022-12-14 20:05:49.430418	2022-12-14 20:05:49.430418	\N	1154	1561
2087	1	2022-12-14 20:05:49.439198	2022-12-14 20:05:49.439198	\N	314	1561
2088	1	2022-12-14 20:05:49.446247	2022-12-14 20:05:49.446247	\N	1157	1561
2089	1	2022-12-14 20:05:49.454362	2022-12-14 20:05:49.454362	\N	315	1561
2090	1	2022-12-14 20:05:49.464099	2022-12-14 20:05:49.464099	\N	317	1561
2091	1	2022-12-14 20:05:49.472945	2022-12-14 20:05:49.472945	\N	318	1561
2092	1	2022-12-14 20:05:49.480906	2022-12-14 20:05:49.480906	\N	319	1561
2093	1	2022-12-14 20:05:49.488341	2022-12-14 20:05:49.488341	\N	334	1561
2094	1	2022-12-14 20:05:49.495587	2022-12-14 20:05:49.495587	\N	1840	1561
2095	1	2022-12-14 20:05:49.503597	2022-12-14 20:05:49.503597	\N	378	1561
2096	1	2022-12-14 20:05:49.513424	2022-12-14 20:05:49.513424	\N	1212	1561
2097	1	2022-12-14 20:05:49.52234	2022-12-14 20:05:49.52234	\N	392	1561
2098	1	2022-12-14 20:05:49.529985	2022-12-14 20:05:49.529985	\N	395	1561
2099	1	2022-12-14 20:05:49.538788	2022-12-14 20:05:49.538788	\N	1239	1561
2100	1	2022-12-14 20:05:49.547078	2022-12-14 20:05:49.547078	\N	1240	1561
2101	1	2022-12-14 20:05:49.555956	2022-12-14 20:05:49.555956	\N	1241	1561
2102	1	2022-12-14 20:05:49.566373	2022-12-14 20:05:49.566373	\N	426	1561
2103	1	2022-12-14 20:05:49.576572	2022-12-14 20:05:49.576572	\N	429	1561
2104	1	2022-12-14 20:05:49.584601	2022-12-14 20:05:49.584601	\N	1257	1561
2105	1	2022-12-14 20:05:49.593143	2022-12-14 20:05:49.593143	\N	445	1561
2106	1	2022-12-14 20:05:49.600451	2022-12-14 20:05:49.600451	\N	1906	1561
2107	1	2022-12-14 20:05:49.608018	2022-12-14 20:05:49.608018	\N	1274	1561
2108	1	2022-12-14 20:05:49.61546	2022-12-14 20:05:49.61546	\N	454	1561
2109	1	2022-12-14 20:05:49.623394	2022-12-14 20:05:49.623394	\N	455	1561
2110	1	2022-12-14 20:05:49.630331	2022-12-14 20:05:49.630331	\N	456	1561
2111	1	2022-12-14 20:05:49.639469	2022-12-14 20:05:49.639469	\N	458	1561
2112	1	2022-12-14 20:05:49.647769	2022-12-14 20:05:49.647769	\N	470	1561
2113	1	2022-12-14 20:05:49.656539	2022-12-14 20:05:49.656539	\N	480	1561
2114	0	2022-12-14 20:05:49.664383	2022-12-14 20:05:49.664383	\N	481	1561
2115	1	2022-12-14 20:05:49.673586	2022-12-14 20:05:49.673586	\N	482	1561
2116	2	2022-12-14 20:05:49.681106	2022-12-14 20:05:49.681106	\N	1296	1561
2117	1	2022-12-14 20:05:49.690504	2022-12-14 20:05:49.690504	\N	484	1561
2118	1	2022-12-14 20:05:49.699134	2022-12-14 20:05:49.699134	\N	491	1561
2119	1	2022-12-14 20:05:49.708297	2022-12-14 20:05:49.708297	\N	494	1561
2120	1	2022-12-14 20:05:49.717527	2022-12-14 20:05:49.717527	\N	495	1561
2121	1	2022-12-14 20:05:49.727018	2022-12-14 20:05:49.727018	\N	496	1561
2122	1	2022-12-14 20:05:49.737013	2022-12-14 20:05:49.737013	\N	497	1561
2123	1	2022-12-14 20:05:49.747582	2022-12-14 20:05:49.747582	\N	1313	1561
2124	0	2022-12-14 20:05:49.758438	2022-12-14 20:05:49.758438	\N	500	1561
2125	0	2022-12-14 20:05:49.768201	2022-12-14 20:05:49.768201	\N	546	1561
2126	0	2022-12-14 20:05:49.776357	2022-12-14 20:05:49.776357	\N	548	1561
2127	0	2022-12-14 20:05:49.783312	2022-12-14 20:05:49.783312	\N	549	1561
2128	-999	2022-12-14 20:05:49.793115	2022-12-14 20:05:49.793115	\N	551	1561
2129	0	2022-12-14 20:05:49.802189	2022-12-14 20:05:49.802189	\N	1972	1561
2130	0	2022-12-14 20:05:49.809279	2022-12-14 20:05:49.809279	\N	556	1561
2131	0	2022-12-14 20:05:49.816251	2022-12-14 20:05:49.816251	\N	557	1561
2132	0	2022-12-14 20:05:49.824666	2022-12-14 20:05:49.824666	\N	561	1561
2133	0	2022-12-14 20:05:49.837189	2022-12-14 20:05:49.837189	\N	564	1561
2134	0	2022-12-14 20:05:49.846198	2022-12-14 20:05:49.846198	\N	1985	1561
2135	1	2022-12-14 20:05:49.860111	2022-12-14 20:05:49.860111	\N	1986	1561
2136	1	2022-12-14 20:05:49.874961	2022-12-14 20:05:49.874961	\N	566	1561
2137	0	2022-12-14 20:05:49.889048	2022-12-14 20:05:49.889048	\N	1988	1561
2138	0	2022-12-14 20:05:49.902938	2022-12-14 20:05:49.902938	\N	568	1561
2139	1	2022-12-14 20:05:49.917367	2022-12-14 20:05:49.917367	\N	1991	1561
2140	1	2022-12-14 20:05:49.932484	2022-12-14 20:05:49.932484	\N	27	1561
2141	1	2022-12-14 20:05:49.942028	2022-12-14 20:05:49.942028	\N	31	1561
2145	1	2022-12-14 20:05:49.971076	2022-12-14 20:05:49.971076	\N	57	1561
2146	1	2022-12-14 20:05:49.979068	2022-12-14 20:05:49.979068	\N	1628	1561
2147	1	2022-12-14 20:05:49.988239	2022-12-14 20:05:49.988239	\N	83	1561
2148	1	2022-12-14 20:05:49.994713	2022-12-14 20:05:49.994713	\N	1634	1561
2149	1	2022-12-14 20:05:50.001566	2022-12-14 20:05:50.001566	\N	1641	1561
2150	1	2022-12-14 20:05:50.008728	2022-12-14 20:05:50.008728	\N	1642	1561
2151	1	2022-12-14 20:05:50.018108	2022-12-14 20:05:50.018108	\N	92	1561
2152	1	2022-12-14 20:05:50.031636	2022-12-14 20:05:50.031636	\N	95	1561
2153	2	2022-12-14 20:05:50.041981	2022-12-14 20:05:50.041981	\N	107	1561
2155	1	2022-12-14 20:05:50.057246	2022-12-14 20:05:50.057246	\N	156	1561
2156	1	2022-12-14 20:05:50.066013	2022-12-14 20:05:50.066013	\N	1764	1561
2157	1	2022-12-14 20:05:50.074459	2022-12-14 20:05:50.074459	\N	251	1561
2158	1	2022-12-14 20:05:50.082266	2022-12-14 20:05:50.082266	\N	1785	1561
2159	1	2022-12-14 20:05:50.089789	2022-12-14 20:05:50.089789	\N	1786	1561
2160	1	2022-12-14 20:05:50.0979	2022-12-14 20:05:50.0979	\N	1858	1561
2161	1	2022-12-14 20:05:50.103924	2022-12-14 20:05:50.103924	\N	425	1561
2162	1	2022-12-14 20:05:50.115436	2022-12-14 20:05:50.115436	\N	1254	1561
2163	1	2022-12-14 20:05:50.125546	2022-12-14 20:05:50.125546	\N	444	1561
2165	1	2022-12-14 20:05:50.14003	2022-12-14 20:05:50.14003	\N	1270	1561
2166	1	2022-12-14 20:05:50.147306	2022-12-14 20:05:50.147306	\N	1960	1561
2167	1	2022-12-14 20:05:50.154327	2022-12-14 20:05:50.154327	\N	547	1561
2168	1	2022-12-14 20:05:50.161959	2022-12-14 20:05:50.161959	\N	552	1561
2169	1	2022-12-14 20:05:50.169121	2022-12-14 20:05:50.169121	\N	296	1561
2171	1	2022-12-14 20:05:50.184196	2022-12-14 20:05:50.184196	\N	84	1
2172	2	2022-12-14 20:05:50.19142	2022-12-14 20:05:50.19142	\N	89	1
2174	-999	2022-12-14 20:05:50.206439	2022-12-14 20:05:50.206439	\N	58	1561
2175	-999	2022-12-14 20:05:50.213552	2022-12-14 20:05:50.213552	\N	59	1561
2176	-999	2022-12-14 20:05:50.219769	2022-12-14 20:05:50.219769	\N	64	1561
2178	-999	2022-12-14 20:05:50.23909	2022-12-14 20:05:50.23909	\N	318	1561
2179	-999	2022-12-14 20:05:50.246538	2022-12-14 20:05:50.246538	\N	317	1561
2180	-999	2022-12-14 20:05:50.254833	2022-12-14 20:05:50.254833	\N	1157	1561
2182	-999	2022-12-14 20:05:50.270632	2022-12-14 20:05:50.270632	\N	991	1561
2183	-999	2022-12-14 20:05:50.285007	2022-12-14 20:05:50.285007	\N	127	1561
2184	-999	2022-12-14 20:05:50.295641	2022-12-14 20:05:50.295641	\N	129	1561
2185	-999	2022-12-14 20:05:50.302059	2022-12-14 20:05:50.302059	\N	134	1561
2186	-999	2022-12-14 20:05:50.30946	2022-12-14 20:05:50.30946	\N	304	1561
2187	-999	2022-12-14 20:05:50.317241	2022-12-14 20:05:50.317241	\N	309	1561
2190	-999	2022-12-14 20:05:50.337868	2022-12-14 20:05:50.337868	\N	156	1561
2191	-999	2022-12-14 20:05:50.34525	2022-12-14 20:05:50.34525	\N	155	1561
2192	-999	2022-12-14 20:05:50.35137	2022-12-14 20:05:50.35137	\N	160	1561
2195	-999	2022-12-14 20:05:50.374279	2022-12-14 20:05:50.374279	\N	1154	1561
2196	0	2022-12-14 20:05:50.382515	2022-12-14 20:05:50.382515	\N	2196	1
2197	0	2022-12-14 20:05:50.389299	2022-12-14 20:05:50.389299	\N	1624	1
2198	0	2022-12-14 20:05:50.395916	2022-12-14 20:05:50.395916	\N	909	1
2199	0	2022-12-14 20:05:50.405491	2022-12-14 20:05:50.405491	\N	2199	1
2200	0	2022-12-14 20:05:50.41521	2022-12-14 20:05:50.41521	\N	954	1
2201	0	2022-12-14 20:05:50.421798	2022-12-14 20:05:50.421798	\N	2201	1
2202	0	2022-12-14 20:05:50.428885	2022-12-14 20:05:50.428885	\N	2202	1
2203	0	2022-12-14 20:05:50.435789	2022-12-14 20:05:50.435789	\N	1642	1
2204	0	2022-12-14 20:05:50.442805	2022-12-14 20:05:50.442805	\N	2204	1
2205	0	2022-12-14 20:05:50.44919	2022-12-14 20:05:50.44919	\N	2205	1
2206	0	2022-12-14 20:05:50.456489	2022-12-14 20:05:50.456489	\N	2206	1
2207	0	2022-12-14 20:05:50.463578	2022-12-14 20:05:50.463578	\N	1661	1
2208	-999	2022-12-14 20:05:50.469532	2022-12-14 20:05:50.469532	\N	2208	1
2209	-999	2022-12-14 20:05:50.476285	2022-12-14 20:05:50.476285	\N	2209	1
2210	0	2022-12-14 20:05:50.48323	2022-12-14 20:05:50.48323	\N	2210	1
2211	0	2022-12-14 20:05:50.489909	2022-12-14 20:05:50.489909	\N	1023	1
2212	0	2022-12-14 20:05:50.496822	2022-12-14 20:05:50.496822	\N	2212	1
2213	0	2022-12-14 20:05:50.503309	2022-12-14 20:05:50.503309	\N	2213	1
2214	0	2022-12-14 20:05:50.510389	2022-12-14 20:05:50.510389	\N	1377	1
2215	0	2022-12-14 20:05:50.517204	2022-12-14 20:05:50.517204	\N	1042	1
2216	-999	2022-12-14 20:05:50.52407	2022-12-14 20:05:50.52407	\N	2216	1
2217	-999	2022-12-14 20:05:50.5311	2022-12-14 20:05:50.5311	\N	2217	1
2218	0	2022-12-14 20:05:50.538577	2022-12-14 20:05:50.538577	\N	1074	1
2219	0	2022-12-14 20:05:50.546245	2022-12-14 20:05:50.546245	\N	1075	1
2220	0	2022-12-14 20:05:50.553439	2022-12-14 20:05:50.553439	\N	1079	1
2221	0	2022-12-14 20:05:50.560688	2022-12-14 20:05:50.560688	\N	1080	1
2222	0	2022-12-14 20:05:50.567831	2022-12-14 20:05:50.567831	\N	2222	1
2223	0	2022-12-14 20:05:50.575032	2022-12-14 20:05:50.575032	\N	1084	1
2224	0	2022-12-14 20:05:50.582543	2022-12-14 20:05:50.582543	\N	2224	1
2225	-999	2022-12-14 20:05:50.58995	2022-12-14 20:05:50.58995	\N	2225	1
2226	0	2022-12-14 20:05:50.598265	2022-12-14 20:05:50.598265	\N	1176	1
2227	-999	2022-12-14 20:05:50.605342	2022-12-14 20:05:50.605342	\N	1837	1
2228	-999	2022-12-14 20:05:50.613068	2022-12-14 20:05:50.613068	\N	1838	1
2229	0	2022-12-14 20:05:50.620552	2022-12-14 20:05:50.620552	\N	2229	1
2230	0	2022-12-14 20:05:50.628138	2022-12-14 20:05:50.628138	\N	442	1
2231	0	2022-12-14 20:05:50.635263	2022-12-14 20:05:50.635263	\N	1906	1
2232	0	2022-12-14 20:05:50.642578	2022-12-14 20:05:50.642578	\N	1907	1
2233	0	2022-12-14 20:05:50.649626	2022-12-14 20:05:50.649626	\N	1909	1
2234	0	2022-12-14 20:05:50.657452	2022-12-14 20:05:50.657452	\N	2234	1
2235	-999	2022-12-14 20:05:50.665489	2022-12-14 20:05:50.665489	\N	457	1
2236	0	2022-12-14 20:05:50.672646	2022-12-14 20:05:50.672646	\N	1313	1
2237	0	2022-12-14 20:05:50.679575	2022-12-14 20:05:50.679575	\N	1323	1
2238	0	2022-12-14 20:05:50.685846	2022-12-14 20:05:50.685846	\N	1326	1
2239	0	2022-12-14 20:05:50.695568	2022-12-14 20:05:50.695568	\N	2239	1
2241	2	2022-12-14 20:05:50.717524	2022-12-14 20:05:50.717524	\N	58	1561
2242	2	2022-12-14 20:05:50.725551	2022-12-14 20:05:50.725551	\N	59	1561
2243	2	2022-12-14 20:05:50.733481	2022-12-14 20:05:50.733481	\N	60	1561
2244	1	2022-12-14 20:05:50.74188	2022-12-14 20:05:50.74188	\N	64	1561
2245	1	2022-12-14 20:05:50.750362	2022-12-14 20:05:50.750362	\N	126	1561
2246	1	2022-12-14 20:05:50.759178	2022-12-14 20:05:50.759178	\N	127	1561
2247	2	2022-12-14 20:05:50.767645	2022-12-14 20:05:50.767645	\N	991	1561
2248	2	2022-12-14 20:05:50.775497	2022-12-14 20:05:50.775497	\N	129	1561
2249	1	2022-12-14 20:05:50.784859	2022-12-14 20:05:50.784859	\N	134	1561
2250	1	2022-12-14 20:05:50.792367	2022-12-14 20:05:50.792367	\N	155	1561
2251	2	2022-12-14 20:05:50.798961	2022-12-14 20:05:50.798961	\N	156	1561
2252	1	2022-12-14 20:05:50.805531	2022-12-14 20:05:50.805531	\N	159	1561
2253	1	2022-12-14 20:05:50.812034	2022-12-14 20:05:50.812034	\N	160	1561
2254	1	2022-12-14 20:05:50.818553	2022-12-14 20:05:50.818553	\N	163	1561
2255	1	2022-12-14 20:05:50.825527	2022-12-14 20:05:50.825527	\N	304	1561
2256	1	2022-12-14 20:05:50.83404	2022-12-14 20:05:50.83404	\N	305	1561
2257	1	2022-12-14 20:05:50.843673	2022-12-14 20:05:50.843673	\N	309	1561
2258	1	2022-12-14 20:05:50.852835	2022-12-14 20:05:50.852835	\N	310	1561
2259	2	2022-12-14 20:05:50.860566	2022-12-14 20:05:50.860566	\N	311	1561
2260	2	2022-12-14 20:05:50.868297	2022-12-14 20:05:50.868297	\N	314	1561
2261	2	2022-12-14 20:05:50.876114	2022-12-14 20:05:50.876114	\N	1157	1561
2262	2	2022-12-14 20:05:50.883719	2022-12-14 20:05:50.883719	\N	315	1561
2263	2	2022-12-14 20:05:50.891521	2022-12-14 20:05:50.891521	\N	317	1561
2264	2	2022-12-14 20:05:50.899295	2022-12-14 20:05:50.899295	\N	318	1561
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
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.species (id, genus, species, created_at, updated_at) FROM stdin;
1	arabidopsis	thaliana	2022-12-14 20:05:32.929841	2022-12-14 20:05:32.929841
884	cardamine	hirsuta	2022-12-14 20:05:39.89526	2022-12-14 20:05:39.89526
1561	draba	verna	2022-12-14 20:05:45.364729	2022-12-14 20:05:45.364729
\.


--
-- Data for Name: tubes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tubes (id, seed_id, seedbox_id, "position", volume, count, created_at, updated_at) FROM stdin;
1	1	1	1	2.0	\N	2022-12-14 20:05:32.929841	2022-12-14 20:05:32.929841
2	2	1	2	2.0	\N	2022-12-14 20:05:33.0109	2022-12-14 20:05:33.0109
3	3	1	3	1.6	\N	2022-12-14 20:05:33.019692	2022-12-14 20:05:33.019692
4	4	1	4	2.0	\N	2022-12-14 20:05:33.027051	2022-12-14 20:05:33.027051
5	5	1	5	2.0	\N	2022-12-14 20:05:33.036898	2022-12-14 20:05:33.036898
6	6	1	6	2.0	\N	2022-12-14 20:05:33.045591	2022-12-14 20:05:33.045591
7	7	1	7	1.7	\N	2022-12-14 20:05:33.053579	2022-12-14 20:05:33.053579
8	8	1	8	1.8	\N	2022-12-14 20:05:33.06148	2022-12-14 20:05:33.06148
9	9	1	9	2.0	\N	2022-12-14 20:05:33.068295	2022-12-14 20:05:33.068295
10	10	1	10	2.0	\N	2022-12-14 20:05:33.075711	2022-12-14 20:05:33.075711
11	11	1	11	2.0	\N	2022-12-14 20:05:33.083601	2022-12-14 20:05:33.083601
12	12	1	12	2.0	\N	2022-12-14 20:05:33.091747	2022-12-14 20:05:33.091747
13	13	1	13	2.0	\N	2022-12-14 20:05:33.099465	2022-12-14 20:05:33.099465
14	14	1	14	2.0	\N	2022-12-14 20:05:33.115097	2022-12-14 20:05:33.115097
15	15	1	15	1.5	\N	2022-12-14 20:05:33.122958	2022-12-14 20:05:33.122958
16	16	1	16	1.0	\N	2022-12-14 20:05:33.130743	2022-12-14 20:05:33.130743
17	17	1	17	1.8	\N	2022-12-14 20:05:33.138717	2022-12-14 20:05:33.138717
18	18	1	19	1.8	\N	2022-12-14 20:05:33.14619	2022-12-14 20:05:33.14619
19	19	1	20	2.0	\N	2022-12-14 20:05:33.153077	2022-12-14 20:05:33.153077
20	20	1	21	1.7	\N	2022-12-14 20:05:33.160709	2022-12-14 20:05:33.160709
21	21	1	22	1.6	\N	2022-12-14 20:05:33.167898	2022-12-14 20:05:33.167898
22	22	1	23	2.0	\N	2022-12-14 20:05:33.174712	2022-12-14 20:05:33.174712
23	23	1	24	2.0	\N	2022-12-14 20:05:33.181374	2022-12-14 20:05:33.181374
24	24	1	25	2.0	\N	2022-12-14 20:05:33.189085	2022-12-14 20:05:33.189085
25	25	1	26	2.0	\N	2022-12-14 20:05:33.195484	2022-12-14 20:05:33.195484
26	26	1	27	1.9	\N	2022-12-14 20:05:33.203417	2022-12-14 20:05:33.203417
27	27	1	28	2.0	\N	2022-12-14 20:05:33.210161	2022-12-14 20:05:33.210161
28	28	1	29	1.8	\N	2022-12-14 20:05:33.216842	2022-12-14 20:05:33.216842
29	29	1	30	1.8	\N	2022-12-14 20:05:33.225928	2022-12-14 20:05:33.225928
30	30	1	31	2.0	\N	2022-12-14 20:05:33.232042	2022-12-14 20:05:33.232042
31	31	1	32	2.0	\N	2022-12-14 20:05:33.239766	2022-12-14 20:05:33.239766
32	32	1	33	1.8	\N	2022-12-14 20:05:33.246058	2022-12-14 20:05:33.246058
33	33	1	34	2.0	\N	2022-12-14 20:05:33.25242	2022-12-14 20:05:33.25242
34	34	1	35	1.3	\N	2022-12-14 20:05:33.259806	2022-12-14 20:05:33.259806
35	35	1	36	1.9	\N	2022-12-14 20:05:33.266433	2022-12-14 20:05:33.266433
36	36	1	37	2.0	\N	2022-12-14 20:05:33.275051	2022-12-14 20:05:33.275051
37	37	1	38	1.5	\N	2022-12-14 20:05:33.282966	2022-12-14 20:05:33.282966
38	38	1	39	1.0	\N	2022-12-14 20:05:33.291253	2022-12-14 20:05:33.291253
39	39	1	40	0.6	\N	2022-12-14 20:05:33.298408	2022-12-14 20:05:33.298408
40	40	1	41	0.8	\N	2022-12-14 20:05:33.306257	2022-12-14 20:05:33.306257
41	41	1	42	0.6	\N	2022-12-14 20:05:33.313351	2022-12-14 20:05:33.313351
42	42	1	43	0.3	\N	2022-12-14 20:05:33.321279	2022-12-14 20:05:33.321279
43	43	1	44	0.7	\N	2022-12-14 20:05:33.327883	2022-12-14 20:05:33.327883
44	44	1	45	0.5	\N	2022-12-14 20:05:33.335008	2022-12-14 20:05:33.335008
45	45	1	46	0.1	\N	2022-12-14 20:05:33.342354	2022-12-14 20:05:33.342354
46	46	1	47	2.0	\N	2022-12-14 20:05:33.350048	2022-12-14 20:05:33.350048
47	47	1	48	2.0	\N	2022-12-14 20:05:33.35714	2022-12-14 20:05:33.35714
48	48	1	49	2.0	\N	2022-12-14 20:05:33.36322	2022-12-14 20:05:33.36322
49	49	1	50	1.8	\N	2022-12-14 20:05:33.369803	2022-12-14 20:05:33.369803
50	50	1	51	2.0	\N	2022-12-14 20:05:33.376544	2022-12-14 20:05:33.376544
51	51	1	52	1.7	\N	2022-12-14 20:05:33.38227	2022-12-14 20:05:33.38227
52	52	1	53	1.8	\N	2022-12-14 20:05:33.388843	2022-12-14 20:05:33.388843
53	53	1	54	1.6	\N	2022-12-14 20:05:33.394661	2022-12-14 20:05:33.394661
54	54	1	55	2.0	\N	2022-12-14 20:05:33.400363	2022-12-14 20:05:33.400363
55	55	1	56	2.0	\N	2022-12-14 20:05:33.407472	2022-12-14 20:05:33.407472
56	56	1	57	0.5	\N	2022-12-14 20:05:33.413611	2022-12-14 20:05:33.413611
57	57	1	58	0.1	\N	2022-12-14 20:05:33.420229	2022-12-14 20:05:33.420229
58	58	1	59	0.5	\N	2022-12-14 20:05:33.427704	2022-12-14 20:05:33.427704
59	59	1	60	1.0	\N	2022-12-14 20:05:33.434616	2022-12-14 20:05:33.434616
60	60	1	61	0.1	\N	2022-12-14 20:05:33.441873	2022-12-14 20:05:33.441873
61	61	1	62	0.2	\N	2022-12-14 20:05:33.448841	2022-12-14 20:05:33.448841
62	62	1	63	0.4	\N	2022-12-14 20:05:33.456295	2022-12-14 20:05:33.456295
63	63	1	64	0.1	\N	2022-12-14 20:05:33.462443	2022-12-14 20:05:33.462443
64	64	1	65	0.2	\N	2022-12-14 20:05:33.469104	2022-12-14 20:05:33.469104
65	65	1	66	2.0	\N	2022-12-14 20:05:33.476365	2022-12-14 20:05:33.476365
66	66	1	67	2.0	\N	2022-12-14 20:05:33.483391	2022-12-14 20:05:33.483391
67	67	1	69	2.0	\N	2022-12-14 20:05:33.490454	2022-12-14 20:05:33.490454
68	68	1	70	2.0	\N	2022-12-14 20:05:33.497099	2022-12-14 20:05:33.497099
69	69	1	71	1.7	\N	2022-12-14 20:05:33.503857	2022-12-14 20:05:33.503857
70	70	1	72	1.7	\N	2022-12-14 20:05:33.510781	2022-12-14 20:05:33.510781
71	71	1	73	2.0	\N	2022-12-14 20:05:33.517718	2022-12-14 20:05:33.517718
72	72	1	74	2.0	\N	2022-12-14 20:05:33.525528	2022-12-14 20:05:33.525528
73	73	1	75	1.6	\N	2022-12-14 20:05:33.533538	2022-12-14 20:05:33.533538
74	74	1	76	0.8	\N	2022-12-14 20:05:33.540879	2022-12-14 20:05:33.540879
75	75	1	77	2.0	\N	2022-12-14 20:05:33.548892	2022-12-14 20:05:33.548892
76	76	1	78	2.0	\N	2022-12-14 20:05:33.556583	2022-12-14 20:05:33.556583
77	77	1	79	0.3	\N	2022-12-14 20:05:33.563683	2022-12-14 20:05:33.563683
78	78	1	80	0.08	\N	2022-12-14 20:05:33.57164	2022-12-14 20:05:33.57164
79	79	1	81	0.2	\N	2022-12-14 20:05:33.578564	2022-12-14 20:05:33.578564
80	80	1	82	1.0	\N	2022-12-14 20:05:33.587194	2022-12-14 20:05:33.587194
81	81	1	83	0.2	\N	2022-12-14 20:05:33.594912	2022-12-14 20:05:33.594912
82	82	1	84	1.0	\N	2022-12-14 20:05:33.602279	2022-12-14 20:05:33.602279
83	83	1	85	1.2	\N	2022-12-14 20:05:33.609581	2022-12-14 20:05:33.609581
84	84	1	86	0.7	\N	2022-12-14 20:05:33.616577	2022-12-14 20:05:33.616577
85	85	1	87	2.0	\N	2022-12-14 20:05:33.624831	2022-12-14 20:05:33.624831
86	86	1	88	0.3	\N	2022-12-14 20:05:33.631805	2022-12-14 20:05:33.631805
87	87	1	89	0.15	\N	2022-12-14 20:05:33.638611	2022-12-14 20:05:33.638611
88	88	1	90	1.0	\N	2022-12-14 20:05:33.645924	2022-12-14 20:05:33.645924
89	89	1	91	0.8	\N	2022-12-14 20:05:33.652271	2022-12-14 20:05:33.652271
90	90	1	93	0.05	\N	2022-12-14 20:05:33.659248	2022-12-14 20:05:33.659248
91	91	1	94	1.5	\N	2022-12-14 20:05:33.664995	2022-12-14 20:05:33.664995
92	92	1	96	1.8	\N	2022-12-14 20:05:33.672247	2022-12-14 20:05:33.672247
93	93	1	97	2.0	\N	2022-12-14 20:05:33.683762	2022-12-14 20:05:33.683762
94	94	1	98	2.0	\N	2022-12-14 20:05:33.692705	2022-12-14 20:05:33.692705
95	95	1	99	2.0	\N	2022-12-14 20:05:33.699836	2022-12-14 20:05:33.699836
96	96	1	100	2.0	\N	2022-12-14 20:05:33.707717	2022-12-14 20:05:33.707717
97	97	97	1	2.0	\N	2022-12-14 20:05:33.715588	2022-12-14 20:05:33.715588
98	98	97	2	1.9	\N	2022-12-14 20:05:33.723231	2022-12-14 20:05:33.723231
99	99	97	3	1.9	\N	2022-12-14 20:05:33.73127	2022-12-14 20:05:33.73127
100	100	97	4	2.0	\N	2022-12-14 20:05:33.73865	2022-12-14 20:05:33.73865
101	101	97	5	1.7	\N	2022-12-14 20:05:33.747335	2022-12-14 20:05:33.747335
102	102	97	6	2.0	\N	2022-12-14 20:05:33.754833	2022-12-14 20:05:33.754833
103	103	97	7	2.0	\N	2022-12-14 20:05:33.763303	2022-12-14 20:05:33.763303
104	104	97	8	1.7	\N	2022-12-14 20:05:33.772916	2022-12-14 20:05:33.772916
105	105	97	9	2.0	\N	2022-12-14 20:05:33.782064	2022-12-14 20:05:33.782064
106	106	97	10	1.6	\N	2022-12-14 20:05:33.789797	2022-12-14 20:05:33.789797
107	107	97	11	1.8	\N	2022-12-14 20:05:33.797631	2022-12-14 20:05:33.797631
108	108	97	12	2.0	\N	2022-12-14 20:05:33.804962	2022-12-14 20:05:33.804962
109	109	97	13	1.2	\N	2022-12-14 20:05:33.812419	2022-12-14 20:05:33.812419
110	110	97	14	2.0	\N	2022-12-14 20:05:33.819072	2022-12-14 20:05:33.819072
111	111	97	15	1.7	\N	2022-12-14 20:05:33.825763	2022-12-14 20:05:33.825763
112	112	97	16	2.0	\N	2022-12-14 20:05:33.833274	2022-12-14 20:05:33.833274
113	113	97	17	1.6	\N	2022-12-14 20:05:33.840599	2022-12-14 20:05:33.840599
114	114	97	18	1.8	\N	2022-12-14 20:05:33.847812	2022-12-14 20:05:33.847812
115	115	97	19	1.8	\N	2022-12-14 20:05:33.855789	2022-12-14 20:05:33.855789
116	116	97	20	1.6	\N	2022-12-14 20:05:33.864112	2022-12-14 20:05:33.864112
117	117	97	21	2.0	\N	2022-12-14 20:05:33.871073	2022-12-14 20:05:33.871073
118	118	97	22	1.5	\N	2022-12-14 20:05:33.877908	2022-12-14 20:05:33.877908
119	119	97	23	2.0	\N	2022-12-14 20:05:33.885676	2022-12-14 20:05:33.885676
120	120	97	24	1.7	\N	2022-12-14 20:05:33.892925	2022-12-14 20:05:33.892925
121	121	97	25	1.6	\N	2022-12-14 20:05:33.900538	2022-12-14 20:05:33.900538
122	122	97	26	0.8	\N	2022-12-14 20:05:33.908876	2022-12-14 20:05:33.908876
123	123	97	27	1.8	\N	2022-12-14 20:05:33.916492	2022-12-14 20:05:33.916492
124	124	97	28	1.2	\N	2022-12-14 20:05:33.924976	2022-12-14 20:05:33.924976
125	125	97	29	1.0	\N	2022-12-14 20:05:33.933202	2022-12-14 20:05:33.933202
126	126	97	30	1.2	\N	2022-12-14 20:05:33.940193	2022-12-14 20:05:33.940193
127	127	97	31	1.3	\N	2022-12-14 20:05:33.9478	2022-12-14 20:05:33.9478
128	128	97	32	0.7	\N	2022-12-14 20:05:33.95476	2022-12-14 20:05:33.95476
129	129	97	33	1.2	\N	2022-12-14 20:05:33.963152	2022-12-14 20:05:33.963152
130	130	97	34	0.5	\N	2022-12-14 20:05:33.969764	2022-12-14 20:05:33.969764
131	131	97	35	1.7	\N	2022-12-14 20:05:33.977241	2022-12-14 20:05:33.977241
132	132	97	36	0.08	\N	2022-12-14 20:05:33.983902	2022-12-14 20:05:33.983902
133	133	97	37	1.8	\N	2022-12-14 20:05:33.991038	2022-12-14 20:05:33.991038
134	134	97	38	1.0	\N	2022-12-14 20:05:33.998074	2022-12-14 20:05:33.998074
135	135	97	39	0.8	\N	2022-12-14 20:05:34.005729	2022-12-14 20:05:34.005729
136	136	97	40	1.5	\N	2022-12-14 20:05:34.013223	2022-12-14 20:05:34.013223
137	137	97	41	1.2	\N	2022-12-14 20:05:34.019386	2022-12-14 20:05:34.019386
138	138	97	42	2.0	\N	2022-12-14 20:05:34.026026	2022-12-14 20:05:34.026026
139	139	97	43	1.1	\N	2022-12-14 20:05:34.033862	2022-12-14 20:05:34.033862
140	140	97	44	2.0	\N	2022-12-14 20:05:34.041108	2022-12-14 20:05:34.041108
141	141	97	45	2.0	\N	2022-12-14 20:05:34.047409	2022-12-14 20:05:34.047409
142	142	97	46	2.0	\N	2022-12-14 20:05:34.054676	2022-12-14 20:05:34.054676
143	143	97	47	0.2	\N	2022-12-14 20:05:34.061908	2022-12-14 20:05:34.061908
144	144	97	48	1.7	\N	2022-12-14 20:05:34.069506	2022-12-14 20:05:34.069506
145	145	97	49	0.1	\N	2022-12-14 20:05:34.076676	2022-12-14 20:05:34.076676
146	146	97	50	0.1	\N	2022-12-14 20:05:34.0844	2022-12-14 20:05:34.0844
147	147	97	51	0.6	\N	2022-12-14 20:05:34.091999	2022-12-14 20:05:34.091999
148	148	97	52	0.15	\N	2022-12-14 20:05:34.100266	2022-12-14 20:05:34.100266
149	149	97	53	0.1	\N	2022-12-14 20:05:34.107058	2022-12-14 20:05:34.107058
150	150	97	54	0.1	\N	2022-12-14 20:05:34.115106	2022-12-14 20:05:34.115106
151	151	97	55	0.5	\N	2022-12-14 20:05:34.123155	2022-12-14 20:05:34.123155
152	152	97	56	0.3	\N	2022-12-14 20:05:34.131204	2022-12-14 20:05:34.131204
153	153	97	57	0.7	\N	2022-12-14 20:05:34.138068	2022-12-14 20:05:34.138068
154	154	97	58	2.0	\N	2022-12-14 20:05:34.145186	2022-12-14 20:05:34.145186
155	155	97	59	2.0	\N	2022-12-14 20:05:34.153515	2022-12-14 20:05:34.153515
156	156	97	60	1.9	\N	2022-12-14 20:05:34.160956	2022-12-14 20:05:34.160956
157	157	97	61	1.6	\N	2022-12-14 20:05:34.167658	2022-12-14 20:05:34.167658
158	158	97	62	1.7	\N	2022-12-14 20:05:34.174852	2022-12-14 20:05:34.174852
159	159	97	63	1.8	\N	2022-12-14 20:05:34.181985	2022-12-14 20:05:34.181985
160	160	97	64	2.0	\N	2022-12-14 20:05:34.189109	2022-12-14 20:05:34.189109
161	161	97	65	2.0	\N	2022-12-14 20:05:34.197036	2022-12-14 20:05:34.197036
162	162	97	66	2.0	\N	2022-12-14 20:05:34.204193	2022-12-14 20:05:34.204193
163	163	97	67	0.6	\N	2022-12-14 20:05:34.210661	2022-12-14 20:05:34.210661
164	164	97	68	0.3	\N	2022-12-14 20:05:34.218685	2022-12-14 20:05:34.218685
165	165	97	69	1.2	\N	2022-12-14 20:05:34.227425	2022-12-14 20:05:34.227425
166	166	97	70	0.2	\N	2022-12-14 20:05:34.234277	2022-12-14 20:05:34.234277
167	167	97	71	0.5	\N	2022-12-14 20:05:34.242459	2022-12-14 20:05:34.242459
168	168	97	72	0.06	\N	2022-12-14 20:05:34.250526	2022-12-14 20:05:34.250526
169	169	97	73	0.5	\N	2022-12-14 20:05:34.257669	2022-12-14 20:05:34.257669
170	170	97	75	1.7	\N	2022-12-14 20:05:34.265723	2022-12-14 20:05:34.265723
171	171	97	76	0.1	\N	2022-12-14 20:05:34.273667	2022-12-14 20:05:34.273667
172	172	97	77	0.06	\N	2022-12-14 20:05:34.28053	2022-12-14 20:05:34.28053
173	173	97	78	0.05	\N	2022-12-14 20:05:34.288001	2022-12-14 20:05:34.288001
174	174	97	79	0.06	\N	2022-12-14 20:05:34.295817	2022-12-14 20:05:34.295817
175	175	97	80	0.06	\N	2022-12-14 20:05:34.302179	2022-12-14 20:05:34.302179
176	176	97	81	0.05	\N	2022-12-14 20:05:34.309249	2022-12-14 20:05:34.309249
177	177	97	82	0.04	\N	2022-12-14 20:05:34.315907	2022-12-14 20:05:34.315907
178	178	97	83	0.2	\N	2022-12-14 20:05:34.323012	2022-12-14 20:05:34.323012
179	179	97	84	0.06	\N	2022-12-14 20:05:34.330373	2022-12-14 20:05:34.330373
180	180	97	85	0.2	\N	2022-12-14 20:05:34.337353	2022-12-14 20:05:34.337353
181	181	97	86	0.3	\N	2022-12-14 20:05:34.344369	2022-12-14 20:05:34.344369
182	182	97	87	0.06	\N	2022-12-14 20:05:34.351648	2022-12-14 20:05:34.351648
183	183	97	88	1.0	\N	2022-12-14 20:05:34.358275	2022-12-14 20:05:34.358275
184	184	97	89	1.8	\N	2022-12-14 20:05:34.364825	2022-12-14 20:05:34.364825
185	185	97	90	1.2	\N	2022-12-14 20:05:34.372304	2022-12-14 20:05:34.372304
186	186	97	91	1.0	\N	2022-12-14 20:05:34.378683	2022-12-14 20:05:34.378683
187	187	97	92	1.0	\N	2022-12-14 20:05:34.385627	2022-12-14 20:05:34.385627
188	188	97	93	2.0	\N	2022-12-14 20:05:34.393335	2022-12-14 20:05:34.393335
189	189	97	94	1.0	\N	2022-12-14 20:05:34.401902	2022-12-14 20:05:34.401902
190	190	97	95	1.0	\N	2022-12-14 20:05:34.410308	2022-12-14 20:05:34.410308
191	191	97	96	2.0	\N	2022-12-14 20:05:34.418863	2022-12-14 20:05:34.418863
192	192	97	97	0.06	\N	2022-12-14 20:05:34.427246	2022-12-14 20:05:34.427246
193	193	97	98	0.04	\N	2022-12-14 20:05:34.439901	2022-12-14 20:05:34.439901
194	194	97	99	2.0	\N	2022-12-14 20:05:34.447892	2022-12-14 20:05:34.447892
195	195	97	100	0.7	\N	2022-12-14 20:05:34.455903	2022-12-14 20:05:34.455903
196	196	196	1	1.9	\N	2022-12-14 20:05:34.463663	2022-12-14 20:05:34.463663
197	197	196	2	1.9	\N	2022-12-14 20:05:34.471492	2022-12-14 20:05:34.471492
198	198	196	3	2.0	\N	2022-12-14 20:05:34.479749	2022-12-14 20:05:34.479749
199	199	196	4	1.0	\N	2022-12-14 20:05:34.487078	2022-12-14 20:05:34.487078
200	200	196	5	1.9	\N	2022-12-14 20:05:34.494213	2022-12-14 20:05:34.494213
201	201	196	6	0.5	\N	2022-12-14 20:05:34.501877	2022-12-14 20:05:34.501877
202	202	196	7	1.7	\N	2022-12-14 20:05:34.509705	2022-12-14 20:05:34.509705
203	203	196	8	0.4	\N	2022-12-14 20:05:34.51709	2022-12-14 20:05:34.51709
204	204	196	9	0.5	\N	2022-12-14 20:05:34.524886	2022-12-14 20:05:34.524886
205	205	196	10	2.0	\N	2022-12-14 20:05:34.53271	2022-12-14 20:05:34.53271
206	206	196	11	1.3	\N	2022-12-14 20:05:34.540129	2022-12-14 20:05:34.540129
207	207	196	12	1.5	\N	2022-12-14 20:05:34.54742	2022-12-14 20:05:34.54742
208	208	196	13	1.7	\N	2022-12-14 20:05:34.555067	2022-12-14 20:05:34.555067
209	209	196	14	2.0	\N	2022-12-14 20:05:34.562116	2022-12-14 20:05:34.562116
210	210	196	15	0.8	\N	2022-12-14 20:05:34.569536	2022-12-14 20:05:34.569536
211	211	196	16	0.1	\N	2022-12-14 20:05:34.577632	2022-12-14 20:05:34.577632
212	212	196	17	1.0	\N	2022-12-14 20:05:34.585561	2022-12-14 20:05:34.585561
213	213	196	18	0.6	\N	2022-12-14 20:05:34.593252	2022-12-14 20:05:34.593252
214	214	196	19	0.7	\N	2022-12-14 20:05:34.600568	2022-12-14 20:05:34.600568
215	215	196	20	1.0	\N	2022-12-14 20:05:34.609155	2022-12-14 20:05:34.609155
216	216	196	21	0.12	\N	2022-12-14 20:05:34.616038	2022-12-14 20:05:34.616038
217	217	196	22	0.18	\N	2022-12-14 20:05:34.623539	2022-12-14 20:05:34.623539
218	218	196	23	1.3	\N	2022-12-14 20:05:34.632037	2022-12-14 20:05:34.632037
219	219	196	24	0.03	\N	2022-12-14 20:05:34.639586	2022-12-14 20:05:34.639586
220	220	196	25	0.08	\N	2022-12-14 20:05:34.646939	2022-12-14 20:05:34.646939
221	221	196	26	2.0	\N	2022-12-14 20:05:34.65482	2022-12-14 20:05:34.65482
222	222	196	27	0.4	\N	2022-12-14 20:05:34.662309	2022-12-14 20:05:34.662309
223	223	196	28	0.3	\N	2022-12-14 20:05:34.669124	2022-12-14 20:05:34.669124
224	224	196	29	2.0	\N	2022-12-14 20:05:34.676927	2022-12-14 20:05:34.676927
225	225	196	30	2.0	\N	2022-12-14 20:05:34.686441	2022-12-14 20:05:34.686441
226	226	196	31	0.7	\N	2022-12-14 20:05:34.694971	2022-12-14 20:05:34.694971
227	227	196	32	1.7	\N	2022-12-14 20:05:34.702287	2022-12-14 20:05:34.702287
228	228	196	33	1.7	\N	2022-12-14 20:05:34.713355	2022-12-14 20:05:34.713355
229	229	196	34	1.8	\N	2022-12-14 20:05:34.721455	2022-12-14 20:05:34.721455
230	230	196	35	1.6	\N	2022-12-14 20:05:34.728515	2022-12-14 20:05:34.728515
231	231	196	36	1.5	\N	2022-12-14 20:05:34.737501	2022-12-14 20:05:34.737501
232	232	196	37	2.0	\N	2022-12-14 20:05:34.74472	2022-12-14 20:05:34.74472
233	233	196	38	0.9	\N	2022-12-14 20:05:34.751638	2022-12-14 20:05:34.751638
234	234	196	39	1.8	\N	2022-12-14 20:05:34.760501	2022-12-14 20:05:34.760501
235	235	196	40	0.13	\N	2022-12-14 20:05:34.767846	2022-12-14 20:05:34.767846
236	236	196	41	1.3	\N	2022-12-14 20:05:34.77529	2022-12-14 20:05:34.77529
237	237	196	42	0.2	\N	2022-12-14 20:05:34.782417	2022-12-14 20:05:34.782417
238	238	196	43	1.0	\N	2022-12-14 20:05:34.790827	2022-12-14 20:05:34.790827
239	239	196	44	1.8	\N	2022-12-14 20:05:34.79744	2022-12-14 20:05:34.79744
240	240	196	45	2.0	\N	2022-12-14 20:05:34.804974	2022-12-14 20:05:34.804974
241	241	196	46	2.0	\N	2022-12-14 20:05:34.812288	2022-12-14 20:05:34.812288
242	242	196	47	2.0	\N	2022-12-14 20:05:34.820115	2022-12-14 20:05:34.820115
243	243	196	48	2.0	\N	2022-12-14 20:05:34.826551	2022-12-14 20:05:34.826551
244	244	196	49	2.0	\N	2022-12-14 20:05:34.834951	2022-12-14 20:05:34.834951
245	245	196	50	2.0	\N	2022-12-14 20:05:34.841974	2022-12-14 20:05:34.841974
246	246	196	51	2.0	\N	2022-12-14 20:05:34.848714	2022-12-14 20:05:34.848714
247	247	196	52	2.0	\N	2022-12-14 20:05:34.85623	2022-12-14 20:05:34.85623
248	248	196	53	2.0	\N	2022-12-14 20:05:34.862796	2022-12-14 20:05:34.862796
249	249	196	54	2.0	\N	2022-12-14 20:05:34.87105	2022-12-14 20:05:34.87105
250	250	196	55	2.0	\N	2022-12-14 20:05:34.877405	2022-12-14 20:05:34.877405
251	251	196	56	2.0	\N	2022-12-14 20:05:34.883979	2022-12-14 20:05:34.883979
252	252	196	57	2.0	\N	2022-12-14 20:05:34.89119	2022-12-14 20:05:34.89119
253	253	196	58	2.0	\N	2022-12-14 20:05:34.897664	2022-12-14 20:05:34.897664
254	254	196	59	2.0	\N	2022-12-14 20:05:34.906398	2022-12-14 20:05:34.906398
255	255	196	60	2.0	\N	2022-12-14 20:05:34.914465	2022-12-14 20:05:34.914465
256	256	196	61	2.0	\N	2022-12-14 20:05:34.922776	2022-12-14 20:05:34.922776
257	257	196	62	2.0	\N	2022-12-14 20:05:34.930439	2022-12-14 20:05:34.930439
258	258	196	63	2.0	\N	2022-12-14 20:05:34.940816	2022-12-14 20:05:34.940816
259	259	196	64	2.0	\N	2022-12-14 20:05:34.948835	2022-12-14 20:05:34.948835
260	260	196	65	2.0	\N	2022-12-14 20:05:34.958346	2022-12-14 20:05:34.958346
261	261	196	66	2.0	\N	2022-12-14 20:05:34.96516	2022-12-14 20:05:34.96516
262	262	196	67	2.0	\N	2022-12-14 20:05:34.972298	2022-12-14 20:05:34.972298
263	263	196	68	2.0	\N	2022-12-14 20:05:34.97912	2022-12-14 20:05:34.97912
264	264	196	69	2.0	\N	2022-12-14 20:05:34.985831	2022-12-14 20:05:34.985831
265	265	196	70	1.8	\N	2022-12-14 20:05:34.992917	2022-12-14 20:05:34.992917
266	266	196	71	0.6	\N	2022-12-14 20:05:34.999864	2022-12-14 20:05:34.999864
267	267	196	72	1.5	\N	2022-12-14 20:05:35.007676	2022-12-14 20:05:35.007676
268	268	196	73	2.0	\N	2022-12-14 20:05:35.014756	2022-12-14 20:05:35.014756
269	269	196	74	2.0	\N	2022-12-14 20:05:35.021922	2022-12-14 20:05:35.021922
270	270	196	75	2.0	\N	2022-12-14 20:05:35.028291	2022-12-14 20:05:35.028291
271	271	196	76	2.0	\N	2022-12-14 20:05:35.035555	2022-12-14 20:05:35.035555
272	272	196	77	1.9	\N	2022-12-14 20:05:35.042982	2022-12-14 20:05:35.042982
273	273	196	78	1.7	\N	2022-12-14 20:05:35.050405	2022-12-14 20:05:35.050405
274	274	196	79	1.4	\N	2022-12-14 20:05:35.057889	2022-12-14 20:05:35.057889
275	275	196	80	1.7	\N	2022-12-14 20:05:35.06499	2022-12-14 20:05:35.06499
276	276	196	81	1.8	\N	2022-12-14 20:05:35.072179	2022-12-14 20:05:35.072179
277	277	196	82	2.0	\N	2022-12-14 20:05:35.08162	2022-12-14 20:05:35.08162
278	278	196	83	2.0	\N	2022-12-14 20:05:35.089639	2022-12-14 20:05:35.089639
279	279	196	84	1.5	\N	2022-12-14 20:05:35.097446	2022-12-14 20:05:35.097446
280	280	196	85	1.7	\N	2022-12-14 20:05:35.105441	2022-12-14 20:05:35.105441
281	281	196	86	1.8	\N	2022-12-14 20:05:35.112933	2022-12-14 20:05:35.112933
282	282	196	87	2.0	\N	2022-12-14 20:05:35.120779	2022-12-14 20:05:35.120779
283	283	196	88	0.6	\N	2022-12-14 20:05:35.127725	2022-12-14 20:05:35.127725
284	284	196	89	1.0	\N	2022-12-14 20:05:35.134702	2022-12-14 20:05:35.134702
285	285	196	90	2.0	\N	2022-12-14 20:05:35.142504	2022-12-14 20:05:35.142504
286	286	196	91	2.0	\N	2022-12-14 20:05:35.149975	2022-12-14 20:05:35.149975
287	287	196	92	2.0	\N	2022-12-14 20:05:35.157004	2022-12-14 20:05:35.157004
288	288	196	93	1.7	\N	2022-12-14 20:05:35.164126	2022-12-14 20:05:35.164126
289	289	196	94	1.9	\N	2022-12-14 20:05:35.171446	2022-12-14 20:05:35.171446
290	290	196	95	2.0	\N	2022-12-14 20:05:35.178886	2022-12-14 20:05:35.178886
291	291	196	96	1.8	\N	2022-12-14 20:05:35.186455	2022-12-14 20:05:35.186455
292	292	196	97	0.8	\N	2022-12-14 20:05:35.193799	2022-12-14 20:05:35.193799
293	293	196	98	1.8	\N	2022-12-14 20:05:35.201344	2022-12-14 20:05:35.201344
294	294	196	99	1.0	\N	2022-12-14 20:05:35.209171	2022-12-14 20:05:35.209171
295	295	196	100	0.6	\N	2022-12-14 20:05:35.216612	2022-12-14 20:05:35.216612
296	296	296	1	2.0	\N	2022-12-14 20:05:35.225831	2022-12-14 20:05:35.225831
297	297	296	2	1.8	\N	2022-12-14 20:05:35.236178	2022-12-14 20:05:35.236178
298	298	296	3	1.7	\N	2022-12-14 20:05:35.243247	2022-12-14 20:05:35.243247
299	299	296	4	1.9	\N	2022-12-14 20:05:35.25103	2022-12-14 20:05:35.25103
300	300	296	5	1.8	\N	2022-12-14 20:05:35.258983	2022-12-14 20:05:35.258983
301	301	296	6	2.0	\N	2022-12-14 20:05:35.266741	2022-12-14 20:05:35.266741
302	302	296	7	2.0	\N	2022-12-14 20:05:35.274094	2022-12-14 20:05:35.274094
303	303	296	8	0.7	\N	2022-12-14 20:05:35.282702	2022-12-14 20:05:35.282702
304	304	296	9	1.7	\N	2022-12-14 20:05:35.290749	2022-12-14 20:05:35.290749
305	305	296	10	1.9	\N	2022-12-14 20:05:35.298547	2022-12-14 20:05:35.298547
306	306	296	11	1.6	\N	2022-12-14 20:05:35.306194	2022-12-14 20:05:35.306194
307	307	296	12	1.3	\N	2022-12-14 20:05:35.313801	2022-12-14 20:05:35.313801
308	308	296	13	1.8	\N	2022-12-14 20:05:35.321997	2022-12-14 20:05:35.321997
309	309	296	14	0.4	\N	2022-12-14 20:05:35.329594	2022-12-14 20:05:35.329594
310	310	296	15	0.8	\N	2022-12-14 20:05:35.335984	2022-12-14 20:05:35.335984
311	311	296	16	1.9	\N	2022-12-14 20:05:35.343005	2022-12-14 20:05:35.343005
312	312	296	17	1.3	\N	2022-12-14 20:05:35.350446	2022-12-14 20:05:35.350446
313	313	296	18	1.9	\N	2022-12-14 20:05:35.358233	2022-12-14 20:05:35.358233
314	314	296	19	0.3	\N	2022-12-14 20:05:35.365827	2022-12-14 20:05:35.365827
315	315	296	20	1.2	\N	2022-12-14 20:05:35.373793	2022-12-14 20:05:35.373793
316	316	296	21	1.5	\N	2022-12-14 20:05:35.380531	2022-12-14 20:05:35.380531
317	317	296	22	2.0	\N	2022-12-14 20:05:35.388661	2022-12-14 20:05:35.388661
318	318	296	23	2.0	\N	2022-12-14 20:05:35.395835	2022-12-14 20:05:35.395835
319	319	296	24	2.0	\N	2022-12-14 20:05:35.401791	2022-12-14 20:05:35.401791
320	320	296	25	2.0	\N	2022-12-14 20:05:35.409456	2022-12-14 20:05:35.409456
321	321	296	26	1.8	\N	2022-12-14 20:05:35.417071	2022-12-14 20:05:35.417071
322	322	296	27	2.0	\N	2022-12-14 20:05:35.424217	2022-12-14 20:05:35.424217
323	323	296	28	1.8	\N	2022-12-14 20:05:35.432492	2022-12-14 20:05:35.432492
324	324	296	29	1.5	\N	2022-12-14 20:05:35.441286	2022-12-14 20:05:35.441286
325	325	296	30	1.6	\N	2022-12-14 20:05:35.448287	2022-12-14 20:05:35.448287
326	326	296	31	1.9	\N	2022-12-14 20:05:35.456236	2022-12-14 20:05:35.456236
327	327	296	32	1.5	\N	2022-12-14 20:05:35.463376	2022-12-14 20:05:35.463376
328	328	296	33	1.7	\N	2022-12-14 20:05:35.471021	2022-12-14 20:05:35.471021
329	329	296	34	1.9	\N	2022-12-14 20:05:35.478119	2022-12-14 20:05:35.478119
330	330	296	35	1.7	\N	2022-12-14 20:05:35.485323	2022-12-14 20:05:35.485323
331	331	296	36	1.9	\N	2022-12-14 20:05:35.492766	2022-12-14 20:05:35.492766
332	332	296	37	1.7	\N	2022-12-14 20:05:35.500305	2022-12-14 20:05:35.500305
333	333	296	38	1.8	\N	2022-12-14 20:05:35.508588	2022-12-14 20:05:35.508588
334	334	296	39	1.6	\N	2022-12-14 20:05:35.515578	2022-12-14 20:05:35.515578
335	335	296	40	0.05	\N	2022-12-14 20:05:35.523135	2022-12-14 20:05:35.523135
336	336	296	41	0.06	\N	2022-12-14 20:05:35.529103	2022-12-14 20:05:35.529103
337	337	296	43	2.0	\N	2022-12-14 20:05:35.53519	2022-12-14 20:05:35.53519
338	338	296	44	2.0	\N	2022-12-14 20:05:35.541717	2022-12-14 20:05:35.541717
339	339	296	45	2.0	\N	2022-12-14 20:05:35.54749	2022-12-14 20:05:35.54749
340	340	296	46	0.3	\N	2022-12-14 20:05:35.554237	2022-12-14 20:05:35.554237
341	341	296	47	1.7	\N	2022-12-14 20:05:35.560517	2022-12-14 20:05:35.560517
342	342	296	48	2.0	\N	2022-12-14 20:05:35.566496	2022-12-14 20:05:35.566496
343	343	296	49	1.9	\N	2022-12-14 20:05:35.574944	2022-12-14 20:05:35.574944
344	344	296	50	1.8	\N	2022-12-14 20:05:35.581256	2022-12-14 20:05:35.581256
345	345	296	51	2.0	\N	2022-12-14 20:05:35.588561	2022-12-14 20:05:35.588561
346	346	296	52	1.9	\N	2022-12-14 20:05:35.594926	2022-12-14 20:05:35.594926
347	347	296	53	2.0	\N	2022-12-14 20:05:35.601038	2022-12-14 20:05:35.601038
348	348	296	54	1.9	\N	2022-12-14 20:05:35.608212	2022-12-14 20:05:35.608212
349	349	296	55	1.9	\N	2022-12-14 20:05:35.615148	2022-12-14 20:05:35.615148
350	350	296	56	2.0	\N	2022-12-14 20:05:35.622142	2022-12-14 20:05:35.622142
351	351	296	57	2.0	\N	2022-12-14 20:05:35.629296	2022-12-14 20:05:35.629296
352	352	296	58	0.6	\N	2022-12-14 20:05:35.636128	2022-12-14 20:05:35.636128
353	353	296	59	1.7	\N	2022-12-14 20:05:35.642936	2022-12-14 20:05:35.642936
354	354	296	60	1.8	\N	2022-12-14 20:05:35.649208	2022-12-14 20:05:35.649208
355	355	296	61	1.4	\N	2022-12-14 20:05:35.656342	2022-12-14 20:05:35.656342
356	356	296	62	1.8	\N	2022-12-14 20:05:35.663608	2022-12-14 20:05:35.663608
357	357	296	63	1.4	\N	2022-12-14 20:05:35.671545	2022-12-14 20:05:35.671545
358	358	296	64	1.5	\N	2022-12-14 20:05:35.679182	2022-12-14 20:05:35.679182
359	359	296	65	1.8	\N	2022-12-14 20:05:35.692204	2022-12-14 20:05:35.692204
360	360	296	66	2.0	\N	2022-12-14 20:05:35.69991	2022-12-14 20:05:35.69991
361	361	296	67	1.4	\N	2022-12-14 20:05:35.70778	2022-12-14 20:05:35.70778
362	362	296	68	2.0	\N	2022-12-14 20:05:35.715399	2022-12-14 20:05:35.715399
363	363	296	69	2.0	\N	2022-12-14 20:05:35.723032	2022-12-14 20:05:35.723032
364	364	296	70	1.5	\N	2022-12-14 20:05:35.735535	2022-12-14 20:05:35.735535
365	365	296	71	1.9	\N	2022-12-14 20:05:35.744609	2022-12-14 20:05:35.744609
366	366	296	72	1.9	\N	2022-12-14 20:05:35.752247	2022-12-14 20:05:35.752247
367	367	296	73	1.5	\N	2022-12-14 20:05:35.759945	2022-12-14 20:05:35.759945
368	368	296	74	1.8	\N	2022-12-14 20:05:35.76796	2022-12-14 20:05:35.76796
369	369	296	75	2.0	\N	2022-12-14 20:05:35.776133	2022-12-14 20:05:35.776133
370	370	296	76	2.0	\N	2022-12-14 20:05:35.783371	2022-12-14 20:05:35.783371
371	371	296	77	2.0	\N	2022-12-14 20:05:35.789978	2022-12-14 20:05:35.789978
372	372	296	78	2.0	\N	2022-12-14 20:05:35.797995	2022-12-14 20:05:35.797995
373	373	296	79	1.5	\N	2022-12-14 20:05:35.806874	2022-12-14 20:05:35.806874
374	374	296	80	1.7	\N	2022-12-14 20:05:35.815473	2022-12-14 20:05:35.815473
375	375	296	81	0.8	\N	2022-12-14 20:05:35.822615	2022-12-14 20:05:35.822615
376	376	296	82	1.8	\N	2022-12-14 20:05:35.829847	2022-12-14 20:05:35.829847
377	377	296	83	2.0	\N	2022-12-14 20:05:35.837568	2022-12-14 20:05:35.837568
378	378	296	84	2.0	\N	2022-12-14 20:05:35.844597	2022-12-14 20:05:35.844597
379	379	296	85	1.0	\N	2022-12-14 20:05:35.851813	2022-12-14 20:05:35.851813
380	380	296	86	1.5	\N	2022-12-14 20:05:35.858788	2022-12-14 20:05:35.858788
381	381	296	87	1.9	\N	2022-12-14 20:05:35.866796	2022-12-14 20:05:35.866796
382	382	296	88	1.7	\N	2022-12-14 20:05:35.873956	2022-12-14 20:05:35.873956
383	383	296	89	1.8	\N	2022-12-14 20:05:35.88134	2022-12-14 20:05:35.88134
384	384	296	90	2.0	\N	2022-12-14 20:05:35.889037	2022-12-14 20:05:35.889037
385	385	296	91	1.8	\N	2022-12-14 20:05:35.896452	2022-12-14 20:05:35.896452
386	386	296	92	1.9	\N	2022-12-14 20:05:35.904125	2022-12-14 20:05:35.904125
387	387	296	93	2.0	\N	2022-12-14 20:05:35.912955	2022-12-14 20:05:35.912955
388	388	296	94	2.0	\N	2022-12-14 20:05:35.920591	2022-12-14 20:05:35.920591
389	389	296	96	1.6	\N	2022-12-14 20:05:35.928391	2022-12-14 20:05:35.928391
390	390	296	97	2.0	\N	2022-12-14 20:05:35.936509	2022-12-14 20:05:35.936509
391	391	296	98	1.8	\N	2022-12-14 20:05:35.944594	2022-12-14 20:05:35.944594
392	392	296	99	1.7	\N	2022-12-14 20:05:35.952935	2022-12-14 20:05:35.952935
393	393	296	100	1.7	\N	2022-12-14 20:05:35.959786	2022-12-14 20:05:35.959786
394	394	394	1	2.0	\N	2022-12-14 20:05:35.968267	2022-12-14 20:05:35.968267
395	395	394	2	2.0	\N	2022-12-14 20:05:35.975339	2022-12-14 20:05:35.975339
396	396	394	3	1.5	\N	2022-12-14 20:05:35.982039	2022-12-14 20:05:35.982039
397	397	394	4	1.0	\N	2022-12-14 20:05:35.989497	2022-12-14 20:05:35.989497
398	398	394	5	2.0	\N	2022-12-14 20:05:35.996636	2022-12-14 20:05:35.996636
399	399	394	6	1.3	\N	2022-12-14 20:05:36.003444	2022-12-14 20:05:36.003444
400	400	394	7	2.0	\N	2022-12-14 20:05:36.010391	2022-12-14 20:05:36.010391
401	401	394	8	2.0	\N	2022-12-14 20:05:36.016942	2022-12-14 20:05:36.016942
402	402	394	9	2.0	\N	2022-12-14 20:05:36.023742	2022-12-14 20:05:36.023742
403	403	394	10	1.9	\N	2022-12-14 20:05:36.031604	2022-12-14 20:05:36.031604
404	404	394	11	1.8	\N	2022-12-14 20:05:36.039864	2022-12-14 20:05:36.039864
405	405	394	12	2.0	\N	2022-12-14 20:05:36.046593	2022-12-14 20:05:36.046593
406	406	394	13	2.0	\N	2022-12-14 20:05:36.052569	2022-12-14 20:05:36.052569
407	407	394	16	2.0	\N	2022-12-14 20:05:36.060048	2022-12-14 20:05:36.060048
408	408	394	17	2.0	\N	2022-12-14 20:05:36.067041	2022-12-14 20:05:36.067041
409	409	394	18	1.3	\N	2022-12-14 20:05:36.0772	2022-12-14 20:05:36.0772
410	410	394	19	1.8	\N	2022-12-14 20:05:36.084963	2022-12-14 20:05:36.084963
411	411	394	20	1.3	\N	2022-12-14 20:05:36.092315	2022-12-14 20:05:36.092315
412	412	394	21	2.0	\N	2022-12-14 20:05:36.100371	2022-12-14 20:05:36.100371
413	413	394	22	1.9	\N	2022-12-14 20:05:36.108184	2022-12-14 20:05:36.108184
414	414	394	23	1.6	\N	2022-12-14 20:05:36.115837	2022-12-14 20:05:36.115837
415	415	394	24	1.7	\N	2022-12-14 20:05:36.122869	2022-12-14 20:05:36.122869
416	416	394	25	1.4	\N	2022-12-14 20:05:36.130506	2022-12-14 20:05:36.130506
417	417	394	26	1.6	\N	2022-12-14 20:05:36.137829	2022-12-14 20:05:36.137829
418	418	394	27	1.0	\N	2022-12-14 20:05:36.145667	2022-12-14 20:05:36.145667
419	419	394	28	2.0	\N	2022-12-14 20:05:36.152785	2022-12-14 20:05:36.152785
420	420	394	29	1.7	\N	2022-12-14 20:05:36.159383	2022-12-14 20:05:36.159383
421	421	394	30	1.9	\N	2022-12-14 20:05:36.167017	2022-12-14 20:05:36.167017
422	422	394	31	1.5	\N	2022-12-14 20:05:36.174417	2022-12-14 20:05:36.174417
423	423	394	32	2.0	\N	2022-12-14 20:05:36.181739	2022-12-14 20:05:36.181739
424	424	394	33	1.6	\N	2022-12-14 20:05:36.189486	2022-12-14 20:05:36.189486
425	425	394	34	2.0	\N	2022-12-14 20:05:36.197334	2022-12-14 20:05:36.197334
426	426	394	35	2.0	\N	2022-12-14 20:05:36.203834	2022-12-14 20:05:36.203834
427	427	394	36	1.9	\N	2022-12-14 20:05:36.211023	2022-12-14 20:05:36.211023
428	428	394	37	2.0	\N	2022-12-14 20:05:36.218623	2022-12-14 20:05:36.218623
429	429	394	38	1.9	\N	2022-12-14 20:05:36.259305	2022-12-14 20:05:36.259305
430	430	394	39	2.0	\N	2022-12-14 20:05:36.278063	2022-12-14 20:05:36.278063
431	431	394	40	2.0	\N	2022-12-14 20:05:36.298818	2022-12-14 20:05:36.298818
432	432	394	41	1.0	\N	2022-12-14 20:05:36.316838	2022-12-14 20:05:36.316838
433	433	394	42	2.0	\N	2022-12-14 20:05:36.333706	2022-12-14 20:05:36.333706
434	434	394	43	2.0	\N	2022-12-14 20:05:36.357528	2022-12-14 20:05:36.357528
435	435	394	44	1.9	\N	2022-12-14 20:05:36.377811	2022-12-14 20:05:36.377811
436	436	394	45	1.5	\N	2022-12-14 20:05:36.399395	2022-12-14 20:05:36.399395
437	437	394	46	2.0	\N	2022-12-14 20:05:36.421419	2022-12-14 20:05:36.421419
438	438	394	47	2.0	\N	2022-12-14 20:05:36.43863	2022-12-14 20:05:36.43863
439	439	394	48	1.8	\N	2022-12-14 20:05:36.457571	2022-12-14 20:05:36.457571
440	440	394	49	1.6	\N	2022-12-14 20:05:36.475466	2022-12-14 20:05:36.475466
441	441	394	50	1.8	\N	2022-12-14 20:05:36.492405	2022-12-14 20:05:36.492405
442	442	394	51	1.8	\N	2022-12-14 20:05:36.511495	2022-12-14 20:05:36.511495
443	443	394	52	2.0	\N	2022-12-14 20:05:36.526121	2022-12-14 20:05:36.526121
444	444	394	53	2.0	\N	2022-12-14 20:05:36.541967	2022-12-14 20:05:36.541967
445	445	394	54	2.0	\N	2022-12-14 20:05:36.557648	2022-12-14 20:05:36.557648
446	446	394	55	1.5	\N	2022-12-14 20:05:36.572251	2022-12-14 20:05:36.572251
447	447	394	56	2.0	\N	2022-12-14 20:05:36.58765	2022-12-14 20:05:36.58765
448	448	394	57	2.0	\N	2022-12-14 20:05:36.597663	2022-12-14 20:05:36.597663
449	449	394	58	1.9	\N	2022-12-14 20:05:36.604682	2022-12-14 20:05:36.604682
450	450	394	60	0.5	\N	2022-12-14 20:05:36.612411	2022-12-14 20:05:36.612411
451	451	394	61	2.0	\N	2022-12-14 20:05:36.619612	2022-12-14 20:05:36.619612
452	452	394	62	0.1	\N	2022-12-14 20:05:36.627493	2022-12-14 20:05:36.627493
453	453	394	63	2.0	\N	2022-12-14 20:05:36.63584	2022-12-14 20:05:36.63584
454	454	394	64	0.06	\N	2022-12-14 20:05:36.643156	2022-12-14 20:05:36.643156
455	455	394	65	1.9	\N	2022-12-14 20:05:36.653255	2022-12-14 20:05:36.653255
456	456	394	66	1.9	\N	2022-12-14 20:05:36.66747	2022-12-14 20:05:36.66747
457	457	394	67	0.02	\N	2022-12-14 20:05:36.67679	2022-12-14 20:05:36.67679
458	458	394	68	2.0	\N	2022-12-14 20:05:36.683201	2022-12-14 20:05:36.683201
459	459	394	69	2.0	\N	2022-12-14 20:05:36.689858	2022-12-14 20:05:36.689858
460	460	394	70	0.5	\N	2022-12-14 20:05:36.715026	2022-12-14 20:05:36.715026
461	461	394	71	0.8	\N	2022-12-14 20:05:36.731703	2022-12-14 20:05:36.731703
462	462	394	72	0.7	\N	2022-12-14 20:05:36.743697	2022-12-14 20:05:36.743697
463	463	394	73	0.5	\N	2022-12-14 20:05:36.751022	2022-12-14 20:05:36.751022
464	464	394	74	1.3	\N	2022-12-14 20:05:36.763078	2022-12-14 20:05:36.763078
465	465	394	75	0.7	\N	2022-12-14 20:05:36.772405	2022-12-14 20:05:36.772405
466	466	394	76	2.0	\N	2022-12-14 20:05:36.779943	2022-12-14 20:05:36.779943
467	467	394	77	1.4	\N	2022-12-14 20:05:36.787354	2022-12-14 20:05:36.787354
468	468	394	78	0.12	\N	2022-12-14 20:05:36.795259	2022-12-14 20:05:36.795259
469	469	394	79	1.6	\N	2022-12-14 20:05:36.80747	2022-12-14 20:05:36.80747
470	470	394	80	1.7	\N	2022-12-14 20:05:36.820407	2022-12-14 20:05:36.820407
471	471	394	81	1.6	\N	2022-12-14 20:05:36.828268	2022-12-14 20:05:36.828268
472	472	394	82	1.6	\N	2022-12-14 20:05:36.834859	2022-12-14 20:05:36.834859
473	473	394	83	2.0	\N	2022-12-14 20:05:36.841467	2022-12-14 20:05:36.841467
474	474	394	84	1.7	\N	2022-12-14 20:05:36.849962	2022-12-14 20:05:36.849962
475	475	394	85	2.0	\N	2022-12-14 20:05:36.857141	2022-12-14 20:05:36.857141
476	476	394	86	1.9	\N	2022-12-14 20:05:36.862807	2022-12-14 20:05:36.862807
477	477	394	87	2.0	\N	2022-12-14 20:05:36.868583	2022-12-14 20:05:36.868583
478	478	394	88	2.0	\N	2022-12-14 20:05:36.875075	2022-12-14 20:05:36.875075
479	479	394	89	2.0	\N	2022-12-14 20:05:36.881845	2022-12-14 20:05:36.881845
480	480	394	90	1.6	\N	2022-12-14 20:05:36.889377	2022-12-14 20:05:36.889377
481	481	394	91	2.0	\N	2022-12-14 20:05:36.896179	2022-12-14 20:05:36.896179
482	482	394	92	1.9	\N	2022-12-14 20:05:36.903673	2022-12-14 20:05:36.903673
483	483	394	93	1.5	\N	2022-12-14 20:05:36.910898	2022-12-14 20:05:36.910898
484	484	394	94	1.8	\N	2022-12-14 20:05:36.919314	2022-12-14 20:05:36.919314
485	485	394	95	2.0	\N	2022-12-14 20:05:36.926769	2022-12-14 20:05:36.926769
486	486	394	96	2.0	\N	2022-12-14 20:05:36.93393	2022-12-14 20:05:36.93393
487	487	394	97	1.9	\N	2022-12-14 20:05:36.942194	2022-12-14 20:05:36.942194
488	488	394	98	2.0	\N	2022-12-14 20:05:36.949077	2022-12-14 20:05:36.949077
489	489	394	99	1.9	\N	2022-12-14 20:05:36.957578	2022-12-14 20:05:36.957578
490	490	490	1	1.6	\N	2022-12-14 20:05:36.965819	2022-12-14 20:05:36.965819
491	491	490	2	2.0	\N	2022-12-14 20:05:36.973775	2022-12-14 20:05:36.973775
492	492	490	3	1.0	\N	2022-12-14 20:05:36.980008	2022-12-14 20:05:36.980008
493	493	490	4	2.0	\N	2022-12-14 20:05:36.98706	2022-12-14 20:05:36.98706
494	494	490	5	2.0	\N	2022-12-14 20:05:36.995199	2022-12-14 20:05:36.995199
495	495	490	6	1.6	\N	2022-12-14 20:05:37.001877	2022-12-14 20:05:37.001877
496	496	490	7	1.0	\N	2022-12-14 20:05:37.009882	2022-12-14 20:05:37.009882
497	497	490	8	1.2	\N	2022-12-14 20:05:37.01898	2022-12-14 20:05:37.01898
498	498	490	9	1.9	\N	2022-12-14 20:05:37.026432	2022-12-14 20:05:37.026432
499	499	490	10	0.9	\N	2022-12-14 20:05:37.033333	2022-12-14 20:05:37.033333
500	500	490	12	2.0	\N	2022-12-14 20:05:37.040936	2022-12-14 20:05:37.040936
501	501	490	13	1.7	\N	2022-12-14 20:05:37.048276	2022-12-14 20:05:37.048276
502	502	490	14	2.0	\N	2022-12-14 20:05:37.055339	2022-12-14 20:05:37.055339
503	503	490	15	2.0	\N	2022-12-14 20:05:37.062675	2022-12-14 20:05:37.062675
504	504	490	16	1.7	\N	2022-12-14 20:05:37.07033	2022-12-14 20:05:37.07033
505	505	490	17	1.8	\N	2022-12-14 20:05:37.077877	2022-12-14 20:05:37.077877
506	506	490	18	2.0	\N	2022-12-14 20:05:37.08582	2022-12-14 20:05:37.08582
507	507	490	19	1.7	\N	2022-12-14 20:05:37.093603	2022-12-14 20:05:37.093603
508	508	490	20	2.0	\N	2022-12-14 20:05:37.101643	2022-12-14 20:05:37.101643
509	509	490	21	1.7	\N	2022-12-14 20:05:37.109275	2022-12-14 20:05:37.109275
510	510	490	22	2.0	\N	2022-12-14 20:05:37.116795	2022-12-14 20:05:37.116795
511	511	490	23	2.0	\N	2022-12-14 20:05:37.124287	2022-12-14 20:05:37.124287
512	512	490	24	2.0	\N	2022-12-14 20:05:37.13126	2022-12-14 20:05:37.13126
513	513	490	25	0.8	\N	2022-12-14 20:05:37.138988	2022-12-14 20:05:37.138988
514	514	490	26	1.4	\N	2022-12-14 20:05:37.146162	2022-12-14 20:05:37.146162
515	515	490	27	2.0	\N	2022-12-14 20:05:37.154313	2022-12-14 20:05:37.154313
516	516	490	28	1.9	\N	2022-12-14 20:05:37.160488	2022-12-14 20:05:37.160488
517	517	490	29	1.7	\N	2022-12-14 20:05:37.167896	2022-12-14 20:05:37.167896
518	518	490	30	2.0	\N	2022-12-14 20:05:37.175891	2022-12-14 20:05:37.175891
519	519	490	31	1.8	\N	2022-12-14 20:05:37.183458	2022-12-14 20:05:37.183458
520	520	490	32	1.5	\N	2022-12-14 20:05:37.190955	2022-12-14 20:05:37.190955
521	521	490	33	0.3	\N	2022-12-14 20:05:37.197714	2022-12-14 20:05:37.197714
522	522	490	34	1.8	\N	2022-12-14 20:05:37.20494	2022-12-14 20:05:37.20494
523	523	490	35	0.5	\N	2022-12-14 20:05:37.212078	2022-12-14 20:05:37.212078
524	524	490	36	0.5	\N	2022-12-14 20:05:37.219923	2022-12-14 20:05:37.219923
525	525	490	37	1.9	\N	2022-12-14 20:05:37.22815	2022-12-14 20:05:37.22815
526	526	490	38	1.6	\N	2022-12-14 20:05:37.237468	2022-12-14 20:05:37.237468
527	527	490	39	0.5	\N	2022-12-14 20:05:37.244755	2022-12-14 20:05:37.244755
528	528	490	40	1.0	\N	2022-12-14 20:05:37.251002	2022-12-14 20:05:37.251002
529	529	490	41	0.6	\N	2022-12-14 20:05:37.25863	2022-12-14 20:05:37.25863
530	530	490	42	2.0	\N	2022-12-14 20:05:37.26562	2022-12-14 20:05:37.26562
531	531	490	43	0.5	\N	2022-12-14 20:05:37.273165	2022-12-14 20:05:37.273165
532	532	490	44	0.6	\N	2022-12-14 20:05:37.280497	2022-12-14 20:05:37.280497
533	533	490	45	1.5	\N	2022-12-14 20:05:37.28871	2022-12-14 20:05:37.28871
534	534	490	46	1.8	\N	2022-12-14 20:05:37.296285	2022-12-14 20:05:37.296285
535	535	490	47	2.0	\N	2022-12-14 20:05:37.303248	2022-12-14 20:05:37.303248
536	536	490	48	1.8	\N	2022-12-14 20:05:37.310678	2022-12-14 20:05:37.310678
537	537	490	49	1.6	\N	2022-12-14 20:05:37.317707	2022-12-14 20:05:37.317707
538	538	490	50	1.8	\N	2022-12-14 20:05:37.326068	2022-12-14 20:05:37.326068
539	539	490	51	1.9	\N	2022-12-14 20:05:37.333589	2022-12-14 20:05:37.333589
540	540	490	52	2.0	\N	2022-12-14 20:05:37.342406	2022-12-14 20:05:37.342406
541	541	490	53	2.0	\N	2022-12-14 20:05:37.350228	2022-12-14 20:05:37.350228
542	542	490	54	1.7	\N	2022-12-14 20:05:37.358519	2022-12-14 20:05:37.358519
543	543	490	55	1.6	\N	2022-12-14 20:05:37.366056	2022-12-14 20:05:37.366056
544	544	490	56	1.6	\N	2022-12-14 20:05:37.374449	2022-12-14 20:05:37.374449
545	545	490	57	1.8	\N	2022-12-14 20:05:37.381929	2022-12-14 20:05:37.381929
546	546	490	58	1.7	\N	2022-12-14 20:05:37.389189	2022-12-14 20:05:37.389189
547	547	490	59	1.5	\N	2022-12-14 20:05:37.396042	2022-12-14 20:05:37.396042
548	548	490	60	1.8	\N	2022-12-14 20:05:37.402544	2022-12-14 20:05:37.402544
549	549	490	61	2.0	\N	2022-12-14 20:05:37.409413	2022-12-14 20:05:37.409413
550	550	490	62	1.5	\N	2022-12-14 20:05:37.416827	2022-12-14 20:05:37.416827
551	551	490	63	2.0	\N	2022-12-14 20:05:37.4236	2022-12-14 20:05:37.4236
552	552	490	64	2.0	\N	2022-12-14 20:05:37.430955	2022-12-14 20:05:37.430955
553	553	490	65	2.0	\N	2022-12-14 20:05:37.438497	2022-12-14 20:05:37.438497
554	554	490	66	1.9	\N	2022-12-14 20:05:37.447702	2022-12-14 20:05:37.447702
555	555	490	67	2.0	\N	2022-12-14 20:05:37.454519	2022-12-14 20:05:37.454519
556	556	490	68	1.8	\N	2022-12-14 20:05:37.460765	2022-12-14 20:05:37.460765
557	557	490	69	0.7	\N	2022-12-14 20:05:37.466451	2022-12-14 20:05:37.466451
558	558	490	70	1.8	\N	2022-12-14 20:05:37.472853	2022-12-14 20:05:37.472853
559	559	490	71	1.8	\N	2022-12-14 20:05:37.478916	2022-12-14 20:05:37.478916
560	560	490	72	1.6	\N	2022-12-14 20:05:37.485789	2022-12-14 20:05:37.485789
561	561	490	73	0.8	\N	2022-12-14 20:05:37.492796	2022-12-14 20:05:37.492796
562	562	490	74	1.2	\N	2022-12-14 20:05:37.500042	2022-12-14 20:05:37.500042
563	563	490	75	1.6	\N	2022-12-14 20:05:37.507193	2022-12-14 20:05:37.507193
564	564	490	76	0.5	\N	2022-12-14 20:05:37.513789	2022-12-14 20:05:37.513789
565	565	490	77	1.0	\N	2022-12-14 20:05:37.520914	2022-12-14 20:05:37.520914
566	566	490	78	2.0	\N	2022-12-14 20:05:37.52775	2022-12-14 20:05:37.52775
567	567	490	79	2.0	\N	2022-12-14 20:05:37.53473	2022-12-14 20:05:37.53473
568	568	490	80	2.0	\N	2022-12-14 20:05:37.541738	2022-12-14 20:05:37.541738
569	569	490	81	1.8	\N	2022-12-14 20:05:37.548098	2022-12-14 20:05:37.548098
570	570	490	82	2.0	\N	2022-12-14 20:05:37.555478	2022-12-14 20:05:37.555478
571	571	490	83	2.0	\N	2022-12-14 20:05:37.562178	2022-12-14 20:05:37.562178
572	572	490	85	2.0	\N	2022-12-14 20:05:37.569907	2022-12-14 20:05:37.569907
573	573	490	86	2.0	\N	2022-12-14 20:05:37.576679	2022-12-14 20:05:37.576679
574	574	490	91	2.0	\N	2022-12-14 20:05:37.582609	2022-12-14 20:05:37.582609
575	575	490	92	1.7	\N	2022-12-14 20:05:37.589547	2022-12-14 20:05:37.589547
576	576	490	93	1.8	\N	2022-12-14 20:05:37.59644	2022-12-14 20:05:37.59644
577	577	490	94	1.6	\N	2022-12-14 20:05:37.604295	2022-12-14 20:05:37.604295
578	578	490	95	1.9	\N	2022-12-14 20:05:37.611601	2022-12-14 20:05:37.611601
579	579	490	96	0.8	\N	2022-12-14 20:05:37.619337	2022-12-14 20:05:37.619337
580	580	490	97	2.0	\N	2022-12-14 20:05:37.626991	2022-12-14 20:05:37.626991
581	581	490	98	2.0	\N	2022-12-14 20:05:37.63532	2022-12-14 20:05:37.63532
582	582	490	99	1.5	\N	2022-12-14 20:05:37.642804	2022-12-14 20:05:37.642804
583	583	490	100	0.6	\N	2022-12-14 20:05:37.649826	2022-12-14 20:05:37.649826
584	144	584	1	0.8	\N	2022-12-14 20:05:37.658685	2022-12-14 20:05:37.658685
585	32	584	2	0.5	\N	2022-12-14 20:05:37.665889	2022-12-14 20:05:37.665889
586	92	584	3	0.9	\N	2022-12-14 20:05:37.673719	2022-12-14 20:05:37.673719
587	136	584	4	1.6	\N	2022-12-14 20:05:37.680973	2022-12-14 20:05:37.680973
588	137	584	5	1.1	\N	2022-12-14 20:05:37.689113	2022-12-14 20:05:37.689113
589	202	584	6	0.4	\N	2022-12-14 20:05:37.696018	2022-12-14 20:05:37.696018
590	208	584	7	1.8	\N	2022-12-14 20:05:37.702907	2022-12-14 20:05:37.702907
591	118	584	8	1.5	\N	2022-12-14 20:05:37.716169	2022-12-14 20:05:37.716169
592	70	584	9	1.4	\N	2022-12-14 20:05:37.727053	2022-12-14 20:05:37.727053
593	231	584	10	0.7	\N	2022-12-14 20:05:37.734503	2022-12-14 20:05:37.734503
594	279	584	11	0.6	\N	2022-12-14 20:05:37.744561	2022-12-14 20:05:37.744561
595	305	584	12	0.7	\N	2022-12-14 20:05:37.751132	2022-12-14 20:05:37.751132
596	305	584	13	1.7	\N	2022-12-14 20:05:37.759118	2022-12-14 20:05:37.759118
597	305	584	14	0.7	\N	2022-12-14 20:05:37.765984	2022-12-14 20:05:37.765984
598	332	584	15	0.9	\N	2022-12-14 20:05:37.773461	2022-12-14 20:05:37.773461
599	333	584	16	0.8	\N	2022-12-14 20:05:37.779763	2022-12-14 20:05:37.779763
600	353	584	17	1.6	\N	2022-12-14 20:05:37.786176	2022-12-14 20:05:37.786176
601	354	584	18	1.7	\N	2022-12-14 20:05:37.793326	2022-12-14 20:05:37.793326
602	356	584	19	1.3	\N	2022-12-14 20:05:37.800286	2022-12-14 20:05:37.800286
603	357	584	20	1.7	\N	2022-12-14 20:05:37.807724	2022-12-14 20:05:37.807724
604	361	584	21	1.7	\N	2022-12-14 20:05:37.815457	2022-12-14 20:05:37.815457
605	364	584	22	1.5	\N	2022-12-14 20:05:37.824347	2022-12-14 20:05:37.824347
606	368	584	23	1.1	\N	2022-12-14 20:05:37.832767	2022-12-14 20:05:37.832767
607	378	584	24	2.0	\N	2022-12-14 20:05:37.841	2022-12-14 20:05:37.841
608	436	584	25	1.9	\N	2022-12-14 20:05:37.848998	2022-12-14 20:05:37.848998
609	436	584	26	1.5	\N	2022-12-14 20:05:37.856885	2022-12-14 20:05:37.856885
610	439	584	27	0.3	\N	2022-12-14 20:05:37.863756	2022-12-14 20:05:37.863756
611	440	584	28	0.5	\N	2022-12-14 20:05:37.870867	2022-12-14 20:05:37.870867
612	471	584	29	1.5	\N	2022-12-14 20:05:37.877555	2022-12-14 20:05:37.877555
613	472	584	30	1.2	\N	2022-12-14 20:05:37.884861	2022-12-14 20:05:37.884861
614	495	584	31	1.0	\N	2022-12-14 20:05:37.892634	2022-12-14 20:05:37.892634
615	508	584	32	2.0	\N	2022-12-14 20:05:37.899566	2022-12-14 20:05:37.899566
616	508	584	33	1.1	\N	2022-12-14 20:05:37.906412	2022-12-14 20:05:37.906412
617	517	584	34	1.2	\N	2022-12-14 20:05:37.913675	2022-12-14 20:05:37.913675
618	526	584	35	1.6	\N	2022-12-14 20:05:37.921009	2022-12-14 20:05:37.921009
619	530	584	36	1.9	\N	2022-12-14 20:05:37.928766	2022-12-14 20:05:37.928766
620	533	584	37	1.1	\N	2022-12-14 20:05:37.936384	2022-12-14 20:05:37.936384
621	557	584	38	0.7	\N	2022-12-14 20:05:37.943832	2022-12-14 20:05:37.943832
622	574	584	39	0.9	\N	2022-12-14 20:05:37.950792	2022-12-14 20:05:37.950792
623	1	584	40	2.0	\N	2022-12-14 20:05:37.958254	2022-12-14 20:05:37.958254
624	4	584	41	2.0	\N	2022-12-14 20:05:37.966102	2022-12-14 20:05:37.966102
625	4	584	42	1.7	\N	2022-12-14 20:05:37.97343	2022-12-14 20:05:37.97343
626	330	584	43	1.2	\N	2022-12-14 20:05:37.980198	2022-12-14 20:05:37.980198
627	380	584	44	1.7	\N	2022-12-14 20:05:37.987636	2022-12-14 20:05:37.987636
628	392	584	45	1.1	\N	2022-12-14 20:05:37.995392	2022-12-14 20:05:37.995392
629	422	584	46	0.9	\N	2022-12-14 20:05:38.002302	2022-12-14 20:05:38.002302
630	424	584	47	1.0	\N	2022-12-14 20:05:38.010293	2022-12-14 20:05:38.010293
631	435	584	48	1.8	\N	2022-12-14 20:05:38.018388	2022-12-14 20:05:38.018388
632	441	584	49	1.2	\N	2022-12-14 20:05:38.026149	2022-12-14 20:05:38.026149
633	556	584	50	1.8	\N	2022-12-14 20:05:38.032789	2022-12-14 20:05:38.032789
634	537	584	51	1.1	\N	2022-12-14 20:05:38.040334	2022-12-14 20:05:38.040334
635	538	584	52	1.6	\N	2022-12-14 20:05:38.048254	2022-12-14 20:05:38.048254
636	542	584	53	1.0	\N	2022-12-14 20:05:38.054613	2022-12-14 20:05:38.054613
637	544	584	54	1.7	\N	2022-12-14 20:05:38.061808	2022-12-14 20:05:38.061808
638	516	584	55	2.0	\N	2022-12-14 20:05:38.069075	2022-12-14 20:05:38.069075
639	93	584	56	2.0	\N	2022-12-14 20:05:38.076608	2022-12-14 20:05:38.076608
640	140	584	57	2.0	\N	2022-12-14 20:05:38.084066	2022-12-14 20:05:38.084066
641	142	584	58	1.9	\N	2022-12-14 20:05:38.09061	2022-12-14 20:05:38.09061
642	3	584	59	1.0	\N	2022-12-14 20:05:38.097516	2022-12-14 20:05:38.097516
643	306	584	60	1.8	\N	2022-12-14 20:05:38.104922	2022-12-14 20:05:38.104922
644	398	584	61	0.5	\N	2022-12-14 20:05:38.112267	2022-12-14 20:05:38.112267
645	407	584	62	2.0	\N	2022-12-14 20:05:38.119119	2022-12-14 20:05:38.119119
646	410	584	63	1.0	\N	2022-12-14 20:05:38.125881	2022-12-14 20:05:38.125881
647	420	584	64	0.7	\N	2022-12-14 20:05:38.133259	2022-12-14 20:05:38.133259
648	421	584	65	2.0	\N	2022-12-14 20:05:38.140679	2022-12-14 20:05:38.140679
649	209	584	66	2.0	\N	2022-12-14 20:05:38.147969	2022-12-14 20:05:38.147969
650	374	584	67	2.0	\N	2022-12-14 20:05:38.156318	2022-12-14 20:05:38.156318
651	5	584	68	2.0	\N	2022-12-14 20:05:38.164237	2022-12-14 20:05:38.164237
652	10	584	69	2.0	\N	2022-12-14 20:05:38.171576	2022-12-14 20:05:38.171576
653	10	584	70	1.9	\N	2022-12-14 20:05:38.178985	2022-12-14 20:05:38.178985
654	12	584	71	2.0	\N	2022-12-14 20:05:38.186317	2022-12-14 20:05:38.186317
655	17	584	72	2.0	\N	2022-12-14 20:05:38.193841	2022-12-14 20:05:38.193841
656	95	584	73	2.0	\N	2022-12-14 20:05:38.200371	2022-12-14 20:05:38.200371
657	96	584	74	2.0	\N	2022-12-14 20:05:38.207006	2022-12-14 20:05:38.207006
658	99	584	75	2.0	\N	2022-12-14 20:05:38.214148	2022-12-14 20:05:38.214148
659	99	584	76	2.0	\N	2022-12-14 20:05:38.221665	2022-12-14 20:05:38.221665
660	101	584	77	2.0	\N	2022-12-14 20:05:38.231102	2022-12-14 20:05:38.231102
661	114	584	78	1.7	\N	2022-12-14 20:05:38.237621	2022-12-14 20:05:38.237621
662	275	584	79	2.0	\N	2022-12-14 20:05:38.244373	2022-12-14 20:05:38.244373
663	331	584	80	1.9	\N	2022-12-14 20:05:38.250996	2022-12-14 20:05:38.250996
664	365	584	81	1.2	\N	2022-12-14 20:05:38.258869	2022-12-14 20:05:38.258869
665	388	584	82	2.0	\N	2022-12-14 20:05:38.26631	2022-12-14 20:05:38.26631
666	442	584	83	1.3	\N	2022-12-14 20:05:38.27353	2022-12-14 20:05:38.27353
667	667	584	84	0.005	\N	2022-12-14 20:05:38.280368	2022-12-14 20:05:38.280368
668	55	584	85	1.3	\N	2022-12-14 20:05:38.287152	2022-12-14 20:05:38.287152
669	67	584	86	2.0	\N	2022-12-14 20:05:38.293568	2022-12-14 20:05:38.293568
670	68	584	87	2.0	\N	2022-12-14 20:05:38.299613	2022-12-14 20:05:38.299613
671	68	584	88	0.7	\N	2022-12-14 20:05:38.308242	2022-12-14 20:05:38.308242
672	76	584	89	2.0	\N	2022-12-14 20:05:38.315429	2022-12-14 20:05:38.315429
673	76	584	90	2.0	\N	2022-12-14 20:05:38.322367	2022-12-14 20:05:38.322367
674	105	584	91	2.0	\N	2022-12-14 20:05:38.328323	2022-12-14 20:05:38.328323
675	106	584	92	0.7	\N	2022-12-14 20:05:38.335176	2022-12-14 20:05:38.335176
676	110	584	93	1.8	\N	2022-12-14 20:05:38.341949	2022-12-14 20:05:38.341949
677	110	584	94	1.0	\N	2022-12-14 20:05:38.348506	2022-12-14 20:05:38.348506
678	9	584	95	2.0	\N	2022-12-14 20:05:38.356374	2022-12-14 20:05:38.356374
679	50	584	96	2.0	\N	2022-12-14 20:05:38.363276	2022-12-14 20:05:38.363276
680	205	584	97	2.0	\N	2022-12-14 20:05:38.370668	2022-12-14 20:05:38.370668
681	277	584	98	2.0	\N	2022-12-14 20:05:38.378358	2022-12-14 20:05:38.378358
682	75	584	99	2.0	\N	2022-12-14 20:05:38.385419	2022-12-14 20:05:38.385419
683	108	584	100	1.3	\N	2022-12-14 20:05:38.392454	2022-12-14 20:05:38.392454
684	395	684	1	2.0	\N	2022-12-14 20:05:38.399759	2022-12-14 20:05:38.399759
685	480	684	2	0.6	\N	2022-12-14 20:05:38.406057	2022-12-14 20:05:38.406057
686	489	684	3	2.0	\N	2022-12-14 20:05:38.413008	2022-12-14 20:05:38.413008
687	502	684	4	2.0	\N	2022-12-14 20:05:38.419776	2022-12-14 20:05:38.419776
688	503	684	5	2.0	\N	2022-12-14 20:05:38.426818	2022-12-14 20:05:38.426818
689	504	684	6	1.8	\N	2022-12-14 20:05:38.43435	2022-12-14 20:05:38.43435
690	506	684	7	2.0	\N	2022-12-14 20:05:38.442035	2022-12-14 20:05:38.442035
691	507	684	8	1.7	\N	2022-12-14 20:05:38.449094	2022-12-14 20:05:38.449094
692	518	684	9	1.6	\N	2022-12-14 20:05:38.456184	2022-12-14 20:05:38.456184
693	525	684	10	1.0	\N	2022-12-14 20:05:38.464068	2022-12-14 20:05:38.464068
694	535	684	11	2.0	\N	2022-12-14 20:05:38.47166	2022-12-14 20:05:38.47166
695	31	684	12	0.7	\N	2022-12-14 20:05:38.480202	2022-12-14 20:05:38.480202
696	54	684	13	0.5	\N	2022-12-14 20:05:38.487681	2022-12-14 20:05:38.487681
697	102	684	14	0.5	\N	2022-12-14 20:05:38.493835	2022-12-14 20:05:38.493835
698	103	684	15	2.0	\N	2022-12-14 20:05:38.500305	2022-12-14 20:05:38.500305
699	229	684	16	0.6	\N	2022-12-14 20:05:38.507641	2022-12-14 20:05:38.507641
700	482	684	17	1.0	\N	2022-12-14 20:05:38.51423	2022-12-14 20:05:38.51423
701	485	684	18	2.0	\N	2022-12-14 20:05:38.521033	2022-12-14 20:05:38.521033
702	11	684	19	1.7	\N	2022-12-14 20:05:38.527618	2022-12-14 20:05:38.527618
703	48	684	20	1.5	\N	2022-12-14 20:05:38.534071	2022-12-14 20:05:38.534071
704	52	684	21	1.1	\N	2022-12-14 20:05:38.541642	2022-12-14 20:05:38.541642
705	53	684	22	0.8	\N	2022-12-14 20:05:38.548436	2022-12-14 20:05:38.548436
706	94	684	23	2.0	\N	2022-12-14 20:05:38.555697	2022-12-14 20:05:38.555697
707	115	684	24	2.0	\N	2022-12-14 20:05:38.563029	2022-12-14 20:05:38.563029
708	138	684	25	2.0	\N	2022-12-14 20:05:38.570252	2022-12-14 20:05:38.570252
709	227	684	26	1.8	\N	2022-12-14 20:05:38.579144	2022-12-14 20:05:38.579144
710	228	684	27	1.8	\N	2022-12-14 20:05:38.586181	2022-12-14 20:05:38.586181
711	313	684	28	0.9	\N	2022-12-14 20:05:38.59347	2022-12-14 20:05:38.59347
712	712	684	29	1.6	\N	2022-12-14 20:05:38.600692	2022-12-14 20:05:38.600692
713	381	684	30	1.1	\N	2022-12-14 20:05:38.608255	2022-12-14 20:05:38.608255
714	382	684	31	1.4	\N	2022-12-14 20:05:38.615816	2022-12-14 20:05:38.615816
715	393	684	32	2.0	\N	2022-12-14 20:05:38.623446	2022-12-14 20:05:38.623446
716	408	684	33	1.8	\N	2022-12-14 20:05:38.630966	2022-12-14 20:05:38.630966
717	486	684	34	1.8	\N	2022-12-14 20:05:38.638202	2022-12-14 20:05:38.638202
718	487	684	35	2.0	\N	2022-12-14 20:05:38.645026	2022-12-14 20:05:38.645026
719	488	684	36	1.6	\N	2022-12-14 20:05:38.652231	2022-12-14 20:05:38.652231
720	534	684	37	1.8	\N	2022-12-14 20:05:38.659031	2022-12-14 20:05:38.659031
721	545	684	38	1.5	\N	2022-12-14 20:05:38.665763	2022-12-14 20:05:38.665763
722	558	684	39	1.9	\N	2022-12-14 20:05:38.673348	2022-12-14 20:05:38.673348
723	558	684	40	2.0	\N	2022-12-14 20:05:38.679792	2022-12-14 20:05:38.679792
724	2	684	41	1.1	\N	2022-12-14 20:05:38.686849	2022-12-14 20:05:38.686849
725	6	684	42	1.8	\N	2022-12-14 20:05:38.69469	2022-12-14 20:05:38.69469
726	19	684	43	2.0	\N	2022-12-14 20:05:38.702407	2022-12-14 20:05:38.702407
727	20	684	44	1.6	\N	2022-12-14 20:05:38.709816	2022-12-14 20:05:38.709816
728	21	684	45	1.9	\N	2022-12-14 20:05:38.717264	2022-12-14 20:05:38.717264
729	26	684	46	1.5	\N	2022-12-14 20:05:38.725853	2022-12-14 20:05:38.725853
730	35	684	47	2.0	\N	2022-12-14 20:05:38.732261	2022-12-14 20:05:38.732261
731	71	684	48	1.0	\N	2022-12-14 20:05:38.741232	2022-12-14 20:05:38.741232
732	273	684	49	1.2	\N	2022-12-14 20:05:38.748102	2022-12-14 20:05:38.748102
733	733	684	50	1.8	\N	2022-12-14 20:05:38.756307	2022-12-14 20:05:38.756307
734	326	684	51	0.5	\N	2022-12-14 20:05:38.763289	2022-12-14 20:05:38.763289
735	329	684	52	0.8	\N	2022-12-14 20:05:38.769116	2022-12-14 20:05:38.769116
736	386	684	53	1.8	\N	2022-12-14 20:05:38.777568	2022-12-14 20:05:38.777568
737	387	684	54	2.0	\N	2022-12-14 20:05:38.786152	2022-12-14 20:05:38.786152
738	474	684	55	1.5	\N	2022-12-14 20:05:38.792899	2022-12-14 20:05:38.792899
739	476	684	56	1.5	\N	2022-12-14 20:05:38.800825	2022-12-14 20:05:38.800825
740	478	684	57	1.1	\N	2022-12-14 20:05:38.807964	2022-12-14 20:05:38.807964
741	509	684	58	1.0	\N	2022-12-14 20:05:38.813976	2022-12-14 20:05:38.813976
742	515	684	59	1.0	\N	2022-12-14 20:05:38.821458	2022-12-14 20:05:38.821458
743	536	684	60	1.0	\N	2022-12-14 20:05:38.829153	2022-12-14 20:05:38.829153
744	540	684	61	2.0	\N	2022-12-14 20:05:38.836748	2022-12-14 20:05:38.836748
745	541	684	62	1.5	\N	2022-12-14 20:05:38.843965	2022-12-14 20:05:38.843965
746	16	684	63	2.0	\N	2022-12-14 20:05:38.850246	2022-12-14 20:05:38.850246
747	22	684	64	0.5	\N	2022-12-14 20:05:38.85749	2022-12-14 20:05:38.85749
748	29	684	65	1.7	\N	2022-12-14 20:05:38.865038	2022-12-14 20:05:38.865038
749	30	684	66	1.0	\N	2022-12-14 20:05:38.872644	2022-12-14 20:05:38.872644
750	111	684	67	0.8	\N	2022-12-14 20:05:38.879421	2022-12-14 20:05:38.879421
751	113	684	68	0.7	\N	2022-12-14 20:05:38.888518	2022-12-14 20:05:38.888518
752	141	684	69	0.5	\N	2022-12-14 20:05:38.896826	2022-12-14 20:05:38.896826
753	158	684	70	1.4	\N	2022-12-14 20:05:38.905323	2022-12-14 20:05:38.905323
754	389	684	71	0.7	\N	2022-12-14 20:05:38.912535	2022-12-14 20:05:38.912535
755	491	684	72	0.9	\N	2022-12-14 20:05:38.920463	2022-12-14 20:05:38.920463
756	575	684	73	1.0	\N	2022-12-14 20:05:38.927969	2022-12-14 20:05:38.927969
757	475	684	74	1.7	\N	2022-12-14 20:05:38.934794	2022-12-14 20:05:38.934794
758	117	684	75	0.5	\N	2022-12-14 20:05:38.94248	2022-12-14 20:05:38.94248
759	580	684	76	1.0	\N	2022-12-14 20:05:38.950199	2022-12-14 20:05:38.950199
760	454	684	77	1.9	\N	2022-12-14 20:05:38.958165	2022-12-14 20:05:38.958165
761	157	684	78	1.4	\N	2022-12-14 20:05:38.966174	2022-12-14 20:05:38.966174
762	98	684	79	0.7	\N	2022-12-14 20:05:38.973869	2022-12-14 20:05:38.973869
763	112	684	80	0.7	\N	2022-12-14 20:05:38.983064	2022-12-14 20:05:38.983064
764	112	684	81	1.7	\N	2022-12-14 20:05:38.99229	2022-12-14 20:05:38.99229
765	120	684	82	1.7	\N	2022-12-14 20:05:38.998565	2022-12-14 20:05:38.998565
766	120	684	83	1.1	\N	2022-12-14 20:05:39.006066	2022-12-14 20:05:39.006066
767	120	684	84	1.0	\N	2022-12-14 20:05:39.012882	2022-12-14 20:05:39.012882
768	193	684	85	1.5	\N	2022-12-14 20:05:39.0196	2022-12-14 20:05:39.0196
769	463	684	86	1.4	\N	2022-12-14 20:05:39.026794	2022-12-14 20:05:39.026794
770	234	684	87	1.8	\N	2022-12-14 20:05:39.034825	2022-12-14 20:05:39.034825
771	234	684	88	1.6	\N	2022-12-14 20:05:39.042423	2022-12-14 20:05:39.042423
772	234	684	89	1.1	\N	2022-12-14 20:05:39.050016	2022-12-14 20:05:39.050016
773	460	684	90	0.5	\N	2022-12-14 20:05:39.057577	2022-12-14 20:05:39.057577
774	462	684	91	1.0	\N	2022-12-14 20:05:39.063844	2022-12-14 20:05:39.063844
775	468	684	92	0.04	\N	2022-12-14 20:05:39.071308	2022-12-14 20:05:39.071308
776	452	684	93	0.08	\N	2022-12-14 20:05:39.07878	2022-12-14 20:05:39.07878
777	458	684	94	0.17	\N	2022-12-14 20:05:39.086542	2022-12-14 20:05:39.086542
778	309	684	95	2.0	\N	2022-12-14 20:05:39.094227	2022-12-14 20:05:39.094227
779	303	684	96	1.7	\N	2022-12-14 20:05:39.100553	2022-12-14 20:05:39.100553
780	521	684	97	0.8	\N	2022-12-14 20:05:39.108119	2022-12-14 20:05:39.108119
781	564	684	98	1.2	\N	2022-12-14 20:05:39.116169	2022-12-14 20:05:39.116169
782	527	684	99	2.0	\N	2022-12-14 20:05:39.123841	2022-12-14 20:05:39.123841
783	529	684	100	1.6	\N	2022-12-14 20:05:39.131502	2022-12-14 20:05:39.131502
784	531	784	1	0.7	\N	2022-12-14 20:05:39.138946	2022-12-14 20:05:39.138946
785	192	784	2	2.0	\N	2022-12-14 20:05:39.146056	2022-12-14 20:05:39.146056
786	195	784	3	1.9	\N	2022-12-14 20:05:39.154186	2022-12-14 20:05:39.154186
787	203	784	4	2.0	\N	2022-12-14 20:05:39.161656	2022-12-14 20:05:39.161656
788	204	784	5	2.0	\N	2022-12-14 20:05:39.168865	2022-12-14 20:05:39.168865
789	375	784	6	2.0	\N	2022-12-14 20:05:39.176817	2022-12-14 20:05:39.176817
790	790	784	7	1.6	\N	2022-12-14 20:05:39.184184	2022-12-14 20:05:39.184184
791	790	784	8	1.8	\N	2022-12-14 20:05:39.191721	2022-12-14 20:05:39.191721
792	28	784	9	1.8	\N	2022-12-14 20:05:39.198461	2022-12-14 20:05:39.198461
793	28	784	10	1.0	\N	2022-12-14 20:05:39.207964	2022-12-14 20:05:39.207964
794	116	784	11	1.8	\N	2022-12-14 20:05:39.215306	2022-12-14 20:05:39.215306
795	116	784	12	1.6	\N	2022-12-14 20:05:39.222514	2022-12-14 20:05:39.222514
796	143	784	13	0.3	\N	2022-12-14 20:05:39.232694	2022-12-14 20:05:39.232694
797	154	784	14	1.2	\N	2022-12-14 20:05:39.239997	2022-12-14 20:05:39.239997
798	159	784	15	1.8	\N	2022-12-14 20:05:39.250047	2022-12-14 20:05:39.250047
799	159	784	16	1.0	\N	2022-12-14 20:05:39.257562	2022-12-14 20:05:39.257562
800	162	784	17	1.8	\N	2022-12-14 20:05:39.26454	2022-12-14 20:05:39.26454
801	162	784	18	0.9	\N	2022-12-14 20:05:39.272048	2022-12-14 20:05:39.272048
802	163	784	19	1.8	\N	2022-12-14 20:05:39.281	2022-12-14 20:05:39.281
803	803	784	20	1.4	\N	2022-12-14 20:05:39.29128	2022-12-14 20:05:39.29128
804	274	784	21	1.2	\N	2022-12-14 20:05:39.299704	2022-12-14 20:05:39.299704
805	276	784	22	2.0	\N	2022-12-14 20:05:39.307984	2022-12-14 20:05:39.307984
806	280	784	23	1.7	\N	2022-12-14 20:05:39.314934	2022-12-14 20:05:39.314934
807	280	784	24	0.9	\N	2022-12-14 20:05:39.322517	2022-12-14 20:05:39.322517
808	281	784	25	1.5	\N	2022-12-14 20:05:39.330394	2022-12-14 20:05:39.330394
809	281	784	26	0.8	\N	2022-12-14 20:05:39.337528	2022-12-14 20:05:39.337528
810	282	784	27	1.5	\N	2022-12-14 20:05:39.345149	2022-12-14 20:05:39.345149
811	282	784	28	1.0	\N	2022-12-14 20:05:39.351791	2022-12-14 20:05:39.351791
812	307	784	29	1.5	\N	2022-12-14 20:05:39.359224	2022-12-14 20:05:39.359224
813	311	784	30	1.4	\N	2022-12-14 20:05:39.366185	2022-12-14 20:05:39.366185
814	328	784	31	1.8	\N	2022-12-14 20:05:39.373602	2022-12-14 20:05:39.373602
815	367	784	32	1.7	\N	2022-12-14 20:05:39.381018	2022-12-14 20:05:39.381018
816	367	784	33	1.2	\N	2022-12-14 20:05:39.389013	2022-12-14 20:05:39.389013
817	369	784	34	1.8	\N	2022-12-14 20:05:39.396117	2022-12-14 20:05:39.396117
818	369	784	35	0.7	\N	2022-12-14 20:05:39.403466	2022-12-14 20:05:39.403466
819	383	784	36	0.8	\N	2022-12-14 20:05:39.410998	2022-12-14 20:05:39.410998
820	383	784	37	2.0	\N	2022-12-14 20:05:39.418399	2022-12-14 20:05:39.418399
821	385	784	38	1.9	\N	2022-12-14 20:05:39.426201	2022-12-14 20:05:39.426201
822	385	784	39	1.2	\N	2022-12-14 20:05:39.433618	2022-12-14 20:05:39.433618
823	394	784	40	2.0	\N	2022-12-14 20:05:39.440525	2022-12-14 20:05:39.440525
824	399	784	41	1.7	\N	2022-12-14 20:05:39.447901	2022-12-14 20:05:39.447901
825	399	784	42	1.7	\N	2022-12-14 20:05:39.455537	2022-12-14 20:05:39.455537
826	418	784	43	1.8	\N	2022-12-14 20:05:39.462434	2022-12-14 20:05:39.462434
827	437	784	44	1.0	\N	2022-12-14 20:05:39.469877	2022-12-14 20:05:39.469877
828	438	784	45	0.8	\N	2022-12-14 20:05:39.477475	2022-12-14 20:05:39.477475
829	496	784	46	1.3	\N	2022-12-14 20:05:39.485975	2022-12-14 20:05:39.485975
830	500	784	47	1.7	\N	2022-12-14 20:05:39.493606	2022-12-14 20:05:39.493606
831	510	784	48	1.7	\N	2022-12-14 20:05:39.500042	2022-12-14 20:05:39.500042
832	510	784	49	0.8	\N	2022-12-14 20:05:39.507208	2022-12-14 20:05:39.507208
833	512	784	50	2.0	\N	2022-12-14 20:05:39.513043	2022-12-14 20:05:39.513043
834	561	784	51	1.8	\N	2022-12-14 20:05:39.519668	2022-12-14 20:05:39.519668
835	561	784	52	0.8	\N	2022-12-14 20:05:39.52686	2022-12-14 20:05:39.52686
836	562	784	53	1.5	\N	2022-12-14 20:05:39.532825	2022-12-14 20:05:39.532825
837	837	784	54	0.3	\N	2022-12-14 20:05:39.539149	2022-12-14 20:05:39.539149
838	838	784	55	0.6	\N	2022-12-14 20:05:39.546184	2022-12-14 20:05:39.546184
839	839	784	56	0.5	\N	2022-12-14 20:05:39.552861	2022-12-14 20:05:39.552861
840	840	784	57	0.8	\N	2022-12-14 20:05:39.559779	2022-12-14 20:05:39.559779
841	314	784	58	1.5	\N	2022-12-14 20:05:39.56653	2022-12-14 20:05:39.56653
842	315	784	59	1.5	\N	2022-12-14 20:05:39.574039	2022-12-14 20:05:39.574039
843	843	784	60	0.5	\N	2022-12-14 20:05:39.580583	2022-12-14 20:05:39.580583
844	844	784	61	1.0	\N	2022-12-14 20:05:39.589718	2022-12-14 20:05:39.589718
845	845	784	62	0.7	\N	2022-12-14 20:05:39.597687	2022-12-14 20:05:39.597687
846	846	784	63	0.8	\N	2022-12-14 20:05:39.605533	2022-12-14 20:05:39.605533
847	847	784	64	0.6	\N	2022-12-14 20:05:39.612584	2022-12-14 20:05:39.612584
848	848	784	65	0.5	\N	2022-12-14 20:05:39.619587	2022-12-14 20:05:39.619587
849	511	784	66	0.5	\N	2022-12-14 20:05:39.626629	2022-12-14 20:05:39.626629
850	121	784	67	2.0	\N	2022-12-14 20:05:39.632667	2022-12-14 20:05:39.632667
851	851	784	68	1.9	\N	2022-12-14 20:05:39.639488	2022-12-14 20:05:39.639488
852	852	784	69	2.0	\N	2022-12-14 20:05:39.646505	2022-12-14 20:05:39.646505
853	251	784	70	0.5	\N	2022-12-14 20:05:39.654158	2022-12-14 20:05:39.654158
854	162	784	71	1.0	\N	2022-12-14 20:05:39.6604	2022-12-14 20:05:39.6604
855	156	784	72	0.5	\N	2022-12-14 20:05:39.668684	2022-12-14 20:05:39.668684
856	856	784	73	0.7	\N	2022-12-14 20:05:39.675768	2022-12-14 20:05:39.675768
857	857	784	74	1.8	\N	2022-12-14 20:05:39.683856	2022-12-14 20:05:39.683856
858	858	784	75	0.1	\N	2022-12-14 20:05:39.692403	2022-12-14 20:05:39.692403
859	83	784	76	0.03	\N	2022-12-14 20:05:39.699453	2022-12-14 20:05:39.699453
860	860	784	77	0.8	\N	2022-12-14 20:05:39.707689	2022-12-14 20:05:39.707689
861	133	784	78	2.0	\N	2022-12-14 20:05:39.715539	2022-12-14 20:05:39.715539
862	862	784	79	2.0	\N	2022-12-14 20:05:39.724159	2022-12-14 20:05:39.724159
863	863	784	80	1.0	\N	2022-12-14 20:05:39.73099	2022-12-14 20:05:39.73099
864	864	784	81	2.0	\N	2022-12-14 20:05:39.741759	2022-12-14 20:05:39.741759
865	865	784	82	0.3	\N	2022-12-14 20:05:39.749401	2022-12-14 20:05:39.749401
866	866	784	83	0.3	\N	2022-12-14 20:05:39.757115	2022-12-14 20:05:39.757115
867	867	784	84	0.8	\N	2022-12-14 20:05:39.764431	2022-12-14 20:05:39.764431
868	868	784	85	0.7	\N	2022-12-14 20:05:39.773823	2022-12-14 20:05:39.773823
869	869	784	86	0.5	\N	2022-12-14 20:05:39.78072	2022-12-14 20:05:39.78072
870	870	784	87	0.7	\N	2022-12-14 20:05:39.789515	2022-12-14 20:05:39.789515
871	871	784	88	0.3	\N	2022-12-14 20:05:39.798661	2022-12-14 20:05:39.798661
872	872	784	89	1.7	\N	2022-12-14 20:05:39.807201	2022-12-14 20:05:39.807201
873	873	784	90	0.9	\N	2022-12-14 20:05:39.813992	2022-12-14 20:05:39.813992
874	874	784	91	0.6	\N	2022-12-14 20:05:39.821591	2022-12-14 20:05:39.821591
875	875	784	92	0.7	\N	2022-12-14 20:05:39.8298	2022-12-14 20:05:39.8298
876	876	784	93	0.7	\N	2022-12-14 20:05:39.83762	2022-12-14 20:05:39.83762
877	66	784	94	2.0	\N	2022-12-14 20:05:39.844871	2022-12-14 20:05:39.844871
878	104	784	95	1.6	\N	2022-12-14 20:05:39.852072	2022-12-14 20:05:39.852072
879	879	784	96	1.9	\N	2022-12-14 20:05:39.859228	2022-12-14 20:05:39.859228
880	268	784	97	1.1	\N	2022-12-14 20:05:39.866665	2022-12-14 20:05:39.866665
881	881	784	98	0.04	\N	2022-12-14 20:05:39.873696	2022-12-14 20:05:39.873696
882	272	784	99	1.5	\N	2022-12-14 20:05:39.880563	2022-12-14 20:05:39.880563
883	883	784	100	1.6	\N	2022-12-14 20:05:39.887345	2022-12-14 20:05:39.887345
884	884	884	1	0.5	\N	2022-12-14 20:05:39.89526	2022-12-14 20:05:39.89526
885	885	884	2	0.6	\N	2022-12-14 20:05:39.903575	2022-12-14 20:05:39.903575
886	886	884	3	0.7	\N	2022-12-14 20:05:39.910639	2022-12-14 20:05:39.910639
887	887	884	4	0.5	\N	2022-12-14 20:05:39.917737	2022-12-14 20:05:39.917737
888	888	884	5	0.5	\N	2022-12-14 20:05:39.924877	2022-12-14 20:05:39.924877
889	889	884	6	1.4	\N	2022-12-14 20:05:39.932326	2022-12-14 20:05:39.932326
890	890	884	7	0.08	\N	2022-12-14 20:05:39.940854	2022-12-14 20:05:39.940854
891	891	884	8	0.4	\N	2022-12-14 20:05:39.948533	2022-12-14 20:05:39.948533
892	892	884	9	0.3	\N	2022-12-14 20:05:39.956371	2022-12-14 20:05:39.956371
893	893	884	10	0.5	\N	2022-12-14 20:05:39.963377	2022-12-14 20:05:39.963377
894	894	884	11	1.6	\N	2022-12-14 20:05:39.970956	2022-12-14 20:05:39.970956
895	895	884	12	0.5	\N	2022-12-14 20:05:39.978097	2022-12-14 20:05:39.978097
896	896	884	13	0.7	\N	2022-12-14 20:05:39.986017	2022-12-14 20:05:39.986017
897	897	884	14	0.75	\N	2022-12-14 20:05:39.994523	2022-12-14 20:05:39.994523
898	898	884	15	0.0	1	2022-12-14 20:05:40.001961	2022-12-14 20:05:40.001961
899	899	884	16	0.0	1	2022-12-14 20:05:40.010085	2022-12-14 20:05:40.010085
900	900	884	17	0.5	\N	2022-12-14 20:05:40.017841	2022-12-14 20:05:40.017841
901	901	884	18	0.2	\N	2022-12-14 20:05:40.025929	2022-12-14 20:05:40.025929
902	902	884	19	0.8	\N	2022-12-14 20:05:40.033768	2022-12-14 20:05:40.033768
903	903	884	20	0.9	\N	2022-12-14 20:05:40.041717	2022-12-14 20:05:40.041717
904	904	884	21	1.5	\N	2022-12-14 20:05:40.048653	2022-12-14 20:05:40.048653
905	905	884	22	0.4	\N	2022-12-14 20:05:40.055988	2022-12-14 20:05:40.055988
906	906	884	23	0.7	\N	2022-12-14 20:05:40.063319	2022-12-14 20:05:40.063319
907	907	884	24	0.7	\N	2022-12-14 20:05:40.071745	2022-12-14 20:05:40.071745
908	908	884	25	0.25	\N	2022-12-14 20:05:40.079528	2022-12-14 20:05:40.079528
909	909	884	26	0.8	\N	2022-12-14 20:05:40.087416	2022-12-14 20:05:40.087416
910	910	884	27	0.2	\N	2022-12-14 20:05:40.094436	2022-12-14 20:05:40.094436
911	911	884	28	0.4	\N	2022-12-14 20:05:40.104294	2022-12-14 20:05:40.104294
912	912	884	29	0.5	\N	2022-12-14 20:05:40.112778	2022-12-14 20:05:40.112778
913	913	884	30	0.5	\N	2022-12-14 20:05:40.120442	2022-12-14 20:05:40.120442
914	914	884	31	0.1	\N	2022-12-14 20:05:40.128142	2022-12-14 20:05:40.128142
915	915	884	33	0.9	\N	2022-12-14 20:05:40.135762	2022-12-14 20:05:40.135762
916	916	884	34	0.3	\N	2022-12-14 20:05:40.143294	2022-12-14 20:05:40.143294
917	917	884	35	0.6	\N	2022-12-14 20:05:40.151535	2022-12-14 20:05:40.151535
918	918	884	36	0.5	\N	2022-12-14 20:05:40.15913	2022-12-14 20:05:40.15913
919	919	884	37	0.3	\N	2022-12-14 20:05:40.166882	2022-12-14 20:05:40.166882
920	920	884	38	0.8	\N	2022-12-14 20:05:40.174166	2022-12-14 20:05:40.174166
921	921	884	39	0.3	\N	2022-12-14 20:05:40.181529	2022-12-14 20:05:40.181529
922	922	884	40	1.9	\N	2022-12-14 20:05:40.18933	2022-12-14 20:05:40.18933
923	923	884	41	0.0	12	2022-12-14 20:05:40.196924	2022-12-14 20:05:40.196924
924	924	884	42	0.0	30	2022-12-14 20:05:40.203937	2022-12-14 20:05:40.203937
925	925	884	43	0.06	\N	2022-12-14 20:05:40.211214	2022-12-14 20:05:40.211214
926	926	884	44	0.2	\N	2022-12-14 20:05:40.218659	2022-12-14 20:05:40.218659
927	927	884	45	0.7	\N	2022-12-14 20:05:40.226151	2022-12-14 20:05:40.226151
928	928	884	46	1.2	\N	2022-12-14 20:05:40.233721	2022-12-14 20:05:40.233721
929	929	884	47	0.1	\N	2022-12-14 20:05:40.241302	2022-12-14 20:05:40.241302
930	930	884	48	0.2	\N	2022-12-14 20:05:40.248334	2022-12-14 20:05:40.248334
931	931	884	49	0.7	\N	2022-12-14 20:05:40.255663	2022-12-14 20:05:40.255663
932	932	884	50	0.03	\N	2022-12-14 20:05:40.263219	2022-12-14 20:05:40.263219
933	933	884	51	0.0	20	2022-12-14 20:05:40.270426	2022-12-14 20:05:40.270426
934	934	884	52	1.5	\N	2022-12-14 20:05:40.278753	2022-12-14 20:05:40.278753
935	935	884	53	0.4	\N	2022-12-14 20:05:40.287286	2022-12-14 20:05:40.287286
936	936	884	54	0.2	\N	2022-12-14 20:05:40.295553	2022-12-14 20:05:40.295553
937	937	884	55	0.3	\N	2022-12-14 20:05:40.303965	2022-12-14 20:05:40.303965
938	938	884	56	0.15	\N	2022-12-14 20:05:40.31101	2022-12-14 20:05:40.31101
939	939	884	57	0.3	\N	2022-12-14 20:05:40.319323	2022-12-14 20:05:40.319323
940	940	884	59	0.3	\N	2022-12-14 20:05:40.327279	2022-12-14 20:05:40.327279
941	941	884	60	0.0	20	2022-12-14 20:05:40.336867	2022-12-14 20:05:40.336867
942	942	884	61	0.8	\N	2022-12-14 20:05:40.344883	2022-12-14 20:05:40.344883
943	943	884	62	0.2	\N	2022-12-14 20:05:40.351899	2022-12-14 20:05:40.351899
944	944	884	63	0.4	\N	2022-12-14 20:05:40.358672	2022-12-14 20:05:40.358672
945	945	884	64	0.3	\N	2022-12-14 20:05:40.366756	2022-12-14 20:05:40.366756
946	946	884	65	0.04	\N	2022-12-14 20:05:40.37499	2022-12-14 20:05:40.37499
947	947	884	66	0.1	\N	2022-12-14 20:05:40.383262	2022-12-14 20:05:40.383262
948	948	884	67	0.25	\N	2022-12-14 20:05:40.390377	2022-12-14 20:05:40.390377
949	949	884	68	0.8	\N	2022-12-14 20:05:40.39817	2022-12-14 20:05:40.39817
950	950	884	69	0.25	\N	2022-12-14 20:05:40.405845	2022-12-14 20:05:40.405845
951	951	884	70	0.9	\N	2022-12-14 20:05:40.413662	2022-12-14 20:05:40.413662
952	952	884	72	0.0	1	2022-12-14 20:05:40.421333	2022-12-14 20:05:40.421333
953	953	884	74	0.4	\N	2022-12-14 20:05:40.427664	2022-12-14 20:05:40.427664
954	954	884	75	0.7	\N	2022-12-14 20:05:40.434974	2022-12-14 20:05:40.434974
955	955	884	76	0.03	\N	2022-12-14 20:05:40.441956	2022-12-14 20:05:40.441956
956	956	884	77	0.75	\N	2022-12-14 20:05:40.450436	2022-12-14 20:05:40.450436
957	957	884	78	0.07	\N	2022-12-14 20:05:40.456759	2022-12-14 20:05:40.456759
958	958	884	79	0.05	\N	2022-12-14 20:05:40.464089	2022-12-14 20:05:40.464089
959	959	884	80	0.1	\N	2022-12-14 20:05:40.471616	2022-12-14 20:05:40.471616
960	960	884	81	0.15	\N	2022-12-14 20:05:40.478936	2022-12-14 20:05:40.478936
961	961	884	82	0.8	\N	2022-12-14 20:05:40.486688	2022-12-14 20:05:40.486688
962	962	884	83	0.3	\N	2022-12-14 20:05:40.49483	2022-12-14 20:05:40.49483
963	963	884	84	0.8	\N	2022-12-14 20:05:40.503374	2022-12-14 20:05:40.503374
964	964	884	85	0.5	\N	2022-12-14 20:05:40.512635	2022-12-14 20:05:40.512635
965	965	884	86	0.4	\N	2022-12-14 20:05:40.519644	2022-12-14 20:05:40.519644
966	966	884	87	0.5	\N	2022-12-14 20:05:40.528084	2022-12-14 20:05:40.528084
967	967	884	88	0.2	\N	2022-12-14 20:05:40.538618	2022-12-14 20:05:40.538618
968	968	884	89	0.1	\N	2022-12-14 20:05:40.546119	2022-12-14 20:05:40.546119
969	969	884	90	0.1	\N	2022-12-14 20:05:40.552637	2022-12-14 20:05:40.552637
970	970	884	91	0.25	\N	2022-12-14 20:05:40.559341	2022-12-14 20:05:40.559341
971	971	884	92	0.02	\N	2022-12-14 20:05:40.565729	2022-12-14 20:05:40.565729
972	972	884	93	0.25	\N	2022-12-14 20:05:40.572896	2022-12-14 20:05:40.572896
973	973	884	94	0.2	\N	2022-12-14 20:05:40.580194	2022-12-14 20:05:40.580194
974	974	884	95	0.3	\N	2022-12-14 20:05:40.58772	2022-12-14 20:05:40.58772
975	975	884	96	1.5	\N	2022-12-14 20:05:40.594792	2022-12-14 20:05:40.594792
976	976	884	97	1.3	\N	2022-12-14 20:05:40.603053	2022-12-14 20:05:40.603053
977	977	884	98	1.0	\N	2022-12-14 20:05:40.612842	2022-12-14 20:05:40.612842
978	978	884	99	1.3	\N	2022-12-14 20:05:40.619767	2022-12-14 20:05:40.619767
979	979	884	100	0.15	\N	2022-12-14 20:05:40.626857	2022-12-14 20:05:40.626857
980	980	980	1	0.4	\N	2022-12-14 20:05:40.634151	2022-12-14 20:05:40.634151
981	981	980	2	0.7	\N	2022-12-14 20:05:40.64141	2022-12-14 20:05:40.64141
982	982	980	3	1.0	\N	2022-12-14 20:05:40.647794	2022-12-14 20:05:40.647794
983	983	980	4	0.3	\N	2022-12-14 20:05:40.653479	2022-12-14 20:05:40.653479
984	984	980	5	0.8	\N	2022-12-14 20:05:40.660521	2022-12-14 20:05:40.660521
985	985	980	6	0.3	\N	2022-12-14 20:05:40.667759	2022-12-14 20:05:40.667759
986	986	980	7	0.5	\N	2022-12-14 20:05:40.674506	2022-12-14 20:05:40.674506
987	987	980	8	0.6	\N	2022-12-14 20:05:40.681778	2022-12-14 20:05:40.681778
988	988	980	9	0.5	\N	2022-12-14 20:05:40.689399	2022-12-14 20:05:40.689399
989	989	980	10	2.0	\N	2022-12-14 20:05:40.696483	2022-12-14 20:05:40.696483
990	990	980	11	0.7	\N	2022-12-14 20:05:40.70758	2022-12-14 20:05:40.70758
991	991	980	12	0.0	10	2022-12-14 20:05:40.715561	2022-12-14 20:05:40.715561
992	992	980	13	0.5	\N	2022-12-14 20:05:40.722798	2022-12-14 20:05:40.722798
993	993	980	14	0.25	\N	2022-12-14 20:05:40.729952	2022-12-14 20:05:40.729952
994	994	980	15	0.1	\N	2022-12-14 20:05:40.73651	2022-12-14 20:05:40.73651
995	995	980	16	0.0	10	2022-12-14 20:05:40.746294	2022-12-14 20:05:40.746294
996	996	980	17	0.2	\N	2022-12-14 20:05:40.754995	2022-12-14 20:05:40.754995
997	997	980	18	0.2	\N	2022-12-14 20:05:40.762562	2022-12-14 20:05:40.762562
998	998	980	19	0.7	\N	2022-12-14 20:05:40.768635	2022-12-14 20:05:40.768635
999	999	980	20	0.2	\N	2022-12-14 20:05:40.777298	2022-12-14 20:05:40.777298
1000	1000	980	21	0.25	\N	2022-12-14 20:05:40.784109	2022-12-14 20:05:40.784109
1001	1001	980	22	0.15	\N	2022-12-14 20:05:40.791855	2022-12-14 20:05:40.791855
1002	1002	980	23	0.2	\N	2022-12-14 20:05:40.799307	2022-12-14 20:05:40.799307
1003	1003	980	24	0.15	\N	2022-12-14 20:05:40.806778	2022-12-14 20:05:40.806778
1004	1004	980	25	0.2	\N	2022-12-14 20:05:40.813903	2022-12-14 20:05:40.813903
1005	1005	980	26	0.2	\N	2022-12-14 20:05:40.821716	2022-12-14 20:05:40.821716
1006	1006	980	27	0.1	\N	2022-12-14 20:05:40.828801	2022-12-14 20:05:40.828801
1007	1007	980	28	0.25	\N	2022-12-14 20:05:40.836416	2022-12-14 20:05:40.836416
1008	1008	980	29	1.5	\N	2022-12-14 20:05:40.844013	2022-12-14 20:05:40.844013
1009	1009	980	30	1.2	\N	2022-12-14 20:05:40.850393	2022-12-14 20:05:40.850393
1010	1010	980	31	0.5	\N	2022-12-14 20:05:40.857326	2022-12-14 20:05:40.857326
1011	1011	980	32	0.8	\N	2022-12-14 20:05:40.864337	2022-12-14 20:05:40.864337
1012	1012	980	33	1.4	\N	2022-12-14 20:05:40.8717	2022-12-14 20:05:40.8717
1013	1013	980	34	0.3	\N	2022-12-14 20:05:40.879281	2022-12-14 20:05:40.879281
1014	1014	980	35	1.6	\N	2022-12-14 20:05:40.887425	2022-12-14 20:05:40.887425
1015	1015	980	36	0.5	\N	2022-12-14 20:05:40.89496	2022-12-14 20:05:40.89496
1016	1016	980	37	0.7	\N	2022-12-14 20:05:40.903013	2022-12-14 20:05:40.903013
1017	1017	980	38	0.8	\N	2022-12-14 20:05:40.910458	2022-12-14 20:05:40.910458
1018	1018	980	39	0.4	\N	2022-12-14 20:05:40.918355	2022-12-14 20:05:40.918355
1019	1019	980	40	0.4	\N	2022-12-14 20:05:40.925785	2022-12-14 20:05:40.925785
1020	1020	980	41	0.75	\N	2022-12-14 20:05:40.933533	2022-12-14 20:05:40.933533
1021	1021	980	42	0.06	\N	2022-12-14 20:05:40.94205	2022-12-14 20:05:40.94205
1022	1022	980	43	0.25	\N	2022-12-14 20:05:40.949373	2022-12-14 20:05:40.949373
1023	1023	980	44	0.6	\N	2022-12-14 20:05:40.957651	2022-12-14 20:05:40.957651
1024	1024	980	45	0.5	\N	2022-12-14 20:05:40.965172	2022-12-14 20:05:40.965172
1025	1025	980	46	0.25	\N	2022-12-14 20:05:40.973151	2022-12-14 20:05:40.973151
1026	1026	980	47	0.7	\N	2022-12-14 20:05:40.980202	2022-12-14 20:05:40.980202
1027	1027	980	48	0.5	\N	2022-12-14 20:05:40.988174	2022-12-14 20:05:40.988174
1028	1028	980	49	0.75	\N	2022-12-14 20:05:40.995371	2022-12-14 20:05:40.995371
1029	1029	980	50	0.5	\N	2022-12-14 20:05:41.001533	2022-12-14 20:05:41.001533
1030	1030	980	51	0.7	\N	2022-12-14 20:05:41.009387	2022-12-14 20:05:41.009387
1031	1031	980	52	1.2	\N	2022-12-14 20:05:41.016879	2022-12-14 20:05:41.016879
1032	1032	980	53	0.25	\N	2022-12-14 20:05:41.024525	2022-12-14 20:05:41.024525
1033	1033	980	54	0.6	\N	2022-12-14 20:05:41.031541	2022-12-14 20:05:41.031541
1034	1034	980	55	0.5	\N	2022-12-14 20:05:41.039186	2022-12-14 20:05:41.039186
1035	1035	980	56	0.7	\N	2022-12-14 20:05:41.046555	2022-12-14 20:05:41.046555
1036	1036	980	57	0.1	\N	2022-12-14 20:05:41.054972	2022-12-14 20:05:41.054972
1037	1037	980	58	0.0	15	2022-12-14 20:05:41.062321	2022-12-14 20:05:41.062321
1038	1038	980	59	0.75	\N	2022-12-14 20:05:41.069125	2022-12-14 20:05:41.069125
1039	1039	980	60	0.8	\N	2022-12-14 20:05:41.07615	2022-12-14 20:05:41.07615
1040	1040	980	61	0.4	\N	2022-12-14 20:05:41.084052	2022-12-14 20:05:41.084052
1041	1041	980	62	0.9	\N	2022-12-14 20:05:41.091919	2022-12-14 20:05:41.091919
1042	1042	980	63	0.4	\N	2022-12-14 20:05:41.111244	2022-12-14 20:05:41.111244
1043	1043	980	64	0.5	\N	2022-12-14 20:05:41.121092	2022-12-14 20:05:41.121092
1044	1044	980	65	0.2	\N	2022-12-14 20:05:41.128254	2022-12-14 20:05:41.128254
1045	1045	980	66	0.4	\N	2022-12-14 20:05:41.136314	2022-12-14 20:05:41.136314
1046	1046	980	67	0.3	\N	2022-12-14 20:05:41.143886	2022-12-14 20:05:41.143886
1047	1047	980	68	0.6	\N	2022-12-14 20:05:41.152285	2022-12-14 20:05:41.152285
1048	1048	980	69	0.15	\N	2022-12-14 20:05:41.160137	2022-12-14 20:05:41.160137
1049	1049	980	70	0.3	\N	2022-12-14 20:05:41.169151	2022-12-14 20:05:41.169151
1050	1050	980	71	0.2	\N	2022-12-14 20:05:41.177318	2022-12-14 20:05:41.177318
1051	1051	980	72	0.25	\N	2022-12-14 20:05:41.185105	2022-12-14 20:05:41.185105
1052	1052	980	73	0.5	\N	2022-12-14 20:05:41.192643	2022-12-14 20:05:41.192643
1053	1053	980	74	0.25	\N	2022-12-14 20:05:41.201233	2022-12-14 20:05:41.201233
1054	1054	980	75	0.75	\N	2022-12-14 20:05:41.22326	2022-12-14 20:05:41.22326
1055	1055	980	76	0.2	\N	2022-12-14 20:05:41.236514	2022-12-14 20:05:41.236514
1056	1056	980	77	0.0	15	2022-12-14 20:05:41.24672	2022-12-14 20:05:41.24672
1057	1057	980	78	0.15	\N	2022-12-14 20:05:41.257419	2022-12-14 20:05:41.257419
1058	1058	980	79	0.7	\N	2022-12-14 20:05:41.264841	2022-12-14 20:05:41.264841
1059	1059	980	80	0.75	\N	2022-12-14 20:05:41.272174	2022-12-14 20:05:41.272174
1060	1060	980	81	0.7	\N	2022-12-14 20:05:41.279474	2022-12-14 20:05:41.279474
1061	1061	980	82	0.0	20	2022-12-14 20:05:41.286701	2022-12-14 20:05:41.286701
1062	1062	980	83	1.9	\N	2022-12-14 20:05:41.294384	2022-12-14 20:05:41.294384
1063	1063	980	84	1.5	\N	2022-12-14 20:05:41.303227	2022-12-14 20:05:41.303227
1064	1064	980	85	0.0	15	2022-12-14 20:05:41.314611	2022-12-14 20:05:41.314611
1065	1065	980	86	1.0	\N	2022-12-14 20:05:41.323982	2022-12-14 20:05:41.323982
1066	1066	980	87	1.8	\N	2022-12-14 20:05:41.331712	2022-12-14 20:05:41.331712
1067	1067	980	88	0.3	\N	2022-12-14 20:05:41.339671	2022-12-14 20:05:41.339671
1068	1068	980	89	0.05	\N	2022-12-14 20:05:41.346463	2022-12-14 20:05:41.346463
1069	1069	980	90	0.04	\N	2022-12-14 20:05:41.353314	2022-12-14 20:05:41.353314
1070	1070	980	91	0.5	\N	2022-12-14 20:05:41.360912	2022-12-14 20:05:41.360912
1071	1071	980	92	0.5	\N	2022-12-14 20:05:41.368812	2022-12-14 20:05:41.368812
1072	1072	980	93	0.0	10	2022-12-14 20:05:41.376751	2022-12-14 20:05:41.376751
1073	1073	980	94	0.5	\N	2022-12-14 20:05:41.383129	2022-12-14 20:05:41.383129
1074	1074	980	95	0.0	10	2022-12-14 20:05:41.390937	2022-12-14 20:05:41.390937
1075	1075	980	96	0.2	\N	2022-12-14 20:05:41.397545	2022-12-14 20:05:41.397545
1076	1076	980	97	1.7	\N	2022-12-14 20:05:41.407082	2022-12-14 20:05:41.407082
1077	1077	980	98	1.2	\N	2022-12-14 20:05:41.414636	2022-12-14 20:05:41.414636
1078	1078	980	99	0.0	10	2022-12-14 20:05:41.422774	2022-12-14 20:05:41.422774
1079	1079	980	100	0.0	20	2022-12-14 20:05:41.429561	2022-12-14 20:05:41.429561
1080	1080	1080	1	0.4	\N	2022-12-14 20:05:41.436482	2022-12-14 20:05:41.436482
1081	1081	1080	2	0.5	\N	2022-12-14 20:05:41.444394	2022-12-14 20:05:41.444394
1082	1082	1080	3	0.04	\N	2022-12-14 20:05:41.451761	2022-12-14 20:05:41.451761
1083	1083	1080	4	0.5	\N	2022-12-14 20:05:41.45884	2022-12-14 20:05:41.45884
1084	1084	1080	5	0.75	\N	2022-12-14 20:05:41.465756	2022-12-14 20:05:41.465756
1085	1085	1080	6	0.7	\N	2022-12-14 20:05:41.474678	2022-12-14 20:05:41.474678
1086	1086	1080	7	0.75	\N	2022-12-14 20:05:41.482149	2022-12-14 20:05:41.482149
1087	1087	1080	8	1.0	\N	2022-12-14 20:05:41.490948	2022-12-14 20:05:41.490948
1088	1088	1080	9	0.4	\N	2022-12-14 20:05:41.497654	2022-12-14 20:05:41.497654
1089	1089	1080	10	0.6	\N	2022-12-14 20:05:41.50572	2022-12-14 20:05:41.50572
1090	1090	1080	11	0.5	\N	2022-12-14 20:05:41.512509	2022-12-14 20:05:41.512509
1091	1091	1080	12	0.1	\N	2022-12-14 20:05:41.520518	2022-12-14 20:05:41.520518
1092	1092	1080	13	0.4	\N	2022-12-14 20:05:41.528966	2022-12-14 20:05:41.528966
1093	1093	1080	14	0.75	\N	2022-12-14 20:05:41.537574	2022-12-14 20:05:41.537574
1094	1094	1080	15	1.2	\N	2022-12-14 20:05:41.545928	2022-12-14 20:05:41.545928
1095	1095	1080	16	0.05	\N	2022-12-14 20:05:41.55594	2022-12-14 20:05:41.55594
1096	1096	1080	17	1.4	\N	2022-12-14 20:05:41.563775	2022-12-14 20:05:41.563775
1097	1097	1080	18	2.0	\N	2022-12-14 20:05:41.571914	2022-12-14 20:05:41.571914
1098	1098	1080	19	0.5	\N	2022-12-14 20:05:41.579747	2022-12-14 20:05:41.579747
1099	1099	1080	20	0.0	20	2022-12-14 20:05:41.587067	2022-12-14 20:05:41.587067
1100	1100	1080	21	1.6	\N	2022-12-14 20:05:41.593552	2022-12-14 20:05:41.593552
1101	1101	1080	22	0.7	\N	2022-12-14 20:05:41.600337	2022-12-14 20:05:41.600337
1102	1102	1080	23	1.2	\N	2022-12-14 20:05:41.609148	2022-12-14 20:05:41.609148
1103	1103	1080	24	1.8	\N	2022-12-14 20:05:41.617568	2022-12-14 20:05:41.617568
1104	1104	1080	25	1.6	\N	2022-12-14 20:05:41.625073	2022-12-14 20:05:41.625073
1105	1105	1080	26	1.0	\N	2022-12-14 20:05:41.633214	2022-12-14 20:05:41.633214
1106	1106	1080	27	1.7	\N	2022-12-14 20:05:41.640719	2022-12-14 20:05:41.640719
1107	1107	1080	28	0.0	15	2022-12-14 20:05:41.64806	2022-12-14 20:05:41.64806
1108	1108	1080	29	0.5	\N	2022-12-14 20:05:41.655809	2022-12-14 20:05:41.655809
1109	1109	1080	30	0.0	40	2022-12-14 20:05:41.663992	2022-12-14 20:05:41.663992
1110	1110	1080	31	1.5	\N	2022-12-14 20:05:41.67205	2022-12-14 20:05:41.67205
1111	1111	1080	32	0.0	60	2022-12-14 20:05:41.679356	2022-12-14 20:05:41.679356
1112	1112	1080	33	0.5	\N	2022-12-14 20:05:41.688266	2022-12-14 20:05:41.688266
1113	1113	1080	34	1.2	\N	2022-12-14 20:05:41.697129	2022-12-14 20:05:41.697129
1114	1114	1080	35	0.3	\N	2022-12-14 20:05:41.705415	2022-12-14 20:05:41.705415
1115	1115	1080	36	0.8	\N	2022-12-14 20:05:41.713875	2022-12-14 20:05:41.713875
1116	1116	1080	37	0.6	\N	2022-12-14 20:05:41.721331	2022-12-14 20:05:41.721331
1117	1117	1080	38	0.6	\N	2022-12-14 20:05:41.731049	2022-12-14 20:05:41.731049
1118	1118	1080	39	0.6	\N	2022-12-14 20:05:41.741619	2022-12-14 20:05:41.741619
1119	1119	1080	40	0.0	40	2022-12-14 20:05:41.748887	2022-12-14 20:05:41.748887
1120	1120	1080	41	0.5	\N	2022-12-14 20:05:41.756466	2022-12-14 20:05:41.756466
1121	1121	1080	42	0.3	\N	2022-12-14 20:05:41.764118	2022-12-14 20:05:41.764118
1122	1122	1080	43	0.4	\N	2022-12-14 20:05:41.77249	2022-12-14 20:05:41.77249
1123	1123	1080	44	0.6	\N	2022-12-14 20:05:41.780618	2022-12-14 20:05:41.780618
1124	1124	1080	45	0.5	\N	2022-12-14 20:05:41.787865	2022-12-14 20:05:41.787865
1125	1125	1080	46	0.8	\N	2022-12-14 20:05:41.795385	2022-12-14 20:05:41.795385
1126	1126	1080	47	0.0	5	2022-12-14 20:05:41.802905	2022-12-14 20:05:41.802905
1127	1127	1080	48	0.1	\N	2022-12-14 20:05:41.810414	2022-12-14 20:05:41.810414
1128	1128	1080	49	0.8	\N	2022-12-14 20:05:41.81762	2022-12-14 20:05:41.81762
1129	1129	1080	50	0.5	\N	2022-12-14 20:05:41.825371	2022-12-14 20:05:41.825371
1130	1130	1080	51	0.3	\N	2022-12-14 20:05:41.833541	2022-12-14 20:05:41.833541
1131	1131	1080	52	0.8	\N	2022-12-14 20:05:41.841795	2022-12-14 20:05:41.841795
1132	1132	1080	53	0.02	\N	2022-12-14 20:05:41.849985	2022-12-14 20:05:41.849985
1133	1133	1080	54	0.3	\N	2022-12-14 20:05:41.858467	2022-12-14 20:05:41.858467
1134	1134	1080	55	0.5	\N	2022-12-14 20:05:41.866973	2022-12-14 20:05:41.866973
1135	1135	1080	56	0.06	\N	2022-12-14 20:05:41.875414	2022-12-14 20:05:41.875414
1136	1136	1080	57	0.5	\N	2022-12-14 20:05:41.882314	2022-12-14 20:05:41.882314
1137	1137	1080	58	0.3	\N	2022-12-14 20:05:41.889378	2022-12-14 20:05:41.889378
1138	1138	1080	59	0.2	\N	2022-12-14 20:05:41.896665	2022-12-14 20:05:41.896665
1139	1139	1080	60	0.5	\N	2022-12-14 20:05:41.90415	2022-12-14 20:05:41.90415
1140	1140	1080	61	0.7	\N	2022-12-14 20:05:41.911142	2022-12-14 20:05:41.911142
1141	1141	1080	62	0.7	\N	2022-12-14 20:05:41.917958	2022-12-14 20:05:41.917958
1142	1142	1080	63	0.5	\N	2022-12-14 20:05:41.924827	2022-12-14 20:05:41.924827
1143	1143	1080	64	0.4	\N	2022-12-14 20:05:41.932897	2022-12-14 20:05:41.932897
1144	1144	1080	65	0.8	\N	2022-12-14 20:05:41.940388	2022-12-14 20:05:41.940388
1145	1145	1080	66	0.75	\N	2022-12-14 20:05:41.94778	2022-12-14 20:05:41.94778
1146	1146	1080	67	0.6	\N	2022-12-14 20:05:41.955071	2022-12-14 20:05:41.955071
1147	1147	1080	68	1.0	\N	2022-12-14 20:05:41.963459	2022-12-14 20:05:41.963459
1148	1148	1080	69	0.75	\N	2022-12-14 20:05:41.975267	2022-12-14 20:05:41.975267
1149	1149	1080	70	0.7	\N	2022-12-14 20:05:41.989378	2022-12-14 20:05:41.989378
1150	1150	1080	71	0.75	\N	2022-12-14 20:05:42.0018	2022-12-14 20:05:42.0018
1151	1151	1080	72	0.25	\N	2022-12-14 20:05:42.015367	2022-12-14 20:05:42.015367
1152	1152	1080	73	0.6	\N	2022-12-14 20:05:42.02471	2022-12-14 20:05:42.02471
1153	1153	1080	74	0.6	\N	2022-12-14 20:05:42.033415	2022-12-14 20:05:42.033415
1154	1154	1080	75	0.9	\N	2022-12-14 20:05:42.041037	2022-12-14 20:05:42.041037
1155	1155	1080	76	0.05	\N	2022-12-14 20:05:42.048516	2022-12-14 20:05:42.048516
1156	1156	1080	77	0.25	\N	2022-12-14 20:05:42.055969	2022-12-14 20:05:42.055969
1157	1157	1080	78	0.7	\N	2022-12-14 20:05:42.0639	2022-12-14 20:05:42.0639
1158	1158	1080	79	0.6	\N	2022-12-14 20:05:42.070805	2022-12-14 20:05:42.070805
1159	1159	1080	80	0.4	\N	2022-12-14 20:05:42.077606	2022-12-14 20:05:42.077606
1160	1160	1080	81	0.3	\N	2022-12-14 20:05:42.084055	2022-12-14 20:05:42.084055
1161	1161	1080	82	0.1	\N	2022-12-14 20:05:42.091727	2022-12-14 20:05:42.091727
1162	1162	1080	83	0.05	\N	2022-12-14 20:05:42.100035	2022-12-14 20:05:42.100035
1163	1163	1080	84	0.8	\N	2022-12-14 20:05:42.106939	2022-12-14 20:05:42.106939
1164	1164	1080	85	0.4	\N	2022-12-14 20:05:42.114597	2022-12-14 20:05:42.114597
1165	1165	1080	86	0.25	\N	2022-12-14 20:05:42.121917	2022-12-14 20:05:42.121917
1166	1166	1080	87	0.25	\N	2022-12-14 20:05:42.12976	2022-12-14 20:05:42.12976
1167	1167	1080	88	0.15	\N	2022-12-14 20:05:42.138256	2022-12-14 20:05:42.138256
1168	1168	1080	89	0.3	\N	2022-12-14 20:05:42.146011	2022-12-14 20:05:42.146011
1169	1169	1080	90	0.5	\N	2022-12-14 20:05:42.153146	2022-12-14 20:05:42.153146
1170	1170	1080	91	1.3	\N	2022-12-14 20:05:42.16021	2022-12-14 20:05:42.16021
1171	1171	1080	92	0.07	\N	2022-12-14 20:05:42.167714	2022-12-14 20:05:42.167714
1172	1172	1080	93	0.6	\N	2022-12-14 20:05:42.175424	2022-12-14 20:05:42.175424
1173	1173	1080	94	0.0	20	2022-12-14 20:05:42.183037	2022-12-14 20:05:42.183037
1174	1174	1080	95	0.05	\N	2022-12-14 20:05:42.190064	2022-12-14 20:05:42.190064
1175	1175	1080	96	0.5	\N	2022-12-14 20:05:42.196893	2022-12-14 20:05:42.196893
1176	1176	1080	97	0.0	15	2022-12-14 20:05:42.20397	2022-12-14 20:05:42.20397
1177	1177	1080	98	1.5	\N	2022-12-14 20:05:42.210489	2022-12-14 20:05:42.210489
1178	1178	1080	99	0.0	25	2022-12-14 20:05:42.217393	2022-12-14 20:05:42.217393
1179	1179	1179	1	0.25	\N	2022-12-14 20:05:42.2286	2022-12-14 20:05:42.2286
1180	1180	1179	2	0.8	\N	2022-12-14 20:05:42.235455	2022-12-14 20:05:42.235455
1181	1181	1179	3	0.2	\N	2022-12-14 20:05:42.243514	2022-12-14 20:05:42.243514
1182	1182	1179	4	1.0	\N	2022-12-14 20:05:42.25103	2022-12-14 20:05:42.25103
1183	1183	1179	5	0.5	\N	2022-12-14 20:05:42.2587	2022-12-14 20:05:42.2587
1184	1184	1179	6	0.8	\N	2022-12-14 20:05:42.26542	2022-12-14 20:05:42.26542
1185	1185	1179	7	0.5	\N	2022-12-14 20:05:42.271639	2022-12-14 20:05:42.271639
1186	1186	1179	8	0.3	\N	2022-12-14 20:05:42.27855	2022-12-14 20:05:42.27855
1187	1187	1179	9	0.7	\N	2022-12-14 20:05:42.286587	2022-12-14 20:05:42.286587
1188	1188	1179	10	0.5	\N	2022-12-14 20:05:42.294813	2022-12-14 20:05:42.294813
1189	1189	1179	11	0.6	\N	2022-12-14 20:05:42.30174	2022-12-14 20:05:42.30174
1190	1190	1179	12	0.8	\N	2022-12-14 20:05:42.309049	2022-12-14 20:05:42.309049
1191	1191	1179	13	0.3	\N	2022-12-14 20:05:42.316356	2022-12-14 20:05:42.316356
1192	1192	1179	14	0.6	\N	2022-12-14 20:05:42.323812	2022-12-14 20:05:42.323812
1193	1193	1179	15	0.8	\N	2022-12-14 20:05:42.332043	2022-12-14 20:05:42.332043
1194	1194	1179	16	0.3	\N	2022-12-14 20:05:42.339722	2022-12-14 20:05:42.339722
1195	1195	1179	17	0.8	\N	2022-12-14 20:05:42.347157	2022-12-14 20:05:42.347157
1196	1196	1179	18	0.75	\N	2022-12-14 20:05:42.355077	2022-12-14 20:05:42.355077
1197	1197	1179	19	1.2	\N	2022-12-14 20:05:42.362616	2022-12-14 20:05:42.362616
1198	1198	1179	20	1.1	\N	2022-12-14 20:05:42.370191	2022-12-14 20:05:42.370191
1199	1199	1179	21	0.06	\N	2022-12-14 20:05:42.376936	2022-12-14 20:05:42.376936
1200	1200	1179	22	0.0	30	2022-12-14 20:05:42.384338	2022-12-14 20:05:42.384338
1201	1201	1179	23	0.04	\N	2022-12-14 20:05:42.390873	2022-12-14 20:05:42.390873
1202	1202	1179	24	0.0	3	2022-12-14 20:05:42.398447	2022-12-14 20:05:42.398447
1203	1203	1179	25	0.0	10	2022-12-14 20:05:42.404845	2022-12-14 20:05:42.404845
1204	1204	1179	26	0.15	\N	2022-12-14 20:05:42.410888	2022-12-14 20:05:42.410888
1205	1205	1179	27	0.05	\N	2022-12-14 20:05:42.41815	2022-12-14 20:05:42.41815
1206	1206	1179	28	0.0	5	2022-12-14 20:05:42.425342	2022-12-14 20:05:42.425342
1207	1207	1179	29	0.3	\N	2022-12-14 20:05:42.432048	2022-12-14 20:05:42.432048
1208	1208	1179	30	0.25	\N	2022-12-14 20:05:42.439022	2022-12-14 20:05:42.439022
1209	1209	1179	31	0.8	\N	2022-12-14 20:05:42.446525	2022-12-14 20:05:42.446525
1210	1210	1179	32	0.6	\N	2022-12-14 20:05:42.45407	2022-12-14 20:05:42.45407
1211	1211	1179	33	0.4	\N	2022-12-14 20:05:42.460762	2022-12-14 20:05:42.460762
1212	1212	1179	34	0.04	\N	2022-12-14 20:05:42.468511	2022-12-14 20:05:42.468511
1213	1213	1179	35	0.7	\N	2022-12-14 20:05:42.475894	2022-12-14 20:05:42.475894
1214	1214	1179	36	0.5	\N	2022-12-14 20:05:42.482815	2022-12-14 20:05:42.482815
1215	1215	1179	37	0.3	\N	2022-12-14 20:05:42.489331	2022-12-14 20:05:42.489331
1216	1216	1179	38	1.2	\N	2022-12-14 20:05:42.496586	2022-12-14 20:05:42.496586
1217	1217	1179	39	0.2	\N	2022-12-14 20:05:42.50312	2022-12-14 20:05:42.50312
1218	1218	1179	40	0.3	\N	2022-12-14 20:05:42.511562	2022-12-14 20:05:42.511562
1219	1219	1179	41	0.8	\N	2022-12-14 20:05:42.51883	2022-12-14 20:05:42.51883
1220	1220	1179	42	0.5	\N	2022-12-14 20:05:42.525883	2022-12-14 20:05:42.525883
1221	1221	1179	43	0.25	\N	2022-12-14 20:05:42.533602	2022-12-14 20:05:42.533602
1222	1222	1179	44	0.7	\N	2022-12-14 20:05:42.541119	2022-12-14 20:05:42.541119
1223	1223	1179	45	0.7	\N	2022-12-14 20:05:42.54991	2022-12-14 20:05:42.54991
1224	1224	1179	46	0.2	\N	2022-12-14 20:05:42.556964	2022-12-14 20:05:42.556964
1225	1225	1179	47	0.25	\N	2022-12-14 20:05:42.56404	2022-12-14 20:05:42.56404
1226	1226	1179	48	0.7	\N	2022-12-14 20:05:42.570895	2022-12-14 20:05:42.570895
1227	1227	1179	49	0.2	\N	2022-12-14 20:05:42.578262	2022-12-14 20:05:42.578262
1228	1228	1179	50	0.5	\N	2022-12-14 20:05:42.584603	2022-12-14 20:05:42.584603
1229	1229	1179	51	0.4	\N	2022-12-14 20:05:42.591813	2022-12-14 20:05:42.591813
1230	1230	1179	52	0.25	\N	2022-12-14 20:05:42.599037	2022-12-14 20:05:42.599037
1231	1231	1179	53	0.4	\N	2022-12-14 20:05:42.606105	2022-12-14 20:05:42.606105
1232	1232	1179	54	0.4	\N	2022-12-14 20:05:42.612355	2022-12-14 20:05:42.612355
1233	1233	1179	55	0.3	\N	2022-12-14 20:05:42.618732	2022-12-14 20:05:42.618732
1234	1234	1179	56	0.6	\N	2022-12-14 20:05:42.625876	2022-12-14 20:05:42.625876
1235	1235	1179	57	0.7	\N	2022-12-14 20:05:42.633781	2022-12-14 20:05:42.633781
1236	1236	1179	58	0.15	\N	2022-12-14 20:05:42.640978	2022-12-14 20:05:42.640978
1237	1237	1179	59	0.0	10	2022-12-14 20:05:42.648214	2022-12-14 20:05:42.648214
1238	1238	1179	60	0.2	\N	2022-12-14 20:05:42.655266	2022-12-14 20:05:42.655266
1239	1239	1179	61	0.0	15	2022-12-14 20:05:42.662597	2022-12-14 20:05:42.662597
1240	1240	1179	62	0.7	\N	2022-12-14 20:05:42.670439	2022-12-14 20:05:42.670439
1241	1241	1179	63	0.0	5	2022-12-14 20:05:42.677713	2022-12-14 20:05:42.677713
1242	1242	1179	64	0.7	\N	2022-12-14 20:05:42.686063	2022-12-14 20:05:42.686063
1243	1243	1179	65	1.4	\N	2022-12-14 20:05:42.693546	2022-12-14 20:05:42.693546
1244	1244	1179	66	0.8	\N	2022-12-14 20:05:42.701324	2022-12-14 20:05:42.701324
1245	1245	1179	67	0.0	5	2022-12-14 20:05:42.710183	2022-12-14 20:05:42.710183
1246	1246	1179	68	1.5	\N	2022-12-14 20:05:42.717503	2022-12-14 20:05:42.717503
1247	1247	1179	69	0.0	3	2022-12-14 20:05:42.725136	2022-12-14 20:05:42.725136
1248	1248	1179	70	0.0	4	2022-12-14 20:05:42.732367	2022-12-14 20:05:42.732367
1249	1249	1179	71	0.6	\N	2022-12-14 20:05:42.738568	2022-12-14 20:05:42.738568
1250	1250	1179	72	0.3	\N	2022-12-14 20:05:42.74629	2022-12-14 20:05:42.74629
1251	1251	1179	73	1.0	\N	2022-12-14 20:05:42.754534	2022-12-14 20:05:42.754534
1252	1252	1179	74	0.0	2	2022-12-14 20:05:42.764394	2022-12-14 20:05:42.764394
1253	1253	1179	76	0.0	5	2022-12-14 20:05:42.774229	2022-12-14 20:05:42.774229
1254	1254	1179	77	0.25	\N	2022-12-14 20:05:42.780845	2022-12-14 20:05:42.780845
1255	1255	1179	78	0.0	10	2022-12-14 20:05:42.788154	2022-12-14 20:05:42.788154
1256	1256	1179	79	0.3	\N	2022-12-14 20:05:42.794847	2022-12-14 20:05:42.794847
1257	1257	1179	80	0.75	\N	2022-12-14 20:05:42.802157	2022-12-14 20:05:42.802157
1258	1258	1179	81	0.3	\N	2022-12-14 20:05:42.80971	2022-12-14 20:05:42.80971
1259	1259	1179	82	0.7	\N	2022-12-14 20:05:42.818136	2022-12-14 20:05:42.818136
1260	1260	1179	83	0.25	\N	2022-12-14 20:05:42.825872	2022-12-14 20:05:42.825872
1261	1261	1179	85	0.0	15	2022-12-14 20:05:42.833065	2022-12-14 20:05:42.833065
1262	1262	1179	86	0.0	25	2022-12-14 20:05:42.841276	2022-12-14 20:05:42.841276
1263	1263	1179	87	0.75	\N	2022-12-14 20:05:42.848202	2022-12-14 20:05:42.848202
1264	1264	1179	88	0.5	\N	2022-12-14 20:05:42.855038	2022-12-14 20:05:42.855038
1265	1265	1179	89	0.15	\N	2022-12-14 20:05:42.861782	2022-12-14 20:05:42.861782
1266	1266	1179	90	0.8	\N	2022-12-14 20:05:42.868986	2022-12-14 20:05:42.868986
1267	1267	1179	91	0.6	\N	2022-12-14 20:05:42.875925	2022-12-14 20:05:42.875925
1268	1268	1179	92	0.0	5	2022-12-14 20:05:42.884355	2022-12-14 20:05:42.884355
1269	1269	1179	93	0.9	\N	2022-12-14 20:05:42.891732	2022-12-14 20:05:42.891732
1270	1270	1179	94	0.0	10	2022-12-14 20:05:42.898896	2022-12-14 20:05:42.898896
1271	1271	1179	96	1.8	\N	2022-12-14 20:05:42.906745	2022-12-14 20:05:42.906745
1272	1272	1179	97	1.5	\N	2022-12-14 20:05:42.914655	2022-12-14 20:05:42.914655
1273	1273	1179	98	1.2	\N	2022-12-14 20:05:42.923086	2022-12-14 20:05:42.923086
1274	1274	1179	99	1.0	\N	2022-12-14 20:05:42.930428	2022-12-14 20:05:42.930428
1275	1275	1179	100	1.7	\N	2022-12-14 20:05:42.93836	2022-12-14 20:05:42.93836
1276	1276	1276	1	0.5	\N	2022-12-14 20:05:42.945298	2022-12-14 20:05:42.945298
1277	1277	1276	2	0.5	\N	2022-12-14 20:05:42.953129	2022-12-14 20:05:42.953129
1278	1278	1276	3	0.7	\N	2022-12-14 20:05:42.9608	2022-12-14 20:05:42.9608
1279	1279	1276	5	0.75	\N	2022-12-14 20:05:42.968393	2022-12-14 20:05:42.968393
1280	1280	1276	7	0.7	\N	2022-12-14 20:05:42.97594	2022-12-14 20:05:42.97594
1281	1281	1276	8	0.05	\N	2022-12-14 20:05:42.983681	2022-12-14 20:05:42.983681
1282	1282	1276	9	1.5	\N	2022-12-14 20:05:42.991502	2022-12-14 20:05:42.991502
1283	1283	1276	10	1.5	\N	2022-12-14 20:05:42.998197	2022-12-14 20:05:42.998197
1284	1284	1276	11	0.02	\N	2022-12-14 20:05:43.006905	2022-12-14 20:05:43.006905
1285	1285	1276	12	0.5	\N	2022-12-14 20:05:43.014845	2022-12-14 20:05:43.014845
1286	1286	1276	13	1.6	\N	2022-12-14 20:05:43.022862	2022-12-14 20:05:43.022862
1287	1287	1276	14	0.5	\N	2022-12-14 20:05:43.030498	2022-12-14 20:05:43.030498
1288	1288	1276	15	0.6	\N	2022-12-14 20:05:43.03918	2022-12-14 20:05:43.03918
1289	1289	1276	16	0.5	\N	2022-12-14 20:05:43.046691	2022-12-14 20:05:43.046691
1290	1290	1276	17	1.0	\N	2022-12-14 20:05:43.054455	2022-12-14 20:05:43.054455
1291	1291	1276	18	0.3	\N	2022-12-14 20:05:43.06201	2022-12-14 20:05:43.06201
1292	1292	1276	19	0.5	\N	2022-12-14 20:05:43.069096	2022-12-14 20:05:43.069096
1293	1293	1276	20	0.6	\N	2022-12-14 20:05:43.076884	2022-12-14 20:05:43.076884
1294	1294	1276	21	0.5	\N	2022-12-14 20:05:43.085061	2022-12-14 20:05:43.085061
1295	1295	1276	22	0.0	5	2022-12-14 20:05:43.092574	2022-12-14 20:05:43.092574
1296	1296	1276	23	0.5	\N	2022-12-14 20:05:43.099788	2022-12-14 20:05:43.099788
1297	1297	1276	24	0.3	\N	2022-12-14 20:05:43.10773	2022-12-14 20:05:43.10773
1298	1298	1276	25	0.75	\N	2022-12-14 20:05:43.115219	2022-12-14 20:05:43.115219
1299	1299	1276	26	0.75	\N	2022-12-14 20:05:43.123839	2022-12-14 20:05:43.123839
1300	1300	1276	27	0.4	\N	2022-12-14 20:05:43.130623	2022-12-14 20:05:43.130623
1301	1301	1276	28	0.0	40	2022-12-14 20:05:43.138287	2022-12-14 20:05:43.138287
1302	1302	1276	29	0.25	\N	2022-12-14 20:05:43.145139	2022-12-14 20:05:43.145139
1303	1303	1276	30	0.25	\N	2022-12-14 20:05:43.152664	2022-12-14 20:05:43.152664
1304	1304	1276	31	0.05	\N	2022-12-14 20:05:43.161139	2022-12-14 20:05:43.161139
1305	1305	1276	32	0.5	\N	2022-12-14 20:05:43.168617	2022-12-14 20:05:43.168617
1306	1306	1276	33	0.1	\N	2022-12-14 20:05:43.178603	2022-12-14 20:05:43.178603
1307	1307	1276	34	0.05	\N	2022-12-14 20:05:43.189185	2022-12-14 20:05:43.189185
1308	1308	1276	35	0.4	\N	2022-12-14 20:05:43.203862	2022-12-14 20:05:43.203862
1309	1309	1276	36	0.2	\N	2022-12-14 20:05:43.21836	2022-12-14 20:05:43.21836
1310	1310	1276	37	0.02	\N	2022-12-14 20:05:43.231611	2022-12-14 20:05:43.231611
1311	1311	1276	38	0.5	\N	2022-12-14 20:05:43.24551	2022-12-14 20:05:43.24551
1312	1312	1276	39	0.5	\N	2022-12-14 20:05:43.291168	2022-12-14 20:05:43.291168
1313	1313	1276	40	0.7	\N	2022-12-14 20:05:43.308938	2022-12-14 20:05:43.308938
1314	1314	1276	41	0.25	\N	2022-12-14 20:05:43.32386	2022-12-14 20:05:43.32386
1315	1315	1276	42	0.3	\N	2022-12-14 20:05:43.338365	2022-12-14 20:05:43.338365
1316	1316	1276	43	0.5	\N	2022-12-14 20:05:43.35311	2022-12-14 20:05:43.35311
1317	1317	1276	44	1.0	\N	2022-12-14 20:05:43.371914	2022-12-14 20:05:43.371914
1318	1318	1276	45	0.75	\N	2022-12-14 20:05:43.391717	2022-12-14 20:05:43.391717
1319	1319	1276	46	0.5	\N	2022-12-14 20:05:43.41093	2022-12-14 20:05:43.41093
1320	1320	1276	47	0.2	\N	2022-12-14 20:05:43.428312	2022-12-14 20:05:43.428312
1321	1321	1276	48	0.2	\N	2022-12-14 20:05:43.446113	2022-12-14 20:05:43.446113
1322	1322	1276	49	0.7	\N	2022-12-14 20:05:43.463282	2022-12-14 20:05:43.463282
1323	1323	1276	50	0.7	\N	2022-12-14 20:05:43.481219	2022-12-14 20:05:43.481219
1324	1324	1276	51	0.25	\N	2022-12-14 20:05:43.497967	2022-12-14 20:05:43.497967
1325	1325	1276	52	0.4	\N	2022-12-14 20:05:43.514072	2022-12-14 20:05:43.514072
1326	1326	1276	53	0.4	\N	2022-12-14 20:05:43.529159	2022-12-14 20:05:43.529159
1327	1327	1276	54	0.5	\N	2022-12-14 20:05:43.544034	2022-12-14 20:05:43.544034
1328	1328	1276	55	0.4	\N	2022-12-14 20:05:43.560985	2022-12-14 20:05:43.560985
1329	1329	1276	56	0.5	\N	2022-12-14 20:05:43.576848	2022-12-14 20:05:43.576848
1330	1330	1276	57	0.7	\N	2022-12-14 20:05:43.591991	2022-12-14 20:05:43.591991
1331	1331	1276	58	0.0	6	2022-12-14 20:05:43.607836	2022-12-14 20:05:43.607836
1332	1332	1276	59	0.4	\N	2022-12-14 20:05:43.620556	2022-12-14 20:05:43.620556
1333	1333	1276	60	0.3	\N	2022-12-14 20:05:43.629805	2022-12-14 20:05:43.629805
1334	1334	1276	61	0.05	\N	2022-12-14 20:05:43.638362	2022-12-14 20:05:43.638362
1335	1335	1276	62	0.04	\N	2022-12-14 20:05:43.646363	2022-12-14 20:05:43.646363
1336	1336	1276	63	0.5	\N	2022-12-14 20:05:43.655179	2022-12-14 20:05:43.655179
1337	1337	1276	64	0.6	\N	2022-12-14 20:05:43.663423	2022-12-14 20:05:43.663423
1338	1338	1276	65	0.7	\N	2022-12-14 20:05:43.678918	2022-12-14 20:05:43.678918
1339	1339	1276	66	0.25	\N	2022-12-14 20:05:43.691426	2022-12-14 20:05:43.691426
1340	1340	1276	67	0.5	\N	2022-12-14 20:05:43.702175	2022-12-14 20:05:43.702175
1341	1341	1276	68	0.06	\N	2022-12-14 20:05:43.709999	2022-12-14 20:05:43.709999
1342	1342	1276	69	0.2	\N	2022-12-14 20:05:43.717173	2022-12-14 20:05:43.717173
1343	1343	1276	70	0.25	\N	2022-12-14 20:05:43.725824	2022-12-14 20:05:43.725824
1344	1344	1276	71	0.5	\N	2022-12-14 20:05:43.733275	2022-12-14 20:05:43.733275
1345	1345	1276	72	0.6	\N	2022-12-14 20:05:43.745169	2022-12-14 20:05:43.745169
1346	1346	1276	73	0.3	\N	2022-12-14 20:05:43.755563	2022-12-14 20:05:43.755563
1347	1338	1276	74	0.9	\N	2022-12-14 20:05:43.762403	2022-12-14 20:05:43.762403
1348	1348	1276	75	0.5	\N	2022-12-14 20:05:43.769591	2022-12-14 20:05:43.769591
1349	1349	1276	76	0.5	\N	2022-12-14 20:05:43.78298	2022-12-14 20:05:43.78298
1350	1350	1276	77	0.5	\N	2022-12-14 20:05:43.791152	2022-12-14 20:05:43.791152
1351	1351	1276	78	0.75	\N	2022-12-14 20:05:43.798179	2022-12-14 20:05:43.798179
1352	1352	1276	79	0.2	\N	2022-12-14 20:05:43.805954	2022-12-14 20:05:43.805954
1353	1353	1276	80	0.25	\N	2022-12-14 20:05:43.813551	2022-12-14 20:05:43.813551
1354	1354	1276	81	0.3	\N	2022-12-14 20:05:43.821648	2022-12-14 20:05:43.821648
1355	1355	1276	82	0.5	\N	2022-12-14 20:05:43.82903	2022-12-14 20:05:43.82903
1356	1356	1276	83	0.7	\N	2022-12-14 20:05:43.836243	2022-12-14 20:05:43.836243
1357	1357	1276	84	0.25	\N	2022-12-14 20:05:43.843948	2022-12-14 20:05:43.843948
1358	1358	1276	85	0.04	\N	2022-12-14 20:05:43.851042	2022-12-14 20:05:43.851042
1359	1359	1276	86	0.15	\N	2022-12-14 20:05:43.858491	2022-12-14 20:05:43.858491
1360	1360	1276	87	0.2	\N	2022-12-14 20:05:43.867444	2022-12-14 20:05:43.867444
1361	1361	1276	88	0.4	\N	2022-12-14 20:05:43.87453	2022-12-14 20:05:43.87453
1362	1362	1276	89	0.8	\N	2022-12-14 20:05:43.885092	2022-12-14 20:05:43.885092
1363	1363	1276	90	1.9	\N	2022-12-14 20:05:43.898086	2022-12-14 20:05:43.898086
1364	1364	1276	91	0.02	\N	2022-12-14 20:05:43.908819	2022-12-14 20:05:43.908819
1365	1365	1276	92	0.15	\N	2022-12-14 20:05:43.915622	2022-12-14 20:05:43.915622
1366	1366	1276	93	0.4	\N	2022-12-14 20:05:43.921822	2022-12-14 20:05:43.921822
1367	1367	1276	94	0.5	\N	2022-12-14 20:05:43.928461	2022-12-14 20:05:43.928461
1368	1368	1276	95	0.5	\N	2022-12-14 20:05:43.935034	2022-12-14 20:05:43.935034
1369	1369	1276	96	0.1	\N	2022-12-14 20:05:43.942128	2022-12-14 20:05:43.942128
1370	1370	1276	97	0.6	\N	2022-12-14 20:05:43.948322	2022-12-14 20:05:43.948322
1371	1371	1276	98	1.2	\N	2022-12-14 20:05:43.956289	2022-12-14 20:05:43.956289
1372	1372	1276	99	0.8	\N	2022-12-14 20:05:43.964051	2022-12-14 20:05:43.964051
1373	1373	1276	100	0.5	\N	2022-12-14 20:05:43.971714	2022-12-14 20:05:43.971714
1374	1374	1374	2	0.3	\N	2022-12-14 20:05:43.979839	2022-12-14 20:05:43.979839
1375	1375	1374	8	0.05	\N	2022-12-14 20:05:43.987597	2022-12-14 20:05:43.987597
1376	1376	1374	10	0.1	\N	2022-12-14 20:05:43.995381	2022-12-14 20:05:43.995381
1377	1377	1374	11	1.2	\N	2022-12-14 20:05:44.003776	2022-12-14 20:05:44.003776
1378	1378	1374	12	0.7	\N	2022-12-14 20:05:44.01074	2022-12-14 20:05:44.01074
1379	1379	1374	13	0.06	\N	2022-12-14 20:05:44.01811	2022-12-14 20:05:44.01811
1380	1380	1374	14	0.25	\N	2022-12-14 20:05:44.025571	2022-12-14 20:05:44.025571
1381	1381	1374	15	0.2	\N	2022-12-14 20:05:44.03221	2022-12-14 20:05:44.03221
1382	1382	1374	16	0.25	\N	2022-12-14 20:05:44.039837	2022-12-14 20:05:44.039837
1383	1383	1374	17	0.25	\N	2022-12-14 20:05:44.046549	2022-12-14 20:05:44.046549
1384	1384	1374	18	0.5	\N	2022-12-14 20:05:44.053151	2022-12-14 20:05:44.053151
1385	1385	1374	19	0.25	\N	2022-12-14 20:05:44.0597	2022-12-14 20:05:44.0597
1386	1386	1374	21	0.2	\N	2022-12-14 20:05:44.067238	2022-12-14 20:05:44.067238
1387	1378	1374	22	0.5	\N	2022-12-14 20:05:44.074385	2022-12-14 20:05:44.074385
1388	1388	1374	24	0.6	\N	2022-12-14 20:05:44.081724	2022-12-14 20:05:44.081724
1389	1389	1374	25	1.0	\N	2022-12-14 20:05:44.088999	2022-12-14 20:05:44.088999
1390	1390	1374	26	0.75	\N	2022-12-14 20:05:44.096046	2022-12-14 20:05:44.096046
1391	1391	1374	42	0.0	5	2022-12-14 20:05:44.103475	2022-12-14 20:05:44.103475
1392	1392	1374	43	0.0	2	2022-12-14 20:05:44.11077	2022-12-14 20:05:44.11077
1393	1393	1374	44	0.0	5	2022-12-14 20:05:44.118777	2022-12-14 20:05:44.118777
1394	1394	1374	45	0.0	1	2022-12-14 20:05:44.125936	2022-12-14 20:05:44.125936
1395	1395	1374	46	0.0	5	2022-12-14 20:05:44.132419	2022-12-14 20:05:44.132419
1396	1396	1374	47	0.0	15	2022-12-14 20:05:44.139409	2022-12-14 20:05:44.139409
1397	1397	1374	48	0.0	40	2022-12-14 20:05:44.145943	2022-12-14 20:05:44.145943
1398	1398	1374	49	0.0	5	2022-12-14 20:05:44.151427	2022-12-14 20:05:44.151427
1399	1399	1374	61	0.0	20	2022-12-14 20:05:44.158912	2022-12-14 20:05:44.158912
1400	1400	1374	62	0.0	8	2022-12-14 20:05:44.165583	2022-12-14 20:05:44.165583
1401	1401	1401	1	0.5	\N	2022-12-14 20:05:44.17265	2022-12-14 20:05:44.17265
1402	885	1401	2	0.25	\N	2022-12-14 20:05:44.180308	2022-12-14 20:05:44.180308
1403	888	1401	3	0.5	\N	2022-12-14 20:05:44.188164	2022-12-14 20:05:44.188164
1404	889	1401	4	0.6	\N	2022-12-14 20:05:44.19646	2022-12-14 20:05:44.19646
1405	892	1401	5	0.5	\N	2022-12-14 20:05:44.203477	2022-12-14 20:05:44.203477
1406	1406	1401	6	0.25	\N	2022-12-14 20:05:44.211193	2022-12-14 20:05:44.211193
1407	1407	1401	7	1.6	\N	2022-12-14 20:05:44.218534	2022-12-14 20:05:44.218534
1408	1408	1401	8	0.5	\N	2022-12-14 20:05:44.227072	2022-12-14 20:05:44.227072
1409	1409	1401	9	0.25	\N	2022-12-14 20:05:44.234443	2022-12-14 20:05:44.234443
1410	902	1401	10	0.2	\N	2022-12-14 20:05:44.242367	2022-12-14 20:05:44.242367
1411	910	1401	11	0.25	\N	2022-12-14 20:05:44.24951	2022-12-14 20:05:44.24951
1412	1412	1401	12	0.25	\N	2022-12-14 20:05:44.257161	2022-12-14 20:05:44.257161
1413	1413	1401	13	1.4	\N	2022-12-14 20:05:44.264696	2022-12-14 20:05:44.264696
1414	915	1401	14	0.5	\N	2022-12-14 20:05:44.271952	2022-12-14 20:05:44.271952
1415	1415	1401	15	0.3	\N	2022-12-14 20:05:44.279662	2022-12-14 20:05:44.279662
1416	918	1401	16	0.06	\N	2022-12-14 20:05:44.287133	2022-12-14 20:05:44.287133
1417	1417	1401	18	0.4	\N	2022-12-14 20:05:44.294414	2022-12-14 20:05:44.294414
1418	1418	1401	19	0.6	\N	2022-12-14 20:05:44.30225	2022-12-14 20:05:44.30225
1419	928	1401	20	0.5	\N	2022-12-14 20:05:44.309151	2022-12-14 20:05:44.309151
1420	1420	1401	21	0.2	\N	2022-12-14 20:05:44.315865	2022-12-14 20:05:44.315865
1421	950	1401	22	0.15	\N	2022-12-14 20:05:44.323617	2022-12-14 20:05:44.323617
1422	1422	1401	23	0.7	\N	2022-12-14 20:05:44.33148	2022-12-14 20:05:44.33148
1423	962	1401	24	0.25	\N	2022-12-14 20:05:44.338545	2022-12-14 20:05:44.338545
1424	964	1401	25	0.4	\N	2022-12-14 20:05:44.346217	2022-12-14 20:05:44.346217
1425	970	1401	26	0.1	\N	2022-12-14 20:05:44.353849	2022-12-14 20:05:44.353849
1426	1426	1401	27	0.3	\N	2022-12-14 20:05:44.360857	2022-12-14 20:05:44.360857
1427	987	1401	28	0.1	\N	2022-12-14 20:05:44.368144	2022-12-14 20:05:44.368144
1428	979	1401	29	0.5	\N	2022-12-14 20:05:44.375203	2022-12-14 20:05:44.375203
1429	980	1401	30	0.6	\N	2022-12-14 20:05:44.383118	2022-12-14 20:05:44.383118
1430	981	1401	31	0.9	\N	2022-12-14 20:05:44.390423	2022-12-14 20:05:44.390423
1431	1431	1401	32	0.06	\N	2022-12-14 20:05:44.398441	2022-12-14 20:05:44.398441
1432	997	1401	33	0.06	\N	2022-12-14 20:05:44.405896	2022-12-14 20:05:44.405896
1433	1433	1401	34	1.7	\N	2022-12-14 20:05:44.413816	2022-12-14 20:05:44.413816
1434	1434	1401	35	1.8	\N	2022-12-14 20:05:44.420889	2022-12-14 20:05:44.420889
1435	1435	1401	36	0.8	\N	2022-12-14 20:05:44.428132	2022-12-14 20:05:44.428132
1436	1436	1401	37	1.0	\N	2022-12-14 20:05:44.434565	2022-12-14 20:05:44.434565
1437	1005	1401	38	0.5	\N	2022-12-14 20:05:44.443054	2022-12-14 20:05:44.443054
1438	1010	1401	39	0.5	\N	2022-12-14 20:05:44.449723	2022-12-14 20:05:44.449723
1439	1439	1401	40	0.8	\N	2022-12-14 20:05:44.456859	2022-12-14 20:05:44.456859
1440	1013	1401	41	0.7	\N	2022-12-14 20:05:44.465501	2022-12-14 20:05:44.465501
1441	1015	1401	42	0.7	\N	2022-12-14 20:05:44.47193	2022-12-14 20:05:44.47193
1442	1043	1401	43	0.4	\N	2022-12-14 20:05:44.479396	2022-12-14 20:05:44.479396
1443	1052	1401	44	0.06	\N	2022-12-14 20:05:44.485782	2022-12-14 20:05:44.485782
1444	1044	1401	45	0.25	\N	2022-12-14 20:05:44.492673	2022-12-14 20:05:44.492673
1445	1046	1401	46	0.5	\N	2022-12-14 20:05:44.500003	2022-12-14 20:05:44.500003
1446	1047	1401	47	1.2	\N	2022-12-14 20:05:44.507746	2022-12-14 20:05:44.507746
1447	1447	1401	48	0.7	\N	2022-12-14 20:05:44.51495	2022-12-14 20:05:44.51495
1448	1050	1401	49	0.7	\N	2022-12-14 20:05:44.522972	2022-12-14 20:05:44.522972
1449	1058	1401	50	0.6	\N	2022-12-14 20:05:44.530323	2022-12-14 20:05:44.530323
1450	1060	1401	51	0.5	\N	2022-12-14 20:05:44.537458	2022-12-14 20:05:44.537458
1451	1451	1401	52	0.7	\N	2022-12-14 20:05:44.544297	2022-12-14 20:05:44.544297
1452	1118	1401	53	0.25	\N	2022-12-14 20:05:44.552235	2022-12-14 20:05:44.552235
1453	1453	1401	54	1.6	\N	2022-12-14 20:05:44.559706	2022-12-14 20:05:44.559706
1454	1143	1401	55	0.6	\N	2022-12-14 20:05:44.566862	2022-12-14 20:05:44.566862
1455	1144	1401	56	0.6	\N	2022-12-14 20:05:44.5742	2022-12-14 20:05:44.5742
1456	1456	1401	57	1.8	\N	2022-12-14 20:05:44.581764	2022-12-14 20:05:44.581764
1457	1146	1401	58	0.4	\N	2022-12-14 20:05:44.589063	2022-12-14 20:05:44.589063
1458	1458	1401	59	1.8	\N	2022-12-14 20:05:44.59559	2022-12-14 20:05:44.59559
1459	1154	1401	60	0.15	\N	2022-12-14 20:05:44.604762	2022-12-14 20:05:44.604762
1460	1460	1401	61	0.25	\N	2022-12-14 20:05:44.611995	2022-12-14 20:05:44.611995
1461	1461	1401	62	1.0	\N	2022-12-14 20:05:44.619329	2022-12-14 20:05:44.619329
1462	1462	1401	63	0.4	\N	2022-12-14 20:05:44.626735	2022-12-14 20:05:44.626735
1463	1194	1401	64	0.5	\N	2022-12-14 20:05:44.634684	2022-12-14 20:05:44.634684
1464	1464	1401	65	0.7	\N	2022-12-14 20:05:44.642268	2022-12-14 20:05:44.642268
1465	1465	1401	66	0.25	\N	2022-12-14 20:05:44.649677	2022-12-14 20:05:44.649677
1466	1466	1401	67	0.06	\N	2022-12-14 20:05:44.657463	2022-12-14 20:05:44.657463
1467	1220	1401	68	0.15	\N	2022-12-14 20:05:44.665059	2022-12-14 20:05:44.665059
1468	1221	1401	69	0.4	\N	2022-12-14 20:05:44.671875	2022-12-14 20:05:44.671875
1469	1469	1401	70	0.3	\N	2022-12-14 20:05:44.678669	2022-12-14 20:05:44.678669
1470	1470	1401	72	1.2	\N	2022-12-14 20:05:44.685534	2022-12-14 20:05:44.685534
1471	1471	1401	73	1.0	\N	2022-12-14 20:05:44.693041	2022-12-14 20:05:44.693041
1472	1274	1401	74	1.2	\N	2022-12-14 20:05:44.699648	2022-12-14 20:05:44.699648
1473	1473	1401	75	0.3	\N	2022-12-14 20:05:44.709167	2022-12-14 20:05:44.709167
1474	1474	1401	76	0.2	\N	2022-12-14 20:05:44.716968	2022-12-14 20:05:44.716968
1475	1279	1401	77	0.7	\N	2022-12-14 20:05:44.724756	2022-12-14 20:05:44.724756
1476	1286	1401	78	0.3	\N	2022-12-14 20:05:44.733829	2022-12-14 20:05:44.733829
1477	1477	1401	79	0.05	\N	2022-12-14 20:05:44.743333	2022-12-14 20:05:44.743333
1478	1478	1401	80	0.8	\N	2022-12-14 20:05:44.750423	2022-12-14 20:05:44.750423
1479	1308	1401	81	0.5	\N	2022-12-14 20:05:44.757691	2022-12-14 20:05:44.757691
1480	1311	1401	82	0.25	\N	2022-12-14 20:05:44.76709	2022-12-14 20:05:44.76709
1481	1327	1401	83	0.5	\N	2022-12-14 20:05:44.774929	2022-12-14 20:05:44.774929
1482	1329	1401	84	0.4	\N	2022-12-14 20:05:44.781974	2022-12-14 20:05:44.781974
1483	1483	1401	85	0.2	\N	2022-12-14 20:05:44.791195	2022-12-14 20:05:44.791195
1484	1484	1401	86	0.25	\N	2022-12-14 20:05:44.798361	2022-12-14 20:05:44.798361
1485	1341	1401	87	0.6	\N	2022-12-14 20:05:44.805919	2022-12-14 20:05:44.805919
1486	1486	1401	88	0.3	\N	2022-12-14 20:05:44.812632	2022-12-14 20:05:44.812632
1487	1487	1401	89	0.75	\N	2022-12-14 20:05:44.820005	2022-12-14 20:05:44.820005
1488	1346	1401	90	0.8	\N	2022-12-14 20:05:44.827007	2022-12-14 20:05:44.827007
1489	1489	1401	91	0.2	\N	2022-12-14 20:05:44.834253	2022-12-14 20:05:44.834253
1490	1490	1401	92	0.6	\N	2022-12-14 20:05:44.841591	2022-12-14 20:05:44.841591
1491	1366	1401	93	0.75	\N	2022-12-14 20:05:44.848637	2022-12-14 20:05:44.848637
1492	1492	1401	94	0.3	\N	2022-12-14 20:05:44.855179	2022-12-14 20:05:44.855179
1493	1493	1401	95	0.4	\N	2022-12-14 20:05:44.861362	2022-12-14 20:05:44.861362
1494	1494	1401	97	0.25	\N	2022-12-14 20:05:44.868494	2022-12-14 20:05:44.868494
1495	1495	1495	1	0.5	\N	2022-12-14 20:05:44.875789	2022-12-14 20:05:44.875789
1496	1496	1495	2	0.1	\N	2022-12-14 20:05:44.883078	2022-12-14 20:05:44.883078
1497	1497	1495	4	0.2	\N	2022-12-14 20:05:44.891302	2022-12-14 20:05:44.891302
1498	1426	1495	5	0.5	\N	2022-12-14 20:05:44.898803	2022-12-14 20:05:44.898803
1499	1499	1495	6	0.3	\N	2022-12-14 20:05:44.906465	2022-12-14 20:05:44.906465
1500	1500	1495	7	0.25	\N	2022-12-14 20:05:44.913319	2022-12-14 20:05:44.913319
1501	1501	1495	8	0.05	\N	2022-12-14 20:05:44.920167	2022-12-14 20:05:44.920167
1502	1502	1495	9	0.05	\N	2022-12-14 20:05:44.928066	2022-12-14 20:05:44.928066
1503	1503	1495	10	0.3	\N	2022-12-14 20:05:44.934514	2022-12-14 20:05:44.934514
1504	1003	1495	11	0.2	\N	2022-12-14 20:05:44.941624	2022-12-14 20:05:44.941624
1505	1505	1495	12	0.75	\N	2022-12-14 20:05:44.949573	2022-12-14 20:05:44.949573
1506	1506	1495	13	0.05	\N	2022-12-14 20:05:44.957217	2022-12-14 20:05:44.957217
1507	1507	1495	14	0.1	\N	2022-12-14 20:05:44.965272	2022-12-14 20:05:44.965272
1508	1508	1495	15	0.2	\N	2022-12-14 20:05:44.973756	2022-12-14 20:05:44.973756
1509	1509	1495	16	0.2	\N	2022-12-14 20:05:44.98086	2022-12-14 20:05:44.98086
1510	1510	1495	17	0.04	\N	2022-12-14 20:05:44.989622	2022-12-14 20:05:44.989622
1511	1511	1495	18	0.5	\N	2022-12-14 20:05:44.9969	2022-12-14 20:05:44.9969
1512	1512	1495	19	0.15	\N	2022-12-14 20:05:45.00447	2022-12-14 20:05:45.00447
1513	1513	1495	20	0.25	\N	2022-12-14 20:05:45.010831	2022-12-14 20:05:45.010831
1514	1514	1495	21	0.03	\N	2022-12-14 20:05:45.01828	2022-12-14 20:05:45.01828
1515	1515	1495	22	0.03	\N	2022-12-14 20:05:45.025938	2022-12-14 20:05:45.025938
1516	1516	1495	23	0.03	\N	2022-12-14 20:05:45.033399	2022-12-14 20:05:45.033399
1517	1517	1495	24	0.4	\N	2022-12-14 20:05:45.040784	2022-12-14 20:05:45.040784
1518	1518	1495	25	0.5	\N	2022-12-14 20:05:45.048011	2022-12-14 20:05:45.048011
1519	1519	1495	26	0.4	\N	2022-12-14 20:05:45.055324	2022-12-14 20:05:45.055324
1520	1520	1495	27	0.02	\N	2022-12-14 20:05:45.062201	2022-12-14 20:05:45.062201
1521	1521	1495	28	1.7	\N	2022-12-14 20:05:45.069681	2022-12-14 20:05:45.069681
1522	1522	1495	29	0.5	\N	2022-12-14 20:05:45.077575	2022-12-14 20:05:45.077575
1523	1523	1495	30	0.4	\N	2022-12-14 20:05:45.084697	2022-12-14 20:05:45.084697
1524	1524	1495	31	0.2	\N	2022-12-14 20:05:45.093546	2022-12-14 20:05:45.093546
1525	1525	1495	32	0.1	\N	2022-12-14 20:05:45.101344	2022-12-14 20:05:45.101344
1526	1526	1495	33	0.7	\N	2022-12-14 20:05:45.109469	2022-12-14 20:05:45.109469
1527	1527	1495	34	0.1	\N	2022-12-14 20:05:45.117108	2022-12-14 20:05:45.117108
1528	1528	1495	35	0.5	\N	2022-12-14 20:05:45.125018	2022-12-14 20:05:45.125018
1529	1529	1495	36	0.25	\N	2022-12-14 20:05:45.131724	2022-12-14 20:05:45.131724
1530	1530	1495	37	0.2	\N	2022-12-14 20:05:45.139265	2022-12-14 20:05:45.139265
1531	1531	1495	38	0.7	\N	2022-12-14 20:05:45.146693	2022-12-14 20:05:45.146693
1532	1532	1495	39	0.05	\N	2022-12-14 20:05:45.155114	2022-12-14 20:05:45.155114
1533	1533	1495	40	0.04	\N	2022-12-14 20:05:45.162183	2022-12-14 20:05:45.162183
1534	1534	1495	41	0.05	\N	2022-12-14 20:05:45.170196	2022-12-14 20:05:45.170196
1535	1535	1495	42	0.3	\N	2022-12-14 20:05:45.178167	2022-12-14 20:05:45.178167
1536	1469	1495	43	0.25	\N	2022-12-14 20:05:45.185829	2022-12-14 20:05:45.185829
1537	1537	1495	44	0.03	\N	2022-12-14 20:05:45.192582	2022-12-14 20:05:45.192582
1538	1538	1495	45	0.4	\N	2022-12-14 20:05:45.199751	2022-12-14 20:05:45.199751
1539	1539	1495	46	0.3	\N	2022-12-14 20:05:45.207543	2022-12-14 20:05:45.207543
1540	1540	1495	47	0.05	\N	2022-12-14 20:05:45.215164	2022-12-14 20:05:45.215164
1541	1541	1495	48	0.3	\N	2022-12-14 20:05:45.224948	2022-12-14 20:05:45.224948
1542	1542	1495	49	0.75	\N	2022-12-14 20:05:45.232019	2022-12-14 20:05:45.232019
1543	1543	1495	50	0.05	\N	2022-12-14 20:05:45.239468	2022-12-14 20:05:45.239468
1544	1544	1495	51	0.5	\N	2022-12-14 20:05:45.246601	2022-12-14 20:05:45.246601
1545	1545	1495	52	0.1	\N	2022-12-14 20:05:45.254834	2022-12-14 20:05:45.254834
1546	1546	1495	53	0.03	\N	2022-12-14 20:05:45.263692	2022-12-14 20:05:45.263692
1547	1547	1495	54	0.75	\N	2022-12-14 20:05:45.271386	2022-12-14 20:05:45.271386
1548	1548	1495	55	0.3	\N	2022-12-14 20:05:45.277208	2022-12-14 20:05:45.277208
1549	1549	1495	56	0.25	\N	2022-12-14 20:05:45.283721	2022-12-14 20:05:45.283721
1550	1550	1495	57	0.03	\N	2022-12-14 20:05:45.290649	2022-12-14 20:05:45.290649
1551	1551	1495	61	0.75	\N	2022-12-14 20:05:45.297469	2022-12-14 20:05:45.297469
1552	1299	1495	62	0.5	\N	2022-12-14 20:05:45.304616	2022-12-14 20:05:45.304616
1553	1553	1495	63	0.05	\N	2022-12-14 20:05:45.311512	2022-12-14 20:05:45.311512
1554	1554	1495	64	0.4	\N	2022-12-14 20:05:45.318199	2022-12-14 20:05:45.318199
1555	1555	1495	65	0.3	\N	2022-12-14 20:05:45.325672	2022-12-14 20:05:45.325672
1556	1556	1495	66	0.4	\N	2022-12-14 20:05:45.331714	2022-12-14 20:05:45.331714
1557	1557	1495	67	0.5	\N	2022-12-14 20:05:45.337954	2022-12-14 20:05:45.337954
1558	1558	1495	69	1.1	\N	2022-12-14 20:05:45.343924	2022-12-14 20:05:45.343924
1559	1559	1495	70	0.75	\N	2022-12-14 20:05:45.350178	2022-12-14 20:05:45.350178
1560	1559	1495	71	1.0	\N	2022-12-14 20:05:45.357927	2022-12-14 20:05:45.357927
1561	1561	1561	2	0.0	25	2022-12-14 20:05:45.364729	2022-12-14 20:05:45.364729
1562	1562	1561	3	0.4	\N	2022-12-14 20:05:45.371754	2022-12-14 20:05:45.371754
1563	1563	1561	4	0.0	5	2022-12-14 20:05:45.378655	2022-12-14 20:05:45.378655
1564	1564	1561	5	0.0	5	2022-12-14 20:05:45.385293	2022-12-14 20:05:45.385293
1565	1565	1561	6	0.0	5	2022-12-14 20:05:45.392601	2022-12-14 20:05:45.392601
1566	1566	1561	7	1.3	\N	2022-12-14 20:05:45.400912	2022-12-14 20:05:45.400912
1567	1567	1561	8	1.6	\N	2022-12-14 20:05:45.408472	2022-12-14 20:05:45.408472
1568	1568	1561	9	0.75	\N	2022-12-14 20:05:45.417319	2022-12-14 20:05:45.417319
1569	1569	1561	10	1.4	\N	2022-12-14 20:05:45.425267	2022-12-14 20:05:45.425267
1570	1570	1561	11	0.8	\N	2022-12-14 20:05:45.432587	2022-12-14 20:05:45.432587
1571	1571	1561	12	1.3	\N	2022-12-14 20:05:45.445677	2022-12-14 20:05:45.445677
1572	1572	1561	13	0.5	\N	2022-12-14 20:05:45.456953	2022-12-14 20:05:45.456953
1573	1573	1561	14	0.6	\N	2022-12-14 20:05:45.464593	2022-12-14 20:05:45.464593
1574	1574	1561	15	0.5	\N	2022-12-14 20:05:45.472221	2022-12-14 20:05:45.472221
1575	1575	1561	16	0.9	\N	2022-12-14 20:05:45.47927	2022-12-14 20:05:45.47927
1576	1576	1561	17	1.3	\N	2022-12-14 20:05:45.48622	2022-12-14 20:05:45.48622
1577	1577	1561	18	1.6	\N	2022-12-14 20:05:45.493447	2022-12-14 20:05:45.493447
1578	1578	1561	19	1.25	\N	2022-12-14 20:05:45.501147	2022-12-14 20:05:45.501147
1579	1579	1561	20	1.0	\N	2022-12-14 20:05:45.50945	2022-12-14 20:05:45.50945
1580	1580	1561	21	1.4	\N	2022-12-14 20:05:45.516422	2022-12-14 20:05:45.516422
1581	1581	1561	22	0.0	5	2022-12-14 20:05:45.524007	2022-12-14 20:05:45.524007
1582	1582	1561	23	0.0	15	2022-12-14 20:05:45.531244	2022-12-14 20:05:45.531244
1583	1583	1561	24	1.7	\N	2022-12-14 20:05:45.537888	2022-12-14 20:05:45.537888
1584	1584	1561	25	1.1	\N	2022-12-14 20:05:45.54999	2022-12-14 20:05:45.54999
1585	1585	1561	26	1.25	\N	2022-12-14 20:05:45.557999	2022-12-14 20:05:45.557999
1586	1586	1561	27	0.02	\N	2022-12-14 20:05:45.565508	2022-12-14 20:05:45.565508
1587	1587	1561	28	0.02	\N	2022-12-14 20:05:45.573801	2022-12-14 20:05:45.573801
1588	1588	1561	29	0.0	40	2022-12-14 20:05:45.580634	2022-12-14 20:05:45.580634
1589	1589	1561	30	0.0	5	2022-12-14 20:05:45.58965	2022-12-14 20:05:45.58965
1590	1590	1561	32	0.1	\N	2022-12-14 20:05:45.596824	2022-12-14 20:05:45.596824
1591	1591	1561	35	0.25	\N	2022-12-14 20:05:45.604335	2022-12-14 20:05:45.604335
1592	1592	1561	36	0.7	\N	2022-12-14 20:05:45.61197	2022-12-14 20:05:45.61197
1593	1593	1561	38	0.06	\N	2022-12-14 20:05:45.619656	2022-12-14 20:05:45.619656
1594	1594	1561	39	0.04	\N	2022-12-14 20:05:45.627345	2022-12-14 20:05:45.627345
1595	1595	1561	41	0.25	\N	2022-12-14 20:05:45.63423	2022-12-14 20:05:45.63423
1596	1596	1561	42	1.3	\N	2022-12-14 20:05:45.64254	2022-12-14 20:05:45.64254
1597	1597	1561	43	0.75	\N	2022-12-14 20:05:45.649447	2022-12-14 20:05:45.649447
1598	1598	1561	44	2.0	\N	2022-12-14 20:05:45.658472	2022-12-14 20:05:45.658472
1599	1599	1561	45	0.5	\N	2022-12-14 20:05:45.666117	2022-12-14 20:05:45.666117
1600	1600	1561	46	0.6	\N	2022-12-14 20:05:45.673995	2022-12-14 20:05:45.673995
1601	1601	1561	47	0.75	\N	2022-12-14 20:05:45.680924	2022-12-14 20:05:45.680924
1602	1602	1561	48	1.0	\N	2022-12-14 20:05:45.6887	2022-12-14 20:05:45.6887
1603	1603	1561	49	1.2	\N	2022-12-14 20:05:45.695506	2022-12-14 20:05:45.695506
1604	1604	1561	50	0.0	15	2022-12-14 20:05:45.70299	2022-12-14 20:05:45.70299
1605	1605	1561	51	1.1	\N	2022-12-14 20:05:45.7129	2022-12-14 20:05:45.7129
1606	1606	1561	52	0.25	\N	2022-12-14 20:05:45.721168	2022-12-14 20:05:45.721168
1607	1607	1561	53	0.01	\N	2022-12-14 20:05:45.72918	2022-12-14 20:05:45.72918
1608	1608	1561	54	0.0	5	2022-12-14 20:05:45.737065	2022-12-14 20:05:45.737065
1609	1609	1561	56	0.5	\N	2022-12-14 20:05:45.743633	2022-12-14 20:05:45.743633
1610	1610	1561	57	0.0	5	2022-12-14 20:05:45.750409	2022-12-14 20:05:45.750409
1611	1611	1561	58	0.05	\N	2022-12-14 20:05:45.760089	2022-12-14 20:05:45.760089
1612	1612	1561	59	0.0	10	2022-12-14 20:05:45.769331	2022-12-14 20:05:45.769331
1613	1613	1561	60	0.4	\N	2022-12-14 20:05:45.777484	2022-12-14 20:05:45.777484
1614	1614	1561	62	0.0	25	2022-12-14 20:05:45.78511	2022-12-14 20:05:45.78511
1615	1615	1561	63	0.0	25	2022-12-14 20:05:45.795641	2022-12-14 20:05:45.795641
1616	1616	1561	64	0.0	10	2022-12-14 20:05:45.802706	2022-12-14 20:05:45.802706
1617	1617	1561	65	0.0	45	2022-12-14 20:05:45.810005	2022-12-14 20:05:45.810005
1618	1618	1561	66	0.0	10	2022-12-14 20:05:45.817052	2022-12-14 20:05:45.817052
1619	1619	1561	71	0.06	\N	2022-12-14 20:05:45.823871	2022-12-14 20:05:45.823871
1620	1620	1561	72	0.02	\N	2022-12-14 20:05:45.832584	2022-12-14 20:05:45.832584
1621	1621	1561	73	0.02	\N	2022-12-14 20:05:45.8407	2022-12-14 20:05:45.8407
1622	1622	1561	75	0.04	\N	2022-12-14 20:05:45.848212	2022-12-14 20:05:45.848212
1623	1623	1561	76	0.25	\N	2022-12-14 20:05:45.856383	2022-12-14 20:05:45.856383
1624	1624	1561	77	0.02	\N	2022-12-14 20:05:45.864756	2022-12-14 20:05:45.864756
1625	1625	1561	78	0.04	\N	2022-12-14 20:05:45.87162	2022-12-14 20:05:45.87162
1626	1626	1561	79	0.04	\N	2022-12-14 20:05:45.879471	2022-12-14 20:05:45.879471
1627	1627	1561	80	0.25	\N	2022-12-14 20:05:45.887447	2022-12-14 20:05:45.887447
1628	1628	1561	81	0.04	\N	2022-12-14 20:05:45.894644	2022-12-14 20:05:45.894644
1629	1629	1561	83	0.2	\N	2022-12-14 20:05:45.901738	2022-12-14 20:05:45.901738
1630	1630	1561	84	0.0	10	2022-12-14 20:05:45.909701	2022-12-14 20:05:45.909701
1631	1631	1561	85	0.01	\N	2022-12-14 20:05:45.917128	2022-12-14 20:05:45.917128
1632	1632	1561	86	0.75	\N	2022-12-14 20:05:45.923578	2022-12-14 20:05:45.923578
1633	1633	1561	87	0.01	\N	2022-12-14 20:05:45.931787	2022-12-14 20:05:45.931787
1634	1634	1561	88	0.05	\N	2022-12-14 20:05:45.939924	2022-12-14 20:05:45.939924
1635	1635	1561	89	0.6	\N	2022-12-14 20:05:45.947264	2022-12-14 20:05:45.947264
1636	1636	1561	90	0.04	\N	2022-12-14 20:05:45.954392	2022-12-14 20:05:45.954392
1637	1637	1561	91	0.01	\N	2022-12-14 20:05:45.962501	2022-12-14 20:05:45.962501
1638	1638	1561	92	0.05	\N	2022-12-14 20:05:45.970961	2022-12-14 20:05:45.970961
1639	1639	1561	93	0.03	\N	2022-12-14 20:05:45.978171	2022-12-14 20:05:45.978171
1640	1640	1561	94	0.06	\N	2022-12-14 20:05:45.986129	2022-12-14 20:05:45.986129
1641	1641	1561	95	0.06	\N	2022-12-14 20:05:45.993665	2022-12-14 20:05:45.993665
1642	1642	1561	96	0.01	\N	2022-12-14 20:05:46.001606	2022-12-14 20:05:46.001606
1643	1643	1561	97	0.25	\N	2022-12-14 20:05:46.010902	2022-12-14 20:05:46.010902
1644	1644	1561	98	0.75	\N	2022-12-14 20:05:46.019674	2022-12-14 20:05:46.019674
1645	1645	1561	99	0.7	\N	2022-12-14 20:05:46.026586	2022-12-14 20:05:46.026586
1646	1646	1561	100	0.3	\N	2022-12-14 20:05:46.033475	2022-12-14 20:05:46.033475
1647	1647	1647	1	0.75	\N	2022-12-14 20:05:46.042839	2022-12-14 20:05:46.042839
1648	1648	1647	2	1.0	\N	2022-12-14 20:05:46.051171	2022-12-14 20:05:46.051171
1649	1649	1647	3	0.7	\N	2022-12-14 20:05:46.058351	2022-12-14 20:05:46.058351
1650	1650	1647	4	0.7	\N	2022-12-14 20:05:46.066484	2022-12-14 20:05:46.066484
1651	1651	1647	5	0.5	\N	2022-12-14 20:05:46.073748	2022-12-14 20:05:46.073748
1652	1652	1647	6	0.75	\N	2022-12-14 20:05:46.081562	2022-12-14 20:05:46.081562
1653	1653	1647	7	0.2	\N	2022-12-14 20:05:46.088278	2022-12-14 20:05:46.088278
1654	1654	1647	8	0.7	\N	2022-12-14 20:05:46.095362	2022-12-14 20:05:46.095362
1655	1655	1647	9	0.1	\N	2022-12-14 20:05:46.104276	2022-12-14 20:05:46.104276
1656	1656	1647	10	1.2	\N	2022-12-14 20:05:46.111343	2022-12-14 20:05:46.111343
1657	1657	1647	14	0.3	\N	2022-12-14 20:05:46.119357	2022-12-14 20:05:46.119357
1658	1658	1647	16	0.25	\N	2022-12-14 20:05:46.127069	2022-12-14 20:05:46.127069
1659	1659	1647	17	0.6	\N	2022-12-14 20:05:46.134609	2022-12-14 20:05:46.134609
1660	1660	1647	18	0.4	\N	2022-12-14 20:05:46.141813	2022-12-14 20:05:46.141813
1661	1661	1647	19	0.5	\N	2022-12-14 20:05:46.148469	2022-12-14 20:05:46.148469
1662	1662	1647	20	0.15	\N	2022-12-14 20:05:46.155957	2022-12-14 20:05:46.155957
1663	1663	1647	22	2.0	\N	2022-12-14 20:05:46.163564	2022-12-14 20:05:46.163564
1664	1664	1647	23	1.2	\N	2022-12-14 20:05:46.171009	2022-12-14 20:05:46.171009
1665	1665	1647	24	1.8	\N	2022-12-14 20:05:46.178679	2022-12-14 20:05:46.178679
1666	1666	1647	25	1.25	\N	2022-12-14 20:05:46.184688	2022-12-14 20:05:46.184688
1667	1667	1647	26	1.1	\N	2022-12-14 20:05:46.192208	2022-12-14 20:05:46.192208
1668	1668	1647	27	1.1	\N	2022-12-14 20:05:46.19928	2022-12-14 20:05:46.19928
1669	1669	1647	28	0.3	\N	2022-12-14 20:05:46.206504	2022-12-14 20:05:46.206504
1670	1670	1647	29	0.8	\N	2022-12-14 20:05:46.215205	2022-12-14 20:05:46.215205
1671	1671	1647	30	1.0	\N	2022-12-14 20:05:46.223327	2022-12-14 20:05:46.223327
1672	1672	1647	31	1.8	\N	2022-12-14 20:05:46.230187	2022-12-14 20:05:46.230187
1673	1673	1647	32	0.01	\N	2022-12-14 20:05:46.238519	2022-12-14 20:05:46.238519
1674	1674	1647	33	0.0	5	2022-12-14 20:05:46.247051	2022-12-14 20:05:46.247051
1675	1675	1647	34	1.0	\N	2022-12-14 20:05:46.254086	2022-12-14 20:05:46.254086
1676	1676	1647	35	0.2	\N	2022-12-14 20:05:46.262102	2022-12-14 20:05:46.262102
1677	1677	1647	36	1.4	\N	2022-12-14 20:05:46.270767	2022-12-14 20:05:46.270767
1678	1678	1647	37	1.4	\N	2022-12-14 20:05:46.278382	2022-12-14 20:05:46.278382
1679	1679	1647	38	1.9	\N	2022-12-14 20:05:46.292081	2022-12-14 20:05:46.292081
1680	1680	1647	39	0.2	\N	2022-12-14 20:05:46.302097	2022-12-14 20:05:46.302097
1681	1681	1647	40	1.8	\N	2022-12-14 20:05:46.308899	2022-12-14 20:05:46.308899
1682	1682	1647	41	0.7	\N	2022-12-14 20:05:46.314963	2022-12-14 20:05:46.314963
1683	1683	1647	42	0.4	\N	2022-12-14 20:05:46.32173	2022-12-14 20:05:46.32173
1684	1684	1647	43	0.0	10	2022-12-14 20:05:46.329583	2022-12-14 20:05:46.329583
1685	1685	1647	44	0.2	\N	2022-12-14 20:05:46.338366	2022-12-14 20:05:46.338366
1686	1686	1647	47	0.1	\N	2022-12-14 20:05:46.346747	2022-12-14 20:05:46.346747
1687	1687	1647	48	0.0	40	2022-12-14 20:05:46.355015	2022-12-14 20:05:46.355015
1688	1688	1647	51	0.25	\N	2022-12-14 20:05:46.362189	2022-12-14 20:05:46.362189
1689	1689	1647	52	0.25	\N	2022-12-14 20:05:46.36935	2022-12-14 20:05:46.36935
1690	1690	1647	54	0.06	\N	2022-12-14 20:05:46.376292	2022-12-14 20:05:46.376292
1691	1691	1647	55	0.5	\N	2022-12-14 20:05:46.382721	2022-12-14 20:05:46.382721
1692	1692	1647	57	0.75	\N	2022-12-14 20:05:46.39036	2022-12-14 20:05:46.39036
1693	1693	1647	58	0.8	\N	2022-12-14 20:05:46.399825	2022-12-14 20:05:46.399825
1694	1694	1647	59	0.75	\N	2022-12-14 20:05:46.412719	2022-12-14 20:05:46.412719
1695	1695	1647	60	0.7	\N	2022-12-14 20:05:46.421749	2022-12-14 20:05:46.421749
1696	1696	1647	61	1.2	\N	2022-12-14 20:05:46.429495	2022-12-14 20:05:46.429495
1697	1697	1647	62	0.9	\N	2022-12-14 20:05:46.436105	2022-12-14 20:05:46.436105
1698	1698	1647	63	0.01	\N	2022-12-14 20:05:46.443818	2022-12-14 20:05:46.443818
1699	1699	1647	64	0.4	\N	2022-12-14 20:05:46.451734	2022-12-14 20:05:46.451734
1700	1700	1647	67	0.75	\N	2022-12-14 20:05:46.459043	2022-12-14 20:05:46.459043
1701	1701	1647	69	0.3	\N	2022-12-14 20:05:46.467455	2022-12-14 20:05:46.467455
1702	1702	1647	70	0.2	\N	2022-12-14 20:05:46.475485	2022-12-14 20:05:46.475485
1703	1703	1647	71	0.01	\N	2022-12-14 20:05:46.482293	2022-12-14 20:05:46.482293
1704	1704	1647	72	1.0	\N	2022-12-14 20:05:46.488461	2022-12-14 20:05:46.488461
1705	1705	1647	73	0.5	\N	2022-12-14 20:05:46.495056	2022-12-14 20:05:46.495056
1706	1706	1647	74	0.0	50	2022-12-14 20:05:46.503052	2022-12-14 20:05:46.503052
1707	1707	1647	76	1.3	\N	2022-12-14 20:05:46.510488	2022-12-14 20:05:46.510488
1708	1708	1647	77	1.5	\N	2022-12-14 20:05:46.517618	2022-12-14 20:05:46.517618
1709	1709	1647	78	1.0	\N	2022-12-14 20:05:46.525315	2022-12-14 20:05:46.525315
1710	1710	1647	79	0.5	\N	2022-12-14 20:05:46.532462	2022-12-14 20:05:46.532462
1711	1711	1647	80	1.2	\N	2022-12-14 20:05:46.539808	2022-12-14 20:05:46.539808
1712	1712	1647	81	0.1	\N	2022-12-14 20:05:46.546849	2022-12-14 20:05:46.546849
1713	1713	1647	82	1.0	\N	2022-12-14 20:05:46.553775	2022-12-14 20:05:46.553775
1714	1714	1647	83	0.75	\N	2022-12-14 20:05:46.561769	2022-12-14 20:05:46.561769
1715	1715	1647	84	0.8	\N	2022-12-14 20:05:46.569049	2022-12-14 20:05:46.569049
1716	1716	1647	85	1.3	\N	2022-12-14 20:05:46.577022	2022-12-14 20:05:46.577022
1717	1717	1647	86	1.25	\N	2022-12-14 20:05:46.58903	2022-12-14 20:05:46.58903
1718	1718	1647	87	1.3	\N	2022-12-14 20:05:46.598259	2022-12-14 20:05:46.598259
1719	1719	1647	88	1.9	\N	2022-12-14 20:05:46.604703	2022-12-14 20:05:46.604703
1720	1720	1647	89	2.0	\N	2022-12-14 20:05:46.611984	2022-12-14 20:05:46.611984
1721	1721	1647	90	0.0	15	2022-12-14 20:05:46.619438	2022-12-14 20:05:46.619438
1722	1722	1647	91	0.5	\N	2022-12-14 20:05:46.626766	2022-12-14 20:05:46.626766
1723	1723	1647	92	0.07	\N	2022-12-14 20:05:46.633918	2022-12-14 20:05:46.633918
1724	1724	1647	93	0.0	5	2022-12-14 20:05:46.641368	2022-12-14 20:05:46.641368
1725	1725	1647	95	0.6	\N	2022-12-14 20:05:46.649507	2022-12-14 20:05:46.649507
1726	1726	1647	96	0.5	\N	2022-12-14 20:05:46.656959	2022-12-14 20:05:46.656959
1727	1727	1647	99	0.6	\N	2022-12-14 20:05:46.664068	2022-12-14 20:05:46.664068
1728	1728	1728	1	1.2	\N	2022-12-14 20:05:46.67163	2022-12-14 20:05:46.67163
1729	1729	1728	2	1.0	\N	2022-12-14 20:05:46.678609	2022-12-14 20:05:46.678609
1730	1730	1728	3	1.5	\N	2022-12-14 20:05:46.685637	2022-12-14 20:05:46.685637
1731	1731	1728	4	0.5	\N	2022-12-14 20:05:46.693163	2022-12-14 20:05:46.693163
1732	1732	1728	5	0.75	\N	2022-12-14 20:05:46.700834	2022-12-14 20:05:46.700834
1733	1733	1728	6	1.0	\N	2022-12-14 20:05:46.708227	2022-12-14 20:05:46.708227
1734	1734	1728	7	0.75	\N	2022-12-14 20:05:46.716662	2022-12-14 20:05:46.716662
1735	1735	1728	9	1.1	\N	2022-12-14 20:05:46.726414	2022-12-14 20:05:46.726414
1736	1736	1728	10	1.25	\N	2022-12-14 20:05:46.742958	2022-12-14 20:05:46.742958
1737	1737	1728	11	0.25	\N	2022-12-14 20:05:46.748829	2022-12-14 20:05:46.748829
1738	1738	1728	12	0.5	\N	2022-12-14 20:05:46.755915	2022-12-14 20:05:46.755915
1739	1739	1728	13	1.6	\N	2022-12-14 20:05:46.762942	2022-12-14 20:05:46.762942
1740	1740	1728	14	0.75	\N	2022-12-14 20:05:46.770794	2022-12-14 20:05:46.770794
1741	1741	1728	15	0.0	35	2022-12-14 20:05:46.778478	2022-12-14 20:05:46.778478
1742	1742	1728	16	2.0	\N	2022-12-14 20:05:46.786903	2022-12-14 20:05:46.786903
1743	1743	1728	17	1.25	\N	2022-12-14 20:05:46.795399	2022-12-14 20:05:46.795399
1744	1744	1728	18	1.1	\N	2022-12-14 20:05:46.807757	2022-12-14 20:05:46.807757
1745	1745	1728	19	1.3	\N	2022-12-14 20:05:46.823064	2022-12-14 20:05:46.823064
1746	1746	1728	20	1.25	\N	2022-12-14 20:05:46.834517	2022-12-14 20:05:46.834517
1747	1747	1728	21	1.7	\N	2022-12-14 20:05:46.841944	2022-12-14 20:05:46.841944
1748	1748	1728	22	0.01	\N	2022-12-14 20:05:46.849357	2022-12-14 20:05:46.849357
1749	1749	1728	23	0.5	\N	2022-12-14 20:05:46.856447	2022-12-14 20:05:46.856447
1750	1750	1728	24	0.25	\N	2022-12-14 20:05:46.862562	2022-12-14 20:05:46.862562
1751	1751	1728	25	0.25	\N	2022-12-14 20:05:46.869616	2022-12-14 20:05:46.869616
1752	1752	1728	26	0.5	\N	2022-12-14 20:05:46.879334	2022-12-14 20:05:46.879334
1753	1753	1728	27	0.25	\N	2022-12-14 20:05:46.889896	2022-12-14 20:05:46.889896
1754	1754	1728	28	0.0	35	2022-12-14 20:05:46.897505	2022-12-14 20:05:46.897505
1755	1755	1728	29	0.04	\N	2022-12-14 20:05:46.905068	2022-12-14 20:05:46.905068
1756	1756	1728	30	0.25	\N	2022-12-14 20:05:46.912767	2022-12-14 20:05:46.912767
1757	1757	1728	31	0.25	\N	2022-12-14 20:05:46.920708	2022-12-14 20:05:46.920708
1758	1758	1728	32	0.7	\N	2022-12-14 20:05:46.928112	2022-12-14 20:05:46.928112
1759	1759	1728	33	0.3	\N	2022-12-14 20:05:46.935576	2022-12-14 20:05:46.935576
1760	1760	1728	34	0.0	10	2022-12-14 20:05:46.943111	2022-12-14 20:05:46.943111
1761	1761	1728	35	0.0	20	2022-12-14 20:05:46.951112	2022-12-14 20:05:46.951112
1762	1762	1728	36	0.2	\N	2022-12-14 20:05:46.958207	2022-12-14 20:05:46.958207
1763	1763	1728	37	0.01	\N	2022-12-14 20:05:46.967436	2022-12-14 20:05:46.967436
1764	1764	1728	38	0.25	\N	2022-12-14 20:05:46.976016	2022-12-14 20:05:46.976016
1765	1765	1728	39	0.25	\N	2022-12-14 20:05:46.983249	2022-12-14 20:05:46.983249
1766	1766	1728	40	0.02	\N	2022-12-14 20:05:46.992026	2022-12-14 20:05:46.992026
1767	1767	1728	41	1.0	\N	2022-12-14 20:05:46.999261	2022-12-14 20:05:46.999261
1768	1768	1728	42	1.0	\N	2022-12-14 20:05:47.008814	2022-12-14 20:05:47.008814
1769	1769	1728	43	1.25	\N	2022-12-14 20:05:47.018047	2022-12-14 20:05:47.018047
1770	1770	1728	44	1.4	\N	2022-12-14 20:05:47.024787	2022-12-14 20:05:47.024787
1771	1771	1728	45	1.0	\N	2022-12-14 20:05:47.031336	2022-12-14 20:05:47.031336
1772	1772	1728	46	1.8	\N	2022-12-14 20:05:47.037707	2022-12-14 20:05:47.037707
1773	1773	1728	47	1.5	\N	2022-12-14 20:05:47.045336	2022-12-14 20:05:47.045336
1774	1774	1728	48	0.75	\N	2022-12-14 20:05:47.053278	2022-12-14 20:05:47.053278
1775	1775	1728	49	2.0	\N	2022-12-14 20:05:47.060894	2022-12-14 20:05:47.060894
1776	1776	1728	50	2.0	\N	2022-12-14 20:05:47.06776	2022-12-14 20:05:47.06776
1777	1777	1728	51	0.3	\N	2022-12-14 20:05:47.075478	2022-12-14 20:05:47.075478
1778	1778	1728	52	0.05	\N	2022-12-14 20:05:47.082376	2022-12-14 20:05:47.082376
1779	1779	1728	53	0.05	\N	2022-12-14 20:05:47.090077	2022-12-14 20:05:47.090077
1780	1780	1728	54	1.2	\N	2022-12-14 20:05:47.097707	2022-12-14 20:05:47.097707
1781	1781	1728	56	0.1	\N	2022-12-14 20:05:47.106174	2022-12-14 20:05:47.106174
1782	1782	1728	57	1.3	\N	2022-12-14 20:05:47.113486	2022-12-14 20:05:47.113486
1783	1783	1728	58	0.01	\N	2022-12-14 20:05:47.121656	2022-12-14 20:05:47.121656
1784	1784	1728	59	0.3	\N	2022-12-14 20:05:47.129448	2022-12-14 20:05:47.129448
1785	1785	1728	60	0.25	\N	2022-12-14 20:05:47.136186	2022-12-14 20:05:47.136186
1786	1786	1728	61	0.3	\N	2022-12-14 20:05:47.144255	2022-12-14 20:05:47.144255
1787	1787	1728	62	0.02	\N	2022-12-14 20:05:47.151288	2022-12-14 20:05:47.151288
1788	1788	1728	64	0.0	30	2022-12-14 20:05:47.158864	2022-12-14 20:05:47.158864
1789	1789	1728	66	0.4	\N	2022-12-14 20:05:47.165734	2022-12-14 20:05:47.165734
1790	1790	1728	67	0.01	\N	2022-12-14 20:05:47.174061	2022-12-14 20:05:47.174061
1791	1791	1728	69	0.01	\N	2022-12-14 20:05:47.18141	2022-12-14 20:05:47.18141
1792	1792	1728	70	0.3	\N	2022-12-14 20:05:47.189212	2022-12-14 20:05:47.189212
1793	1793	1728	71	0.04	\N	2022-12-14 20:05:47.195615	2022-12-14 20:05:47.195615
1794	1794	1728	72	1.0	\N	2022-12-14 20:05:47.201709	2022-12-14 20:05:47.201709
1795	1795	1728	73	0.0	30	2022-12-14 20:05:47.209257	2022-12-14 20:05:47.209257
1796	1796	1728	74	1.3	\N	2022-12-14 20:05:47.216434	2022-12-14 20:05:47.216434
1797	1797	1728	75	0.4	\N	2022-12-14 20:05:47.225058	2022-12-14 20:05:47.225058
1798	1798	1728	76	1.1	\N	2022-12-14 20:05:47.232201	2022-12-14 20:05:47.232201
1799	1799	1728	77	1.9	\N	2022-12-14 20:05:47.239997	2022-12-14 20:05:47.239997
1800	1800	1728	78	2.0	\N	2022-12-14 20:05:47.246074	2022-12-14 20:05:47.246074
1801	1801	1728	79	2.0	\N	2022-12-14 20:05:47.253596	2022-12-14 20:05:47.253596
1802	1802	1728	80	2.0	\N	2022-12-14 20:05:47.261721	2022-12-14 20:05:47.261721
1803	1803	1728	81	0.1	\N	2022-12-14 20:05:47.269031	2022-12-14 20:05:47.269031
1804	1804	1728	82	0.04	\N	2022-12-14 20:05:47.275941	2022-12-14 20:05:47.275941
1805	1805	1728	85	0.6	\N	2022-12-14 20:05:47.283236	2022-12-14 20:05:47.283236
1806	1806	1728	86	0.25	\N	2022-12-14 20:05:47.291213	2022-12-14 20:05:47.291213
1807	1807	1728	87	0.0	5	2022-12-14 20:05:47.298914	2022-12-14 20:05:47.298914
1808	1808	1728	91	0.1	\N	2022-12-14 20:05:47.306671	2022-12-14 20:05:47.306671
1809	1809	1728	92	0.0	25	2022-12-14 20:05:47.313843	2022-12-14 20:05:47.313843
1810	1810	1728	93	0.0	5	2022-12-14 20:05:47.320624	2022-12-14 20:05:47.320624
1811	1811	1728	94	0.0	10	2022-12-14 20:05:47.327005	2022-12-14 20:05:47.327005
1812	1812	1728	95	0.07	\N	2022-12-14 20:05:47.333092	2022-12-14 20:05:47.333092
1813	1813	1728	96	0.0	30	2022-12-14 20:05:47.340457	2022-12-14 20:05:47.340457
1814	1814	1728	97	0.5	\N	2022-12-14 20:05:47.346833	2022-12-14 20:05:47.346833
1815	1815	1728	98	0.9	\N	2022-12-14 20:05:47.353223	2022-12-14 20:05:47.353223
1816	1816	1728	99	0.0	1	2022-12-14 20:05:47.359926	2022-12-14 20:05:47.359926
1817	1817	1728	100	0.07	\N	2022-12-14 20:05:47.366586	2022-12-14 20:05:47.366586
1818	1818	1818	1	0.8	\N	2022-12-14 20:05:47.373829	2022-12-14 20:05:47.373829
1819	1819	1818	2	0.05	\N	2022-12-14 20:05:47.380294	2022-12-14 20:05:47.380294
1820	1820	1818	4	1.0	\N	2022-12-14 20:05:47.387761	2022-12-14 20:05:47.387761
1821	1821	1818	5	0.5	\N	2022-12-14 20:05:47.394508	2022-12-14 20:05:47.394508
1822	1822	1818	6	1.2	\N	2022-12-14 20:05:47.401619	2022-12-14 20:05:47.401619
1823	1823	1818	14	1.3	\N	2022-12-14 20:05:47.408955	2022-12-14 20:05:47.408955
1824	1824	1818	16	1.2	\N	2022-12-14 20:05:47.415557	2022-12-14 20:05:47.415557
1825	1825	1818	17	0.04	\N	2022-12-14 20:05:47.422885	2022-12-14 20:05:47.422885
1826	1826	1818	18	0.05	\N	2022-12-14 20:05:47.429787	2022-12-14 20:05:47.429787
1827	1827	1818	19	0.8	\N	2022-12-14 20:05:47.437705	2022-12-14 20:05:47.437705
1828	1828	1818	20	1.0	\N	2022-12-14 20:05:47.445345	2022-12-14 20:05:47.445345
1829	1829	1818	21	0.6	\N	2022-12-14 20:05:47.454242	2022-12-14 20:05:47.454242
1830	1830	1818	22	0.0	4	2022-12-14 20:05:47.462506	2022-12-14 20:05:47.462506
1831	1831	1818	23	0.5	\N	2022-12-14 20:05:47.469928	2022-12-14 20:05:47.469928
1832	1832	1818	24	0.75	\N	2022-12-14 20:05:47.477245	2022-12-14 20:05:47.477245
1833	1833	1818	25	0.8	\N	2022-12-14 20:05:47.485549	2022-12-14 20:05:47.485549
1834	1834	1818	26	0.8	\N	2022-12-14 20:05:47.492986	2022-12-14 20:05:47.492986
1835	1835	1818	27	0.7	\N	2022-12-14 20:05:47.500529	2022-12-14 20:05:47.500529
1836	1836	1818	28	0.8	\N	2022-12-14 20:05:47.509039	2022-12-14 20:05:47.509039
1837	1837	1818	29	0.0	2	2022-12-14 20:05:47.515483	2022-12-14 20:05:47.515483
1838	1838	1818	30	0.75	\N	2022-12-14 20:05:47.52228	2022-12-14 20:05:47.52228
1839	1839	1818	31	0.8	\N	2022-12-14 20:05:47.529284	2022-12-14 20:05:47.529284
1840	1840	1818	32	0.8	\N	2022-12-14 20:05:47.536377	2022-12-14 20:05:47.536377
1841	1841	1818	33	1.0	\N	2022-12-14 20:05:47.544036	2022-12-14 20:05:47.544036
1842	1842	1818	34	0.0	25	2022-12-14 20:05:47.558848	2022-12-14 20:05:47.558848
1843	1843	1818	35	1.0	\N	2022-12-14 20:05:47.566504	2022-12-14 20:05:47.566504
1844	1844	1818	36	0.5	\N	2022-12-14 20:05:47.575219	2022-12-14 20:05:47.575219
1845	1845	1818	37	0.8	\N	2022-12-14 20:05:47.583081	2022-12-14 20:05:47.583081
1846	1846	1818	38	0.9	\N	2022-12-14 20:05:47.591588	2022-12-14 20:05:47.591588
1847	1847	1818	39	1.2	\N	2022-12-14 20:05:47.599836	2022-12-14 20:05:47.599836
1848	1848	1818	40	0.9	\N	2022-12-14 20:05:47.607988	2022-12-14 20:05:47.607988
1849	1849	1818	41	0.0	40	2022-12-14 20:05:47.615172	2022-12-14 20:05:47.615172
1850	1850	1818	42	1.0	\N	2022-12-14 20:05:47.623205	2022-12-14 20:05:47.623205
1851	1851	1818	43	0.0	30	2022-12-14 20:05:47.631309	2022-12-14 20:05:47.631309
1852	1852	1818	44	1.0	\N	2022-12-14 20:05:47.639912	2022-12-14 20:05:47.639912
1853	1853	1818	45	0.0	30	2022-12-14 20:05:47.647739	2022-12-14 20:05:47.647739
1854	1854	1818	46	1.1	\N	2022-12-14 20:05:47.655592	2022-12-14 20:05:47.655592
1855	1855	1818	47	1.0	\N	2022-12-14 20:05:47.663242	2022-12-14 20:05:47.663242
1856	1856	1818	48	0.75	\N	2022-12-14 20:05:47.672613	2022-12-14 20:05:47.672613
1857	1857	1818	49	0.0	100	2022-12-14 20:05:47.681271	2022-12-14 20:05:47.681271
1858	1858	1818	50	0.01	\N	2022-12-14 20:05:47.689475	2022-12-14 20:05:47.689475
1859	1859	1818	51	0.01	\N	2022-12-14 20:05:47.697864	2022-12-14 20:05:47.697864
1860	1860	1818	52	1.1	\N	2022-12-14 20:05:47.705967	2022-12-14 20:05:47.705967
1861	1861	1818	54	0.0	40	2022-12-14 20:05:47.714609	2022-12-14 20:05:47.714609
1862	1862	1818	55	1.2	\N	2022-12-14 20:05:47.722326	2022-12-14 20:05:47.722326
1863	1863	1818	56	1.9	\N	2022-12-14 20:05:47.730782	2022-12-14 20:05:47.730782
1864	1864	1818	57	0.1	\N	2022-12-14 20:05:47.740848	2022-12-14 20:05:47.740848
1865	1865	1818	58	1.25	\N	2022-12-14 20:05:47.747723	2022-12-14 20:05:47.747723
1866	1866	1818	59	1.3	\N	2022-12-14 20:05:47.757032	2022-12-14 20:05:47.757032
1867	1867	1818	60	0.75	\N	2022-12-14 20:05:47.767228	2022-12-14 20:05:47.767228
1868	1868	1818	61	0.4	\N	2022-12-14 20:05:47.774185	2022-12-14 20:05:47.774185
1869	1869	1818	62	0.04	\N	2022-12-14 20:05:47.781072	2022-12-14 20:05:47.781072
1870	1870	1818	63	0.04	\N	2022-12-14 20:05:47.78993	2022-12-14 20:05:47.78993
1871	1871	1818	64	1.25	\N	2022-12-14 20:05:47.797027	2022-12-14 20:05:47.797027
1872	1872	1818	65	0.8	\N	2022-12-14 20:05:47.805198	2022-12-14 20:05:47.805198
1873	1873	1818	66	1.3	\N	2022-12-14 20:05:47.814219	2022-12-14 20:05:47.814219
1874	1874	1818	67	0.75	\N	2022-12-14 20:05:47.821498	2022-12-14 20:05:47.821498
1875	1875	1818	68	1.5	\N	2022-12-14 20:05:47.829178	2022-12-14 20:05:47.829178
1876	1876	1818	69	1.5	\N	2022-12-14 20:05:47.840826	2022-12-14 20:05:47.840826
1877	1877	1818	70	1.0	\N	2022-12-14 20:05:47.849453	2022-12-14 20:05:47.849453
1878	1878	1818	71	0.0	50	2022-12-14 20:05:47.856876	2022-12-14 20:05:47.856876
1879	1879	1818	72	1.1	\N	2022-12-14 20:05:47.864525	2022-12-14 20:05:47.864525
1880	1880	1818	74	0.75	\N	2022-12-14 20:05:47.87209	2022-12-14 20:05:47.87209
1881	1881	1818	75	1.1	\N	2022-12-14 20:05:47.879735	2022-12-14 20:05:47.879735
1882	1882	1818	76	1.1	\N	2022-12-14 20:05:47.886482	2022-12-14 20:05:47.886482
1883	1883	1818	77	0.01	\N	2022-12-14 20:05:47.894298	2022-12-14 20:05:47.894298
1884	1884	1818	78	0.01	\N	2022-12-14 20:05:47.901898	2022-12-14 20:05:47.901898
1885	1885	1818	79	0.8	\N	2022-12-14 20:05:47.909583	2022-12-14 20:05:47.909583
1886	1886	1818	80	0.0	5	2022-12-14 20:05:47.917662	2022-12-14 20:05:47.917662
1887	1887	1818	81	0.4	\N	2022-12-14 20:05:47.925132	2022-12-14 20:05:47.925132
1888	1888	1818	82	0.01	\N	2022-12-14 20:05:47.933786	2022-12-14 20:05:47.933786
1889	1889	1818	84	1.25	\N	2022-12-14 20:05:47.941331	2022-12-14 20:05:47.941331
1890	1890	1818	85	0.1	\N	2022-12-14 20:05:47.949527	2022-12-14 20:05:47.949527
1891	1891	1818	86	0.6	\N	2022-12-14 20:05:47.956481	2022-12-14 20:05:47.956481
1892	1892	1818	87	0.0	10	2022-12-14 20:05:47.964153	2022-12-14 20:05:47.964153
1893	1893	1818	88	0.4	\N	2022-12-14 20:05:47.97143	2022-12-14 20:05:47.97143
1894	1894	1818	90	0.0	10	2022-12-14 20:05:47.979342	2022-12-14 20:05:47.979342
1895	1895	1818	91	0.0	20	2022-12-14 20:05:47.987309	2022-12-14 20:05:47.987309
1896	1896	1818	92	0.07	\N	2022-12-14 20:05:47.994782	2022-12-14 20:05:47.994782
1897	1897	1818	93	0.0	3	2022-12-14 20:05:48.002463	2022-12-14 20:05:48.002463
1898	1898	1818	94	0.1	\N	2022-12-14 20:05:48.009628	2022-12-14 20:05:48.009628
1899	1899	1818	95	0.2	\N	2022-12-14 20:05:48.018011	2022-12-14 20:05:48.018011
1900	1900	1818	96	0.0	15	2022-12-14 20:05:48.02484	2022-12-14 20:05:48.02484
1901	1901	1818	97	0.0	10	2022-12-14 20:05:48.034172	2022-12-14 20:05:48.034172
1902	1902	1818	98	0.0	5	2022-12-14 20:05:48.041685	2022-12-14 20:05:48.041685
1903	1903	1818	99	0.25	\N	2022-12-14 20:05:48.049072	2022-12-14 20:05:48.049072
1904	1904	1818	100	0.05	\N	2022-12-14 20:05:48.055748	2022-12-14 20:05:48.055748
1905	1905	1905	1	0.02	\N	2022-12-14 20:05:48.062487	2022-12-14 20:05:48.062487
1906	1906	1905	3	0.8	\N	2022-12-14 20:05:48.070264	2022-12-14 20:05:48.070264
1907	1907	1905	4	0.0	10	2022-12-14 20:05:48.079406	2022-12-14 20:05:48.079406
1908	1908	1905	5	0.0	10	2022-12-14 20:05:48.085306	2022-12-14 20:05:48.085306
1909	1909	1905	6	0.0	1	2022-12-14 20:05:48.092244	2022-12-14 20:05:48.092244
1910	1910	1905	7	1.2	\N	2022-12-14 20:05:48.09848	2022-12-14 20:05:48.09848
1911	1911	1905	8	0.2	\N	2022-12-14 20:05:48.106003	2022-12-14 20:05:48.106003
1912	1912	1905	9	1.2	\N	2022-12-14 20:05:48.113456	2022-12-14 20:05:48.113456
1913	1913	1905	10	0.8	\N	2022-12-14 20:05:48.121445	2022-12-14 20:05:48.121445
1914	1914	1905	11	0.5	\N	2022-12-14 20:05:48.128985	2022-12-14 20:05:48.128985
1915	1915	1905	12	0.0	20	2022-12-14 20:05:48.135302	2022-12-14 20:05:48.135302
1916	1916	1905	13	0.9	\N	2022-12-14 20:05:48.14196	2022-12-14 20:05:48.14196
1917	1917	1905	14	0.6	\N	2022-12-14 20:05:48.150079	2022-12-14 20:05:48.150079
1918	1918	1905	15	0.7	\N	2022-12-14 20:05:48.157698	2022-12-14 20:05:48.157698
1919	1919	1905	16	0.01	\N	2022-12-14 20:05:48.165529	2022-12-14 20:05:48.165529
1920	1920	1905	17	1.25	\N	2022-12-14 20:05:48.172758	2022-12-14 20:05:48.172758
1921	1921	1905	18	1.3	\N	2022-12-14 20:05:48.180562	2022-12-14 20:05:48.180562
1922	1922	1905	19	1.1	\N	2022-12-14 20:05:48.189961	2022-12-14 20:05:48.189961
1923	1923	1905	20	0.03	\N	2022-12-14 20:05:48.196025	2022-12-14 20:05:48.196025
1924	1924	1905	21	0.5	\N	2022-12-14 20:05:48.201745	2022-12-14 20:05:48.201745
1925	1925	1905	22	0.4	\N	2022-12-14 20:05:48.208467	2022-12-14 20:05:48.208467
1926	1926	1905	23	0.3	\N	2022-12-14 20:05:48.21465	2022-12-14 20:05:48.21465
1927	1927	1905	24	0.04	\N	2022-12-14 20:05:48.222992	2022-12-14 20:05:48.222992
1928	1928	1905	25	0.25	\N	2022-12-14 20:05:48.229778	2022-12-14 20:05:48.229778
1929	1929	1905	26	0.6	\N	2022-12-14 20:05:48.236872	2022-12-14 20:05:48.236872
1930	1930	1905	28	0.3	\N	2022-12-14 20:05:48.243784	2022-12-14 20:05:48.243784
1931	1931	1905	29	0.0	20	2022-12-14 20:05:48.250422	2022-12-14 20:05:48.250422
1932	1932	1905	32	0.2	\N	2022-12-14 20:05:48.257438	2022-12-14 20:05:48.257438
1933	1933	1905	33	0.6	\N	2022-12-14 20:05:48.265396	2022-12-14 20:05:48.265396
1934	1934	1905	34	0.4	\N	2022-12-14 20:05:48.272761	2022-12-14 20:05:48.272761
1935	1935	1905	35	1.4	\N	2022-12-14 20:05:48.279772	2022-12-14 20:05:48.279772
1936	1936	1905	36	1.25	\N	2022-12-14 20:05:48.286646	2022-12-14 20:05:48.286646
1937	1937	1905	37	0.6	\N	2022-12-14 20:05:48.293366	2022-12-14 20:05:48.293366
1938	1938	1905	38	1.25	\N	2022-12-14 20:05:48.301219	2022-12-14 20:05:48.301219
1939	1939	1905	39	1.25	\N	2022-12-14 20:05:48.309302	2022-12-14 20:05:48.309302
1940	1940	1905	40	0.0	10	2022-12-14 20:05:48.317416	2022-12-14 20:05:48.317416
1941	1941	1905	41	0.3	\N	2022-12-14 20:05:48.324441	2022-12-14 20:05:48.324441
1942	1942	1905	42	0.6	\N	2022-12-14 20:05:48.331916	2022-12-14 20:05:48.331916
1943	1943	1905	43	1.25	\N	2022-12-14 20:05:48.339144	2022-12-14 20:05:48.339144
1944	1944	1905	44	0.8	\N	2022-12-14 20:05:48.345977	2022-12-14 20:05:48.345977
1945	1945	1905	45	0.5	\N	2022-12-14 20:05:48.352304	2022-12-14 20:05:48.352304
1946	1946	1905	46	0.75	\N	2022-12-14 20:05:48.360093	2022-12-14 20:05:48.360093
1947	1947	1905	47	0.9	\N	2022-12-14 20:05:48.366841	2022-12-14 20:05:48.366841
1948	1948	1905	48	1.0	\N	2022-12-14 20:05:48.373865	2022-12-14 20:05:48.373865
1949	1949	1905	49	0.5	\N	2022-12-14 20:05:48.381713	2022-12-14 20:05:48.381713
1950	1950	1905	50	1.0	\N	2022-12-14 20:05:48.390509	2022-12-14 20:05:48.390509
1951	1951	1905	51	0.0	2	2022-12-14 20:05:48.397924	2022-12-14 20:05:48.397924
1952	1952	1905	53	1.4	\N	2022-12-14 20:05:48.404714	2022-12-14 20:05:48.404714
1953	1953	1905	54	0.0	25	2022-12-14 20:05:48.411716	2022-12-14 20:05:48.411716
1954	1954	1905	55	0.0	10	2022-12-14 20:05:48.418959	2022-12-14 20:05:48.418959
1955	1955	1905	56	1.25	\N	2022-12-14 20:05:48.426015	2022-12-14 20:05:48.426015
1956	1956	1905	57	1.3	\N	2022-12-14 20:05:48.433104	2022-12-14 20:05:48.433104
1957	1957	1905	58	1.5	\N	2022-12-14 20:05:48.44038	2022-12-14 20:05:48.44038
1958	1958	1905	59	0.0	3	2022-12-14 20:05:48.447374	2022-12-14 20:05:48.447374
1959	1959	1905	60	0.3	\N	2022-12-14 20:05:48.454296	2022-12-14 20:05:48.454296
1960	1960	1905	61	0.5	\N	2022-12-14 20:05:48.462237	2022-12-14 20:05:48.462237
1961	1961	1905	62	0.2	\N	2022-12-14 20:05:48.469446	2022-12-14 20:05:48.469446
1962	1962	1905	63	0.25	\N	2022-12-14 20:05:48.476873	2022-12-14 20:05:48.476873
1963	1963	1905	64	0.7	\N	2022-12-14 20:05:48.484757	2022-12-14 20:05:48.484757
1964	1964	1905	65	0.75	\N	2022-12-14 20:05:48.492265	2022-12-14 20:05:48.492265
1965	1965	1905	66	0.0	25	2022-12-14 20:05:48.499446	2022-12-14 20:05:48.499446
1966	1966	1905	67	1.0	\N	2022-12-14 20:05:48.507884	2022-12-14 20:05:48.507884
1967	1967	1905	68	0.25	\N	2022-12-14 20:05:48.515073	2022-12-14 20:05:48.515073
1968	1968	1905	69	0.25	\N	2022-12-14 20:05:48.522665	2022-12-14 20:05:48.522665
1969	1969	1905	70	1.0	\N	2022-12-14 20:05:48.529181	2022-12-14 20:05:48.529181
1970	1970	1905	71	0.0	40	2022-12-14 20:05:48.537001	2022-12-14 20:05:48.537001
1971	1971	1905	72	0.0	5	2022-12-14 20:05:48.543991	2022-12-14 20:05:48.543991
1972	1972	1905	73	0.75	\N	2022-12-14 20:05:48.552029	2022-12-14 20:05:48.552029
1973	1973	1905	74	0.0	100	2022-12-14 20:05:48.559106	2022-12-14 20:05:48.559106
1974	1974	1905	75	0.01	\N	2022-12-14 20:05:48.566818	2022-12-14 20:05:48.566818
1975	1975	1905	76	0.07	\N	2022-12-14 20:05:48.574018	2022-12-14 20:05:48.574018
1976	1976	1905	77	0.01	\N	2022-12-14 20:05:48.582077	2022-12-14 20:05:48.582077
1977	1977	1905	78	0.03	\N	2022-12-14 20:05:48.58932	2022-12-14 20:05:48.58932
1978	1978	1905	80	0.2	\N	2022-12-14 20:05:48.597689	2022-12-14 20:05:48.597689
1979	1979	1905	81	0.5	\N	2022-12-14 20:05:48.60538	2022-12-14 20:05:48.60538
1980	1980	1905	82	0.0	6	2022-12-14 20:05:48.61693	2022-12-14 20:05:48.61693
1981	1981	1905	84	0.0	5	2022-12-14 20:05:48.626701	2022-12-14 20:05:48.626701
1982	1982	1905	85	0.06	\N	2022-12-14 20:05:48.634074	2022-12-14 20:05:48.634074
1983	1983	1905	86	0.25	\N	2022-12-14 20:05:48.641316	2022-12-14 20:05:48.641316
1984	1984	1905	88	0.0	40	2022-12-14 20:05:48.647809	2022-12-14 20:05:48.647809
1985	1985	1905	89	1.1	\N	2022-12-14 20:05:48.653798	2022-12-14 20:05:48.653798
1986	1986	1905	90	0.4	\N	2022-12-14 20:05:48.660073	2022-12-14 20:05:48.660073
1987	1987	1905	91	0.04	\N	2022-12-14 20:05:48.666747	2022-12-14 20:05:48.666747
1988	1988	1905	92	0.05	\N	2022-12-14 20:05:48.674113	2022-12-14 20:05:48.674113
1989	1989	1905	93	0.0	2	2022-12-14 20:05:48.681358	2022-12-14 20:05:48.681358
1990	1990	1905	95	0.2	\N	2022-12-14 20:05:48.688615	2022-12-14 20:05:48.688615
1991	1991	1905	96	0.2	\N	2022-12-14 20:05:48.696386	2022-12-14 20:05:48.696386
1992	1992	1905	97	2.0	\N	2022-12-14 20:05:48.703461	2022-12-14 20:05:48.703461
1993	1992	1905	98	2.0	\N	2022-12-14 20:05:48.710545	2022-12-14 20:05:48.710545
1994	1992	1905	99	0.8	\N	2022-12-14 20:05:48.717902	2022-12-14 20:05:48.717902
1995	1995	1995	1	0.1	\N	2022-12-14 20:05:48.725858	2022-12-14 20:05:48.725858
1996	1996	1995	2	0.01	\N	2022-12-14 20:05:48.732744	2022-12-14 20:05:48.732744
1997	1997	1995	3	0.7	\N	2022-12-14 20:05:48.743667	2022-12-14 20:05:48.743667
1998	1998	1995	4	0.01	\N	2022-12-14 20:05:48.751051	2022-12-14 20:05:48.751051
1999	1999	1995	5	0.6	\N	2022-12-14 20:05:48.758999	2022-12-14 20:05:48.758999
2000	2000	1995	6	0.0	100	2022-12-14 20:05:48.766601	2022-12-14 20:05:48.766601
2001	2001	1995	7	0.75	\N	2022-12-14 20:05:48.774311	2022-12-14 20:05:48.774311
2002	2002	1995	8	0.0	100	2022-12-14 20:05:48.780836	2022-12-14 20:05:48.780836
2003	2003	1995	9	0.0	60	2022-12-14 20:05:48.788465	2022-12-14 20:05:48.788465
2004	2004	1995	10	0.02	\N	2022-12-14 20:05:48.797277	2022-12-14 20:05:48.797277
2005	2005	1995	11	0.5	\N	2022-12-14 20:05:48.805444	2022-12-14 20:05:48.805444
2006	2006	1995	12	0.7	\N	2022-12-14 20:05:48.813245	2022-12-14 20:05:48.813245
2007	2007	1995	13	0.03	\N	2022-12-14 20:05:48.823716	2022-12-14 20:05:48.823716
2008	2008	1995	14	0.0	100	2022-12-14 20:05:48.830703	2022-12-14 20:05:48.830703
2009	2009	1995	15	0.0	150	2022-12-14 20:05:48.83787	2022-12-14 20:05:48.83787
2010	2010	1995	16	0.07	\N	2022-12-14 20:05:48.844714	2022-12-14 20:05:48.844714
2011	2011	1995	17	0.6	\N	2022-12-14 20:05:48.852205	2022-12-14 20:05:48.852205
2012	2012	1995	18	0.5	\N	2022-12-14 20:05:48.859296	2022-12-14 20:05:48.859296
2013	2013	1995	19	0.8	\N	2022-12-14 20:05:48.865972	2022-12-14 20:05:48.865972
2014	2014	1995	20	0.0	50	2022-12-14 20:05:48.8733	2022-12-14 20:05:48.8733
2015	2015	1995	21	0.0	150	2022-12-14 20:05:48.879619	2022-12-14 20:05:48.879619
2016	2016	1995	22	0.0	30	2022-12-14 20:05:48.887555	2022-12-14 20:05:48.887555
2017	2017	1995	23	0.0	25	2022-12-14 20:05:48.894984	2022-12-14 20:05:48.894984
2018	2018	1995	24	0.0	100	2022-12-14 20:05:48.903582	2022-12-14 20:05:48.903582
2019	2019	1995	25	0.1	\N	2022-12-14 20:05:48.911325	2022-12-14 20:05:48.911325
2020	2020	1995	26	0.0	25	2022-12-14 20:05:48.919491	2022-12-14 20:05:48.919491
2021	2021	1995	27	0.3	\N	2022-12-14 20:05:48.92662	2022-12-14 20:05:48.92662
2022	2022	1995	28	0.25	\N	2022-12-14 20:05:48.934133	2022-12-14 20:05:48.934133
2023	2023	1995	29	0.0	50	2022-12-14 20:05:48.94158	2022-12-14 20:05:48.94158
2024	2024	1995	30	0.05	\N	2022-12-14 20:05:48.948888	2022-12-14 20:05:48.948888
2025	2025	1995	31	0.0	10	2022-12-14 20:05:48.957197	2022-12-14 20:05:48.957197
2026	2026	1995	32	0.0	25	2022-12-14 20:05:48.96539	2022-12-14 20:05:48.96539
2027	2027	1995	33	0.0	20	2022-12-14 20:05:48.973193	2022-12-14 20:05:48.973193
2028	2028	1995	34	0.02	\N	2022-12-14 20:05:48.980433	2022-12-14 20:05:48.980433
2029	2029	1995	35	0.02	\N	2022-12-14 20:05:48.988228	2022-12-14 20:05:48.988228
2030	2030	1995	36	0.07	\N	2022-12-14 20:05:48.995212	2022-12-14 20:05:48.995212
2031	2031	1995	37	0.25	\N	2022-12-14 20:05:49.002787	2022-12-14 20:05:49.002787
2032	2032	1995	38	0.2	\N	2022-12-14 20:05:49.010587	2022-12-14 20:05:49.010587
2033	2033	1995	39	0.04	\N	2022-12-14 20:05:49.018668	2022-12-14 20:05:49.018668
2034	2034	1995	40	0.02	\N	2022-12-14 20:05:49.026712	2022-12-14 20:05:49.026712
2035	2035	1995	41	0.2	\N	2022-12-14 20:05:49.033871	2022-12-14 20:05:49.033871
2036	2036	1995	42	0.25	\N	2022-12-14 20:05:49.041856	2022-12-14 20:05:49.041856
2037	2037	1995	43	0.07	\N	2022-12-14 20:05:49.048796	2022-12-14 20:05:49.048796
2038	2038	1995	44	0.2	\N	2022-12-14 20:05:49.060595	2022-12-14 20:05:49.060595
2039	2039	1995	45	0.3	\N	2022-12-14 20:05:49.073183	2022-12-14 20:05:49.073183
2040	2040	1995	46	0.05	\N	2022-12-14 20:05:49.085736	2022-12-14 20:05:49.085736
2041	2041	1995	47	0.02	\N	2022-12-14 20:05:49.095005	2022-12-14 20:05:49.095005
2042	2042	1995	48	0.01	\N	2022-12-14 20:05:49.102643	2022-12-14 20:05:49.102643
2043	2043	1995	49	0.25	\N	2022-12-14 20:05:49.110427	2022-12-14 20:05:49.110427
2044	2044	1995	50	0.04	\N	2022-12-14 20:05:49.118984	2022-12-14 20:05:49.118984
2045	2045	1995	51	1.0	\N	2022-12-14 20:05:49.126538	2022-12-14 20:05:49.126538
2046	2046	1995	52	0.75	\N	2022-12-14 20:05:49.133771	2022-12-14 20:05:49.133771
2047	2047	1995	53	0.25	\N	2022-12-14 20:05:49.141617	2022-12-14 20:05:49.141617
2048	2048	1995	54	0.8	\N	2022-12-14 20:05:49.150183	2022-12-14 20:05:49.150183
2049	2049	1995	55	0.3	\N	2022-12-14 20:05:49.15761	2022-12-14 20:05:49.15761
2050	2050	1995	56	0.0	150	2022-12-14 20:05:49.164981	2022-12-14 20:05:49.164981
2051	2051	1995	57	0.01	\N	2022-12-14 20:05:49.17749	2022-12-14 20:05:49.17749
2052	2052	1995	58	0.1	\N	2022-12-14 20:05:49.188838	2022-12-14 20:05:49.188838
2053	2053	1995	59	0.05	\N	2022-12-14 20:05:49.195137	2022-12-14 20:05:49.195137
2054	2054	1995	60	0.2	\N	2022-12-14 20:05:49.201324	2022-12-14 20:05:49.201324
2055	2055	1995	61	0.04	\N	2022-12-14 20:05:49.208721	2022-12-14 20:05:49.208721
2056	2056	1995	62	0.04	\N	2022-12-14 20:05:49.216146	2022-12-14 20:05:49.216146
2057	2057	1995	63	0.15	\N	2022-12-14 20:05:49.224111	2022-12-14 20:05:49.224111
2058	2058	1995	64	0.0	150	2022-12-14 20:05:49.230923	2022-12-14 20:05:49.230923
2059	2059	1995	65	0.25	\N	2022-12-14 20:05:49.238616	2022-12-14 20:05:49.238616
2060	2060	1995	66	1.25	\N	2022-12-14 20:05:49.245309	2022-12-14 20:05:49.245309
2061	2061	1995	67	0.7	\N	2022-12-14 20:05:49.252	2022-12-14 20:05:49.252
2062	2062	1995	68	0.8	\N	2022-12-14 20:05:49.261152	2022-12-14 20:05:49.261152
2063	2063	1995	69	0.15	\N	2022-12-14 20:05:49.268846	2022-12-14 20:05:49.268846
2064	2064	1995	70	0.3	\N	2022-12-14 20:05:49.275796	2022-12-14 20:05:49.275796
2065	2065	1995	71	0.25	\N	2022-12-14 20:05:49.283368	2022-12-14 20:05:49.283368
2066	2066	1995	72	0.01	\N	2022-12-14 20:05:49.291011	2022-12-14 20:05:49.291011
2067	2067	1995	73	0.07	\N	2022-12-14 20:05:49.297119	2022-12-14 20:05:49.297119
2068	2068	1995	74	0.15	\N	2022-12-14 20:05:49.304435	2022-12-14 20:05:49.304435
2069	2069	1995	75	0.2	\N	2022-12-14 20:05:49.31211	2022-12-14 20:05:49.31211
2070	2070	1995	76	0.4	\N	2022-12-14 20:05:49.320545	2022-12-14 20:05:49.320545
2071	2071	1995	77	0.25	\N	2022-12-14 20:05:49.327633	2022-12-14 20:05:49.327633
2072	2072	1995	78	0.05	\N	2022-12-14 20:05:49.334609	2022-12-14 20:05:49.334609
2073	2073	1995	79	0.2	\N	2022-12-14 20:05:49.341114	2022-12-14 20:05:49.341114
2074	2074	1995	80	0.25	\N	2022-12-14 20:05:49.347188	2022-12-14 20:05:49.347188
2075	2075	1995	81	0.08	\N	2022-12-14 20:05:49.35458	2022-12-14 20:05:49.35458
2076	2076	1995	82	0.3	\N	2022-12-14 20:05:49.361538	2022-12-14 20:05:49.361538
2077	2077	1995	83	0.03	\N	2022-12-14 20:05:49.368646	2022-12-14 20:05:49.368646
2078	2078	1995	84	0.25	\N	2022-12-14 20:05:49.37623	2022-12-14 20:05:49.37623
2079	2079	1995	85	0.4	\N	2022-12-14 20:05:49.382854	2022-12-14 20:05:49.382854
2080	2080	1995	86	0.3	\N	2022-12-14 20:05:49.390112	2022-12-14 20:05:49.390112
2081	2081	1995	87	0.3	\N	2022-12-14 20:05:49.39626	2022-12-14 20:05:49.39626
2082	2082	1995	88	0.06	\N	2022-12-14 20:05:49.403368	2022-12-14 20:05:49.403368
2083	2083	1995	89	0.0	30	2022-12-14 20:05:49.410361	2022-12-14 20:05:49.410361
2084	2084	1995	90	0.25	\N	2022-12-14 20:05:49.416672	2022-12-14 20:05:49.416672
2085	2085	1995	91	0.06	\N	2022-12-14 20:05:49.424142	2022-12-14 20:05:49.424142
2086	2086	1995	92	0.25	\N	2022-12-14 20:05:49.430418	2022-12-14 20:05:49.430418
2087	2087	1995	93	0.25	\N	2022-12-14 20:05:49.439198	2022-12-14 20:05:49.439198
2088	2088	1995	94	0.02	\N	2022-12-14 20:05:49.446247	2022-12-14 20:05:49.446247
2089	2089	1995	95	0.25	\N	2022-12-14 20:05:49.454362	2022-12-14 20:05:49.454362
2090	2090	1995	96	0.2	\N	2022-12-14 20:05:49.464099	2022-12-14 20:05:49.464099
2091	2091	1995	97	0.1	\N	2022-12-14 20:05:49.472945	2022-12-14 20:05:49.472945
2092	2092	1995	98	0.0	30	2022-12-14 20:05:49.480906	2022-12-14 20:05:49.480906
2093	2093	1995	99	0.25	\N	2022-12-14 20:05:49.488341	2022-12-14 20:05:49.488341
2094	2094	2094	1	0.05	\N	2022-12-14 20:05:49.495587	2022-12-14 20:05:49.495587
2095	2095	2094	2	0.04	\N	2022-12-14 20:05:49.503597	2022-12-14 20:05:49.503597
2096	2096	2094	3	0.05	\N	2022-12-14 20:05:49.513424	2022-12-14 20:05:49.513424
2097	2097	2094	4	0.04	\N	2022-12-14 20:05:49.52234	2022-12-14 20:05:49.52234
2098	2098	2094	5	0.06	\N	2022-12-14 20:05:49.529985	2022-12-14 20:05:49.529985
2099	2099	2094	6	0.4	\N	2022-12-14 20:05:49.538788	2022-12-14 20:05:49.538788
2100	2100	2094	7	0.05	\N	2022-12-14 20:05:49.547078	2022-12-14 20:05:49.547078
2101	2101	2094	8	0.25	\N	2022-12-14 20:05:49.555956	2022-12-14 20:05:49.555956
2102	2102	2094	9	0.25	\N	2022-12-14 20:05:49.566373	2022-12-14 20:05:49.566373
2103	2103	2094	10	0.25	\N	2022-12-14 20:05:49.576572	2022-12-14 20:05:49.576572
2104	2104	2094	11	0.04	\N	2022-12-14 20:05:49.584601	2022-12-14 20:05:49.584601
2105	2105	2094	12	0.02	\N	2022-12-14 20:05:49.593143	2022-12-14 20:05:49.593143
2106	2106	2094	13	0.04	\N	2022-12-14 20:05:49.600451	2022-12-14 20:05:49.600451
2107	2107	2094	14	0.04	\N	2022-12-14 20:05:49.608018	2022-12-14 20:05:49.608018
2108	2108	2094	15	1.0	\N	2022-12-14 20:05:49.61546	2022-12-14 20:05:49.61546
2109	2109	2094	16	0.2	\N	2022-12-14 20:05:49.623394	2022-12-14 20:05:49.623394
2110	2110	2094	17	0.7	\N	2022-12-14 20:05:49.630331	2022-12-14 20:05:49.630331
2111	2111	2094	18	0.6	\N	2022-12-14 20:05:49.639469	2022-12-14 20:05:49.639469
2112	2112	2094	19	0.2	\N	2022-12-14 20:05:49.647769	2022-12-14 20:05:49.647769
2113	2113	2094	20	0.01	\N	2022-12-14 20:05:49.656539	2022-12-14 20:05:49.656539
2114	2114	2094	21	0.0	25	2022-12-14 20:05:49.664383	2022-12-14 20:05:49.664383
2115	2115	2094	22	0.03	\N	2022-12-14 20:05:49.673586	2022-12-14 20:05:49.673586
2116	2116	2094	23	0.7	\N	2022-12-14 20:05:49.681106	2022-12-14 20:05:49.681106
2117	2117	2094	24	0.05	\N	2022-12-14 20:05:49.690504	2022-12-14 20:05:49.690504
2118	2118	2094	25	0.08	\N	2022-12-14 20:05:49.699134	2022-12-14 20:05:49.699134
2119	2119	2094	26	0.2	\N	2022-12-14 20:05:49.708297	2022-12-14 20:05:49.708297
2120	2120	2094	27	0.25	\N	2022-12-14 20:05:49.717527	2022-12-14 20:05:49.717527
2121	2121	2094	28	0.5	\N	2022-12-14 20:05:49.727018	2022-12-14 20:05:49.727018
2122	2122	2094	29	0.1	\N	2022-12-14 20:05:49.737013	2022-12-14 20:05:49.737013
2123	2123	2094	30	0.1	\N	2022-12-14 20:05:49.747582	2022-12-14 20:05:49.747582
2124	2124	2094	31	0.0	150	2022-12-14 20:05:49.758438	2022-12-14 20:05:49.758438
2125	2125	2094	32	0.0	40	2022-12-14 20:05:49.768201	2022-12-14 20:05:49.768201
2126	2126	2094	33	0.0	40	2022-12-14 20:05:49.776357	2022-12-14 20:05:49.776357
2127	2127	2094	34	0.0	40	2022-12-14 20:05:49.783312	2022-12-14 20:05:49.783312
2128	2128	2094	35	0.0	200	2022-12-14 20:05:49.793115	2022-12-14 20:05:49.793115
2129	2129	2094	36	0.01	\N	2022-12-14 20:05:49.802189	2022-12-14 20:05:49.802189
2130	2130	2094	37	0.0	40	2022-12-14 20:05:49.809279	2022-12-14 20:05:49.809279
2131	2131	2094	38	0.0	40	2022-12-14 20:05:49.816251	2022-12-14 20:05:49.816251
2132	2132	2094	39	0.0	35	2022-12-14 20:05:49.824666	2022-12-14 20:05:49.824666
2133	2133	2094	40	0.0	25	2022-12-14 20:05:49.837189	2022-12-14 20:05:49.837189
2134	2134	2094	41	0.0	35	2022-12-14 20:05:49.846198	2022-12-14 20:05:49.846198
2135	2135	2094	42	0.05	\N	2022-12-14 20:05:49.860111	2022-12-14 20:05:49.860111
2136	2136	2094	43	0.0	35	2022-12-14 20:05:49.874961	2022-12-14 20:05:49.874961
2137	2137	2094	44	0.0	20	2022-12-14 20:05:49.889048	2022-12-14 20:05:49.889048
2138	2138	2094	45	0.0	15	2022-12-14 20:05:49.902938	2022-12-14 20:05:49.902938
2139	2139	2094	46	0.06	\N	2022-12-14 20:05:49.917367	2022-12-14 20:05:49.917367
2140	2140	2094	47	0.03	\N	2022-12-14 20:05:49.932484	2022-12-14 20:05:49.932484
2141	2141	2094	48	0.25	\N	2022-12-14 20:05:49.942028	2022-12-14 20:05:49.942028
2142	1591	2094	49	0.75	\N	2022-12-14 20:05:49.948891	2022-12-14 20:05:49.948891
2143	1594	2094	50	0.25	\N	2022-12-14 20:05:49.955513	2022-12-14 20:05:49.955513
2144	1606	2094	51	0.25	\N	2022-12-14 20:05:49.963555	2022-12-14 20:05:49.963555
2145	2145	2094	52	0.06	\N	2022-12-14 20:05:49.971076	2022-12-14 20:05:49.971076
2146	2146	2094	53	0.25	\N	2022-12-14 20:05:49.979068	2022-12-14 20:05:49.979068
2147	2147	2094	54	0.5	\N	2022-12-14 20:05:49.988239	2022-12-14 20:05:49.988239
2148	2148	2094	55	0.4	\N	2022-12-14 20:05:49.994713	2022-12-14 20:05:49.994713
2149	2149	2094	56	0.05	\N	2022-12-14 20:05:50.001566	2022-12-14 20:05:50.001566
2150	2150	2094	57	0.2	\N	2022-12-14 20:05:50.008728	2022-12-14 20:05:50.008728
2151	2151	2094	58	0.05	\N	2022-12-14 20:05:50.018108	2022-12-14 20:05:50.018108
2152	2152	2094	59	0.5	\N	2022-12-14 20:05:50.031636	2022-12-14 20:05:50.031636
2153	2153	2094	60	0.3	\N	2022-12-14 20:05:50.041981	2022-12-14 20:05:50.041981
2154	1676	2094	61	0.5	\N	2022-12-14 20:05:50.049659	2022-12-14 20:05:50.049659
2155	2155	2094	62	0.05	\N	2022-12-14 20:05:50.057246	2022-12-14 20:05:50.057246
2156	2156	2094	63	0.25	\N	2022-12-14 20:05:50.066013	2022-12-14 20:05:50.066013
2157	2157	2094	64	0.2	\N	2022-12-14 20:05:50.074459	2022-12-14 20:05:50.074459
2158	2158	2094	66	0.04	\N	2022-12-14 20:05:50.082266	2022-12-14 20:05:50.082266
2159	2159	2094	67	0.25	\N	2022-12-14 20:05:50.089789	2022-12-14 20:05:50.089789
2160	2160	2094	68	0.01	\N	2022-12-14 20:05:50.0979	2022-12-14 20:05:50.0979
2161	2161	2094	69	0.02	\N	2022-12-14 20:05:50.103924	2022-12-14 20:05:50.103924
2162	2162	2094	70	0.7	\N	2022-12-14 20:05:50.115436	2022-12-14 20:05:50.115436
2163	2163	2094	71	0.25	\N	2022-12-14 20:05:50.125546	2022-12-14 20:05:50.125546
2164	1904	2094	72	0.75	\N	2022-12-14 20:05:50.132945	2022-12-14 20:05:50.132945
2165	2165	2094	73	0.1	\N	2022-12-14 20:05:50.14003	2022-12-14 20:05:50.14003
2166	2166	2094	74	0.2	\N	2022-12-14 20:05:50.147306	2022-12-14 20:05:50.147306
2167	2167	2094	75	0.5	\N	2022-12-14 20:05:50.154327	2022-12-14 20:05:50.154327
2168	2168	2094	76	0.5	\N	2022-12-14 20:05:50.161959	2022-12-14 20:05:50.161959
2169	2169	2094	91	0.01	\N	2022-12-14 20:05:50.169121	2022-12-14 20:05:50.169121
2170	84	2094	97	0.4	\N	2022-12-14 20:05:50.177075	2022-12-14 20:05:50.177075
2171	2171	2094	98	0.01	\N	2022-12-14 20:05:50.184196	2022-12-14 20:05:50.184196
2172	2172	2094	99	0.6	\N	2022-12-14 20:05:50.19142	2022-12-14 20:05:50.19142
2173	89	2094	100	0.01	\N	2022-12-14 20:05:50.199345	2022-12-14 20:05:50.199345
2174	2174	2174	1	0.03	\N	2022-12-14 20:05:50.206439	2022-12-14 20:05:50.206439
2175	2175	2174	2	0.1	\N	2022-12-14 20:05:50.213552	2022-12-14 20:05:50.213552
2176	2176	2174	3	0.4	\N	2022-12-14 20:05:50.219769	2022-12-14 20:05:50.219769
2177	2176	2174	4	0.12	\N	2022-12-14 20:05:50.227757	2022-12-14 20:05:50.227757
2178	2178	2174	5	0.4	\N	2022-12-14 20:05:50.23909	2022-12-14 20:05:50.23909
2179	2179	2174	6	0.5	\N	2022-12-14 20:05:50.246538	2022-12-14 20:05:50.246538
2180	2180	2174	7	0.25	\N	2022-12-14 20:05:50.254833	2022-12-14 20:05:50.254833
2181	2178	2174	8	0.2	\N	2022-12-14 20:05:50.26286	2022-12-14 20:05:50.26286
2182	2182	2174	9	0.03	\N	2022-12-14 20:05:50.270632	2022-12-14 20:05:50.270632
2183	2183	2174	10	0.11	\N	2022-12-14 20:05:50.285007	2022-12-14 20:05:50.285007
2184	2184	2174	11	0.18	\N	2022-12-14 20:05:50.295641	2022-12-14 20:05:50.295641
2185	2185	2174	12	0.02	\N	2022-12-14 20:05:50.302059	2022-12-14 20:05:50.302059
2186	2186	2174	13	0.03	\N	2022-12-14 20:05:50.30946	2022-12-14 20:05:50.30946
2187	2187	2174	14	0.19	\N	2022-12-14 20:05:50.317241	2022-12-14 20:05:50.317241
2188	2186	2174	21	0.12	\N	2022-12-14 20:05:50.324235	2022-12-14 20:05:50.324235
2189	2187	2174	22	0.02	\N	2022-12-14 20:05:50.331349	2022-12-14 20:05:50.331349
2190	2190	2174	23	0.06	\N	2022-12-14 20:05:50.337868	2022-12-14 20:05:50.337868
2191	2191	2174	24	0.13	\N	2022-12-14 20:05:50.34525	2022-12-14 20:05:50.34525
2192	2192	2174	25	0.18	\N	2022-12-14 20:05:50.35137	2022-12-14 20:05:50.35137
2193	1992	2174	28	0.4	\N	2022-12-14 20:05:50.359519	2022-12-14 20:05:50.359519
2194	1992	2174	29	0.1	\N	2022-12-14 20:05:50.366459	2022-12-14 20:05:50.366459
2195	2195	2174	30	0.13	\N	2022-12-14 20:05:50.374279	2022-12-14 20:05:50.374279
2196	2196	2196	12	0.0	13	2022-12-14 20:05:50.382515	2022-12-14 20:05:50.382515
2197	2197	2196	13	0.0	200	2022-12-14 20:05:50.389299	2022-12-14 20:05:50.389299
2198	2198	2196	14	0.0	30	2022-12-14 20:05:50.395916	2022-12-14 20:05:50.395916
2199	2199	2196	15	0.0	3	2022-12-14 20:05:50.405491	2022-12-14 20:05:50.405491
2200	2200	2196	16	0.0	3	2022-12-14 20:05:50.41521	2022-12-14 20:05:50.41521
2201	2201	2196	17	0.0	150	2022-12-14 20:05:50.421798	2022-12-14 20:05:50.421798
2202	2202	2196	18	0.0	100	2022-12-14 20:05:50.428885	2022-12-14 20:05:50.428885
2203	2203	2196	19	0.0	10	2022-12-14 20:05:50.435789	2022-12-14 20:05:50.435789
2204	2204	2196	20	0.02	\N	2022-12-14 20:05:50.442805	2022-12-14 20:05:50.442805
2205	2205	2196	32	0.0	3	2022-12-14 20:05:50.44919	2022-12-14 20:05:50.44919
2206	2206	2196	33	0.0	0	2022-12-14 20:05:50.456489	2022-12-14 20:05:50.456489
2207	2207	2196	34	0.0	60	2022-12-14 20:05:50.463578	2022-12-14 20:05:50.463578
2208	2208	2196	35	0.0	125	2022-12-14 20:05:50.469532	2022-12-14 20:05:50.469532
2209	2209	2196	36	0.0	120	2022-12-14 20:05:50.476285	2022-12-14 20:05:50.476285
2210	2210	2196	37	0.0	2	2022-12-14 20:05:50.48323	2022-12-14 20:05:50.48323
2211	2211	2196	38	0.0	10	2022-12-14 20:05:50.489909	2022-12-14 20:05:50.489909
2212	2212	2196	39	0.0	50	2022-12-14 20:05:50.496822	2022-12-14 20:05:50.496822
2213	2213	2196	40	0.01	\N	2022-12-14 20:05:50.503309	2022-12-14 20:05:50.503309
2214	2214	2196	52	0.0	25	2022-12-14 20:05:50.510389	2022-12-14 20:05:50.510389
2215	2215	2196	53	0.0	5	2022-12-14 20:05:50.517204	2022-12-14 20:05:50.517204
2216	2216	2196	54	0.0	100	2022-12-14 20:05:50.52407	2022-12-14 20:05:50.52407
2217	2217	2196	55	0.0	\N	2022-12-14 20:05:50.5311	2022-12-14 20:05:50.5311
2218	2218	2196	56	0.0	120	2022-12-14 20:05:50.538577	2022-12-14 20:05:50.538577
2219	2219	2196	57	0.0	10	2022-12-14 20:05:50.546245	2022-12-14 20:05:50.546245
2220	2220	2196	58	0.0	0	2022-12-14 20:05:50.553439	2022-12-14 20:05:50.553439
2221	2221	2196	59	0.0	30	2022-12-14 20:05:50.560688	2022-12-14 20:05:50.560688
2222	2222	2196	60	0.02	\N	2022-12-14 20:05:50.567831	2022-12-14 20:05:50.567831
2223	2223	2196	72	0.0	0	2022-12-14 20:05:50.575032	2022-12-14 20:05:50.575032
2224	2224	2196	73	0.02	\N	2022-12-14 20:05:50.582543	2022-12-14 20:05:50.582543
2225	2225	2196	74	0.01	\N	2022-12-14 20:05:50.58995	2022-12-14 20:05:50.58995
2226	2226	2196	75	0.0	10	2022-12-14 20:05:50.598265	2022-12-14 20:05:50.598265
2227	2227	2196	76	0.01	\N	2022-12-14 20:05:50.605342	2022-12-14 20:05:50.605342
2228	2228	2196	77	0.0	120	2022-12-14 20:05:50.613068	2022-12-14 20:05:50.613068
2229	2229	2196	78	0.0	30	2022-12-14 20:05:50.620552	2022-12-14 20:05:50.620552
2230	2230	2196	79	0.01	\N	2022-12-14 20:05:50.628138	2022-12-14 20:05:50.628138
2231	2231	2196	80	0.0	20	2022-12-14 20:05:50.635263	2022-12-14 20:05:50.635263
2232	2232	2196	92	0.0	7	2022-12-14 20:05:50.642578	2022-12-14 20:05:50.642578
2233	2233	2196	93	0.005	\N	2022-12-14 20:05:50.649626	2022-12-14 20:05:50.649626
2234	2234	2196	94	0.01	\N	2022-12-14 20:05:50.657452	2022-12-14 20:05:50.657452
2235	2235	2196	95	0.01	\N	2022-12-14 20:05:50.665489	2022-12-14 20:05:50.665489
2236	2236	2196	96	0.0	70	2022-12-14 20:05:50.672646	2022-12-14 20:05:50.672646
2237	2237	2196	97	0.01	\N	2022-12-14 20:05:50.679575	2022-12-14 20:05:50.679575
2238	2238	2196	98	0.01	\N	2022-12-14 20:05:50.685846	2022-12-14 20:05:50.685846
2239	2239	2196	99	0.0	10	2022-12-14 20:05:50.695568	2022-12-14 20:05:50.695568
2240	2145	1561	67	0.65	\N	2022-12-14 20:05:50.709549	2022-12-14 20:05:50.709549
2241	2241	1561	68	0.5	\N	2022-12-14 20:05:50.717524	2022-12-14 20:05:50.717524
2242	2242	1561	69	1.2	\N	2022-12-14 20:05:50.725551	2022-12-14 20:05:50.725551
2243	2243	1561	70	0.9	\N	2022-12-14 20:05:50.733481	2022-12-14 20:05:50.733481
2244	2244	1561	74	0.45	\N	2022-12-14 20:05:50.74188	2022-12-14 20:05:50.74188
2245	2245	1647	11	0.75	\N	2022-12-14 20:05:50.750362	2022-12-14 20:05:50.750362
2246	2246	1647	12	0.5	\N	2022-12-14 20:05:50.759178	2022-12-14 20:05:50.759178
2247	2247	1647	13	0.6	\N	2022-12-14 20:05:50.767645	2022-12-14 20:05:50.767645
2248	2248	1647	15	0.5	\N	2022-12-14 20:05:50.775497	2022-12-14 20:05:50.775497
2249	2249	1647	21	0.25	\N	2022-12-14 20:05:50.784859	2022-12-14 20:05:50.784859
2250	2250	1647	45	1.0	\N	2022-12-14 20:05:50.792367	2022-12-14 20:05:50.792367
2251	2251	1647	46	0.4	\N	2022-12-14 20:05:50.798961	2022-12-14 20:05:50.798961
2252	2252	1647	49	1.25	\N	2022-12-14 20:05:50.805531	2022-12-14 20:05:50.805531
2253	2253	1647	50	1.25	\N	2022-12-14 20:05:50.812034	2022-12-14 20:05:50.812034
2254	2254	1647	53	1.2	\N	2022-12-14 20:05:50.818553	2022-12-14 20:05:50.818553
2255	2255	1728	83	0.75	\N	2022-12-14 20:05:50.825527	2022-12-14 20:05:50.825527
2256	2256	1728	84	1.7	\N	2022-12-14 20:05:50.83404	2022-12-14 20:05:50.83404
2257	2257	1728	88	1.3	\N	2022-12-14 20:05:50.843673	2022-12-14 20:05:50.843673
2258	2258	1728	89	1.5	\N	2022-12-14 20:05:50.852835	2022-12-14 20:05:50.852835
2259	2259	1728	90	1.4	\N	2022-12-14 20:05:50.860566	2022-12-14 20:05:50.860566
2260	2260	1818	7	1.2	\N	2022-12-14 20:05:50.868297	2022-12-14 20:05:50.868297
2261	2261	1818	9	1.3	\N	2022-12-14 20:05:50.876114	2022-12-14 20:05:50.876114
2262	2262	1818	10	1.25	\N	2022-12-14 20:05:50.883719	2022-12-14 20:05:50.883719
2263	2263	1818	12	1.0	\N	2022-12-14 20:05:50.891521	2022-12-14 20:05:50.891521
2264	2264	1818	13	1.2	\N	2022-12-14 20:05:50.899295	2022-12-14 20:05:50.899295
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
-- Name: species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.species_id_seq', 2264, true);


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
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (id);


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
-- Name: index_plant_samples_on_species_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_plant_samples_on_species_id ON public.plant_samples USING btree (species_id);


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
-- Name: index_seeds_on_species_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_seeds_on_species_id ON public.seeds USING btree (species_id);


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
-- Name: index_species_on_genus_and_species; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_species_on_genus_and_species ON public.species USING btree (genus, species);


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

CREATE UNIQUE INDEX uniqueness_index ON public.seeds USING btree (species_id, generation, accession_id);


--
-- Name: accessions fk_rails_09301936b7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessions
    ADD CONSTRAINT fk_rails_09301936b7 FOREIGN KEY (population_id) REFERENCES public.populations(id);


--
-- Name: plant_samples fk_rails_17000796b7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plant_samples
    ADD CONSTRAINT fk_rails_17000796b7 FOREIGN KEY (species_id) REFERENCES public.species(id);


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
-- Name: seeds fk_rails_d53194878b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds
    ADD CONSTRAINT fk_rails_d53194878b FOREIGN KEY (species_id) REFERENCES public.species(id);


--
-- Name: seeds fk_rails_f84fa5df54; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.seeds
    ADD CONSTRAINT fk_rails_f84fa5df54 FOREIGN KEY (parent_id) REFERENCES public.seeds(id);


--
-- PostgreSQL database dump complete
--

