create table if not exists Employee(
id int primary key auto_increment,
 name varchar (255),
 lastName varchar (255),
 midlName varchar (255),
 adress varchar (255),
 dateOfBirdth varchar (255),
 phoneNumber varchar (255),
 typeEmployee varchar (255),
 position varchar (255),
 workplace varchar (255),
 startDate varchar (255),
 salary varchar (255)
 );
 
 create table if not exists Department(
id int primary key auto_increment,
departmentName varchar (255),
chairman varchar (255),
employeeQuantity int,
equipmentNonprodQuantity int
 );
 
 
create table if not exists Workshop(
id int primary key auto_increment,
workshopName varchar (255),
chairman varchar (255),
employeeQuantity int,
equipmentProdQuantity int,       
equipmentNonprodQuantity int,
toolQuantity int
);

create table if not exists ProductionEquipment(
id int primary key auto_increment,
prodEquipName varchar (255),
workshopName varchar (255),
quantity int,
description int,
manufacturer varchar (255),
vendor varchar (255),
productionYear varchar (255),
startDate varchar (255),
cost int
);

create table if not exists Tool(
id int primary key auto_increment,
toolName varchar (255),
workshopName varchar (255),
quantity int,
description varchar (255),
manufacturer varchar (255),
vendor varchar (255),
productionYear varchar (255),
startDate varchar (255),
cost int
);

create table if not exists NonProductionEquipment(
id int primary key auto_increment,
nonProdEquipName varchar (255),
workPlaceName varchar (255),
quantity int,
description varchar (255),
manufacturer varchar (255),
vendor varchar (255),
productionYear varchar (255),
startDate varchar (255),
cost int
);

create table if not exists MaterialMetal (
id int primary key auto_increment,
materialtype varchar (255),
materialGroup varchar (255),
description varchar (255),
standard varchar (255),
manufacturer varchar (255),
manufacturerAdress varchar (255),
vendor varchar (255),
vendorAdress varchar (255),
weight int
);

create table if not exists MaterialNonMetal(
id int primary key auto_increment,
materialName varchar (255),
description varchar (255),
standard varchar (255),
manufacturer varchar (255),
manufacturerAdress varchar (255),
vendor varchar (255),
vendorAdress varchar (255),
weight int
);