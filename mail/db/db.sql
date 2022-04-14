create database mailbox;
CREATE USER 'woody'@'localhost' IDENTIFIED BY 'hypersecurise';
GRANT ALL PRIVILEGES ON mailbox.* to 'woody'@'localhost' WITH GRANT OPTION ;

FLUSH PRIVILEGES;

use mailbox;

-- CREATE TABLE 'domains' (
-- `id` INT NOT NULL AUTO_INCREMENT,
-- `domain_name` VARCHAR(50) NOT NULL,
-- PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE 'users' (
`id` INT NOT NULL AUTO_INCREMENT,
`username` VARCHAR(150) NOT NULL,
`password` VARCHAR(106) NOT NULL,
`domain` VARCHAR(50) NOT NULL,
`foldermail` VARCHAR(150) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `username` (`username`)
-- FOREIGN KEY (domain_id) REFERENCES domains(id) ON DELETE CASCADE
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