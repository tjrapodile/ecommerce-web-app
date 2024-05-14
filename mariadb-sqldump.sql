-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.3.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table thembisbitebazaardb.admins: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.admins_roles: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.cart: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.cart_items: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.categories: ~2 rows (approximately)
INSERT INTO `categories` (`category_id`, `category_name`, `description`, `image_url`) VALUES
	(1, 'Atchar', 'a type of pickle or relish that is often associated with Indian cuisine due to its origins in the South African Indian community. It is usually made with carrots, unripe green mangoes, and chillies.', '../../images/achar3.jpg'),
	(4, 'Chilli', 'Chili is a dish made from meat or beans, or sometimes both, with a thick sauce of tomatoes, and powdered or fresh chilies.', '../../images/chili2.png');

-- Dumping data for table thembisbitebazaardb.cities: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.country: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.customers: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.customer_role: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.orders: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.order_detail: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.products: ~8 rows (approximately)
INSERT INTO `products` (`product_id`, `description`, `imageURL`, `name`, `category_id`, `price`) VALUES
	(1, 'The largest size of Atchar we have on our roster. Perfect for if you want to feed the family for a month or are hosting a get-together.(5L)', _binary 0x2e2e2f2e2e2f696d616765732f6163686172312e6a7067, 'The Jumbo Atchar', 1, 500),
	(2, 'Smallest size of Atchar we have availlable on our roster of Atchars. Great for quick toppings!(450g)', _binary 0x2e2e2f2e2e2f696d616765732f6163686172322e6a7067, 'The Mini Atchar', 1, 40),
	(3, 'Need Atchar but the Mini is not enough? The Combo is perfect for those looking for that little extra for themselves.(500g)', _binary 0x2e2e2f2e2e2f696d616765732f6163686172332e6a7067, 'The Atchar Combo', 1, 50),
	(4, 'The medium size of Atchar we offer is what the medium households all deserve. Come try it out!(750g)', _binary 0x2e2e2f2e2e2f696d616765732f6163686172342e6a7067, 'The Medi Atchar', 1, 80),
	(5, 'The medium size of Chilli we offer is what the medium households all deserve. Come try it out!(750g)', _binary 0x2e2e2f2e2e2f696d616765732f6368696c69312e706e67, 'The Medi Chilli', 4, 80),
	(6, 'Need Chilli but the Mini is not enough? The Combo is perfect for those looking for that little extra for themselves.(500g)', _binary 0x2e2e2f2e2e2f696d616765732f6368696c69322e706e67, 'The Chilli Combo', 4, 50),
	(7, 'The largest size of Chilli we have on our roster. Perfect for if you want to feed the family for a month or are hosting a get-together.(5L)', _binary 0x2e2e2f2e2e2f696d616765732f6368696c69332e706e67, 'The Jumbo Chiili', 4, 500),
	(8, 'Smallest size of Chilli we have availlable on our roster of Atchars. Great for quick toppings!(450g)', _binary 0x2e2e2f2e2e2f696d616765732f6368696c69342e706e67, 'The Mini Chilli', 4, 40);

-- Dumping data for table thembisbitebazaardb.roles: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.shopping_cart: ~0 rows (approximately)

-- Dumping data for table thembisbitebazaardb.tokens: ~4 rows (approximately)
INSERT INTO `tokens` (`id`, `created_date`, `token`, `user_id`) VALUES
	(1, '2024-05-07 23:08:08.223000', '63e77440-39d5-4b85-a191-cb34126e2297', 1),
	(2, '2024-05-08 01:59:25.578000', 'fec1646f-4f29-410a-af52-a820e411803a', 2),
	(3, '2024-05-08 12:30:12.683000', '626f311f-b78b-4884-9560-c4fba3c8ef5e', 3),
	(4, '2024-05-10 10:33:46.051000', 'a366bc41-277f-47d4-baed-68cc2c904c78', 4);

-- Dumping data for table thembisbitebazaardb.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`) VALUES
	(1, 't.rapodile7@gmail.com', 'Tj', 'Rapodile', 'D7EBF261E6FB0F0A4FF91DF119EAC18D'),
	(2, 't.rapodile@gmail.com', 'Thabo', 'Rapodile', '1801C34D73B0E3A7D8BD954A7C420529'),
	(3, 'john.doe@example.com', 'John', 'Doe', '482C811DA5D5B4BC6D497FFA98491E38'),
	(4, 't.rapod@gmail.com', 'jhgyjf', 'hgjghjhg', 'A7CF614B5509A9E252417A669C6443CD');

-- Dumping data for table thembisbitebazaardb.wishlist: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
