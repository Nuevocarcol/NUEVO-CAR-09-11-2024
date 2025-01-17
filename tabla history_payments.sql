-- `nuevocar2.0`.history_payments definition

CREATE TABLE `history_payments` (
  `userId` bigint(20) unsigned NOT NULL,
  `labelId` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(15,2) unsigned NOT NULL,
  `state` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'pending',
  `id` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;