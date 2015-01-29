DROP TABLE IF EXISTS station;
DROP TABLE IF EXISTS passage;
DROP TABLE IF EXISTS bil;

CREATE TABLE station(
	station_id 	INT		PRIMARY KEY NOT NULL,
	gatunamn 	CHAR(50) NOT NULL,
	stadsdel	CHAR(50) NOT NULL,
	stad	CHAR(50) NOT NULL
);

CREATE TABLE passage(
	passage_id 	LONG		PRIMARY KEY NOT NULL,
	tidpunkt	DATETIME NOT NULL,
	pris	REAL NOT NULL,
	station_id INT NOT NULL,
	FOREIGN KEY(station_id) REFERENCES station(station_id)
);

CREATE TABLE bil(
	klass 	CHAR(10) NOT NULL,
	drivmedel 	CHAR(1) NOT NULL,
	co2	INT NOT NULL,
	passage_id LONG NOT NULL,
	FOREIGN KEY(passage_id) REFERENCES passage(passage_id)
);
