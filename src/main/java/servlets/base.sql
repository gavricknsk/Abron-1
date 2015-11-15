CREATE TABLE customer_fl
(
    kod_cust_f INT PRIMARY KEY NOT NULL,
    customer VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL
);
CREATE TABLE customer_ul
(
    kod_cust_u INT PRIMARY KEY NOT NULL,
    customer VARCHAR(50) NOT NULL,
    INNcustomer VARCHAR(30) NOT NULL,
    AddressCust VARCHAR(200) NOT NULL,
    chief VARCHAR(50) NOT NULL,
    BankCustomer VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    accountcust VARCHAR(30) NOT NULL
);
CREATE TABLE film
(
    kod_film INT PRIMARY KEY NOT NULL,
    kod_vid INT NOT NULL,
    film VARCHAR(30) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    Specification VARCHAR(500) NOT NULL
);
CREATE TABLE kassa
(
    nom_kass_ord INT NOT NULL,
    countNumber INT NOT NULL,
    kod_p INT NOT NULL,
    summa DECIMAL(10,0) NOT NULL,
    data_oplati DATE NOT NULL,
    PRIMARY KEY (nom_kass_ord, countNumber, kod_p)
);
CREATE TABLE postavka
(
    kod_p INT PRIMARY KEY NOT NULL,
    kod_provider INT NOT NULL,
    kod_film INT NOT NULL,
    kol_vo INT NOT NULL,
    summa DECIMAL(10,0) NOT NULL,
    data_opl DATE NOT NULL,
    data_p DATE NOT NULL
);
CREATE TABLE provider
(
    kod_provider INT PRIMARY KEY NOT NULL,
    provider VARCHAR(200) NOT NULL,
    INN VARCHAR(30) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    Bank VARCHAR(30) NOT NULL,
    Account VARCHAR(30) NOT NULL
);
CREATE TABLE `schet-faktura`
(
    CountNumber INT PRIMARY KEY NOT NULL,
    kod_z INT NOT NULL,
    DateStart DATE NOT NULL,
    value DECIMAL(10,0) NOT NULL,
    worker VARCHAR(50) NOT NULL
);
CREATE TABLE sklad
(
    kod_film INT PRIMARY KEY NOT NULL,
    kol_vo INT NOT NULL,
    stoimost DECIMAL(10,0) NOT NULL
);
CREATE TABLE vid
(
    kod_vid INT PRIMARY KEY NOT NULL,
    vid VARCHAR(30) NOT NULL
);
CREATE TABLE zakaz
(
    kod_z INT NOT NULL,
    kod_cust_u INT DEFAULT 0 NOT NULL,
    kod_cust_f INT DEFAULT 0 NOT NULL,
    kod_film INT NOT NULL,
    kol_vo INT NOT NULL,
    data_z DATE NOT NULL,
    PRIMARY KEY (kod_z, kod_cust_u, kod_cust_f)
);

INSERT INTO customer_fl(kod_cust_f, customer, phone) VALUES ('1', 'Ivanoov', '89536458795');
INSERT INTO customer_fl(kod_cust_f, customer, phone) VALUES ('2', 'Petrov', '89536587895');
INSERT INTO customer_fl(kod_cust_f, customer, phone) VALUES ('3', 'Sidorov', '89536875984');
INSERT INTO customer_fl(kod_cust_f, customer, phone) VALUES ('4', 'Ogurcov', '89536874598');

INSERT INTO customer_ul(kod_cust_u, customer, INNcustomer, AddressCust, chief, BankCustomer, phone, accountcust)
VALUES ('1', 'Filmoteka', '5845987568', 'Lenina 8', 'Tuduev', 'Sberbank', '89536547895', '65653545345435');
INSERT INTO customer_ul(kod_cust_u, customer, INNcustomer, AddressCust, chief, BankCustomer, phone, accountcust)
VALUES ('2', 'Filmograf', '6866987568', 'Lenina 135', 'Komov', 'Sberbank', '89548525478', '657655765345435');
INSERT INTO customer_ul(kod_cust_u, customer, INNcustomer, AddressCust, chief, BankCustomer, phone, accountcust)
VALUES ('3', 'FilmPro', '5465227534', 'Lenina 32', 'Lip', 'Sberbank', '89635892485', '6576123125345435');

