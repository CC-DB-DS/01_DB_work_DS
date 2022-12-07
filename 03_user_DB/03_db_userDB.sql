DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */

DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

DESCRIBE boo.users;

INSERT INTO boo.users(firstName,familyName,userName) VALUES ("Daniel", "Schindler", "Dan-Schin");
INSERT INTO boo.users(firstName,familyName,userName) VALUES ("Leinad", "Reldnihcs", "Peng");
INSERT INTO boo.users(firstName,familyName,userName) VALUES ("Arnold", "Schindler", "Dan-Schin3.14");
SELECT * FROM boo.users;