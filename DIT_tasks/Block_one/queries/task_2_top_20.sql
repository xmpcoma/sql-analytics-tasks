SELECT t.name AS artist, 
	   COUNT(*) AS top_songs
FROM (
	SELECT a2.name , s.title, COUNT(ll.user_id) as listens, 
		   NTILE(5) OVER (ORDER BY COUNT(ll.user_id) DESC) as quintile
	FROM genres g
	JOIN song_genres sg ON g.genre_id = sg.genre_id
	JOIN songs s ON sg.song_id = s.song_id
	JOIN albums a ON s.album_id = a.album_id
	JOIN listening_logs ll ON s.song_id = ll.song_id
	JOIN artists a2 ON a.artist_id = a2.artist_id
	GROUP BY a2.name , s.title
) T
WHERE quintile = 1
GROUP BY t.name
ORDER BY top_songs DESC
LIMIT 3