INSERT INTO vid(kod_vid, vid) VALUES ('1', 'Voennie');
INSERT INTO vid(kod_vid, vid) VALUES ('2', 'Komedii');
INSERT INTO vid(kod_vid, vid) VALUES ('3', 'Drama');

INSERT INTO film(kod_film, kod_vid, film, manufacturer, Specification)
VALUES ('1', '1', '9 rota', 'Фёдор Бондарчук', 'Один из самых нашумевших...');
INSERT INTO film(kod_film, kod_vid, film, manufacturer, Specification)
VALUES ('2', '1', '9 rota', 'Фёдор Бондарчук', 'Один из самых нашумевших...');
INSERT INTO film(kod_film, kod_vid, film, manufacturer, Specification)
VALUES ('3', '1', 'Сталинград', 'Фёдор Бондарчук', 'Чудом уцелевшим разведчикам под...');
INSERT INTO film(kod_film, kod_vid, film, manufacturer, Specification)
VALUES ('4', '2', 'Ералаш', 'Борис Грачевский', 'Детский юмористический киножурнал Ералаш...');
INSERT INTO film(kod_film, kod_vid, film, manufacturer, Specification)
VALUES ('5', '3', 'Зеленая миля', 'Фрэнк Дарабонт', 'Обвиненный в страшном преступлении...');

INSERT INTO provider(kod_provider, provider, INN, Address, Bank, Account)
VALUES ('1', 'MirFilm', '5846835935', 'Lesnaya 6', 'Sberbank', '567657567567');
INSERT INTO provider(kod_provider, provider, INN, Address, Bank, Account)
VALUES ('2', 'FilmHod', '8245893242', 'Lesnaya 90', 'Sberbank', '56756756756');

INSERT INTO postavka(kod_p, kod_provider, kod_film, kol_vo, summa, data_opl, data_p)
VALUES ('1', '2', '1', '10', '4500', '19.11.2015', '15.11.2015');
INSERT INTO postavka(kod_p, kod_provider, kod_film, kol_vo, summa, data_opl, data_p)
VALUES ('2', '2', '2', '20', '9000', '19.11.2015', '15.11.2015');
INSERT INTO postavka(kod_p, kod_provider, kod_film, kol_vo, summa, data_opl, data_p)
VALUES ('3', '1', '1', '10', '5500', '19.10.2015', '15.10.2015');

INSERT INTO kassa(nom_kass_ord, countNumber, kod_p, summa, data_oplati)
VALUES ('1', '2', '2', '9000', '2019-11-20');
INSERT INTO kassa(nom_kass_ord, countNumber, kod_p, summa, data_oplati)
VALUES ('2', '1', '3', '5500', '2019-10-20');
INSERT INTO kassa(nom_kass_ord, countNumber, kod_p, summa, data_oplati)
VALUES ('3', '3', '1', '4500', '2019-11-20');

INSERT INTO schet_faktura(CountNumber, kod_z, DateStart, value, worker)
VALUES ('1', '1', '2015-10-20', '5500', 'Ivanov');
INSERT INTO schet_faktura(CountNumber, kod_z, DateStart, value, worker)
VALUES ('2', '2', '2015-11-20', '9000', 'Petrov');
INSERT INTO schet_faktura(CountNumber, kod_z, DateStart, value, worker)
VALUES ('3', '3', '2015-11-20', '4500', 'Ivanov');

INSERT INTO sklad(kod_film, kol_vo, stoimost) VALUES ('1', '15', '450');
INSERT INTO sklad(kod_film, kol_vo, stoimost) VALUES ('2', '13', '450');
INSERT INTO sklad(kod_film, kol_vo, stoimost) VALUES ('3', '10', '550');

INSERT INTO zakaz(kod_z, kod_cust_u, kod_cust_f, kod_film, kol_vo, data_z)
VALUES ('1', '0', '1', '1', '10', '2019-11-10');
INSERT INTO zakaz(kod_z, kod_cust_u, kod_cust_f, kod_film, kol_vo, data_z)
VALUES ('2', '1', '0', '2', '20', '2019-11-10');
INSERT INTO zakaz(kod_z, kod_cust_u, kod_cust_f, kod_film, kol_vo, data_z)
VALUES ('3', '0', '2', '3', '10', '2019-10-10');