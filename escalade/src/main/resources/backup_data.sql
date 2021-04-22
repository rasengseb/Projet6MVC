--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-22 09:33:19

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
-- TOC entry 2897 (class 0 OID 24671)
-- Dependencies: 204
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: rasen
--

INSERT INTO public.adresse VALUES (5, 79370, NULL, 'CarriÃ¨re de Cinq Coux, Route de Beausoleil', 'Niort, Deux-SÃ¨vres', 10);
INSERT INTO public.adresse VALUES (6, 79370, NULL, 'CarriÃÂ¨re de Cinq Coux, Route de Beausoleil', 'Niort, Deux-SÃÂ¨vres', NULL);
INSERT INTO public.adresse VALUES (7, 85200, NULL, '', 'Niort', 11);
INSERT INTO public.adresse VALUES (8, 52600, NULL, '', 'Cohons', 12);
INSERT INTO public.adresse VALUES (9, 45140, 1, 'rue de test', 'Orleans', 40);


--
-- TOC entry 2899 (class 0 OID 24682)
-- Dependencies: 206
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: rasen
--

INSERT INTO public.utilisateur VALUES (1, true, 'test@gmail.com', 'admin', 'admin', 'administrateur', 'admin');
INSERT INTO public.utilisateur VALUES (3, false, 'seb@gmail.com', 'seb', 'LE BAIL ', 'Seb', 'than');
INSERT INTO public.utilisateur VALUES (4, false, 'test@test.com', 'test', 'test', 'test', 'test');


--
-- TOC entry 2905 (class 0 OID 24709)
-- Dependencies: 212
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: rasen
--

INSERT INTO public.site VALUES (12, 'Falaise de Cohons', 8, 1, 1, false);
INSERT INTO public.site VALUES (40, 'Test', 9, 4, 1, NULL);
INSERT INTO public.site VALUES (10, 'Cinq Coux', 5, 1, 0, true);
INSERT INTO public.site VALUES (11, 'Pierre blanche', 7, 1, 1, true);


--
-- TOC entry 2901 (class 0 OID 24693)
-- Dependencies: 208
-- Data for Name: commentaire; Type: TABLE DATA; Schema: public; Owner: rasen
--



--
-- TOC entry 2909 (class 0 OID 24758)
-- Dependencies: 216
-- Data for Name: topo; Type: TABLE DATA; Schema: public; Owner: rasen
--

INSERT INTO public.topo VALUES (4, '', 'https://sites.google.com/site/pierreblancheescalade/topo-de-pierre-blanche', 'Topo de PB', 11, 1);
INSERT INTO public.topo VALUES (5, '', 'https://www.tourisme-hautemarne.com/Portal_Upload/Files/PiecesJointes/PDF/BROCHURE_ESCALADE_FR_2007.pdf', 'Brochure Haute-Marne', 12, 1);
INSERT INTO public.topo VALUES (6, '2021-04-20', 'test topo', 'test', 40, 4);


--
-- TOC entry 2911 (class 0 OID 24774)
-- Dependencies: 218
-- Data for Name: reservation; Type: TABLE DATA; Schema: public; Owner: rasen
--

INSERT INTO public.reservation VALUES (2, '2021-04-20', false, 5, 3);
INSERT INTO public.reservation VALUES (3, '2021-04-20', true, 4, 3);


--
-- TOC entry 2903 (class 0 OID 24701)
-- Dependencies: 210
-- Data for Name: secteur; Type: TABLE DATA; Schema: public; Owner: rasen
--

INSERT INTO public.secteur VALUES (9, 11, 1);
INSERT INTO public.secteur VALUES (10, 12, 1);
INSERT INTO public.secteur VALUES (11, 40, 1);


--
-- TOC entry 2907 (class 0 OID 24717)
-- Dependencies: 214
-- Data for Name: voie; Type: TABLE DATA; Schema: public; Owner: rasen
--

INSERT INTO public.voie VALUES (3, '6c', '12 voies - Initiation', 0, 'Secteur de gauche', 9);
INSERT INTO public.voie VALUES (5, '6b', '17 voies - Initiation', 0, 'Secteur du grand DiÃÂ¨dre', 9);
INSERT INTO public.voie VALUES (6, '7b+', '12 voies - Initiation', 0, 'Secteur de la vire', 9);
INSERT INTO public.voie VALUES (8, '6b', '', 0, 'Rocking'' Chair', 10);
INSERT INTO public.voie VALUES (9, '7b+', '', 0, 'La Haine', 10);
INSERT INTO public.voie VALUES (10, '7c/8a', '', 0, 'l''Aveu', 10);
INSERT INTO public.voie VALUES (11, '6b', '', 0, 'Effraie Moi', 10);
INSERT INTO public.voie VALUES (12, '7a', '', 0, 'Imitation SpÃ©lÃ©o', 10);
INSERT INTO public.voie VALUES (13, '6b+', '', 0, 'Christian', 10);
INSERT INTO public.voie VALUES (14, '5b', '', 0, 'Le Trou du FÃ»t', 10);
INSERT INTO public.voie VALUES (15, '6a', '', 0, 'Les Cohons', 10);
INSERT INTO public.voie VALUES (16, '5c', '', 0, 'Le Pilier du Soleil', 10);
INSERT INTO public.voie VALUES (17, '5b', '', 0, 'Le Rocher Lingon', 10);
INSERT INTO public.voie VALUES (18, '6a', '', 0, 'Yvette Errant', 10);
INSERT INTO public.voie VALUES (19, '6a+', '', 0, 'SubtilitÃ© Lingonne', 10);
INSERT INTO public.voie VALUES (20, '6a', '', 0, 'Basket Blues', 10);
INSERT INTO public.voie VALUES (21, '4b', '', 0, 'le Loir est Chair', 10);
INSERT INTO public.voie VALUES (22, '4a', '', 0, 'Bratislava', 10);
INSERT INTO public.voie VALUES (23, '5b', '', 0, 'Olivier', 10);
INSERT INTO public.voie VALUES (24, '6c+', '', 0, 'l''Enfer Ã  Repasser', 10);
INSERT INTO public.voie VALUES (25, '5c', '', 0, 'l''Escalier', 10);
INSERT INTO public.voie VALUES (26, '5c', '', 0, 'Breast', 10);
INSERT INTO public.voie VALUES (29, '6b', 'test', 10, 'test', 11);


--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 203
-- Name: adresse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.adresse_id_seq', 9, true);


--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 207
-- Name: commentaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.commentaire_id_seq', 6, true);


--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 217
-- Name: reservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.reservation_id_seq', 3, true);


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 209
-- Name: secteur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.secteur_id_seq', 11, true);


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 211
-- Name: site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.site_id_seq', 40, true);


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 215
-- Name: topo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.topo_id_seq', 6, true);


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 205
-- Name: utilisateur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.utilisateur_id_seq', 4, true);


--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 213
-- Name: voie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rasen
--

SELECT pg_catalog.setval('public.voie_id_seq', 29, true);


-- Completed on 2021-04-22 09:33:19

--
-- PostgreSQL database dump complete
--

