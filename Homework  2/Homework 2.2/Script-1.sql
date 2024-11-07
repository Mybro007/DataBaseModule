create table if not exists Employee(
	id SERIAL primary key,
	name VARCHAR(20) not null,
	department VARCHAR(20) not null
);

create table if not exists Boss(
	id SERIAL primary key,
	employee_id SERIAL references Employee(id)
);

create table if not exists EmloyeesBosses(
	employee_id SERIAL references Employee(id),
	boss_id SERIAL references Boss(id)
);
