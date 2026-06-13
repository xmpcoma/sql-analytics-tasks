SELECT a.title AS album,
	   a2.name AS artist, 
	   COUNT(*) as collab_count
FROM (
    SELECT song_id 
	FROM song_artists sa
	GROUP BY song_id 
	HAVING COUNT(*) > 1
) collab_songs
JOIN songs s ON collab_songs.song_id  = s.song_id 
JOIN albums a ON s.album_id  = a.album_id 
JOIN artists a2 ON a.artist_id = a2.artist_id
GROUP BY a.title, a2.name
ORDER BY collab_count DESC
LIMIT 1 