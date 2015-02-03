--Alla stationer
SELECT station.station_id, AVG(transaktion.co2) AS co2avg, station.stad, station.stadsdel FROM station 
	--Joina på transaktioner med station ID
	INNER JOIN transaktion ON station.station_id=transaktion.station_id
	--Metadata
	INNER JOIN tid ON transaktion.tidpunkt_id=tid.tidpunkt_id
		WHERE transaktion.tidpunkt_id IN
			(SELECT tidpunkt_id FROM tid WHERE ar=2015 AND manad=1 AND dag=30)
		GROUP BY station.station_id;
		
--1.a) Stadsdel

SELECT COUNT(station.station_id) AS antalStationer, AVG(transaktion.co2) AS co2avg, station.stad, station.stadsdel FROM station 
	--Joina på transaktioner med station ID
	INNER JOIN transaktion ON station.station_id=transaktion.station_id
	--Metadata
	INNER JOIN tid ON transaktion.tidpunkt_id=tid.tidpunkt_id
		WHERE transaktion.tidpunkt_id IN
			(SELECT tidpunkt_id FROM tid WHERE ar=2015 AND manad=1 AND dag=30)
		GROUP BY station.stadsdel;
		
--1.a)
SELECT COUNT(station.station_id) AS antalStationer, AVG(transaktion.co2) AS co2avg, station.stad, station.stadsdel FROM station 
	--Joina på transaktioner med station ID
	INNER JOIN transaktion ON station.station_id=transaktion.station_id
	--Metadata
	INNER JOIN tid ON transaktion.tidpunkt_id=tid.tidpunkt_id
		WHERE transaktion.tidpunkt_id IN
			(SELECT tidpunkt_id FROM tid WHERE ar=2015 AND manad=1 AND dag=30)
		GROUP BY station.stad;