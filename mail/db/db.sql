create database maibox;

GRANT ALL PRIVILEGES ON mailbox.* to 'mailUser'@'localhost' identified by 'root';

FLUSH PRIVILEGES;

use mailbox;

CREATE TABLE `virtual_domains` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_users` (
`id` INT NOT NULL AUTO_INCREMENT,
`domain_id` INT NOT NULL,
`password` VARCHAR(106) NOT NULL,
`email` VARCHAR(120) NOT NULL,
`maildir` VARCHAR(120) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `email` (`email`),
FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;