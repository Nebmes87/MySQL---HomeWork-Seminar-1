/*
1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными
*/
use test;
CREATE TABLE phones
( 
    phone_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    product_count INTEGER NOT NULL,
    price DECIMAL NOT NULL
);

INSERT INTO phones
	(product_name, manufacturer, product_count, price)
VALUES
    ('Galaxy S23', 'Samsung', 8, 100999),
    ('50', 'Honor', 1, 26999),
    ('iPhone 13', 'Apple', 3, 64399),
    ('Redmi A1+', 'Xiaomi', 1, 4999),
    ('iPhone 14 Pro', 'Apple', 5, 145999),
    ('Redmi Note 10 Pro','Xiaomi', 4, 23999),
    ('Mate 50', 'HUAWEI', 7, 49999),
    ('nova 10', 'HUAWEI', 0, 31999),
    ('Galaxy S21', 'Samsung', 1, 65599),
    ('Master Edition', 'GT', 1, 25999);

/*
2. Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)
*/
SELECT 
    product_name as 'Название товара',
    manufacturer as 'Производитель',
    price as 'Цена'
FROM phones
WHERE product_count > 2;

/*
3. Выведите весь ассортимент товаров марки “Samsung” 
*/
SELECT * FROM phones
WHERE manufacturer = 'Samsung'

/*
4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000** 
*/
SELECT * FROM phones
WHERE price > 100000 < 145000

/*
4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE для 4.3” ):
4.1. Товары, в которых есть упоминание "Iphone"
*/
SELECT * FROM phones
WHERE product_name LIKE 'iPhone%';

/*
4.2. "Galaxy"
*/
SELECT * FROM phones
WHERE manufacturer LIKE 'Galaxy';

/*
4.3. Товары, в которых есть ЦИФРЫ
*/
SELECT * FROM phones
WHERE product_name REGEXP '[[:digit:]]';

/*
4.4. Товары, в которых есть ЦИФРА "8"
*/
SELECT * FROM phones
WHERE product_name REGEXP '[8]';