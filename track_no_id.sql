SELECT a.Title as AlbumTitle,
t.Name as TrackName,
    mt.Name as MediaTypeName,
    g.Name as GenreName
    From Track t
    Join Album a ON a.AlbumId = t.AlbumId
    Join MediaType mt ON mt.MediaTypeId = t.MediaTypeId
    Join Genre g ON g.GenreId = t.GenreId