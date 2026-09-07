USE Trgovina;
GO

INSERT INTO Kategorija (Naziv) VALUES ('Elektronika');
INSERT INTO Kategorija (Naziv) VALUES ('Hrana');

INSERT INTO Proizvod (Naziv, Cijena, KategorijaID) VALUES ('Slusalice', 50, 1);
INSERT INTO Proizvod (Naziv, Cijena, KategorijaID) VALUES ('Cokolada', 2.5, 2);

INSERT INTO Kupac (Ime, Prezime) VALUES ('Marko', 'Petrovic');

INSERT INTO Narudzba (KupacID, ProizvodID, Kolicina) VALUES (1, 1, 1);
