SELECT g.name AS genre,
	   ll.region AS region,
	   COUNT(ll.listen_time) AS total_listens
FROM listening_logs ll 
JOIN song_genres sg ON ll.song_id  = sg.song_id 
JOIN genres g ON sg.genre_id = g.genre_id 
GROUP BY g.name, ll.region
ORDER BY total_listens DESC