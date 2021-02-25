SELECT
    e.FirstName,
    e.LastName,
    i.*
    FROM employee e
    JOIN Customer c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i ON i.CustomerId = c.CustomerId