

INSERT INTO public.ospedale VALUES (966, 'Luigi Sacco', 'Via Grassi, 74');
INSERT INTO public.ospedale VALUES (970, 'San Paolo', 'Via A. Di Rudini, 8');
INSERT INTO public.ospedale VALUES (972, 'San Carlo Borromeo', 'Via Pio II, 3');


--
-- Data for Name: ambulatorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ambulatorio VALUES (966, 'Centro Donazioni Sangue');
INSERT INTO public.ambulatorio VALUES (966, 'Laboratorio Endocrinologia');
INSERT INTO public.ambulatorio VALUES (966, 'Centro Tamponi');
INSERT INTO public.ambulatorio VALUES (966, 'Psichiatria');
INSERT INTO public.ambulatorio VALUES (970, 'Dialisi');
INSERT INTO public.ambulatorio VALUES (970, 'Oculistica');
INSERT INTO public.ambulatorio VALUES (970, 'Medicina Generale');
INSERT INTO public.ambulatorio VALUES (970, 'Diagnostica Generale');


--
-- Data for Name: ambulatorioesterno; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ambulatorioesterno VALUES (966, 'Centro Tamponi', 'Piazza Novelli 1', '3273883894', '08:00:00', '19:00:00');
INSERT INTO public.ambulatorioesterno VALUES (966, 'Centro Donazioni Sangue', 'Piazza Bimbo 1', '3273993132', '08:00:00', '15:00:00');
INSERT INTO public.ambulatorioesterno VALUES (970, 'Dialisi', 'Piazza Castelli', '3273994532', '09:00:00', '15:00:00');
INSERT INTO public.ambulatorioesterno VALUES (970, 'Medicina Generale', 'Piazza Bimbo 1', '3273213132', '08:00:00', '23:00:00');


--
-- Data for Name: ambulatoriointerno; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ambulatoriointerno VALUES (966, 'Laboratorio Endocrinologia', 1, 2);
INSERT INTO public.ambulatoriointerno VALUES (966, 'Psichiatria', 2, 4);
INSERT INTO public.ambulatoriointerno VALUES (970, 'Oculistica', 2, 4);
INSERT INTO public.ambulatoriointerno VALUES (970, 'Diagnostica Generale', 2, 3);


