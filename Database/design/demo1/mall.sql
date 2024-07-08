CREATE TABLE `category`  (
  ` id` int NOT NULL,
  `name` varchar(255) NULL,
  `description` varchar(255) NULL,
  `pid` int NULL,
  `code` varchar(255) NULL,
  `sort` varchar(255) NULL,
  PRIMARY KEY (` id`)
);

CREATE TABLE `product`  (
  `id` int NOT NULL,
  `price` decimal(10, 2) NULL,
  `name` varchar(255) NULL,
  `description` varchar(255) NULL,
  `photo` varchar(255) NULL,
  `stock` int NULL,
  `sales` int NULL,
  `follow` int NULL,
  `category_id` int NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `product_follow`  (
  `id` int NOT NULL,
  `user_id` int NULL,
  `product_id` int NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user`  (
  `id` int NOT NULL,
  `username` varchar(255) NULL,
  `password` varchar(255) NULL,
  `real_name` varchar(255) NULL,
  `id_number` int NULL,
  `phone` varchar(255) NULL,
  `birthday` varchar(255) NULL,
  `protrait` varchar(255) NULL,
  `description` varchar(255) NULL,
  `address` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `category` ADD CONSTRAINT `fk_category_category_1` FOREIGN KEY (`pid`) REFERENCES `category` (` id`);
ALTER TABLE `product` ADD CONSTRAINT `fk_product_category_1` FOREIGN KEY (`category_id`) REFERENCES `category` (` id`);
ALTER TABLE `product_follow` ADD CONSTRAINT `fk_product_follow_user_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
ALTER TABLE `product_follow` ADD CONSTRAINT `fk_product_follow_product_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

