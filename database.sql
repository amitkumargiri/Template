CREATE TABLE `roles` (  
  `id` int(6) NOT NULL AUTO_INCREMENT,  
  `role` varchar(20) NOT NULL,  
  PRIMARY KEY (`id`)  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;  
  
CREATE TABLE `users` (  
  `id` int(3) NOT NULL AUTO_INCREMENT,  
  `username` varchar(20) NOT NULL,  
  `password` varchar(20) NOT NULL,  
  `emailid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;  
  
CREATE TABLE `user_roles` (  
  `user_id` int(6) NOT NULL,  
  `role_id` int(6) NOT NULL,  
  KEY `user` (`user_id`),  
  KEY `role` (`role_id`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `projects` (
  `id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `startday` varchar(30) ,
  `endday` varchar(30),
  `location` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO roles (role) VALUES ('superuser'), ('manager'), ('employee'), ('customer');  
  
INSERT INTO users (login, password) VALUES 
('amitkumargiri', 'imamit2012', 'amitkumargiri@hotmail.com'),
('chiragjagad', 'chiragjagad', 'default@com'),
('priyagiri', 'priyagiri', 'default@'),
('renugiri', 'renugiri', 'default@'));
  
INSERT INTO user_roles (user_id, role_id) VALUES (1,1), (1,2), (2, 2), (3,3), (4,4);