--
-- Data for Name: dipendente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dipendente VALUES ('MSSPTR72T05W598W', 'Messi', 'Pietro', '1972-01-05', 'Mantova');
INSERT INTO public.dipendente VALUES ('RBXVNX93A26B673W', 'Rebo', 'Ivan', '1993-10-26', 'Milano');
INSERT INTO public.dipendente VALUES ('PPPMTT80T10T334C', 'Pippen', 'Matteo', '1980-10-10', 'Pavia');
INSERT INTO public.dipendente VALUES ('CSTDNL98C29C885L', 'Costa', 'Daniele', '1998-07-29', 'Milano');
INSERT INTO public.dipendente VALUES ('JRDLCX55B27A245B', 'Jordan', 'Lucio', '1955-05-27', 'Lecco');
INSERT INTO public.dipendente VALUES ('MSKMTT59W30B588W', 'Musk', 'Mattia', '1959-12-30', 'Lodi');
INSERT INTO public.dipendente VALUES ('CRBGRG51C11A551C', 'Carbo', 'Giorgio', '1951-12-11', 'Sondrio');
INSERT INTO public.dipendente VALUES ('CRBGVN86S17T909B', 'Carbo', 'Giovanni', '1986-06-17', 'Lecco');
INSERT INTO public.dipendente VALUES ('RTTGLX55T10B210B', 'Ariotta', 'Giulia', '1955-06-10', 'Bergamo');
INSERT INTO public.dipendente VALUES ('VLXGVN80W08B401R', 'Vela', 'Giovanni', '1980-09-08', 'Mantova');
INSERT INTO public.dipendente VALUES ('CSTJCP90W25S656R', 'Costa', 'Jacopo', '1990-11-25', 'Varese');
INSERT INTO public.dipendente VALUES ('JRDGLX64W11C655T', 'Jordan', 'Giulia', '1964-03-11', 'Lecco');
INSERT INTO public.dipendente VALUES ('HRDSRN51A11B843W', 'Harden', 'Serena', '1951-01-11', 'Lecco');
INSERT INTO public.dipendente VALUES ('LNXLCX84W29R300S', 'Lini', 'Luca', '1984-04-29', 'Milano');
INSERT INTO public.dipendente VALUES ('GTSLNR97W30L554R', 'Gates', 'Leonardo', '1997-03-30', 'Lecco');
INSERT INTO public.dipendente VALUES ('MSSSFX58R12W137W', 'Messi', 'Sofia', '1958-07-12', 'Varese');
INSERT INTO public.dipendente VALUES ('FRSKVN74C23W992L', 'Frusconi', 'Kevin', '1974-07-23', 'Lodi');
INSERT INTO public.dipendente VALUES ('MSSGRG50T03L649S', 'Messi', 'Giorgio', '1950-09-03', 'Milano');
INSERT INTO public.dipendente VALUES ('RTLGRG77C28R401C', 'Ritelli', 'Giorgio', '1977-09-28', 'Sondrio');
INSERT INTO public.dipendente VALUES ('HRDPPX87S07T205A', 'Harden', 'Popo', '1987-09-07', 'Milano');
INSERT INTO public.dipendente VALUES ('LJRGRG55C24C496W', 'Lajara', 'Giorgio', '1955-06-24', 'Mantova');
INSERT INTO public.dipendente VALUES ('VTTRRX77W02L370C', 'Vettese', 'Aurora', '1977-07-02', 'Lodi');
INSERT INTO public.dipendente VALUES ('STGRNX68R19T147T', 'Stagone', 'Ron', '1968-11-19', 'Milano');
INSERT INTO public.dipendente VALUES ('VLXJFF80S13A490R', 'Vela', 'Jeff', '1980-06-13', 'Sondrio');
INSERT INTO public.dipendente VALUES ('GTSMTT58R20B235S', 'Gates', 'Matteo', '1958-10-20', 'Lecco');
INSERT INTO public.dipendente VALUES ('JRDMNC82C08L711C', 'Jordan', 'Monica', '1982-07-08', 'Lodi');
INSERT INTO public.dipendente VALUES ('MRRRCC77T28C705W', 'Marrone', 'Riccardo', '1977-02-28', 'Lodi');
INSERT INTO public.dipendente VALUES ('MRRPXX68W24L817A', 'Marrone', 'Pio', '1968-01-24', 'Sondrio');
INSERT INTO public.dipendente VALUES ('JRDPXX51S10L446S', 'Jordan', 'Pio', '1951-02-10', 'Varese');
INSERT INTO public.dipendente VALUES ('GCMMTT55C18C462R', 'Giacometti', 'Matteo', '1955-10-18', 'Mantova');
INSERT INTO public.dipendente VALUES ('LNXGRG63B03C709S', 'Lini', 'Giorgio', '1963-07-03', 'Mantova');
INSERT INTO public.dipendente VALUES ('MSKLNR89T24A220W', 'Musk', 'Leonardo', '1989-11-24', 'Bergamo');
INSERT INTO public.dipendente VALUES ('FRSMKX77R17R796A', 'Frusconi', 'Mike', '1977-02-17', 'Varese');
INSERT INTO public.dipendente VALUES ('GCMKVN87B09R225A', 'Giacometti', 'Kevin', '1987-12-09', 'Lecco');
INSERT INTO public.dipendente VALUES ('FNTRRX93B27L939C', 'Fontana', 'Aurora', '1993-06-27', 'Lodi');
INSERT INTO public.dipendente VALUES ('VTTMNC71T27C826R', 'Vettese', 'Monica', '1971-10-27', 'Bergamo');
INSERT INTO public.dipendente VALUES ('RSSKVN93T20C189R', 'Russo', 'Kevin', '1993-05-20', 'Bergamo');
INSERT INTO public.dipendente VALUES ('GLLDNL57C26W370T', 'Gallo', 'Daniele', '1957-06-26', 'Bergamo');
INSERT INTO public.dipendente VALUES ('GCMMNC55B17L813S', 'Giacometti', 'Monica', '1955-02-17', 'Sondrio');
INSERT INTO public.dipendente VALUES ('VTTLCX83T08R240C', 'Vettese', 'Lucio', '1983-12-08', 'Pavia');
INSERT INTO public.dipendente VALUES ('PPPJFF76R27S180W', 'Pippen', 'Jeff', '1976-11-27', 'Mantova');
INSERT INTO public.dipendente VALUES ('JRDLNR91A17T204C', 'Jordan', 'Leonardo', '1991-07-17', 'Lecco');
INSERT INTO public.dipendente VALUES ('CSTGVN78C28T754B', 'Costa', 'Giovanni', '1978-11-28', 'Lodi');
INSERT INTO public.dipendente VALUES ('JRDMTT57C11S736A', 'Jordan', 'Matteo', '1957-12-11', 'Varese');
INSERT INTO public.dipendente VALUES ('CSTKVN53R18W655C', 'Costa', 'Kevin', '1953-02-18', 'Lodi');
INSERT INTO public.dipendente VALUES ('GTSBLK70B15W282A', 'Gates', 'Blake', '1970-12-15', 'Varese');
INSERT INTO public.dipendente VALUES ('FRSVNX90B20L390S', 'Frusconi', 'Ivan', '1990-11-20', 'Milano');
INSERT INTO public.dipendente VALUES ('HRDBLK59S20B432C', 'Harden', 'Blake', '1959-06-20', 'Mantova');
INSERT INTO public.dipendente VALUES ('BRXRCC96W24T191T', 'Ibra', 'Riccardo', '1996-07-24', 'Lecco');
INSERT INTO public.dipendente VALUES ('JRDTMM53A11B963B', 'Jordan', 'Tommaso', '1953-02-11', 'Bergamo');
INSERT INTO public.dipendente VALUES ('GTSPXX89W16S343B', 'Gates', 'Pio', '1989-06-16', 'Mantova');


