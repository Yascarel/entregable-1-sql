create table movies (
	id serial primary key,
	name varchar(100),
	release_year date);
	
insert into movies (name) values 
('Titanic', 12/06/1997),
('Un sueno posible', 2013/06/12),
('El ultimo dia,', 2009/7/19),
('La purga', 2014/5/15),
('12 horas', 2012/9/25);

select * from movies;

drop table movies