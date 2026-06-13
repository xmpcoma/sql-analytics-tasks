SELECT 
	strftime('%Y-%m', listen_time) as year_month,
	COUNT(ll.listen_time) AS total_listens
FROM songs s
JOIN listening_logs ll ON s.song_id = ll.song_id
GROUP BY year_month
ORDER BY year_month
