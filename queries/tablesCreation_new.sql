use manufacturing_plant;
drop tables if exists agents, employees, workshop_employees, 
department_employees, production_equipments, nonproduction_equipments, workshops, departments, tools;

create table if not exists employees (
id int not null auto_increment,
employee_id char,
position_ CHAR,
name_ CHAR,
last_name CHAR,
middle_name CHAR,
pass_series_num CHAR,
identification_num CHAR,
birth_date date,
phone_num CHAR,
join_date date,
residence_place CHAR,
street CHAR,
building_num CHAR,
flat_num CHAR,
primary key (id)
);
create table if not exists department_employees(
id int AUTO_INCREMENT,
employee_id char,
salary int,
department_name CHAR,
primary key(id)
);
create table if not exists workshop_employees(
id int AUTO_INCREMENT,
employee_id char,
salary int,
workshop_name CHAR,
primary key(id)
);
create table if not exists agents(
id int AUTO_INCREMENT,
agent_name char,
adress char,
phone_num CHAR,
web_site char,
email char,
primary key(id)
);
create table if not exists materials(
id int auto_increment,
name_ char,
description char,
standard char,
primary_size char,
production_year date,
manufacturer_name char,
vendor_name char,
primary key(id)
);

create table if not exists production_equipments(
id int auto_increment,
inventory_num char,
name_ char,
workshop_name CHAR,
start_date date,
power char,
weight char,
sizes char,
production_year date,
manufacturer_name char,
vendor_name char,
price int,
primary key(id)
);

create table if not exists nonproduction_equipments(
id int auto_increment,
inventory_num char,
name_ char,
workshop_name CHAR,
department_name CHAR,
start_date date,
weight char,
sizes char,
production_year date,
manufacturer_name char,
vendor_name char,
price int,
primary key(id)
);

create table if not exists workshops(
id int auto_increment,
workshop_id char,
workshop_name char,
chairman_employee_id char,
workshop_employees char,
workshop_employee_quantity int,
production_equipments char,
nonproduction_equipments char,
tools char,
materials char,
primary key(id)
);

create table if not exists departments(
id int auto_increment,
department_id char,
department_name char,
chairman_employee_id char,
department_employees char,
department_employee_quantity int,
nonproduction_equipments char,
primary key(id)
 );
 
 create table if not exists tools(
id int auto_increment,
inventory_num char,
name_ char,
description char,
workshop_name char,
start_date date,
production_year char,
manufacturer_name char,
vendor_name char,
price int,
primary key(id)
);

alter table workshop_employees add
foreign key(employee_id) references employees(employee_id);

alter table department_employees add
foreign key(employee_id) references employees(employee_id);

alter table employees add
foreign key(employee_id) references department_employees(employee_id);



alter table employees add
foreign key(employee_id) references workshop_employees(employee_id);
