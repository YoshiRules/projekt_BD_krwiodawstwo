# projekt_BD_krwiodawstwo
Projekt bazy danych wspomagającej system donacji i transfuzji krwi.

Tworzona rzeczywistość: baza danych dla szpitali lub banków krwi wspomagająca system donacji i transfuzji krwi.
Baza danych służyć ma do przechowywania i zarządzania donacjami i emisjami krwi, będzie zawierała między innymi:
- adres; miasto, ulica, nr_domu, nr_mieszkania
- dawce krwi; imię, nazwisko, pesel, nr_tel, datę_ostatniego_pobrania
- pracownika medycznego; imię, nazwisko, pesel, nr_tel, stanowisko, datę_zatrudnienia
- placówkę; nazwa, rodzaj, telefon
- donacje; datę, ilość_krwi
- grupę krwi;
- tranfuzje; ilość_krwi, datę_operacji
- pacjent; imię, nazwisko, pesel, nr_tel, piorytet_operacji, data_ostatniej_transfuzji

Użyto SQL, Oracle SQL Developera, Oracle XE 21c
