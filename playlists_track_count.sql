Select p.Name as PlaylistName,
    Count(pt.trackId)
FROM Playlist p
    Join PlaylistTrack pt On pt.PlaylistId = p.PlaylistId
    Group by p.name