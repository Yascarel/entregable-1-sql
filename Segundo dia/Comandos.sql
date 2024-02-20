create database users_info;

create table users (
id serial primary key,
	firstname varchar(50),
	lastname varchar(50),
	email varchar(50)
	);
	
select * from users;

insert into users (firstname ,lastname, email) values 
('Alberto', 'Facenda', 'Alberto@gmail.com'),
('Melissa', 'Guzman', 'Melissa@gmail.com'),
('Carlos', 'Perez', 'Carlos@gmail.com');

create table todos (
id serial primary key,
	title varchar(50),
	description varchar(50),
	deadline varchar(50),
	owner_id int references users (id)
	);
select * from todos;

insert into todos (title, description, deadline, owner_id) values 
('El abrazo del tiempo', 'Una historia ', '2024/2/26', 3),
('Huellas en la arena', 'Un relato ', '2024/2/26', 1),
('Guardianes de sueños', 'En un mundo', '2024/2/26', 2);

select * from todos inner join users on 
todos.owner_id = users.id;