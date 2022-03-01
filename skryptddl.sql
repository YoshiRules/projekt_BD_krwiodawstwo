create table Adresy (
    id_adresu number(5) primary key,
    miasto varchar2(100) not null,
    ulica varchar2(100) not null,
    nr_domu number(4) not null,
    nr_mieszkania number(4)
);

create table Grupa_krwi (nazwa_grupy varchar2(6) primary key);

create table Dawcy (
    id_dawcy number(5) primary key,
    imie varchar2(50) not null,
    nazwisko varchar2(50) not null,
    pesel varchar2(50) not null,
    telefon varchar2(50) not null,
    data_ostatniego_pobrania date,
    id_adresu_dawcy number(5) references Adresy(id_adresu) not null,
    grupa_krwi_dawcy varchar2(6) references Grupa_krwi(nazwa_grupy) not null
);

create table Pacjenci (
    id_pacjenta number(5) primary key,
    imie varchar2(50) not null,
    nazwisko varchar2(50) not null,
    pesel varchar2(50) not null,
    telefon varchar2(50) not null,
    priorytet_operacji varchar2(20) not null,
    data_ostatniej_transfuzji date,
    id_adresu_pacjenta number(5) references Adresy(id_adresu) not null,
    grupa_krwi_pacjenta varchar2(6) references Grupa_krwi(nazwa_grupy) not null
);

create table Placowki (
    id_placowki number(5) primary key,
    nazwa_placowki varchar2(100) not null,
    rodzaj varchar2(50) not null,
    telefon varchar2(50) not null,
    adres_placowki number(5) references Adresy(id_adresu) not null
);

create table Zespoly (
    id_zespolu number(5) primary key,
    numer_sali number(4) not null,
    nazwa_zespolu varchar2(100) not null,
    placowka number(5) references Placowki(id_placowki) not null
);

create table Personel_Medyczny (
    id_pracownika number(5) primary key,
    imie varchar2(50) not null,
    nazwisko varchar2(50) not null,
    pesel varchar2(50) not null,
    telefon varchar2(50) not null,
    stanowisko varchar2(50) not null,
    data_zatrudnienia date not null,
    id_adresu_personelu number(5) references Adresy(id_adresu) not null,
    zespol_pracownika number(5) references Zespoly(id_zespolu) not null
);

create table Transfuzje (
    id_transfuzji number(5) primary key,
    ilosc_krwi number(4) not null,
    data_operacji date not null,
    pacjent number(5) references Pacjenci(id_pacjenta),
    grupa_krwi_transfuzji varchar2(6) references Grupa_krwi(nazwa_grupy) not null,
    zespol_operacyjny number(6) references Zespoly(id_zespolu) not null
);

create table Donacje (
    id_donacji number(6) primary key,
    data_donacji date not null,
    ilosc_donacji number(4) not null,
    id_dawcy_donacji number(5) references Dawcy(id_dawcy) not null,
    grupa_krwi_donacji varchar2(6) references Grupa_krwi(nazwa_grupy) not null,
    wykonal number(5) references Personel_Medyczny(id_pracownika) not null    
);