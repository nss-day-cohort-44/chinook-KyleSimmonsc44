Select 
    e.FirstName as EmployeeFirstName,
    e.LastName as EmployeeLastName,
    SUM(i.Total)
    FROM Employee e
    JOIN Customer c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i ON i.CustomerId = c.CustomerId
group BY e.FirstName