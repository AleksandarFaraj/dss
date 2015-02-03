DROP TABLE IF EXISTS transaktion;
DROP TABLE IF EXISTS station;
DROP TABLE IF EXISTS passage;
DROP TABLE IF EXISTS fordon;
DROP TABLE IF EXISTS tid;

CREATE TABLE transaktion(
	station_id INTEGER,
	fordon_id INTEGER,
	passage_id INTEGER,
	tidpunkt_id INTEGER,
	co2	SMALLINT NOT NULL,
	pris SMALLINT NOT NULL,
	FOREIGN KEY(station_id) REFERENCES station(station_id),
	FOREIGN KEY(fordon_id) REFERENCES fordon(fordon_id),
	FOREIGN KEY(passage_id) REFERENCES passage(passage_id),
	FOREIGN KEY(tidpunkt_id) REFERENCES tidpunkt(tidpunkt_id)
);

CREATE TABLE station(
	station_id 	INTEGER	PRIMARY KEY,
	gatunamn 	CHAR(50) NOT NULL,
	stadsdel	CHAR(50) NOT NULL,
	stad	CHAR(50) NOT NULL
);

CREATE TABLE fordon(
	fordon_id INTEGER PRIMARY KEY,
	klass 	CHAR(15) NOT NULL
);

CREATE TABLE passage(
	passage_id INTEGER PRIMARY KEY,
	station_id INTEGER,
	stadsdel CHAR(25),
	FOREIGN KEY (station_id) REFERENCES station(station_id)
);

CREATE TABLE tid(
	tidpunkt_id INTEGER PRIMARY KEY,
	ar SMALLINT NOT NULL,
	manad TINYINT NOT NULL,
	dag TINYINT NOT NULL,
	timme TINYINT NOT NULL,
	minut TINYINT NOT NULL,
	sekund TINYINT NOT NULL
);