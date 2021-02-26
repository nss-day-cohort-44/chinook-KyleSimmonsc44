SELECT c.Country as Country,
    Sum(i.total) as Total
FROM Customer c
    JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY c.Country