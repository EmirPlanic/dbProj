CREATE DATABASE Trgovina;
GO

USE Trgovina;
GO

CREATE TABLE Kategorija (
    KategorijaID INT PRIMARY KEY IDENTITY(1,1),
    Naziv VARCHAR(50)
);

CREATE TABLE Proizvod (
    ProizvodID INT PRIMARY KEY IDENTITY(1,1),
    Naziv VARCHAR(100),
    Cijena DECIMAL(10,2),
    Kolicina INT,
    KategorijaID INT,
    FOREIGN KEY (KategorijaID) REFERENCES Kategorija(KategorijaID)
);

CREATE TABLE Kupac (
    KupacID INT PRIMARY KEY IDENTITY(1,1),
    Ime VARCHAR(50),
    Prezime VARCHAR(50)
);

CREATE TABLE Narudzba (
    NarudzbaID INT PRIMARY KEY IDENTITY(1,1),
    KupacID INT,
    Datum DATE,
    Status VARCHAR(30),
    FOREIGN KEY (KupacID) REFERENCES Kupac(KupacID)
);

CREATE TABLE Stavka (
    StavkaID INT PRIMARY KEY IDENTITY(1,1),
    NarudzbaID INT,
    ProizvodID INT,
    Kolicina INT,
    FOREIGN KEY (NarudzbaID) REFERENCES Narudzba(NarudzbaID),
    FOREIGN KEY (ProizvodID) REFERENCES Proizvod(ProizvodID)
);
