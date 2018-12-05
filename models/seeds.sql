USE habitTracker_db;
INSERT INTO userlogin (username,password) VALUES ('zalaywan','1010');
INSERT INTO userlogin (username,password) VALUES ('deed','1010');
INSERT INTO userlogin (username,password) VALUES ('sbarva','castle');

insert into userinfo (username,firstname,lastname,email,birthdate,height,weight) values ('zalaywan','Zach','Alaywan','zack@gmail.com',10/10/1990,70,175);
insert into userinfo (username,firstname,lastname,email,birthdate,height,weight) values ('deed','Zach','Alaywan','deborah@gmail.com',10/23/1981,62,120);
insert into userinfo (username,firstname,lastname,email,birthdate,height,weight) values ('sbarva','Sean','Barva','sean@gmail.com',10/10/1985,72,200);

insert into userhabits (username,firstname,lastname,habitname,units,startdate,enddate)
values ('zalaywan','Zach','Alaywan','Start Running','days',1/1/2018,12/1/2018);
