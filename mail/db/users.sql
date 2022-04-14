-- INSERT INTO 'mailbox'.'domains'
-- ('id' ,'domain_name')
-- VALUES
-- ('1', 'm1-3.ephec-ti.be');

INSERT INTO 'mailbox'.'users'
('id', 'username' , 'password' ,  'domain', 'foldermail')
VALUES
('1','cardin@m1-3.ephec-ti.be', ENCRYPT('password1', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))) ,'m1-3.ephec-ti.be', 'm1-3.ephec-ti.be/cardin/');

INSERT INTO 'mailbox'.'users'
('id', 'username', 'password' , 'domain',  'foldermail')
VALUES
('2', 'marina@m1-3.ephec-ti.be',ENCRYPT('password2', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))),'m1-3.ephec-ti.be',   'm1-3.ephec-ti.be/marina/');


-- insert into users
-- (id, username, password , domain,foldermail)
-- values
-- (1,'cardin@m1-3.ephec-ti.be', 'hypersecurise', 'm1-3.ephec-ti.be', 'm1-3.ephec-ti.be/cardin/')
