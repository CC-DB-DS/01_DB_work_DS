/* ---------------- Strukturen ---------- */

/* Datenbanken auf Server anzeigen */

# SHOW DATABASES;


/* DB boo löschen falls vorhanden */
DROP DATABASE IF EXISTS boo;

/*DB foo anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
# USE boo;

CREATE TABLE IF NOT EXISTS boo.test
(
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT(3) NOT NULL DEFAULT 0

);

SHOW DATABASES;
SHOW TABLES;

DESCRIBE boo.test;

/* Daten */

INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test VALUES();

/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.test;

INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");

SELECT * FROM boo.test;