CREATE DATABASE mediaplayer;

USE mediaplayer;

CREATE TABLE biisit(
    ID INT PRIMARY KEY,
    nimi VARCHAR(50),
    pituus VARCHAR(20));

CREATE TABLE kayttajat(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    tunnus VARCHAR(20),
    salasana VARCHAR(30));

CREATE TABLE soittolistat(
    biisiID INT,
    tunnusID INT,
    FOREIGN KEY (biisiID) REFERENCES biisit(ID),
    FOREIGN KEY (tunnusID) REFERENCES kayttajat(ID),
    PRIMARY KEY (biisiID, tunnusID));

INSERT INTO kayttajat (tunnus, salasana) VALUES("mediaplayer","1234");