--
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medico VALUES ('MSSPTR72T05W598W', 3);
INSERT INTO public.medico VALUES ('RBXVNX93A26B673W', 7);
INSERT INTO public.medico VALUES ('PPPMTT80T10T334C', 2);
INSERT INTO public.medico VALUES ('CSTDNL98C29C885L', 1);
INSERT INTO public.medico VALUES ('MSKMTT59W30B588W', 4);
INSERT INTO public.medico VALUES ('HRDSRN51A11B843W', 30);
INSERT INTO public.medico VALUES ('LNXLCX84W29R300S', 10);
INSERT INTO public.medico VALUES ('GTSLNR97W30L554R', 4);
INSERT INTO public.medico VALUES ('MSSSFX58R12W137W', 28);
INSERT INTO public.medico VALUES ('FRSVNX90B20L390S', 24);
INSERT INTO public.medico VALUES ('GTSBLK70B15W282A', 26);
INSERT INTO public.medico VALUES ('CSTKVN53R18W655C', 12);
INSERT INTO public.medico VALUES ('JRDMTT57C11S736A', 10);
INSERT INTO public.medico VALUES ('CSTGVN78C28T754B', 9);
INSERT INTO public.medico VALUES ('JRDLNR91A17T204C', 4);
INSERT INTO public.medico VALUES ('PPPJFF76R27S180W', 3);
INSERT INTO public.medico VALUES ('VTTLCX83T08R240C', 4);
INSERT INTO public.medico VALUES ('GCMMNC55B17L813S', 5);


--
-- Data for Name: paziente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.paziente VALUES ('54681104839434351649', 'Gallo', 'Giovanni', '3486884311', '1973-05-18', 'Pavia');
INSERT INTO public.paziente VALUES ('31633435959411048500', 'Frusconi', 'Popo', '3999683920', '1975-03-01', 'Mantova');
INSERT INTO public.paziente VALUES ('44941104959436297706', 'Marrone', 'Jeff', '3453188710', '1973-10-27', 'Milano');
INSERT INTO public.paziente VALUES ('94080285110411044742', 'Ritelli', 'Riccardo', '3853781500', '1993-05-20', 'Milano');
INSERT INTO public.paziente VALUES ('86685835959402855499', 'Marrone', 'Giovanni', '3537484499', '1992-05-25', 'Milano');
INSERT INTO public.paziente VALUES ('52040285110458358152', 'Gates', 'Monica', '3340282121', '1975-07-05', 'Lodi');
INSERT INTO public.paziente VALUES ('28011104028547128654', 'Fontana', 'Tommaso', '3303286508', '1997-10-15', 'Lecco');
INSERT INTO public.paziente VALUES ('97215835583536299652', 'Stagone', 'Riccardo', '3733984421', '1972-03-13', 'Mantova');
INSERT INTO public.paziente VALUES ('30813629028595946645', 'Lini', 'Ron', '3495482118', '1981-04-11', 'Varese');
INSERT INTO public.paziente VALUES ('78549594362936296348', 'Costa', 'Luca', '3734685042', '1978-11-11', 'Mantova');
INSERT INTO public.paziente VALUES ('62484712471295944216', 'Musk', 'Popo', '3687188102', '1974-11-06', 'Mantova');
INSERT INTO public.paziente VALUES ('55130285959495948682', 'Russo', 'Giorgio', '3832289073', '1997-09-23', 'Lecco');
INSERT INTO public.paziente VALUES ('22540285471236292864', 'Fontana', 'Simone', '3420584911', '1986-02-08', 'Pavia');
INSERT INTO public.paziente VALUES ('74403435583502856102', 'Costa', 'Monica', '3484583011', '1980-10-13', 'Sondrio');
INSERT INTO public.paziente VALUES ('67634712471234355265', 'Vettese', 'Matteo', '3309881169', '1987-07-12', 'Bergamo');
INSERT INTO public.paziente VALUES ('75808394839436298332', 'Costa', 'Lucio', '3128084621', '1979-04-26', 'Milano');


--
-- Data for Name: prenotazione; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.prenotazione VALUES ('97215835583536299652', '2020-08-24', '2020-09-24', 300.50, '08:00:00', 'verde', 966, 'Psichiatria');
INSERT INTO public.prenotazione VALUES ('86685835959402855499', '2020-08-21', '2020-08-24', 800.00, '14:00:00', 'gialla', 966, 'Centro Tamponi');
INSERT INTO public.prenotazione VALUES ('30813629028595946645', '2022-02-07', '2022-02-09', 10.80, '13:30:00', 'verde', 966, 'Laboratorio Endocrinologia');
INSERT INTO public.prenotazione VALUES ('30813629028595946645', '2022-02-15', '2022-02-19', 200.00, '13:30:00', 'verde', 966, 'Laboratorio Endocrinologia');
INSERT INTO public.prenotazione VALUES ('78549594362936296348', '2021-07-19', '2021-09-20', 0.00, '13:30:00', 'verde', 966, 'Centro Donazioni Sangue');
INSERT INTO public.prenotazione VALUES ('78549594362936296348', '2022-07-19', '2022-09-20', 0.00, '13:30:00', 'verde', 966, 'Centro Donazioni Sangue');
INSERT INTO public.prenotazione VALUES ('78549594362936296348', '2020-07-19', '2020-09-20', 0.00, '13:30:00', 'verde', 966, 'Centro Donazioni Sangue');
INSERT INTO public.prenotazione VALUES ('62484712471295944216', '2022-07-19', '2022-09-20', 4000.00, '08:30:00', 'gialla', 966, 'Psichiatria');
INSERT INTO public.prenotazione VALUES ('97215835583536299652', '2022-01-24', '2020-03-24', 300.50, '08:00:00', 'verde', 970, 'Medicina Generale');
INSERT INTO public.prenotazione VALUES ('86685835959402855499', '2022-01-21', '2020-02-24', 1231.00, '14:00:00', 'gialla', 970, 'Dialisi');
INSERT INTO public.prenotazione VALUES ('30813629028595946645', '2022-01-07', '2022-05-09', 43.80, '13:30:00', 'verde', 970, 'Dialisi');
INSERT INTO public.prenotazione VALUES ('30813629028595946645', '2022-01-15', '2022-01-19', 293.00, '13:30:00', 'rossa', 970, 'Oculistica');
INSERT INTO public.prenotazione VALUES ('78549594362936296348', '2021-01-19', '2021-02-20', 123.00, '13:30:00', 'gialla', 970, 'Medicina Generale');
INSERT INTO public.prenotazione VALUES ('62484712471295944216', '2022-01-04', '2022-01-20', 0.00, '13:30:00', 'verde', 970, 'Diagnostica Generale');
INSERT INTO public.prenotazione VALUES ('78549594362936296348', '2022-01-31', '2020-02-10', 0.00, '13:30:00', 'rossa', 970, 'Diagnostica Generale');
INSERT INTO public.prenotazione VALUES ('62484712471295944216', '2022-06-19', '2022-09-24', 45.00, '08:30:00', 'gialla', 970, 'Oculistica');


