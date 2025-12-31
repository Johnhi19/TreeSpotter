CREATE TABLE `trees` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
    `plantDate` datetime DEFAULT NULL COMMENT 'Planting date',
    `meadowId` int DEFAULT NULL COMMENT 'Meadow ID',
    `position` json DEFAULT NULL COMMENT 'Position of the tree',
    `type` varchar(255) DEFAULT NULL,
    `user_id` int DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_user_tree` (`user_id`),
    KEY `fk_meadow_tree` (`meadowId`),
    CONSTRAINT `fk_meadow_tree` FOREIGN KEY (`meadowId`) REFERENCES `meadows` (`id`),
    CONSTRAINT `fk_user_tree` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 42 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci
