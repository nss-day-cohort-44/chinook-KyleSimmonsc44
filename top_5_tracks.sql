SELECT
    Count(il.TrackId) as NumberOfSales,
    t.Name as TrackName
FROM Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY TrackName
ORDER BY NumberOfSales DESC
LIMIT 5