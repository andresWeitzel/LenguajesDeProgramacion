-- PARTE 3
-- es necesario tener las tablas y registros definidos en las partes anteriores

use cursomysql;



-- -----------------------
-- Insercion de registros
-- -----------------------


-- ----------------------------------------------------------
-- Inserción de registros escribiendo la definicion de campos
-- ----------------------------------------------------------

insert into clientes (nombre,apellido,direccion) values ('Andrea','Abate','Laprida 648');
insert into clientes (apellido,nombre) values ('Stuart','Jhon');
-- este modo tiene la ventaja de que no es necesario ingresar todos los campos
-- y no es necesario respetar el orden en que se encuentran en la tabla
insert into clientes (nombre,direccion) values ('Francisco','Cerrito 256');
-- este registro produce una advertencia dado que no ingresamos el campo apellido vacio
-- pero igual se permitio el ingreso

-- insert into clientes (nombre,apellido) values ('Lorena',null);
-- este insert produce un error dado que no podemos poner null en el campo apellido
-- y no es posible de ingresar
select * from clientes;



-- -------------------------------------------------------
-- Inserción de registros sin usar la difenición de campos
-- -------------------------------------------------------



insert into clientes values(100,'Laura','Georgeff','56565','Berutti 2589','');
-- cuando ingreso registros en este modo, no ingreso la definicion de campos
-- pero se debe ingresar todos los valores de todos los campos en el orden en que estan en la tabla
-- no se pueden omitir campos y si algun campo es vacio debo colocarlo vacio, ej: campo comentarios
-- no puedo ingresar 2 veces el registro por que repito la clave primaria.



-- -----------------
-- Insert usando SET
-- -----------------
-- Yo no lo veo dentro del ANSI
 
insert into clientes set nombre='abcde';
select * from clientes;
insert into clientes set nombre='Teresa', apellido='Jimenez';
select * from clientes;



-- cargar registros usando la clausula select

create table amigos(
nombre varchar(20),
apellido varchar(20)
);

insert into amigos (nombre,apellido) select nombre,apellido from clientes;
select * from amigos;

-- crear una tabla a partir de informacion de otra
create table nombres
select distinct nombre as nombre from clientes;

describe nombres;
select * from nombres;

-- insertar varios registros simultaneamente
insert into amigos values ('Marina','Fernandez'),('Lujan','Tucci'),('Gabriel','Strauss');
select *from amigos;


-- Insertar registros imponiendo un codigo no existente
insert into clientes (codigo,nombre,apellido,cuit,direccion) values (109,'jose','sanchez','xxxxx','chile 150');
insert into clientes values (110,'marta','martinez','xxxxx','florida 150','');



-- --------------------
-- - Tablas temporales
-- --------------------
-- Las tablas temporales con tablas alojadas en RAM y desaparecen al cortar la conexion con el servidor
-- Se la usa para obtener consultas muy veloces para datos temporarios

create temporary table copia select * from clientes;
show tables;
select * from copia;

-- ------------------------
-- Error de clave duplicada
-- ------------------------


-- insert into clientes (codigo,nombre,apellido,cuit,direccion) values (109,'carlos','flores','xxxxx','bolivar 150');
-- no se puede ingresar por que ya existe el codigo 109

-- valores de campo auto incrementable
insert into clientes (nombre,apellido,cuit,direccion) values ('carlos','flores','xxxxx','bolivar 150');
select * from clientes;
-- el valor autoincrementable lo asigna automaticamente una secuencia 
-- y es siemrpe el valor de codigo que alla existido alguna ves mas uno

-- si borro el ultimo registro igual se continua desde la secuencia asignada
delete from clientes where codigo =111;

insert into clientes (nombre,apellido,cuit,direccion) values ('carlos','flores','xxxxx','bolivar 150');
select * from clientes;
-- inevitablemente el ultimo codigo asignado sera 112
-- el unico comando que borra la secuencia es truncate (tambien borra todos los registros)
-- lo vemos mas adelante



-- -----------------------------
-- Borrar registros de una tabla
-- -----------------------------



delete from clientes where codigo =5;
-- borra un unico registro

-- desactivo el safe update por codigo
SET SQL_SAFE_UPDATES=0;

-- estos comandos pueden borrar mas de un registro
-- Nota: el editor de MySQL Workbench trae configurado por default una protección 
-- 		para evitar ejecutar comandos de borrado o actualización masiva. 
-- 		Hay que desactivarla Menú Edición, Opción Preferencias y luego solapa Editor SQL.
-- 		Requiere reiniciar MySQL WorkBench, guardar todo por seguridad.
delete from clientes where nombre ='juan';
delete from clientes where codigo >13;
delete from clientes where codigo <=3;

delete from clientes;
-- CUIDADO BORRA TODOS LOS REGISTROS DE LA TABLA uno por uno

