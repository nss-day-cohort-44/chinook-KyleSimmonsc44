SELECT
    e.FirstName as EmployeeFirstName,
    e.LastName as EmployeeLastName,
    i.total,
    c.FirstName as CustomerFirstName,
    c.LastName as CustomerLastName,
    c.Country
    FROM employee e
    JOIN Customer c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i ON i.CustomerId = c.CustomerId