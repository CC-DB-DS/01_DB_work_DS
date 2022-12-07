DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */

DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

DESCRIBE boo.users;

/* Passwörter verschlüsseln */
INSERT INTO 
    boo.users(firstName,familyName,userName,userPwd) 
VALUES 
    ("Daniel", "Schindler", "Dan-Schin", SHA1("1234")),
    ("Leinad", "Reldnihcs", "Peng", SHA1("asdf")),
    ("Arnold", "Schindler", "Dan-Schin3.14", SHA1("39$!E4"))
;

SELECT * FROM boo.users;

/*Änderungen an bestehender Tabelle */

ALTER TABLE
    boo.users
ADD
    userPLZ INT (5) NOT NULL DEFAULT 00000;
    
DESCRIBE boo.users;

/* Inhalte in neue Spalte einfügen */
UPDATE boo.users SET userPLZ = 97084 WHERE firstName = "Daniel";
UPDATE boo.users SET userPLZ = 97218 WHERE firstName = "Arnold";
    
SELECT * FROM boo.users;