--
-- Data for Name: esame; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.esame VALUES ('SANPAOLO03', '97215835583536299652', '2020-03-24', 'JRDLNR91A17T204C');
INSERT INTO public.esame VALUES ('SANPAOLO02', '86685835959402855499', '2020-02-24', NULL);
INSERT INTO public.esame VALUES ('SACCO01', '97215835583536299652', '2020-09-24', 'CSTDNL98C29C885L');
INSERT INTO public.esame VALUES ('SACCO02', '30813629028595946645', '2022-02-09', NULL);
INSERT INTO public.esame VALUES ('SACCO04', '30813629028595946645', '2022-02-19', 'HRDSRN51A11B843W');
INSERT INTO public.esame VALUES ('SACCO05', '78549594362936296348', '2022-09-20', NULL);
INSERT INTO public.esame VALUES ('SANPAOLO08', '30813629028595946645', '2022-05-09', 'PPPJFF76R27S180W');
INSERT INTO public.esame VALUES ('SACCO06', '78549594362936296348', '2021-09-20', NULL);
INSERT INTO public.esame VALUES ('SANPAOLO05', '30813629028595946645', '2022-01-19', NULL);
INSERT INTO public.esame VALUES ('SACCO07', '78549594362936296348', '2020-09-20', NULL);
INSERT INTO public.esame VALUES ('SANPAOLO04', '78549594362936296348', '2021-02-20', NULL);
INSERT INTO public.esame VALUES ('SACCO08', '62484712471295944216', '2022-09-20', 'GTSLNR97W30L554R');
INSERT INTO public.esame VALUES ('SACCO03', '86685835959402855499', '2020-08-24', 'GTSLNR97W30L554R');
INSERT INTO public.esame VALUES ('SANPAOLO06', '62484712471295944216', '2022-01-20', NULL);
INSERT INTO public.esame VALUES ('SANPAOLO01', '78549594362936296348', '2020-02-10', 'JRDLNR91A17T204C');
INSERT INTO public.esame VALUES ('SANPAOLO09', '62484712471295944216', '2022-09-24', 'VTTLCX83T08R240C');


--
-- Data for Name: assiste; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.assiste VALUES ('SACCO01', 'CSTDNL98C29C885L', 'Il paziente è in salute');
INSERT INTO public.assiste VALUES ('SACCO04', 'HRDSRN51A11B843W', 'Paziente terminale. Tempo di vita 10 anni.');
INSERT INTO public.assiste VALUES ('SACCO08', 'GTSLNR97W30L554R', 'Paziente terminale. Tempo di vita 10 anni.');
INSERT INTO public.assiste VALUES ('SACCO03', 'GTSLNR97W30L554R', 'Il paziente è in salute');
INSERT INTO public.assiste VALUES ('SANPAOLO01', 'JRDLNR91A17T204C', 'Il paziente è in salute');
INSERT INTO public.assiste VALUES ('SANPAOLO03', 'JRDLNR91A17T204C', 'Mangiare agrumi.');
INSERT INTO public.assiste VALUES ('SANPAOLO08', 'PPPJFF76R27S180W', 'Il paziente è in salute');
INSERT INTO public.assiste VALUES ('SANPAOLO09', 'VTTLCX83T08R240C', 'Il paziente è in salute');


--
-- Data for Name: reparto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reparto VALUES (966, 'Cardiologia', '10:00:00', '18:00:00', '3242543501');
INSERT INTO public.reparto VALUES (966, 'Oncologia', '15:00:00', '18:00:00', '3242543502');
INSERT INTO public.reparto VALUES (966, 'Oculistica', '10:00:00', '18:00:00', '3242543503');
INSERT INTO public.reparto VALUES (970, 'Immunologia', '09:00:00', '18:00:00', '3948573401');
INSERT INTO public.reparto VALUES (970, 'Cardiologia', '15:00:00', '18:00:00', '3948573402');
INSERT INTO public.reparto VALUES (972, 'Oncologia', '15:00:00', '18:00:00', '3279065201');
INSERT INTO public.reparto VALUES (972, 'Oculistica', '10:00:00', '18:00:00', '3279065202');
INSERT INTO public.reparto VALUES (972, 'Radiologia', '10:00:00', '18:00:00', '3279065203');
INSERT INTO public.reparto VALUES (972, 'Immunologia', '10:00:00', '18:00:00', '3279065204');
INSERT INTO public.reparto VALUES (966, 'Chiurgia', '15:00:00', '18:00:00', '3242543504');
INSERT INTO public.reparto VALUES (970, 'Chiurgia', '15:00:00', '18:00:00', '3948573404');
INSERT INTO public.reparto VALUES (970, 'Pediatria', '10:00:00', '18:00:00', '3948573403');