truncate clientes;
-- tambien vacia toda la tabla cliente, borrando todos los registros simultaneamente
-- no uno por uno como delete, por lo tanto es mas veloz
-- tambien reinicia las secuencia de los auto incrementables a cero.

-- si borramos registros aca tenemos algunos para poder continuar
insert into clientes (nombre,apellido,cuit,direccion) values ('juan','perez','xxxxx','peru 323');
insert into clientes (nombre,apellido,cuit,direccion) values ('diego','torres','xxxxx','chile 320');
insert into clientes (nombre,apellido,cuit,direccion) values ('laura','gomez','xxxxx','san juan 420');
insert into clientes (nombre,apellido,cuit,direccion) values ('mario','lopez','xxxxx','lavalle 770');
insert into clientes (nombre,apellido,cuit,direccion) values ('dario','sanchez','xxxxx','mexico 150');

-- observar que la secuencia se reestablecio
insert into clientes (nombre,apellido) values ('Susana','Semino');
select * from clientes;




-- --------------------------------------------
-- Actualizar valores de registros de una tabla
-- --------------------------------------------


select * from clientes;
update clientes set nombre = 'mariana'
where nombre = 'maria';

select * from clientes;

update clientes set nombre = 'maria'
where codigo = 6;

select * from clientes;

update clientes set nombre = 'mariana';
-- CUIDADO CAMBIA TODOS LOS NOMBRES A MARIANA

update clientes set nombre='lorena', apellido='milone' where codigo = 6;
select * from clientes;
-- permite cambiar valores de varios campos, separados por coma

-- desactivo el safe update por codigo
SET SQL_SAFE_UPDATES=0;

-- -----------
-- Ejercicio 4
-- -----------


-- Basándose en la tabla clientes realizar los siguientes puntos.

-- 1- 	Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar campos como parte de la sentencias, es decir de la forma simplificada.
-- 2-	Insertar 5 clientes en la tabla clientes utilizando los campos como parte de la sentencias, es decir de la forma extendida. Completar solo los campos nombre, apellido y CUIT.
-- 3-	Actualizar el nombre del cliente 1 a Jose.
-- 4-	Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
-- 5-	Actualizar todos los comentarios NULL  a ‘ ‘.
-- 6-	Eliminar los clientes con apellido Perez.
-- 7-	Eliminar los clientes con CUIT Terminan en 0.

-- Basando se en la tabla artículos, realizar los siguientes puntos.
-- 	8- Aumentar un 20% los precios de los artículos con precio menor igual a 50.
-- 	9- Aumentar un 15% los precios de los artículos con precio mayor a 50.
-- 	10- Bajar un 5% los precios de los artículos con precio mayor a 200.
-- 	11- Eliminar los artículos con stock menor a 0.

-- 1)
insert into clientes values (20,'Romeo','Lopez','34343434','Anchorena 950','');

-- 2)
insert into clientes (nombre,apellido,cuit,direccion) values ('Florencia','Salinas','82828282','W.Morris 3420');

-- 3)
update clientes set nombre='Manuel' where codigo=1;

-- 4)
update clientes set nombre='Pablo', apellido='Fuentes', cuit='20-21053119-0' where codigo=2;

-- 5)
update clientes set comentarios='';

-- 6)
delete from clientes where apellido='perez';

-- 7)
delete from clientes where cuit like '%0';

-- 8)
update articulos set precio=precio * 1.20 where precio < 500;

-- 9)
update articulos set precio=precio * 1.15 where precio between 1000 and 2000;

-- 10)
update articulos set precio=precio *.90 where precio > 5000;

-- 11)
delete from articulos where stock =0;




-- -------------------------------
-- Alter TABLE
-- modificar estructuras de tablas
-- -------------------------------

-- agregar campos
alter table clientes
  add edad smallint unsigned not null;

describe clientes;
select * from clientes;

update clientes set edad=25 where codigo =1;
update clientes set edad=36 where codigo =2;
select * from clientes;

-- modificar campos
alter table clientes
  modify edad tinyint unsigned;

describe clientes;
select * from clientes;

-- cambiar nombre a un campo
alter table clientes
  change edad antiguedad tinyint unsigned;

describe clientes;
select * from clientes;


-- borrar campos
alter table clientes
  drop antiguedad;
describe clientes;
select * from clientes;



-- quito la clave primaria
-- para poder quitar clave primaria el campo no debe ser auto_increment
alter table clientes
modify codigo int;
describe clientes;
-- ahora si quito la clave primaria
alter table clientes 
drop primary key;

describe clientes;
-- select * from clientes;
-- no es posible listar una tabla a la cual le quitamos la PK
-- no hay posibilidad de recorrido plano en MySQL

-- agregar clave primaria
alter table clientes
  add primary key (codigo);

describe clientes;
select * from clientes;

alter table clientes
modify codigo int auto_increment;


-- renombrar tablas
rename table clientes to auxiliar, facturas to auxiliar2;
show tables;

rename table auxiliar to clientes , auxiliar2 to facturas;
show tables;



