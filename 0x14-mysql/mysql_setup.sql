CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
SHOW GRANTS FOR 'holberton_user'@'localhost';
CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;
CREATE TABLE IF NOT EXISTS nexus6 (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255));
INSERT INTO nexus6 (name) VALUES ('Leon');
GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';
CREATE USER IF NOT EXISTS 'replica_user'@'%' IDENTIFIED BY 'replica_user';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
~                                                                                                                                      
~                                                                                                                                      
~                        
