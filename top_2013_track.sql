Select
TrackName,
MAX(NumberOfSales)
From(
SELECT
    t.Name as TrackName,
    strftime("%Y", i.InvoiceDate) as year,
    COUNT(il.TrackId) as NumberOfSales
    From Track t
    Join InvoiceLine il ON il.TrackId = t.TrackId
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    Where year = "2013"
    GROUP BY t.Name
)