--
-- Data for Name: viceprimario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.viceprimario VALUES ('MSSPTR72T05W598W', '2011-08-23');
INSERT INTO public.viceprimario VALUES ('PPPMTT80T10T334C', '2018-04-04');
INSERT INTO public.viceprimario VALUES ('CSTDNL98C29C885L', '2020-07-08');
INSERT INTO public.viceprimario VALUES ('MSSSFX58R12W137W', '1978-02-11');
INSERT INTO public.viceprimario VALUES ('GTSBLK70B15W282A', '2007-04-02');
INSERT INTO public.viceprimario VALUES ('CSTKVN53R18W655C', '2011-09-21');
INSERT INTO public.viceprimario VALUES ('CSTGVN78C28T754B', '2011-04-08');


--
-- Data for Name: codirige; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.codirige VALUES (966, 'Cardiologia', 'MSSPTR72T05W598W');
INSERT INTO public.codirige VALUES (966, 'Cardiologia', 'PPPMTT80T10T334C');
INSERT INTO public.codirige VALUES (966, 'Cardiologia', 'CSTDNL98C29C885L');
INSERT INTO public.codirige VALUES (966, 'Chiurgia', 'MSSSFX58R12W137W');
INSERT INTO public.codirige VALUES (970, 'Immunologia', 'GTSBLK70B15W282A');
INSERT INTO public.codirige VALUES (970, 'Immunologia', 'CSTKVN53R18W655C');
INSERT INTO public.codirige VALUES (970, 'Cardiologia', 'CSTGVN78C28T754B');


--
-- Data for Name: primario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.primario VALUES ('RBXVNX93A26B673W', 'Cardiologia');
INSERT INTO public.primario VALUES ('MSKMTT59W30B588W', 'Cardiologia');
INSERT INTO public.primario VALUES ('HRDSRN51A11B843W', 'Chiurgia');
INSERT INTO public.primario VALUES ('FRSVNX90B20L390S', 'Immunologia');
INSERT INTO public.primario VALUES ('JRDMTT57C11S736A', 'Cardiologia');


--
-- Data for Name: dirige; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dirige VALUES (966, 'Cardiologia', 'MSKMTT59W30B588W');
INSERT INTO public.dirige VALUES (966, 'Chiurgia', 'HRDSRN51A11B843W');
INSERT INTO public.dirige VALUES (970, 'Cardiologia', 'JRDMTT57C11S736A');
INSERT INTO public.dirige VALUES (970, 'Immunologia', 'FRSVNX90B20L390S');


--
-- Data for Name: infermiere; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.infermiere VALUES ('JRDLCX55B27A245B');
INSERT INTO public.infermiere VALUES ('CRBGRG51C11A551C');
INSERT INTO public.infermiere VALUES ('CRBGVN86S17T909B');
INSERT INTO public.infermiere VALUES ('RTTGLX55T10B210B');
INSERT INTO public.infermiere VALUES ('FRSKVN74C23W992L');
INSERT INTO public.infermiere VALUES ('MSSGRG50T03L649S');
INSERT INTO public.infermiere VALUES ('GCMKVN87B09R225A');
INSERT INTO public.infermiere VALUES ('VTTMNC71T27C826R');
INSERT INTO public.infermiere VALUES ('RSSKVN93T20C189R');
INSERT INTO public.infermiere VALUES ('FRSMKX77R17R796A');
INSERT INTO public.infermiere VALUES ('HRDBLK59S20B432C');
INSERT INTO public.infermiere VALUES ('BRXRCC96W24T191T');
INSERT INTO public.infermiere VALUES ('JRDTMM53A11B963B');


