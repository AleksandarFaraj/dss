--1.5 c FordonMin)

--MAX
SELECT fordon.klass, SUM (transaktion.pris) FROM fordon
	INNER JOIN transaktion ON transaktion.fordon_id=fordon.fordon_id
		GROUP BY transaktion.fordon_id ORDER BY transaktion.pris DESC LIMIT 1
		;
--MIN
SELECT fordon.klass, SUM (transaktion.pris) FROM fordon
	INNER JOIN transaktion ON transaktion.fordon_id=fordon.fordon_id
		GROUP BY transaktion.fordon_id ORDER BY transaktion.pris DESC LIMIT 1
		;