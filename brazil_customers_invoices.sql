Select
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
Where c.Country = "Brazil"