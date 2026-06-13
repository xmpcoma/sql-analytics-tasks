SELECT a.title AS album,
	   a2.name AS artist,
	   COUNT(ll.listen_time) AS listens
FROM genres g
JOIN song_genres sg ON g.genre_id = sg.genre_id
JOIN songs s ON sg.song_id = s.song_id
JOIN albums a ON s.album_id = a.album_id
JOIN listening_logs ll ON s.song_id = ll.song_id
JOIN artists a2 ON a.artist_id = a2.artist_id
WHERE sg.genre_id  = 2
GROUP BY a.title, a2.name
ORDER BY COUNT(ll.user_id) DESC
LIMIT 1


