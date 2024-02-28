create table Ospedale(
codOspedale decimal(5) , 
nome varchar(20),
indirizzo varchar(20),
primary key(codospedale)
);

create table Reparto(
codOspedale decimal(5), 
nomeReparto varchar(15) not null,
inizioVisite TIME ,
fineVisite TIME ,
telefono varchar(10) not null,
foreign key (codOspedale) references ospedale(codospedale) on delete cascade on update cascade,
primary key(codOspedale, nomeReparto)
);

create table salaoperatoria(
	codOspedale decimal(5),
	nomeReparto varchar(15),
	tipoSala varchar(20),
	foreign key (codospedale, nomereparto) references reparto(codospedale, nomereparto) on delete cascade on update cascade,
	primary key(codospedale, nomereparto, tiposala)
);

create table Dipendente(
cf text , 
nome varchar(15) not null,
cognome varchar(15) not null,
dataNascita date not null,
luogoNascita varchar(20) not null,
primary key(cf)
);

create table lavora(
cf text  default 'rimosso',
nomeReparto varchar(15),
codOspedale decimal(5), 
foreign key (nomeReparto, codOspedale) references Reparto(nomeReparto, codOspedale) on delete cascade on update cascade,
foreign key (cf) references dipendente(cf) on delete cascade on update cascade,
primary key(cf)
);

create table Medico(
cf text  default 'rimosso',
esperienza decimal(2),
foreign key (cf) references Dipendente(cf) on delete cascade on update cascade,
primary key(cf)
);

create table Infermiere(
cf text  default 'rimosso',
foreign key (cf) references dipendente(cf) on delete cascade on update cascade,
primary key(cf)
);
create table Primario(
cf text  default 'rimosso',
specializzazione varchar(20) not null,
foreign key (cf) references medico(cf) on delete cascade on update cascade,
primary key(cf)

);


create table Viceprimario(
cf text  default 'rimosso',
dataAssunzione date not null,
foreign key (cf) references medico(cf) on delete cascade on update cascade,
primary key(cf)

);

create table PersAmministrativo(
cf text  default 'rimosso',
foreign key (cf) references dipendente(cf) on delete cascade on update cascade,
primary key(cf)
);
create table sostituzione(
cfvice text,
cfprim text,
dataInizio date not null,
dataFine date , 
primary key(cfvice, datainizio),
foreign key (cfvice) references viceprimario(cf) on delete cascade on update cascade,
foreign key (cfprim) references primario(cf) on delete cascade on update cascade
);

create table ambulatorio(
codOspedale decimal(5), 
nomeAmbulatorio varchar(35)not null,
foreign key (codOspedale) references Ospedale(codOspedale)on delete cascade on update cascade,
primary key(nomeAmbulatorio, codOspedale)
);

create table AmbulatorioInterno( 
codOspedale decimal(5) ,
nomeAmbulatorio varchar(35),
piano decimal (2),
stanza decimal(3), 
foreign key (codOspedale, nomeAmbulatorio) references Ambulatorio( codOspedale, nomeAmbulatorio) on delete cascade on update cascade,
primary key(nomeAmbulatorio, codOspedale)
);

create table AmbulatorioEsterno( 
codOspedale decimal(5) ,
nomeAmbulatorio varchar(35),
indirizzo varchar(35) not null,
telefono varchar(13) not null,
orarioApertura time, 
orarioChiusura time,
foreign key (codOspedale, nomeAmbulatorio) references Ambulatorio( codOspedale, nomeAmbulatorio) on delete cascade on update cascade,
primary key(nomeAmbulatorio, codOspedale)
);

create table ProntoSoccorso(
codOspedale decimal(5),
capienza decimal(5),
numeroAmbulanze decimal(2) default 2,
foreign key (codOspedale) references Ospedale(codOspedale)on delete cascade on update cascade,
primary key (codOspedale)
);

create table turni(
codOspedale decimal(5),
dataTurno date not null,
foreign key (codOspedale) references prontosoccorso(codOspedale) on delete cascade on update cascade,
primary key(codOspedale, dataTurno)
);
-------------------------------
create table turnoinfermiere(
codOspedale decimal(5),
dataturno date,
cf text,
oreLavoro decimal(2),
foreign key (codOspedale, dataturno) references turni(codospedale, dataturno) on delete cascade on update cascade,
foreign key (cf) references infermiere(cf)on delete cascade on update cascade, 

primary key(codospedale, dataturno, cf)
);

