/* Задание 3
 * (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. 
 * Выведите список рейсов flights с русскими названиями городов.

 */


use kurs2;

drop table if exists cities;
create table cities(
label varchar(255),
name varchar(255)
);

drop table if exists flights;
create table flights(
id serial primary key,
`from` varchar(255),
`to` varchar(255)
);


insert cities (label,name) 
	values('moscow','Москва'),('irkutsk','Иркутск'),('novgorod','Новгород'),('kazan','Казань'),('omsk','Омск');


insert flights(`from`,`to`)
	values('moscow','omsk'),('novgorod','kazan'),('irkutsk','moscow'),('omsk','irkutsk'),('moscow','kazan');
	

select 
	f.id,
	cities_from.name as `from`,
	cities_to.name as `to`
from flights as f
left join
	cities as cities_from
on f.from = cities_from.label
left join
	cities as cities_to
on f.to = cities_to.label






















