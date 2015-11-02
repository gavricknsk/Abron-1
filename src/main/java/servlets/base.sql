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

