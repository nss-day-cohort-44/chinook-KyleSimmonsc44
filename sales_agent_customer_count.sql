Select
MAX(NumberOfCustomers),
EmployeeName
FROM(
SELECT
    e.FirstName || ' ' || e.LastName as EmployeeName,
    COUNT(c.CustomerId) as NumberOfCustomers
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUp BY e.FirstName
)