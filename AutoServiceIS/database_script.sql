--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 16.0

-- Started on 2026-11-18 11:06:14

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

--
-- TOC entry 7 (class 2615 OID 436488)
-- Name: yp07; Type: SCHEMA; Schema: -; Owner: 23ip_27
--

CREATE SCHEMA yp07;


ALTER SCHEMA yp07 OWNER TO "23ip_27";

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 255 (class 1259 OID 436818)
-- Name: account_types; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.account_types (
    account_type_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE yp07.account_types OWNER TO "23ip_27";

--
-- TOC entry 254 (class 1259 OID 436816)
-- Name: account_types_account_type_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.account_types_account_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.account_types_account_type_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 254
-- Name: account_types_account_type_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.account_types_account_type_id_seq OWNED BY yp07.account_types.account_type_id;


--
-- TOC entry 263 (class 1259 OID 436867)
-- Name: authorizacia; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.authorizacia (
    authorizacia_id integer NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50),
    login character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    picture character varying(255),
    account_type_id integer
);


ALTER TABLE yp07.authorizacia OWNER TO "23ip_27";

--
-- TOC entry 262 (class 1259 OID 436865)
-- Name: authorizacia_authorizacia_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.authorizacia_authorizacia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.authorizacia_authorizacia_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 262
-- Name: authorizacia_authorizacia_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.authorizacia_authorizacia_id_seq OWNED BY yp07.authorizacia.authorizacia_id;


--
-- TOC entry 257 (class 1259 OID 436827)
-- Name: cars; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.cars (
    car_id integer NOT NULL,
    brand character varying(50) NOT NULL,
    model character varying(50) NOT NULL,
    release_year integer,
    state_number character varying(15) NOT NULL,
    CONSTRAINT cars_release_year_check CHECK ((release_year > 1900))
);


ALTER TABLE yp07.cars OWNER TO "23ip_27";

--
-- TOC entry 256 (class 1259 OID 436825)
-- Name: cars_car_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.cars_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.cars_car_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 256
-- Name: cars_car_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.cars_car_id_seq OWNED BY yp07.cars.car_id;


--
-- TOC entry 259 (class 1259 OID 436838)
-- Name: clients; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.clients (
    client_id integer NOT NULL,
    car_id integer,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50),
    phone_number character varying(20),
    address text
);


ALTER TABLE yp07.clients OWNER TO "23ip_27";

--
-- TOC entry 258 (class 1259 OID 436836)
-- Name: clients_client_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.clients_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.clients_client_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 258
-- Name: clients_client_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.clients_client_id_seq OWNED BY yp07.clients.client_id;


--
-- TOC entry 261 (class 1259 OID 436854)
-- Name: employees; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.employees (
    employee_id integer NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50),
    position_id integer,
    phone_number character varying(20)
);


ALTER TABLE yp07.employees OWNER TO "23ip_27";

--
-- TOC entry 260 (class 1259 OID 436852)
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.employees_employee_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 260
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.employees_employee_id_seq OWNED BY yp07.employees.employee_id;


