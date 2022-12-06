/* ---------------- Strukturen ---------- */

/* Datenbanken auf Server anzeigen */

# SHOW DATABASES;


/* DB boo löschen falls vorhanden */
# DROP DATABASE IF EXISTS boo;

/*DB foo anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

CREATE TABLE IF NOT EXISTS test
(
    name VARCHAR(20),
    age INT(3)

);

SHOW DATABASES;
SHOW TABLES;

DESCRIBE test;

/* Daten */

INSERT INTO test(name,age) VALUES ("Grizabella",29);
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test VALUES();

/* Inhalte der Tabelle anzeigen */
SELECT * FROM test;