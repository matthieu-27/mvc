USE `mvc`;

-- Insertion des catégories


INSERT INTO `category` (`name`) VALUES
('Smartphone'),
('PC'),
('Tablettes'),
('TV'),
('Son'),
('Périphériques'),
('Apple'),
('Composant');

-- Insertion des articles pour chaque catégorie

-- Smartphone (category_id = 1)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Samsung', 'Galaxy S23 Ultra 256 Go', 1299.99, 1),
('Apple', 'iPhone 15 Pro Max 512 Go', 1599.99, 1),
('Google', 'Pixel 8 Pro 128 Go', 999.99, 1),
('Xiaomi', 'Redmi Note 12 Pro+ 5G', 499.99, 1),
('OnePlus', 'OnePlus 11 256 Go', 899.99, 1),
('Sony', 'Xperia 1 V 256 Go', 1399.99, 1),
('Oppo', 'Find X6 Pro 512 Go', 1199.99, 1),
('Huawei', 'P60 Pro 512 Go', 1099.99, 1),
('Motorola', 'Edge 40 Pro 256 Go', 799.99, 1),
('Nokia', 'XR21 128 Go', 599.99, 1),
('Asus', 'Zenfone 10 256 Go', 749.99, 1);

-- PC (category_id = 2)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Dell', 'XPS 15, i7, 16 Go RAM, 1 To SSD', 1999.99, 2),
('HP', 'Pavilion 15, Ryzen 7, 16 Go RAM, 512 Go SSD', 1199.99, 2),
('Lenovo', 'ThinkPad X1 Carbon, i7, 16 Go RAM, 1 To SSD', 1799.99, 2),
('Apple', 'MacBook Pro 14" M2 Pro, 16 Go RAM, 512 Go SSD', 2499.99, 2),
('Acer', 'Swift 3, Ryzen 7, 16 Go RAM, 1 To SSD', 999.99, 2),
('MSI', 'Modern 14, i5, 8 Go RAM, 512 Go SSD', 899.99, 2),
('Asus', 'ROG Zephyrus G14, Ryzen 9, 32 Go RAM, 1 To SSD', 1899.99, 2),
('Razer', 'Blade 15, i7, 16 Go RAM, 1 To SSD', 2299.99, 2),
('Microsoft', 'Surface Laptop 5, i7, 16 Go RAM, 512 Go SSD', 1599.99, 2);

-- Tablettes (category_id = 3)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Apple', 'iPad Pro 12.9" 256 Go', 1199.99, 3),
('Samsung', 'Galaxy Tab S9+ 256 Go', 999.99, 3),
('Lenovo', 'Tab P12 Pro 256 Go', 799.99, 3),
('Xiaomi', 'Pad 6 Pro 256 Go', 599.99, 3),
('Huawei', 'MatePad Pro 12.6" 256 Go', 899.99, 3),
('Amazon', 'Fire HD 10 Plus 64 Go', 199.99, 3),
('Microsoft', 'Surface Pro 9, i5, 8 Go RAM, 256 Go SSD', 1099.99, 3),
('Sony', 'Xperia Tablet Z5 32 Go', 499.99, 3);

-- TV (category_id = 4)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Samsung', 'QLED QN90C 65" 4K', 1799.99, 4),
('LG', 'OLED C3 55" 4K', 1499.99, 4),
('Sony', 'Bravia XR-65A80L 4K OLED', 2299.99, 4),
('TCL', '6-Series 65" 4K QLED', 999.99, 4),
('Philips', 'The One 58" 4K Ambilight', 799.99, 4),
('Hisense', 'U7K 65" 4K Mini-LED', 1299.99, 4),
('Panasonic', 'LZ2000 55" 4K OLED', 1999.99, 4);

-- Son (category_id = 5)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Bose', 'SoundLink Revolve+ II', 299.99, 5),
('Sonos', 'Era 300', 449.99, 5),
('JBL', 'Charge 5', 179.99, 5),
('Sony', 'WH-1000XM5', 399.99, 5),
('Sennheiser', 'Momentum 4 Wireless', 349.99, 5),
('Bowers & Wilkins', 'Px8', 699.99, 5),
('Apple', 'AirPods Max', 549.99, 5),
('Bang & Olufsen', 'Beoplay H95', 899.99, 5);

-- Périphériques (category_id = 6)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Logitech', 'MX Master 3S', 99.99, 6),
('Razer', 'DeathAdder V3 Pro', 149.99, 6),
('Corsair', 'K100 RGB Mechanical Keyboard', 199.99, 6),
('SteelSeries', 'Arctis Nova Pro Wireless', 349.99, 6),
('Microsoft', 'Xbox Wireless Controller', 59.99, 6),
('Elgato', 'Wave:3 Microphone', 159.99, 6),
('Samsung', 'T7 Shield 1 To SSD Externe', 99.99, 6);

-- Apple (category_id = 7)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Apple', 'iPhone 15 Pro 128 Go', 999.99, 7),
('Apple', 'MacBook Air M2 256 Go', 1199.99, 7),
('Apple', 'Apple Watch Series 9', 399.99, 7),
('Apple', 'AirPods Pro 2', 249.99, 7),
('Apple', 'iPad Air 5 256 Go', 749.99, 7),
('Apple', 'HomePod mini', 99.99, 7),
('Apple', 'Apple TV 4K', 129.99, 7);

-- Composant (category_id = 8)
INSERT INTO `article` (`brand`, `description`, `price`, `category_id`) VALUES
('Intel', 'Core i9-13900K', 589.99, 8),
('AMD', 'Ryzen 9 7950X3D', 649.99, 8),
('NVIDIA', 'RTX 4090 24 Go', 1599.99, 8),
('Corsair', 'Vengeance RGB 32 Go DDR5', 179.99, 8),
('Samsung', '980 Pro 2 To NVMe SSD', 199.99, 8),
('ASUS', 'ROG Strix B650E-F', 249.99, 8),
('Corsair', 'RM850x PSU', 149.99, 8),
('Noctua', 'NH-D15 CPU Cooler', 99.99, 8);