create table turnoMedico(
codOspedale decimal(5),
dataturno date,
cf text  default 'rimosso',

oreLavoro decimal(2),
foreign key (codOspedale, dataturno) references turni(codospedale, dataturno) on delete cascade on update cascade,
foreign key (cf) references medico(cf)on delete cascade on update cascade, 

primary key(codospedale, dataturno, cf)
);

create table dirige(
codOspedale decimal(5),
nomeReparto varchar(35),
cf text  default 'rimosso',

foreign key (codOspedale, nomeReparto) references Reparto(codOspedale, nomeReparto) on delete cascade on update cascade, 
foreign key (cf) references primario(cf)on delete cascade on update cascade, 

primary key(codOspedale, nomeReparto, cf)
);

create table codirige(
codOspedale decimal(5),
nomeReparto varchar(15),
cf text  default 'rimosso',

foreign key (codOspedale, nomeReparto) references Reparto(codOspedale, nomeReparto) on delete cascade on update cascade, 
foreign key (cf) references viceprimario(cf)on delete cascade on update cascade, 
primary key(codOspedale, nomeReparto,cf)
);

create table stanza(
codOspedale decimal(5),
nomeReparto varchar(15),
numeroStanza decimal (3),
piano decimal(2),
foreign key(codOspedale, nomeReparto) references reparto(codOspedale, nomeReparto) on delete cascade on update cascade,
primary key(codospedale, nomereparto, numerostanza)
);

create table Paziente(
ts varchar(20),
cognome varchar(15) not null,
nome varchar(15) not null,
tel varchar(15) not null,
datanascita date not null,
luogonascita varchar(20) not null,
primary key (ts)
);

create table malattia(
nomeMalattia varchar(30) primary key,
sintomi text 
);
----------------------------------------------------------------------------------------

create table ricovero(
ts varchar(20) ,
dataricovero date not null, 
malattia varchar(30),
datadimissione date,
foreign key (ts) references paziente(ts) on delete cascade on update cascade,
foreign key (malattia) references malattia(nomemalattia),
primary key(ts, dataricovero)
);

create table letto(
codOspedale decimal(5),
nomeReparto varchar(15),
numeroStanza decimal (3),
numeroLetto decimal(1),
foreign key (codospedale, nomereparto, numerostanza) references Stanza (codospedale, nomereparto, numerostanza) on delete cascade on update cascade,
primary key (codospedale, nomereparto, numerostanza,numeroletto)
);


create table lettoricoverato(
codOspedale decimal(5),
nomeReparto varchar(15),
numeroStanza decimal (3),
numeroLetto decimal(1),
ts varchar(20),
dataricovero date,
foreign key (codospedale, nomereparto, numerostanza) references Stanza(codospedale, nomereparto, numerostanza) on delete cascade on update cascade,
foreign key (ts, dataricovero) references ricovero(ts, dataricovero) on delete cascade on update cascade, 
primary key (codospedale, nomereparto, numerostanza,numeroletto, dataricovero)
);


create table prenotazione(
ts text,
dataPrenotazione date not null,
dataEsame date not null,
costo decimal(10,2),
orarioesame time not null, 
urgenza varchar(10),
codOspedale decimal(5),
nomeAmbulatorio varchar(35),
foreign key(codOspedale, nomeambulatorio) references ambulatorio(codospedale, nomeambulatorio) on delete cascade on update cascade,
CONSTRAINT chk_Frequency CHECK (urgenza IN ('verde', 'gialla', 'rossa')),
foreign key (ts) references paziente(ts) on delete cascade on update cascade, 
UNIQUE (ts, dataesame),
primary key(ts, dataprenotazione)
);

create table esame(
codEsame varchar(100),
ts varchar(20),
dataesame date,
medico text,
FOREIGN KEY (ts, dataesame) REFERENCES public.prenotazione(ts, dataesame) on delete cascade on update cascade,
UNIQUE (ts, dataesame),
FOREIGN KEY (medico) REFERENCES public.medico(cf) on delete cascade on update cascade,
primary key(codEsame)
);
--insert into esame values('SACCO01', '97215835583536299652', '2020-09-24','CSTDNL98C29C885L' )


create table assiste(
	codEsame varchar(100),
	medico text,
	prescrizione varchar(255),
	foreign key (codEsame) references esame(codesame) on delete cascade on update cascade,
	foreign key (medico) references medico(cf) on delete cascade on update cascade,

	primary key (codEsame, medico)
);
--insert into assiste values ('SACCO01', 'CSTDNL98C29C885L')


