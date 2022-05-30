CREATE TABLE IF NOT EXISTS news (
	id INT NOT NULL AUTO_INCREMENT,
	`serial` CHAR(20) NOT NULL,
	topic_serial CHAR(20) NOT NULL,
	`status` ENUM('draft' , 'publish' , 'deleted') NOT NULL,
	title VARCHAR(100) NOT NULL DEFAULT '',
	author_name VARCHAR(150) NOT NULL DEFAULT '',
	description TEXT NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
	deleted_at TIMESTAMP NULL,
	CONSTRAINT news_pk PRIMARY KEY (id),
	UNIQUE KEY `idx_news_serial_unique` (`serial`) USING BTREE,
	FOREIGN KEY (`topic_serial`) REFERENCES `topic`(serial) ON UPDATE CASCADE ON DELETE CASCADE
)

ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;