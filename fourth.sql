--1.5 c FordonMin)

SELECT fordon.klass, SUM(transaktion.co2) FROM fordon
	INNER JOIN transaktion ON fordon.fordon_id=transaktion.fordon_id
		INNER JOIN tid ON tid.tidpunkt_id=transaktion.tidpunkt_id
			WHERE tid.ar=2015 AND tid.manad=1 AND tid.dag=30
	GROUP BY fordon.klass ORDER BY transaktion.co2 DESC LIMIT 1
	;
	
--1.5 d Utsläpp min

SELECT fordon.klass, SUM(transaktion.co2) FROM fordon
	INNER JOIN transaktion ON fordon.fordon_id=transaktion.fordon_id
		INNER JOIN tid ON tid.tidpunkt_id=transaktion.tidpunkt_id
			WHERE tid.ar=2015 AND tid.manad=1 AND tid.dag=30
	GROUP BY fordon.klass ORDER BY transaktion.co2 ASC LIMIT 1
	;