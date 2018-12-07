DROP DATABASE IF EXISTS habitTest;
CREATE DATABASE habitTest;

USE habitTest;

CREATE TABLE habits (
	id INT NOT NULL auto_increment,
    nameFirst VARCHAR(100) NOT NULL,
    nameLast VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    habit VARCHAR(100) NOT NULL,
    `completion` BOOLEAN default 0,
    updatedAt TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
	createdAt TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO habits (nameFirst, nameLast, password, habit, `completion`, createdAt)
VALUES 
("Tyler", "Middleton", "password", "Smoking", "0", NOW()),
("Arnold", "Towner", "abc", "Smoking", "1", NOW());
