/* Задание 1
 * Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
 */



use kurs2;

select id,name from users
where id in(select user_id from orders)