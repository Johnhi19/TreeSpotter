CREATE TABLE IF NOT EXISTS `images` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
    `path` varchar(255) NOT NULL,
    `description` varchar(255) DEFAULT NULL,
    `date` date DEFAULT NULL,
    `user_id` int NOT NULL,
    `tree_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`),
    KEY `tree_id` (`tree_id`),
    CONSTRAINT `Images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `Images_ibfk_2` FOREIGN KEY (`tree_id`) REFERENCES `trees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci