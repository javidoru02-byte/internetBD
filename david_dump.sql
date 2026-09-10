--
-- PostgreSQL database dump
--

\restrict ld3f7tJ58dObOKkixUKYhiyFdn01xnoCtNFnLt1SssvRqNh5IKXv9mFfDbT99oI

-- Dumped from database version 16.15 (Ubuntu 16.15-1.pgdg26.04+2)
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-1.pgdg26.04+2)

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
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    client_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.client_id_seq OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    client_id integer NOT NULL,
    description text,
    date date NOT NULL,
    is_paid boolean NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: orders_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_product (
    product_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.orders_product OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    description text,
    price numeric(10,2) NOT NULL,
    type_id integer NOT NULL,
    category_id integer NOT NULL,
    model_id integer NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_brand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_brand (
    id integer NOT NULL,
    brand_name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.product_brand OWNER TO postgres;

--
-- Name: product_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_brand_id_seq OWNER TO postgres;

--
-- Name: product_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_brand_id_seq OWNED BY public.product_brand.id;


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_category (
    id integer NOT NULL,
    category_name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.product_category OWNER TO postgres;

--
-- Name: product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_category_id_seq OWNER TO postgres;

--
-- Name: product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_category_id_seq OWNED BY public.product_category.id;


--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: product_model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_model (
    id integer NOT NULL,
    brand_id integer NOT NULL,
    model_name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.product_model OWNER TO postgres;

--
-- Name: product_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_model_id_seq OWNER TO postgres;

--
-- Name: product_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_model_id_seq OWNED BY public.product_model.id;


--
-- Name: product_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_type (
    id integer NOT NULL,
    type_name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.product_type OWNER TO postgres;

--
-- Name: product_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_type_id_seq OWNER TO postgres;

--
-- Name: product_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_type_id_seq OWNED BY public.product_type.id;


--
-- Name: storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.storage (
    id integer NOT NULL,
    city character varying(100) NOT NULL,
    storage_name character varying(100) NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.storage OWNER TO postgres;

--
-- Name: storage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.storage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.storage_id_seq OWNER TO postgres;

--
-- Name: storage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.storage_id_seq OWNED BY public.storage.id;


--
-- Name: storage_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.storage_product (
    product_id integer NOT NULL,
    storage_id integer NOT NULL
);


ALTER TABLE public.storage_product OWNER TO postgres;

--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: product_brand id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_brand ALTER COLUMN id SET DEFAULT nextval('public.product_brand_id_seq'::regclass);


--
-- Name: product_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category ALTER COLUMN id SET DEFAULT nextval('public.product_category_id_seq'::regclass);


--
-- Name: product_model id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_model ALTER COLUMN id SET DEFAULT nextval('public.product_model_id_seq'::regclass);


--
-- Name: product_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_type ALTER COLUMN id SET DEFAULT nextval('public.product_type_id_seq'::regclass);


--
-- Name: storage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage ALTER COLUMN id SET DEFAULT nextval('public.storage_id_seq'::regclass);


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, client_name, email) FROM stdin;
1	Олексій	alex.kovalenko@gmail.com
2	Марія	m.shevchenko@ukr.net
3	Дмитро	d.bondarenko@gmail.com
4	Анна	anna.melnyk@outlook.com
5	Ігор	igor.tkachenko@gmail.com
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, client_id, description, date, is_paid) FROM stdin;
1	1	Онлайн-оплата карткою	2026-09-01	t
2	2	Оплата при отриманні	2026-09-02	f
3	3	Самовивіз зі складу	2026-09-03	t
4	4	Доставка курєром	2026-09-04	t
5	5	Оплата за реквізитами	2026-09-05	f
6	1	Sample order	2023-01-01	f
\.


--
-- Data for Name: orders_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_product (product_id, order_id) FROM stdin;
1	1
2	2
3	3
4	4
6	1
5	5
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, description, price, type_id, category_id, model_id) FROM stdin;
1	Смартфон Samsung Galaxy S23 8/256GB Phantom Black	32999.00	1	1	5
2	Смартфон Apple iPhone 17 128GB Black	42999.00	1	1	6
3	Пральна машина Bosch Serie 4 WAN28262UA	18499.00	2	2	7
4	Відеокарта Asus PCI-Ex GeForce RTX 4070 ROG Strix 12GB	34500.00	3	3	8
5	М’яч баскетбольний Nike Pro Training Basketball Size 7	1299.00	4	4	9
6	Змішувач для раковини Grohe Eurosmart M-Size	3499.00	5	5	10
\.


--
-- Data for Name: product_brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_brand (id, brand_name, description) FROM stdin;
1	Samsung	Південнокорейський бренд електроніки та побутової техніки
2	Apple	Американський виробник преміальної електроніки
3	Bosch	Німецький бренд надійної побутової техніки
4	Asus	Тайванський бренд комп’ютерів та комплектуючих
5	Nike	Всесвітньо відомий бренд спортивних товарів
6	Grohe	Німецький бренд сантехніки та змішувачів
\.


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_category (id, category_name, description) FROM stdin;
1	Електроніка	Галжети та електронні пристрої
2	Побутова техніка	Пристрої для дому та кухні
3	Комп’ютери та комплектуючі	Комп’ютери, ноутбуки та аксесуари
4	Спортивні товари	Спортивні товари та обладнання
5	Сантехніка	Товари для ванної кімнати та кухні
\.


--
-- Data for Name: product_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_model (id, brand_id, model_name, description) FROM stdin;
5	1	Galaxy S23	Смартфон флагманської серії
6	2	iPhone 17	Смартфон останнього покоління
7	3	Serie 4	Пральна машина з низьким енергоспоживанням
8	4	ROG Strix RTX 4070	Відеокарта для ігрових ПК
9	5	Pro Training Basketball	Баскетбольний м’яч для залу та вулиці
10	6	Eurosmart	Одноважільний змішувач для раковини
\.


--
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_type (id, type_name, description) FROM stdin;
1	Смартфони	Мобільні телефони із сенсорним екраном
2	Пральні машини	Техніка для автоматичного прання білизни
3	Відеокарти	Графічні адаптери для комп’ютерів
4	Спортивний інвентар	Предмети для тренувань та ігор
5	Змішувачі	Пристрої для регулювання потоку та температури води
\.


--
-- Data for Name: storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storage (id, city, storage_name, quantity) FROM stdin;
1	Київ	Центральний склад №1	1500
2	Львів	Західний термінал	800
3	Дніпро	Східний склад	600
4	Одеса	Південний хаб	450
5	Харків	Слобожанський склад	180
\.


--
-- Data for Name: storage_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storage_product (product_id, storage_id) FROM stdin;
1	1
2	1
3	2
4	3
5	4
6	5
\.


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_seq', 5, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 6, true);


--
-- Name: product_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_brand_id_seq', 6, true);


--
-- Name: product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_category_id_seq', 5, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 6, true);


--
-- Name: product_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_model_id_seq', 10, true);


--
-- Name: product_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_type_id_seq', 5, true);


--
-- Name: storage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storage_id_seq', 5, true);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: product_brand product_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_brand
    ADD CONSTRAINT product_brand_pkey PRIMARY KEY (id);


--
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);


--
-- Name: product_model product_model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_model
    ADD CONSTRAINT product_model_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);


--
-- Name: storage storage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage
    ADD CONSTRAINT storage_pkey PRIMARY KEY (id);


--
-- Name: orders orders_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: orders_product orders_product_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_product
    ADD CONSTRAINT orders_product_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: orders_product orders_product_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_product
    ADD CONSTRAINT orders_product_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- Name: product product_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.product_category(id);


--
-- Name: product_model product_model_brand_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_model
    ADD CONSTRAINT product_model_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.product_brand(id);


--
-- Name: product product_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.product_model(id);


--
-- Name: product product_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.product_type(id);


--
-- Name: storage_product storage_product_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage_product
    ADD CONSTRAINT storage_product_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- Name: storage_product storage_product_storage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage_product
    ADD CONSTRAINT storage_product_storage_id_fkey FOREIGN KEY (storage_id) REFERENCES public.storage(id);


--
-- PostgreSQL database dump complete
--

\unrestrict ld3f7tJ58dObOKkixUKYhiyFdn01xnoCtNFnLt1SssvRqNh5IKXv9mFfDbT99oI

