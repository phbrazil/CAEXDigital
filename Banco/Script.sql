    CREATE USER 'caex'@'localhost' IDENTIFIED BY '0c24a188a9';    
    GRANT ALL PRIVILEGES ON * . * TO 'caex'@'localhost';
DROP DATABASE caexdigital;
CREATE DATABASE caexdigital;
USE caexdigital;


CREATE TABLE tbUser(
id INT NOT NULL AUTO_INCREMENT,
emailUser VARCHAR (50) UNIQUE NOT NULL,
nomeUser VARCHAR (50) NOT NULL,
passwordUser VARCHAR (30) NOT NULL,
changePassword boolean NOT NULL,
PRIMARY KEY (id));

insert into tbUser(emailUser,nomeUser,passwordUser,changePassword) values ('paulo.bezerra@mci-group.com','Paulo Bezerra','0c24a188a9',false);


