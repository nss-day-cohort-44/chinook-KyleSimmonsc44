Select i.*,
    t.Name as TrackName,
    a.Name as ArtistName
From InvoiceLine i
    LEFT JOIN Track t On t.TrackId = i.TrackId
    Left Join Album On album.AlbumId = t.AlbumId
    Left JOIN Artist a On a.ArtistId = Album.ArtistId