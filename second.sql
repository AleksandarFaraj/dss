--1.5 b)
SELECT transaktion.station_id, fordon.klass, COUNT(fordon.klass) AS antal FROM fordon
	INNER JOIN transaktion ON fordon.fordon_id=transaktion.fordon_id
		WHERE transaktion.tidpunkt_id IN
			(SELECT tidpunkt_id FROM tid WHERE ar=2015 AND manad=1 AND dag=30)
			AND transaktion.station_id=1
		GROUP BY transaktion.station_id, fordon.klass ORDER BY antal DESC LIMIT 1;