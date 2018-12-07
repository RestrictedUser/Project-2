CREATE DATABASE IF NOT EXISTS habitTracker_db;
USE habitTracker_db;

-- If the table already exists, remove it before trying to create the table again
SET FOREIGN_KEY_CHECKS = 0;
-- If the table already exists, remove it before trying to create the table again
DROP TABLE IF EXISTS userlogin;  
DROP TABLE IF EXISTS userinfo;  
DROP TABLE IF EXISTS userhabits; 
SET FOREIGN_KEY_CHECKS = 1;

/*user login table stores login credentials and is the primary key*/
CREATE TABLE userlogin (
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    PRIMARY KEY (username)
);

/*user info stores all information on the user and shares the foreign key  username with the userlogin table*/
CREATE TABLE userinfo (
    username varchar(255) NOT NULL,
    firstname varchar(255) not null,
    lastname varchar(255) not null,
    email varchar(100) not null,
    birthdate date,
    height decimal(4,2),
    weight decimal(4,2),
    FOREIGN KEY (username) REFERENCES userlogin(username)
);

/*associates all habits that want to be broken or formed, the goal is days, and the units column refers to the habit 
ie quantity of cigerettes not smoke, or days in a row of running*/
CREATE TABLE userhabits (
    username varchar(255) NOT NULL,
	firstname varchar(255) not null,
    lastname varchar(255) not null,
    habitname varchar(100) not null,
    goal integer,/*days*/
    units varchar(20),
    timeframe integer,
    startdate date,
    enddate date,
    FOREIGN KEY (username) REFERENCES userlogin(username)
);
