create database mailbox;
CREATE USER 'woody'@'localhost' IDENTIFIED BY 'hypersecurise';
GRANT ALL PRIVILEGES ON mailbox.* to 'woody'@'localhost' WITH GRANT OPTION ;
FLUSH PRIVILEGES;
use mailbox;

CREATE TABLE 'domains'(
    `domain` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`domain`),
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE 'forwardings'( 
 'source' varchar(80) NOT NULL,
 'destination' TEXT NOT NULL,
 PRIMARY KEY ('source') )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE 'users' (
`id` INT NOT NULL AUTO_INCREMENT,
`username` VARCHAR(150) NOT NULL,
`password` VARCHAR(106) NOT NULL,

`domain` VARCHAR(50) NOT NULL,
`foldermail` VARCHAR(150) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `username` (`username`)
FOREIGN KEY (domain) REFERENCES domains(domain) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- create table users(
-- id INT NOT NULL AUTO_INCREMENT,
-- username VARCHAR(150) NOT NULL,
-- password VARCHAR(150) NOT NULL,
-- domain VARCHAR(50) NOT NULL,
-- foldermail VARCHAR(150) NOT NULL,
-- PRIMARY KEY(id),
-- UNIQUE KEY username(username)
-- );