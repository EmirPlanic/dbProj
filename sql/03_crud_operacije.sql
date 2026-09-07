USE Trgovina;
GO

INSERT INTO Proizvod (Naziv, Cijena, KategorijaID) VALUES ('Mis', 25, 1);

SELECT * FROM Proizvod;
SELECT * FROM Kupac;

UPDATE Proizvod SET Cijena = 45 WHERE ProizvodID = 1;

DELETE FROM Proizvod WHERE ProizvodID = 3;
