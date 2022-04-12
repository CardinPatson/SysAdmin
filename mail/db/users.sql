INSERT INTO 'mailbox'.'domains'
('id' ,'domain_name')
VALUES
('1', 'm1-3.ephec-ti.be');

INSERT INTO 'mailbox'.'users'
('id', 'domain_id', 'password' , 'email', 'maildir')
VALUES
('1', '1', ENCRYPT('password1', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'cardin@m1-3.ephec-ti.be', 'm1-3.ephec-ti.be/cardin/');

INSERT INTO 'mailbox'.'users'
('id', 'domain_id', 'password' , 'email', 'maildir')
VALUES
('2', '1', ENCRYPT('password2', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'marina@m1-3.ephec-ti.be', 'm1-3.ephec-ti.be/marina/');