--
-- TOC entry 251 (class 1259 OID 436796)
-- Name: order_statuses; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.order_statuses (
    order_status_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE yp07.order_statuses OWNER TO "23ip_27";

--
-- TOC entry 250 (class 1259 OID 436794)
-- Name: order_statuses_order_status_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.order_statuses_order_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.order_statuses_order_status_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 250
-- Name: order_statuses_order_status_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.order_statuses_order_status_id_seq OWNED BY yp07.order_statuses.order_status_id;


--
-- TOC entry 247 (class 1259 OID 436780)
-- Name: payment_methods; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.payment_methods (
    payment_method_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE yp07.payment_methods OWNER TO "23ip_27";

--
-- TOC entry 246 (class 1259 OID 436778)
-- Name: payment_methods_payment_method_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.payment_methods_payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.payment_methods_payment_method_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 246
-- Name: payment_methods_payment_method_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.payment_methods_payment_method_id_seq OWNED BY yp07.payment_methods.payment_method_id;


--
-- TOC entry 249 (class 1259 OID 436788)
-- Name: payment_statuses; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.payment_statuses (
    payment_status_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE yp07.payment_statuses OWNER TO "23ip_27";

--
-- TOC entry 248 (class 1259 OID 436786)
-- Name: payment_statuses_payment_status_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.payment_statuses_payment_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.payment_statuses_payment_status_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 248
-- Name: payment_statuses_payment_status_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.payment_statuses_payment_status_id_seq OWNED BY yp07.payment_statuses.payment_status_id;


--
-- TOC entry 271 (class 1259 OID 436937)
-- Name: payments; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.payments (
    payment_id integer NOT NULL,
    order_id integer,
    payment_date date NOT NULL,
    amount numeric(10,2) NOT NULL,
    payment_method_id integer,
    payment_status_id integer
);


ALTER TABLE yp07.payments OWNER TO "23ip_27";

--
-- TOC entry 270 (class 1259 OID 436935)
-- Name: payments_payment_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.payments_payment_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 270
-- Name: payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.payments_payment_id_seq OWNED BY yp07.payments.payment_id;


--
-- TOC entry 267 (class 1259 OID 436901)
-- Name: performed_works; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.performed_works (
    performed_work_id integer NOT NULL,
    order_id integer,
    quantity integer NOT NULL,
    work_cost numeric(10,2) NOT NULL
);


ALTER TABLE yp07.performed_works OWNER TO "23ip_27";

--
-- TOC entry 266 (class 1259 OID 436899)
-- Name: performed_works_performed_work_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.performed_works_performed_work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.performed_works_performed_work_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 266
-- Name: performed_works_performed_work_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.performed_works_performed_work_id_seq OWNED BY yp07.performed_works.performed_work_id;


--
-- TOC entry 253 (class 1259 OID 436807)
-- Name: positions; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.positions (
    position_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    salary numeric(10,2) NOT NULL
);


ALTER TABLE yp07.positions OWNER TO "23ip_27";

--
-- TOC entry 252 (class 1259 OID 436805)
-- Name: positions_position_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.positions_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.positions_position_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 252
-- Name: positions_position_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.positions_position_id_seq OWNED BY yp07.positions.position_id;


--
-- TOC entry 269 (class 1259 OID 436909)
-- Name: repair_orders; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.repair_orders (
    order_id integer NOT NULL,
    client_id integer,
    employee_id integer,
    registration_date date NOT NULL,
    completion_date date,
    order_status_id integer,
    total_cost numeric(10,2)
);


ALTER TABLE yp07.repair_orders OWNER TO "23ip_27";

--
-- TOC entry 268 (class 1259 OID 436907)
-- Name: repair_orders_order_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.repair_orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.repair_orders_order_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 268
-- Name: repair_orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.repair_orders_order_id_seq OWNED BY yp07.repair_orders.order_id;


--
-- TOC entry 273 (class 1259 OID 436960)
-- Name: service_performed_works; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.service_performed_works (
    service_performed_work_id integer NOT NULL,
    service_id integer,
    performed_work_id integer
);


ALTER TABLE yp07.service_performed_works OWNER TO "23ip_27";

--
-- TOC entry 272 (class 1259 OID 436958)
-- Name: service_performed_works_service_performed_work_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.service_performed_works_service_performed_work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.service_performed_works_service_performed_work_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 272
-- Name: service_performed_works_service_performed_work_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.service_performed_works_service_performed_work_id_seq OWNED BY yp07.service_performed_works.service_performed_work_id;


--
-- TOC entry 245 (class 1259 OID 436772)
-- Name: service_types; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.service_types (
    service_type_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE yp07.service_types OWNER TO "23ip_27";

--
-- TOC entry 244 (class 1259 OID 436770)
-- Name: service_types_service_type_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.service_types_service_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.service_types_service_type_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 244
-- Name: service_types_service_type_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.service_types_service_type_id_seq OWNED BY yp07.service_types.service_type_id;


--
-- TOC entry 265 (class 1259 OID 436885)
-- Name: services; Type: TABLE; Schema: yp07; Owner: 23ip_27
--

CREATE TABLE yp07.services (
    service_id integer NOT NULL,
    service_type_id integer,
    description text,
    cost numeric(10,2) NOT NULL
);


ALTER TABLE yp07.services OWNER TO "23ip_27";

--
-- TOC entry 264 (class 1259 OID 436883)
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: yp07; Owner: 23ip_27
--

CREATE SEQUENCE yp07.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE yp07.services_service_id_seq OWNER TO "23ip_27";

--
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 264
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: yp07; Owner: 23ip_27
--

ALTER SEQUENCE yp07.services_service_id_seq OWNED BY yp07.services.service_id;


--
-- TOC entry 3050 (class 2604 OID 436821)
-- Name: account_types account_type_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.account_types ALTER COLUMN account_type_id SET DEFAULT nextval('yp07.account_types_account_type_id_seq'::regclass);


--
-- TOC entry 3054 (class 2604 OID 436870)
-- Name: authorizacia authorizacia_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.authorizacia ALTER COLUMN authorizacia_id SET DEFAULT nextval('yp07.authorizacia_authorizacia_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 436830)
-- Name: cars car_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.cars ALTER COLUMN car_id SET DEFAULT nextval('yp07.cars_car_id_seq'::regclass);


--
-- TOC entry 3052 (class 2604 OID 436841)
-- Name: clients client_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.clients ALTER COLUMN client_id SET DEFAULT nextval('yp07.clients_client_id_seq'::regclass);


--
-- TOC entry 3053 (class 2604 OID 436857)
-- Name: employees employee_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.employees ALTER COLUMN employee_id SET DEFAULT nextval('yp07.employees_employee_id_seq'::regclass);


--
-- TOC entry 3048 (class 2604 OID 436799)
-- Name: order_statuses order_status_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.order_statuses ALTER COLUMN order_status_id SET DEFAULT nextval('yp07.order_statuses_order_status_id_seq'::regclass);


--
-- TOC entry 3046 (class 2604 OID 436783)
-- Name: payment_methods payment_method_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payment_methods ALTER COLUMN payment_method_id SET DEFAULT nextval('yp07.payment_methods_payment_method_id_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 436791)
-- Name: payment_statuses payment_status_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payment_statuses ALTER COLUMN payment_status_id SET DEFAULT nextval('yp07.payment_statuses_payment_status_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 436940)
-- Name: payments payment_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payments ALTER COLUMN payment_id SET DEFAULT nextval('yp07.payments_payment_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 436904)
-- Name: performed_works performed_work_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.performed_works ALTER COLUMN performed_work_id SET DEFAULT nextval('yp07.performed_works_performed_work_id_seq'::regclass);


--
-- TOC entry 3049 (class 2604 OID 436810)
-- Name: positions position_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.positions ALTER COLUMN position_id SET DEFAULT nextval('yp07.positions_position_id_seq'::regclass);


--
-- TOC entry 3057 (class 2604 OID 436912)
-- Name: repair_orders order_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.repair_orders ALTER COLUMN order_id SET DEFAULT nextval('yp07.repair_orders_order_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 436963)
-- Name: service_performed_works service_performed_work_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.service_performed_works ALTER COLUMN service_performed_work_id SET DEFAULT nextval('yp07.service_performed_works_service_performed_work_id_seq'::regclass);


--
-- TOC entry 3045 (class 2604 OID 436775)
-- Name: service_types service_type_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.service_types ALTER COLUMN service_type_id SET DEFAULT nextval('yp07.service_types_service_type_id_seq'::regclass);


--
-- TOC entry 3055 (class 2604 OID 436888)
-- Name: services service_id; Type: DEFAULT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.services ALTER COLUMN service_id SET DEFAULT nextval('yp07.services_service_id_seq'::regclass);


--
-- TOC entry 3249 (class 0 OID 436818)
-- Dependencies: 255
-- Data for Name: account_types; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.account_types (account_type_id, name) FROM stdin;
1	Administrator
2	Manager
3	Client
4	Accountant
5	Storekeeper
\.


--
-- TOC entry 3257 (class 0 OID 436867)
-- Dependencies: 263
-- Data for Name: authorizacia; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.authorizacia (authorizacia_id, last_name, first_name, middle_name, login, password, picture, account_type_id) FROM stdin;
1	Admin	Admin	Adminovich	admin	admin123	default.png	1
2	Sidorov	Alexey	Vladimirovich	mechanic1	pass123	avatar1.jpg	2
3	Ivanov	Ivan	Ivanovich	client1	pass123	avatar2.jpg	3
4	Smirnov	Oleg	Olegovich	client2	pass456	avatar3.jpg	3
5	Morozov	Pavel	Andreevich	electric1	pass789	avatar4.jpg	2
\.


--
-- TOC entry 3251 (class 0 OID 436827)
-- Dependencies: 257
-- Data for Name: cars; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.cars (car_id, brand, model, release_year, state_number) FROM stdin;
1	Lada	Vesta	2020	A123BC77
2	Toyota	Camry	2018	B456EK99
3	Ford	Focus	2015	C789MH50
4	Kia	Rio	2021	E111AA77
5	Hyundai	Solaris	2019	K222BB77
\.


--
-- TOC entry 3253 (class 0 OID 436838)
-- Dependencies: 259
-- Data for Name: clients; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.clients (client_id, car_id, last_name, first_name, middle_name, phone_number, address) FROM stdin;
1	1	Ivanov	Ivan	Ivanovich	+79101112233	Moscow, Pushkina st., 1
2	2	Petrov	Petr	Petrovich	+79202223344	Moscow, Lermontova st., 2
3	4	Smirnov	Oleg	Olegovich	+79505556677	Moscow, Tverskaya st., 3
4	5	Volkova	Anna	Sergeevna	+79606667788	Moscow, Arbat st., 4
5	3	Sokolov	Dmitry	Andreevich	+79907778899	Moscow, Lenina st., 5
\.


--
-- TOC entry 3255 (class 0 OID 436854)
-- Dependencies: 261
-- Data for Name: employees; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.employees (employee_id, last_name, first_name, middle_name, position_id, phone_number) FROM stdin;
1	Sidorov	Alexey	Vladimirovich	1	+79303334455
2	Kuznetsov	Dmitry	Sergeevich	2	+79404445566
3	Morozov	Pavel	Andreevich	4	+79707778899
4	Sokolova	Elena	Ivanovna	5	+79808889900
5	Mikhailov	Sergey	Nikolaevich	3	+79909990011
\.


--
-- TOC entry 3245 (class 0 OID 436796)
-- Dependencies: 251
-- Data for Name: order_statuses; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.order_statuses (order_status_id, name, description) FROM stdin;
1	New	Order created waiting for mechanic
2	In Progress	Car is being repaired
3	Completed	Repair finished car handed over
4	Waiting for Parts	Repair paused waiting for parts delivery
5	Cancelled	Order cancelled by client
\.


--
-- TOC entry 3241 (class 0 OID 436780)
-- Dependencies: 247
-- Data for Name: payment_methods; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.payment_methods (payment_method_id, name) FROM stdin;
1	Cash
2	Bank Transfer
3	Credit Card
4	Online Payment
5	Installment
\.


--
-- TOC entry 3243 (class 0 OID 436788)
-- Dependencies: 249
-- Data for Name: payment_statuses; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.payment_statuses (payment_status_id, name) FROM stdin;
1	Pending Payment
2	Paid
3	Refunded
4	Cancelled
5	Processing
\.


--
-- TOC entry 3265 (class 0 OID 436937)
-- Dependencies: 271
-- Data for Name: payments; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.payments (payment_id, order_id, payment_date, amount, payment_method_id, payment_status_id) FROM stdin;
1	1	2023-10-01	9500.00	2	2
2	2	2023-10-07	8500.00	1	2
3	3	2023-10-10	3000.00	4	4
4	4	2023-10-13	4500.00	5	5
5	5	2023-10-15	12000.00	3	1
\.


--
-- TOC entry 3261 (class 0 OID 436901)
-- Dependencies: 267
-- Data for Name: performed_works; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.performed_works (performed_work_id, order_id, quantity, work_cost) FROM stdin;
1	1	1	1500.00
2	1	1	8000.00
3	2	1	8000.00
4	3	1	3000.00
5	4	1	4500.00
\.


--
-- TOC entry 3247 (class 0 OID 436807)
-- Dependencies: 253
-- Data for Name: positions; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.positions (position_id, name, description, salary) FROM stdin;
1	Mechanic	Chassis repair	50000.00
2	Painter	Painting and bodywork	60000.00
3	Manager	Order processing	40000.00
4	Auto Electrician	Electrical systems repair	55000.00
5	Apprentice	Assistant mechanic	30000.00
\.


--
-- TOC entry 3263 (class 0 OID 436909)
-- Dependencies: 269
-- Data for Name: repair_orders; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.repair_orders (order_id, client_id, employee_id, registration_date, completion_date, order_status_id, total_cost) FROM stdin;
1	1	1	2023-10-01	\N	2	10500.00
2	2	2	2023-10-05	2023-10-07	3	8500.00
3	3	3	2023-10-10	\N	1	3000.00
4	4	4	2023-10-12	2023-10-13	3	4500.00
5	5	5	2023-10-15	\N	4	12000.00
\.


--
-- TOC entry 3267 (class 0 OID 436960)
-- Dependencies: 273
-- Data for Name: service_performed_works; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.service_performed_works (service_performed_work_id, service_id, performed_work_id) FROM stdin;
1	1	1
2	2	2
3	2	3
4	4	4
5	5	5
\.


--
-- TOC entry 3239 (class 0 OID 436772)
-- Dependencies: 245
-- Data for Name: service_types; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.service_types (service_type_id, name) FROM stdin;
1	Diagnostics
2	Engine Repair
3	Body Repair
4	Oil Change
5	Wheel Alignment
\.


--
-- TOC entry 3259 (class 0 OID 436885)
-- Dependencies: 265
-- Data for Name: services; Type: TABLE DATA; Schema: yp07; Owner: 23ip_27
--

COPY yp07.services (service_id, service_type_id, description, cost) FROM stdin;
1	1	Computer chassis diagnostics	1500.00
2	2	Timing belt replacement	8000.00
3	4	Engine oil change	2500.00
4	5	Wheel alignment 3D	3000.00
5	3	AC freon refill	4500.00
\.


--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 254
-- Name: account_types_account_type_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.account_types_account_type_id_seq', 5, true);


--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 262
-- Name: authorizacia_authorizacia_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.authorizacia_authorizacia_id_seq', 5, true);


--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 256
-- Name: cars_car_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.cars_car_id_seq', 5, true);


--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 258
-- Name: clients_client_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.clients_client_id_seq', 5, true);


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 260
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.employees_employee_id_seq', 5, true);


--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 250
-- Name: order_statuses_order_status_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.order_statuses_order_status_id_seq', 5, true);


--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 246
-- Name: payment_methods_payment_method_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.payment_methods_payment_method_id_seq', 5, true);


--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 248
-- Name: payment_statuses_payment_status_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.payment_statuses_payment_status_id_seq', 5, true);


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 270
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.payments_payment_id_seq', 5, true);


--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 266
-- Name: performed_works_performed_work_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.performed_works_performed_work_id_seq', 5, true);


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 252
-- Name: positions_position_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.positions_position_id_seq', 5, true);


--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 268
-- Name: repair_orders_order_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.repair_orders_order_id_seq', 5, true);


--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 272
-- Name: service_performed_works_service_performed_work_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.service_performed_works_service_performed_work_id_seq', 5, true);


--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 244
-- Name: service_types_service_type_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.service_types_service_type_id_seq', 5, true);


--
-- TOC entry 3302 (class 0 OID 0)
-- Dependencies: 264
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: yp07; Owner: 23ip_27
--

SELECT pg_catalog.setval('yp07.services_service_id_seq', 5, true);


--
-- TOC entry 3072 (class 2606 OID 436823)
-- Name: account_types account_types_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.account_types
    ADD CONSTRAINT account_types_pkey PRIMARY KEY (account_type_id);


--
-- TOC entry 3082 (class 2606 OID 436877)
-- Name: authorizacia authorizacia_login_key; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.authorizacia
    ADD CONSTRAINT authorizacia_login_key UNIQUE (login);


--
-- TOC entry 3084 (class 2606 OID 436875)
-- Name: authorizacia authorizacia_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.authorizacia
    ADD CONSTRAINT authorizacia_pkey PRIMARY KEY (authorizacia_id);


--
-- TOC entry 3074 (class 2606 OID 436833)
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (car_id);


--
-- TOC entry 3076 (class 2606 OID 436835)
-- Name: cars cars_state_number_key; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.cars
    ADD CONSTRAINT cars_state_number_key UNIQUE (state_number);


--
-- TOC entry 3078 (class 2606 OID 436846)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);


--
-- TOC entry 3080 (class 2606 OID 436859)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3068 (class 2606 OID 436804)
-- Name: order_statuses order_statuses_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.order_statuses
    ADD CONSTRAINT order_statuses_pkey PRIMARY KEY (order_status_id);


--
-- TOC entry 3064 (class 2606 OID 436785)
-- Name: payment_methods payment_methods_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (payment_method_id);


--
-- TOC entry 3066 (class 2606 OID 436793)
-- Name: payment_statuses payment_statuses_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payment_statuses
    ADD CONSTRAINT payment_statuses_pkey PRIMARY KEY (payment_status_id);


--
-- TOC entry 3092 (class 2606 OID 436942)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);


--
-- TOC entry 3088 (class 2606 OID 436906)
-- Name: performed_works performed_works_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.performed_works
    ADD CONSTRAINT performed_works_pkey PRIMARY KEY (performed_work_id);


--
-- TOC entry 3070 (class 2606 OID 436815)
-- Name: positions positions_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (position_id);


--
-- TOC entry 3090 (class 2606 OID 436914)
-- Name: repair_orders repair_orders_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.repair_orders
    ADD CONSTRAINT repair_orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 3094 (class 2606 OID 436965)
-- Name: service_performed_works service_performed_works_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.service_performed_works
    ADD CONSTRAINT service_performed_works_pkey PRIMARY KEY (service_performed_work_id);


--
-- TOC entry 3062 (class 2606 OID 436777)
-- Name: service_types service_types_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.service_types
    ADD CONSTRAINT service_types_pkey PRIMARY KEY (service_type_id);


--
-- TOC entry 3086 (class 2606 OID 436893)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- TOC entry 3097 (class 2606 OID 436878)
-- Name: authorizacia authorizacia_account_type_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.authorizacia
    ADD CONSTRAINT authorizacia_account_type_id_fkey FOREIGN KEY (account_type_id) REFERENCES yp07.account_types(account_type_id);


--
-- TOC entry 3095 (class 2606 OID 436847)
-- Name: clients clients_car_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.clients
    ADD CONSTRAINT clients_car_id_fkey FOREIGN KEY (car_id) REFERENCES yp07.cars(car_id);


--
-- TOC entry 3096 (class 2606 OID 436860)
-- Name: employees employees_position_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.employees
    ADD CONSTRAINT employees_position_id_fkey FOREIGN KEY (position_id) REFERENCES yp07.positions(position_id);


--
-- TOC entry 3099 (class 2606 OID 436930)
-- Name: performed_works fk_performed_works_order; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.performed_works
    ADD CONSTRAINT fk_performed_works_order FOREIGN KEY (order_id) REFERENCES yp07.repair_orders(order_id);


--
-- TOC entry 3103 (class 2606 OID 436943)
-- Name: payments payments_order_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES yp07.repair_orders(order_id);


--
-- TOC entry 3104 (class 2606 OID 436948)
-- Name: payments payments_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payments
    ADD CONSTRAINT payments_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES yp07.payment_methods(payment_method_id);


--
-- TOC entry 3105 (class 2606 OID 436953)
-- Name: payments payments_payment_status_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.payments
    ADD CONSTRAINT payments_payment_status_id_fkey FOREIGN KEY (payment_status_id) REFERENCES yp07.payment_statuses(payment_status_id);


--
-- TOC entry 3100 (class 2606 OID 436915)
-- Name: repair_orders repair_orders_client_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.repair_orders
    ADD CONSTRAINT repair_orders_client_id_fkey FOREIGN KEY (client_id) REFERENCES yp07.clients(client_id);


--
-- TOC entry 3101 (class 2606 OID 436920)
-- Name: repair_orders repair_orders_employee_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.repair_orders
    ADD CONSTRAINT repair_orders_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES yp07.employees(employee_id);


--
-- TOC entry 3102 (class 2606 OID 436925)
-- Name: repair_orders repair_orders_order_status_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.repair_orders
    ADD CONSTRAINT repair_orders_order_status_id_fkey FOREIGN KEY (order_status_id) REFERENCES yp07.order_statuses(order_status_id);


--
-- TOC entry 3106 (class 2606 OID 436971)
-- Name: service_performed_works service_performed_works_performed_work_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.service_performed_works
    ADD CONSTRAINT service_performed_works_performed_work_id_fkey FOREIGN KEY (performed_work_id) REFERENCES yp07.performed_works(performed_work_id);


--
-- TOC entry 3107 (class 2606 OID 436966)
-- Name: service_performed_works service_performed_works_service_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.service_performed_works
    ADD CONSTRAINT service_performed_works_service_id_fkey FOREIGN KEY (service_id) REFERENCES yp07.services(service_id);


--
-- TOC entry 3098 (class 2606 OID 436894)
-- Name: services services_service_type_id_fkey; Type: FK CONSTRAINT; Schema: yp07; Owner: 23ip_27
--

ALTER TABLE ONLY yp07.services
    ADD CONSTRAINT services_service_type_id_fkey FOREIGN KEY (service_type_id) REFERENCES yp07.service_types(service_type_id);


-- Completed on 2026-11-18 11:06:15

--
-- PostgreSQL database dump complete
--

