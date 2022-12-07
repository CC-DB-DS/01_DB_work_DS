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

INSERT INTO 
    boo.users(firstName,familyName,userName,userPwd) 
VALUES 
    ("Daniel", "Schindler", "Dan-Schin", "1234"),
    ("Leinad", "Reldnihcs", "Peng", "asdf"),
    ("Arnold", "Schindler", "Dan-Schin3.14", "§39$!E4")
;

SELECT * FROM boo.users;