Select i.*, t.Name as TrackName From InvoiceLine i
LEFT JOIN Track t On t.TrackId = i.TrackId