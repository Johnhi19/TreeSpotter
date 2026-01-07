CREATE TABLE IF NOT EXISTS `meadows` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
    `location` varchar(255) DEFAULT NULL COMMENT 'Address of the meadow',
    `name` varchar(255) DEFAULT NULL,
    `size` json DEFAULT NULL COMMENT 'Size of the meadow',
    `treeIds` json DEFAULT NULL COMMENT 'List of tree IDs in the meadow',
    `user_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_user_meadow` (`user_id`),
    CONSTRAINT `fk_user_meadow` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci