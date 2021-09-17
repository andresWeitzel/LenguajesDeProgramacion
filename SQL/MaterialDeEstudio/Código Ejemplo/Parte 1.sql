-- --------------------------
-- Curso MySQL OPERACION
-- --------------------------

-- PARTE 1

-- comentarios
-- es necesario un espacio despues del --
# el # tambien hace comentarios no ANSI SQL

/*
bloque
de
comentarios
*/

/*
se puede comentariar un parrafo entero señalandolo
y usando la herramienta del menu View - Format - Un/comment selection
tambien hay en el menu format una utilidad para cambiar a minusculas o mayusculas
*/


-- iniciando un script en MySQL


-- ----------------------------
-- Como crear una base de datos
-- ----------------------------


show databases; -- muestra las bases de datos del sistema

SHOW DATABASES; -- PUEDO ESCRIBIR LAS INSTRUCCIONES EN MAYUSCULAS O MINUSCULAS NO ES CASE SENSITIVE
-- el ; es el terminador de instrucciones

drop database if exists cursomysql;
-- borro la BD si no existe

create database cursomysql;
-- con este comando creo una base de datos

-- create database if not exists cursomysql;
-- crea la BD sino existe

show databases;

-- los objetos creados en windows no diferecian mayuscula de minusculas
-- pero los objetos creados en linux o unix son case sensitive,
-- es decir
-- create database ADMINISTRACION;
-- create database administracion;
-- bajo windows estamos creando la misma base de datos
-- pero en linux seria 2 bases distintas

use cursomysql;
-- con el comando use entramos a una BD

show tables;
-- muestra las tablas de la BD



-- -----------------------------
-- Como crear una tabla en MySQL
-- -----------------------------

-- creamos la tabla clientes
create table clientes (
codigo integer auto_increment,
nombre varchar(20) not null,
apellido varchar(20) not null,
cuit varchar(13),
direccion varchar(50),
comentarios varchar(140),
primary key (codigo)
);
-- esta instrucción tiene varias lineas pero sabemos que termina el la linea que tiene el ;

-- primary key() declara que un campo es clave primaria
-- el campo clave primaria identifica el registro y no puede tener valores repetitivos
-- La clausula auto_increment permite que el contenido de dicho campo sea ingresado automaticamente
-- en forma autonumerada, esta clausula solo es aplicable a la primary key

-- la clausula not null, indica que ese campo es de ingreso obligatorio y no puede ser omitido.


-- comprobamos la existencia de la tabla
show tables;

describe clientes;
-- muestra la descripción de campos de la tabla

select * from clientes;
-- muestra los registro de la tabla

drop table clientes;
-- borramos la tabla clientes

drop table if exists clientes;
-- borramos la tabla clientes si existe
-- borrar un objeto inexistente causa un error de ejecución por lo tanto agregamos la clausula if exists


-- creamos una tabla con la clausula if not exists
create table if not exists clientes (
codigo integer auto_increment,
nombre varchar(20) not null,
apellido varchar(20) not null,
cuit varchar(13),
direccion varchar(50),
comentarios varchar(140),
primary key (codigo)
);
-- en caso de no existir crea la tabla sino omite la creacion


show tables;



-- -------------------------------
-- ingresar registros en una tabla
-- -------------------------------


-- igresamos 5 registros en tabla clientes
insert into clientes (nombre,apellido,cuit,direccion) values ('juan','perez','xxxxx','peru 323');
insert into clientes (nombre,apellido,cuit,direccion) values ('diego','torres','xxxxx','chile 320');
insert into clientes (nombre,apellido,cuit,direccion) values ('laura','gomez','xxxxx','san juan 420');
insert into clientes (nombre,apellido,cuit,direccion) values ('mario','lopez','xxxxx','lavalle 770');
insert into clientes (nombre,apellido,cuit,direccion) values ('dario','sanchez','xxxxx','mexico 150');
-- son 5 instrucciones que deben ejecutarse cada una

-- verificamos el ingreso de los registros
select * from clientes;



-- -----------------------------------
-- Tipos de datos más comunes en MySQL
-- -----------------------------------


-- Tipo de datos Texto dedatos más comunes

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- char(x)		x
-- varchar(x)	x+1


