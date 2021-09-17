-- crear base de datos clase2
drop database clase2;
create database clase2;
use clase2;

-- crear tabla clientes
create table clientes(
codigo int auto_increment primary key,
nombre varchar(25) not null,
apellido varchar(25) not null,
cuit varchar(13),
direccion varchar(50),
comentarios varchar(140)
);

/* claves candidatas: son campos que dan unicidad, estos son los campos
que pueden ser claves primarias
clave Primaria PK: es un campo clave candidata, que es elegido 
para identificar el registro
*/
describe clientes; -- muestra el metadato de la tabla
select * from clientes; -- consulta de registros

-- carga de registros

insert into clientes (nombre,apellido,cuit,direccion) values
('Juan','Garcia','1245678952','Medrano 162'),
('Jose','Perez','248569471','Lima 122'),
('Maria','Martinez','254689458','Maipu 452'),
('Lorena','Sosa','25412355','Lavalle 568'),
('Mercedes','Ruiz','236598456','Salta 457');







