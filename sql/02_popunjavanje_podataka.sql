USE Trgovina;
GO

INSERT INTO Kategorija (Naziv) VALUES ('Elektronika');
INSERT INTO Kategorija (Naziv) VALUES ('Hrana');

INSERT INTO Proizvod (Naziv, Cijena, Kolicina, KategorijaID) VALUES ('Slusalice', 50, 10, 1);
INSERT INTO Proizvod (Naziv, Cijena, Kolicina, KategorijaID) VALUES ('Cokolada', 2.5, 100, 2);
INSERT INTO Proizvod (Naziv, Cijena, Kolicina, KategorijaID) VALUES ('Mis', 25, 20, 1);

INSERT INTO Kupac (Ime, Prezime) VALUES ('Marko', 'Petrovic');
INSERT INTO Kupac (Ime, Prezime) VALUES ('Ana', 'Jukic');

INSERT INTO Narudzba (KupacID, Datum, Status) VALUES (1, '2025-12-01', 'Isporucena');
INSERT INTO Narudzba (KupacID, Datum, Status) VALUES (2, '2025-12-10', 'Na cekanju');

INSERT INTO Stavka (NarudzbaID, ProizvodID, Kolicina) VALUES (1, 1, 1);
INSERT INTO Stavka (NarudzbaID, ProizvodID, Kolicina) VALUES (1, 3, 2);
INSERT INTO Stavka (NarudzbaID, ProizvodID, Kolicina) VALUES (2, 2, 5);
