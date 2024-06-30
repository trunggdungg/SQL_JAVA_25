-- Lấy ra tên các thành phố và tên các quốc gia tương ứng của thành phố đó
select city.city,country.country from country join city on city.country_id = country.country_id;
-- Lấy ra tên các thành phố của nước Mỹ
SELECT city.city, country.country FROM country JOIN city ON country.country_id = city.country_id WHERE country.country = 'United States';
-- Lấy ra các địa chỉ của thành phố Hanoi
select city.city, country.country FROM country JOIN city ON country.country_id = city.country_id where city.city = "Hanoi";
-- Lấy ra tên, mô tả, tên category của các bộ phim có rating = R
SELECT film.title, film.description , category.name FROM film 
inner join film_category on film.film_id = film_category.film_id 
inner join category on film_category.category_id = category.category_id
where film.rating ='R';
-- Lấy ra thông tin của các bộ phim mà diễn viên NICK WAHLBERG tham gia
select film.title, film.description,actor.first_name,actor.last_name from film 
join film_actor on film.film_id = film_actor.film_id  
join actor on film_actor.actor_id = actor.actor_id 
where actor.first_name = "NICK" and actor.last_name = "WAHLBERG";
-- Tìm email của các khách hàng ở Mỹ
select customer.first_name,customer.last_name,address.address,customer.email from customer 
join address ON customer.address_id = address.address_id 
join city ON address.city_id = city.city_id 
join country ON city.country_id = country.country_id  where country.country = "United States" ;

