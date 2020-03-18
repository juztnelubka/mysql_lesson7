/* Задание 2
 * Выведите список товаров products и разделов catalogs, который соответствует товару.


 */


use kurs2;

select 
	p.name,
	c.name
from 
	products as p
join
	catalogs as c
on p.catalog_id = c.id
























