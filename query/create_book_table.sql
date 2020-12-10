CREATE TABLE `book` (
	`book_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(200) NOT NULL,
	`category` VARCHAR(200) NOT NULL DEFAULT '',
	`price` INT NULL,
	`insert_date` DATETIME NOT NULL DEFAULT NOW(),
	PRIMARY KEY (`book_id`)
)
COLLATE='utf8mb4_general_ci'
;