--
-- Data for Name: lavora; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lavora VALUES ('RBXVNX93A26B673W', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('MSSPTR72T05W598W', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('PPPMTT80T10T334C', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('CSTDNL98C29C885L', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('CRBGRG51C11A551C', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('CRBGVN86S17T909B', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('RTTGLX55T10B210B', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('VLXGVN80W08B401R', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('CSTJCP90W25S656R', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('JRDGLX64W11C655T', 'Cardiologia', 966);
INSERT INTO public.lavora VALUES ('HRDSRN51A11B843W', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('LNXLCX84W29R300S', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('GTSLNR97W30L554R', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('MSSSFX58R12W137W', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('FRSKVN74C23W992L', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('MSSGRG50T03L649S', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('RTLGRG77C28R401C', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('HRDPPX87S07T205A', 'Chiurgia', 966);
INSERT INTO public.lavora VALUES ('FRSVNX90B20L390S', 'Immunologia', 970);
INSERT INTO public.lavora VALUES ('GTSBLK70B15W282A', 'Immunologia', 970);
INSERT INTO public.lavora VALUES ('CSTKVN53R18W655C', 'Immunologia', 970);
INSERT INTO public.lavora VALUES ('JRDLNR91A17T204C', 'Immunologia', 970);
INSERT INTO public.lavora VALUES ('PPPJFF76R27S180W', 'Immunologia', 970);
INSERT INTO public.lavora VALUES ('VTTLCX83T08R240C', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('GCMMNC55B17L813S', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('GLLDNL57C26W370T', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('FRSMKX77R17R796A', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('VTTMNC71T27C826R', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('RSSKVN93T20C189R', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('GCMKVN87B09R225A', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('FNTRRX93B27L939C', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('JRDMTT57C11S736A', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('CSTGVN78C28T754B', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('HRDBLK59S20B432C', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('BRXRCC96W24T191T', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('JRDTMM53A11B963B', 'Cardiologia', 970);
INSERT INTO public.lavora VALUES ('GTSPXX89W16S343B', 'Cardiologia', 970);


--
-- Data for Name: stanza; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stanza VALUES (966, 'Cardiologia', 10, 2);
INSERT INTO public.stanza VALUES (966, 'Chiurgia', 1, 1);
INSERT INTO public.stanza VALUES (966, 'Chiurgia', 2, 1);
INSERT INTO public.stanza VALUES (970, 'Immunologia', 10, 2);
INSERT INTO public.stanza VALUES (970, 'Cardiologia', 1, 1);
INSERT INTO public.stanza VALUES (970, 'Cardiologia', 2, 1);


--
-- Data for Name: letto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.letto VALUES (966, 'Cardiologia', 10, 1);
INSERT INTO public.letto VALUES (966, 'Cardiologia', 10, 2);
INSERT INTO public.letto VALUES (966, 'Cardiologia', 10, 3);
INSERT INTO public.letto VALUES (966, 'Cardiologia', 10, 4);
INSERT INTO public.letto VALUES (966, 'Cardiologia', 10, 5);
INSERT INTO public.letto VALUES (966, 'Chiurgia', 1, 1);
INSERT INTO public.letto VALUES (966, 'Chiurgia', 1, 2);
INSERT INTO public.letto VALUES (966, 'Chiurgia', 2, 1);
INSERT INTO public.letto VALUES (966, 'Chiurgia', 2, 2);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 1, 1);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 1, 2);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 1, 3);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 1, 4);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 2, 1);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 2, 2);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 2, 3);
INSERT INTO public.letto VALUES (970, 'Cardiologia', 2, 4);
INSERT INTO public.letto VALUES (970, 'Immunologia', 10, 1);
INSERT INTO public.letto VALUES (970, 'Immunologia', 10, 2);
INSERT INTO public.letto VALUES (970, 'Immunologia', 10, 3);
INSERT INTO public.letto VALUES (970, 'Immunologia', 10, 4);



INSERT INTO public.malattia VALUES ('Diabete', 'Lenta guarigione dalle ferite, senso di fatica ricorrente, vista offuscata, facilità a sviluppare infezioni');
INSERT INTO public.malattia VALUES ('Infarto', 'Astenia, fiato corto, nausea, vomito, sudorazione, edema cerebrale');
INSERT INTO public.malattia VALUES ('Tiroide', 'Accelerato transito intestinale: accompagnato da diarrea, ingrossamento della tiroide (gozzo), calo della fertilità e del desiderio sessual');
INSERT INTO public.malattia VALUES ('Candida', 'Alterazione del muco cervicale, iponutrizione, lingua gialla, lingua gonfia, brucciore alla lingua, ');
INSERT INTO public.malattia VALUES ('Cancro al colon', 'Addome acuto, mucorrea, feci nastriformi, crampi addominali, astenia');
INSERT INTO public.malattia VALUES ('Tosse', 'Laringite, legionellosi, leptospirosi, malaria, malattia di Lyme, pertosse, pleurite, polmonite, polmonite ab ingestis');
INSERT INTO public.malattia VALUES ('Diarrea', 'Feci frequenti e liquide, febbre, crampi addominali, sangue nelle feci');
INSERT INTO public.malattia VALUES ('Covid', 'Tosse, febbre, affaticamento');

--
-- Data for Name: ricovero; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ricovero VALUES ('31633435959411048500', '2020-03-05', 'Diabete', NULL);
INSERT INTO public.ricovero VALUES ('54681104839434351649', '2020-04-05', 'Infarto', '2020-04-12');
INSERT INTO public.ricovero VALUES ('30813629028595946645', '2022-05-21', 'Tiroide', '2022-05-24');
INSERT INTO public.ricovero VALUES ('30813629028595946645', '2022-09-21', 'Cancro al colon', NULL);
INSERT INTO public.ricovero VALUES ('62484712471295944216', '2022-09-22', 'Candida', NULL);
INSERT INTO public.ricovero VALUES ('54681104839434351649', '2021-05-06', 'Covid', '2021-06-06');
INSERT INTO public.ricovero VALUES ('30813629028595946645', '2020-03-21', 'Covid', '2020-05-24');
INSERT INTO public.ricovero VALUES ('28011104028547128654', '2022-09-21', 'Diabete', NULL);
INSERT INTO public.ricovero VALUES ('44941104959436297706', '2021-09-21', 'Tosse', '2022-02-04');


--
-- Data for Name: lettoricoverato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lettoricoverato VALUES (966, 'Cardiologia', 10, 1, '54681104839434351649', '2020-04-05');
INSERT INTO public.lettoricoverato VALUES (966, 'Cardiologia', 10, 3, '31633435959411048500', '2020-03-05');
INSERT INTO public.lettoricoverato VALUES (966, 'Chiurgia', 2, 2, '30813629028595946645', '2022-05-21');
INSERT INTO public.lettoricoverato VALUES (966, 'Chiurgia', 1, 1, '30813629028595946645', '2022-09-21');
INSERT INTO public.lettoricoverato VALUES (970, 'Immunologia', 10, 1, '54681104839434351649', '2021-05-06');
INSERT INTO public.lettoricoverato VALUES (970, 'Immunologia', 10, 4, '30813629028595946645', '2020-03-21');
INSERT INTO public.lettoricoverato VALUES (970, 'Cardiologia', 2, 4, '28011104028547128654', '2022-09-21');
INSERT INTO public.lettoricoverato VALUES (970, 'Immunologia', 10, 3, '62484712471295944216', '2022-09-22');
INSERT INTO public.lettoricoverato VALUES (970, 'Cardiologia', 1, 3, '44941104959436297706', '2021-09-21');


--
-- Data for Name: malattia; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: persamministrativo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.persamministrativo VALUES ('VLXGVN80W08B401R');
INSERT INTO public.persamministrativo VALUES ('CSTJCP90W25S656R');
INSERT INTO public.persamministrativo VALUES ('JRDGLX64W11C655T');
INSERT INTO public.persamministrativo VALUES ('RTLGRG77C28R401C');
INSERT INTO public.persamministrativo VALUES ('HRDPPX87S07T205A');
INSERT INTO public.persamministrativo VALUES ('GLLDNL57C26W370T');
INSERT INTO public.persamministrativo VALUES ('FNTRRX93B27L939C');
INSERT INTO public.persamministrativo VALUES ('GTSPXX89W16S343B');


--
-- Data for Name: prontosoccorso; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.prontosoccorso VALUES (966, 200, 4);
INSERT INTO public.prontosoccorso VALUES (970, 100, 2);


--
-- Data for Name: salaoperatoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.salaoperatoria VALUES (966, 'Cardiologia', 'programmata');
INSERT INTO public.salaoperatoria VALUES (966, 'Cardiologia', 'urgente');
INSERT INTO public.salaoperatoria VALUES (966, 'Chiurgia', 'programmata');
INSERT INTO public.salaoperatoria VALUES (966, 'Chiurgia', 'urgente');
INSERT INTO public.salaoperatoria VALUES (970, 'Cardiologia', 'programmata');
INSERT INTO public.salaoperatoria VALUES (970, 'Cardiologia', 'urgente');
INSERT INTO public.salaoperatoria VALUES (970, 'Immunologia', 'programmata');
INSERT INTO public.salaoperatoria VALUES (970, 'Immunologia', 'urgente');


--
-- Data for Name: sostituzione; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sostituzione VALUES ('MSSPTR72T05W598W', 'RBXVNX93A26B673W', '2019-08-04', '2019-08-24');
INSERT INTO public.sostituzione VALUES ('CSTDNL98C29C885L', 'RBXVNX93A26B673W', '2021-07-08', NULL);
INSERT INTO public.sostituzione VALUES ('MSSPTR72T05W598W', 'RBXVNX93A26B673W', '2020-01-04', '2020-02-04');
INSERT INTO public.sostituzione VALUES ('MSSSFX58R12W137W', 'HRDSRN51A11B843W', '2022-01-24', '2022-02-21');
INSERT INTO public.sostituzione VALUES ('MSSSFX58R12W137W', 'HRDSRN51A11B843W', '2022-09-12', NULL);
INSERT INTO public.sostituzione VALUES ('CSTGVN78C28T754B', 'JRDMTT57C11S736A', '2018-07-03', '2019-08-24');
INSERT INTO public.sostituzione VALUES ('CSTGVN78C28T754B', 'JRDMTT57C11S736A', '2020-07-03', '2021-08-24');
INSERT INTO public.sostituzione VALUES ('CSTGVN78C28T754B', 'JRDMTT57C11S736A', '2022-07-03', NULL);
INSERT INTO public.sostituzione VALUES ('GTSBLK70B15W282A', 'FRSVNX90B20L390S', '2022-07-03', '2022-08-24');
INSERT INTO public.sostituzione VALUES ('GTSBLK70B15W282A', 'FRSVNX90B20L390S', '2019-03-03', '2019-04-21');


--
-- Data for Name: turni; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.turni VALUES (966, '1991-04-20');
INSERT INTO public.turni VALUES (966, '1996-04-20');
INSERT INTO public.turni VALUES (966, '1999-04-20');
INSERT INTO public.turni VALUES (966, '2021-04-04');
INSERT INTO public.turni VALUES (966, '2021-05-04');
INSERT INTO public.turni VALUES (966, '2021-06-04');
INSERT INTO public.turni VALUES (966, '1991-04-21');
INSERT INTO public.turni VALUES (966, '2022-08-12');
INSERT INTO public.turni VALUES (966, '2002-03-14');
INSERT INTO public.turni VALUES (966, '2022-03-14');
INSERT INTO public.turni VALUES (966, '2021-09-25');
INSERT INTO public.turni VALUES (970, '2022-04-20');
INSERT INTO public.turni VALUES (970, '2022-04-19');
INSERT INTO public.turni VALUES (970, '2022-04-18');
INSERT INTO public.turni VALUES (970, '2022-04-04');
INSERT INTO public.turni VALUES (970, '2022-05-04');
INSERT INTO public.turni VALUES (970, '2022-06-04');
INSERT INTO public.turni VALUES (970, '2022-04-21');
INSERT INTO public.turni VALUES (970, '2022-08-12');
INSERT INTO public.turni VALUES (970, '2022-03-14');
INSERT INTO public.turni VALUES (970, '2022-03-04');
INSERT INTO public.turni VALUES (970, '2022-09-25');


--
-- Data for Name: turnoinfermiere; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.turnoinfermiere VALUES (966, '1991-04-20', 'JRDLCX55B27A245B', 8);
INSERT INTO public.turnoinfermiere VALUES (966, '1991-04-21', 'JRDLCX55B27A245B', 8);
INSERT INTO public.turnoinfermiere VALUES (966, '2021-06-04', 'JRDLCX55B27A245B', 10);
INSERT INTO public.turnoinfermiere VALUES (966, '2022-08-12', 'CRBGVN86S17T909B', 8);
INSERT INTO public.turnoinfermiere VALUES (966, '2022-08-12', 'RTTGLX55T10B210B', 10);
INSERT INTO public.turnoinfermiere VALUES (966, '2022-03-14', 'CRBGVN86S17T909B', 8);
INSERT INTO public.turnoinfermiere VALUES (966, '2022-03-14', 'CRBGRG51C11A551C', 10);
INSERT INTO public.turnoinfermiere VALUES (966, '2021-04-04', 'CRBGVN86S17T909B', 6);
INSERT INTO public.turnoinfermiere VALUES (966, '2021-04-04', 'CRBGRG51C11A551C', 12);
INSERT INTO public.turnoinfermiere VALUES (966, '2021-09-25', 'FRSKVN74C23W992L', 9);
INSERT INTO public.turnoinfermiere VALUES (966, '2021-09-25', 'MSSGRG50T03L649S', 9);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-20', 'GCMKVN87B09R225A', 8);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-20', 'JRDTMM53A11B963B', 8);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-20', 'BRXRCC96W24T191T', 8);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-20', 'HRDBLK59S20B432C', 5);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-20', 'RSSKVN93T20C189R', 4);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-09-25', 'GCMKVN87B09R225A', 12);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-05-04', 'HRDBLK59S20B432C', 8);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-05-04', 'JRDTMM53A11B963B', 8);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-09-25', 'RSSKVN93T20C189R', 10);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-03-14', 'BRXRCC96W24T191T', 8);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-19', 'HRDBLK59S20B432C', 5);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-18', 'JRDTMM53A11B963B', 8);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-06-04', 'RSSKVN93T20C189R', 4);
INSERT INTO public.turnoinfermiere VALUES (970, '2022-04-04', 'BRXRCC96W24T191T', 8);


--
-- Data for Name: turnomedico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.turnomedico VALUES (966, '2021-06-04', 'RBXVNX93A26B673W', 7);
INSERT INTO public.turnomedico VALUES (966, '2022-08-12', 'CSTDNL98C29C885L', 12);
INSERT INTO public.turnomedico VALUES (966, '2022-08-12', 'MSKMTT59W30B588W', 12);
INSERT INTO public.turnomedico VALUES (966, '2021-05-04', 'MSKMTT59W30B588W', 12);
INSERT INTO public.turnomedico VALUES (966, '2022-03-14', 'MSSPTR72T05W598W', 9);
INSERT INTO public.turnomedico VALUES (966, '2021-09-25', 'HRDSRN51A11B843W', 9);
INSERT INTO public.turnomedico VALUES (966, '2021-09-25', 'LNXLCX84W29R300S', 9);
INSERT INTO public.turnomedico VALUES (966, '2021-09-25', 'MSSSFX58R12W137W', 9);
INSERT INTO public.turnomedico VALUES (966, '2021-09-25', 'GTSLNR97W30L554R', 9);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'GCMMNC55B17L813S', 12);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'VTTLCX83T08R240C', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'PPPJFF76R27S180W', 10);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'JRDLNR91A17T204C', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'CSTGVN78C28T754B', 11);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'JRDMTT57C11S736A', 5);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'CSTKVN53R18W655C', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-04-20', 'GTSBLK70B15W282A', 4);
INSERT INTO public.turnomedico VALUES (970, '2022-03-14', 'CSTGVN78C28T754B', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-09-25', 'CSTGVN78C28T754B', 12);
INSERT INTO public.turnomedico VALUES (970, '2022-05-04', 'CSTGVN78C28T754B', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-05-04', 'VTTLCX83T08R240C', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-09-25', 'VTTLCX83T08R240C', 10);
INSERT INTO public.turnomedico VALUES (970, '2022-03-14', 'JRDLNR91A17T204C', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-04-19', 'JRDMTT57C11S736A', 5);
INSERT INTO public.turnomedico VALUES (970, '2022-04-18', 'CSTKVN53R18W655C', 8);
INSERT INTO public.turnomedico VALUES (970, '2022-06-04', 'GTSBLK70B15W282A', 4);
INSERT INTO public.turnomedico VALUES (970, '2022-04-04', 'FRSVNX90B20L390S', 8);

