USE Trgovina;
GO

CREATE VIEW Top10Proizvoda
AS
SELECT TOP 10
    p.Naziv,
    SUM(s.Kolicina) AS UkupnoProdato
FROM Stavka s
JOIN Narudzba n ON s.NarudzbaID = n.NarudzbaID
JOIN Proizvod p ON s.ProizvodID = p.ProizvodID
WHERE n.Datum >= DATEADD(DAY, -30, GETDATE())
GROUP BY p.ProizvodID, p.Naziv
ORDER BY UkupnoProdato DESC;
GO
