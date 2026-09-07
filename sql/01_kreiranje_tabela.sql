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
    ProizvodID INT,
    Kolicina INT,
    FOREIGN KEY (KupacID) REFERENCES Kupac(KupacID),
    FOREIGN KEY (ProizvodID) REFERENCES Proizvod(ProizvodID)
);