-- Tipo de datos Numérico

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- bool (boolean)	1	(0 es false distinto de 0 es true)
-- tinyint			1	2^8		256
-- smallint			2	2^16		65536
-- mediumint		3	2^24		16777216
-- int (integer)	4	2^32		4294967296
-- bigint			8	2^64		18446744073709551616
-- float			4	 		
-- double			8
-- decimal(t,d)		t+2 


-- Tipo de datos Fecha y Hora

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- date		3	Año Mes Dia ‘2012-10-25’		
-- datetime	8
-- time		3
-- year		1

-- devuelve la fecha actual
select curdate();

-- devuelve la hora actual
select curtime();

select sysdate();
-- devuelve fecha y hora


-- ejemplo de uso de boolean
-- el tipo de datos boolean o bool es sinonimo de tinyint
-- en donde 0 es falso y distinto de 0 es true.
-- pero cuidado ocupa un byte y permite otros valores

drop table if exists a;
create table a(
	q1 bool
);
describe a;
insert into a values (0);
insert into a values (1);
insert into a values (2);
select * from a;

drop table if exists b;
create table b(
	q1 date
);
insert into b values ('0000/01/01');
insert into b values ('9999/12/31');
insert into b values ('2012/11/02');
insert into b values (curdate());

select * from b;

-- campo YEAR
-- Como número de cuatro dígitos en el rango de 1901 a 2155.
-- Como cadena de caracteres de dos dígitos en el rango de '00' a '99'. 
-- Los valores en los rangos de '00' a '69' y de '70' a '99' se convierten en valores YEAR 
-- en el rango de 2000 a 2069 y de 1970 a 1999. 


-- Campos numéricos UNSIGNED no permite el ingreso de numeros negativos
-- Amplia el rango positivo del campo



create table libros(
  codigo integer unsigned auto_increment,
  titulo varchar(20) not null,
  autor varchar(30),
  editorial varchar(15),
  precio float unsigned,
  cantidad integer unsigned,
  primary key (codigo)
);

describe libros;

-- Atributo ZEROFILL completa con ceros
create table libros2(
  codigo int(6) zerofill auto_increment,
  titulo varchar(40) not null,
  autor varchar(30) default 'desconocido',
  editorial varchar(15),
  precio decimal(5,2) unsigned,
  cantidad smallint zerofill,
  primary key (codigo)
);

describe libros2;

-- la clausula default coloca un valor automaticamente en caso de omitir dicho
insert into libros2 (titulo) values('pinocho');
select * from libros2;



-- --------------------
-- -------- Ejercicio 1
-- --------------------


-- 1- Crear la tabla Facturas dentro de la base de datos con el siguiente detalle:

-- Letra		char y PK
-- Numero		integer y PK
-- Fecha		date
-- Monto		double

-- PK significa Primary Key
-- observar que se esta declarando una clave primaria compuesta
-- es decir (letra,codigo)
-- cada campo por si solo no es clave, ni tampoco identifica al registro
-- pero la suma de los dos forman la clave

create table facturas(
letra char(1),
numero integer,
fecha date,
monto double,
primary key (letra,numero)
);


-- 2- Crear la tabla Articulos dentro de la base de datos con el siguiente detalle:

-- Codigo		integer y PK
-- Nombre 		varchar (50)
-- Precio		double
-- Stock		integer

create table articulos(
codigo integer,
nombre varchar(50),
precio double,
stock integer,
primary key (codigo)
);

show tables;
describe facturas;
describe articulos;

-- 3- Cargar 5 registros en cada tabla

insert into articulos values (1,'destornillador',25,50);
insert into articulos values (2,'pinza',35,22);
insert into articulos values (3,'martillo',15,28);
insert into articulos values (4,'maza',35,18);
insert into articulos values (5,'valde',55,13);

insert into facturas values ('a',0001,'2011/10/18',500);
insert into facturas values ('a',0002,'2011/10/18',2500);
insert into facturas values ('b',0003,'2011/10/18',320);
insert into facturas values ('b',0004,'2011/10/18',120);
insert into facturas values ('b',0005,'2011/10/18',560);
-- inserto un registro con la fecha actual
insert into facturas values ('c',0006,curdate(),300);

select * from articulos;
select * from facturas;


-- drop database cursomysql;
-- este comando borra la base de datos

-- create schema if not exists cursodemysql;
-- use cursodemysql;
-- en mysql el concepto de schema y base de datos son sinonimos







