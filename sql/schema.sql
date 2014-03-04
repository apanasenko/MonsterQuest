DROP DATABASE IF EXISTS monsterquest;
CREATE DATABASE monsterquest;

use monsterquest;

GRANT ALL
ON `monsterquest`.*
TO `monster_user`@localhost IDENTIFIED BY 'qwerty';

CREATE TABLE users (
	id       INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
	login    VARCHAR(36) NOT NULL,
	password VARCHAR(36) NOT NULL,
   UNIQUE KEY(login)
);

CREATE TABLE sessions (
	id      INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT         NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	sid     VARCHAR(20) NOT NULL,
   UNIQUE KEY(sid)
);


DELIMITER //

DROP PROCEDURE IF EXISTS `add_user_session` //
CREATE PROCEDURE `add_user_session`(IN `ulogin` VARCHAR(10), IN `uuid` VARCHAR(20))
BEGIN
   DECLARE uuser_id INT;
   SELECT `id` INTO uuser_id FROM `users` WHERE `login` = 'fsd';
   DELETE FROM `sessions` WHERE `user_id` = uuser_id;
   INSERT INTO `sessions`(`user_id`, `sid`) VALUES(uuser_id, uuid);
END//

DELIMITER ;