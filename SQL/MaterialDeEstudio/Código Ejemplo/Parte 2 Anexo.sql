-- -------------
-- Anexo Parte 2
-- -------------

-- ------------------
-- Tipo de datos Enum
-- ------------------
use cursomysql;

create table postulantes(
  numero int unsigned auto_increment,
  documento char(8),
  nombre varchar(30),
  estudios enum('ninguno','primario','secundario', 'terciario','universitario'),
  primary key(numero)
);

insert into postulantes (documento,nombre,estudios)
 values('22255265','Juana Pereyra',5);
insert into postulantes (documento,nombre,estudios)
  values('22255265','Juana Pereyra',0);
insert into postulantes (documento,nombre,estudios)
  values('22255265','Juana Pereyra',6);
insert into postulantes (documento,nombre,estudios)
  values('22255265','Juana Pereyra','PostGrado');

select * from postulantes;
select * from postulantes
  where estudios=0;

select * from postulantes
  where estudios=5;

select * from postulantes
  where estudios='universitario';

-- ------------------
-- Tipo de datos Enum
-- ------------------
drop table postulantes;
create table postulantes(
 numero int unsigned auto_increment,
 documento char(8),
 nombre varchar(30),
 idioma set('ingles','italiano','portuges'),
 primary key(numero)
);


insert into postulantes (documento,nombre,idioma)
  values('22555444','Ana Acosta','ingles');
select * from postulantes;

insert into postulantes (documento,nombre,idioma)
  values('23555444','Juana Pereyra','ingles,italiano');
select * from postulantes;

insert into postulantes (documento,nombre,idioma)
  values('23555444','Juana Pereyra2','italiano,ingles');
select * from postulantes;
-- los ordena

insert into postulantes (documento,nombre,idioma)
  values('23555444','Juana Pereyra3','italiano,ingles,italiano');
select * from postulantes;
-- italiano esta repetido y solo lo agrega una ves

insert into postulantes (documento,nombre,idioma) 
  values('22255265','Juana Pereyra4','frances');
select * from postulantes;
-- no puede agregar frances
-- lo deja vacio

insert into postulantes (documento,nombre,idioma)
  values('22255265','Juana Pereyra',0);
select * from postulantes;
-- valor incorrecto

insert into postulantes (documento,nombre,idioma)
  values('22255265','Juana Pereyra',8);
select * from postulantes;
-- valor incorrecto

-- 1='ingles',
-- 2='italiano',
-- 3='ingles,italiano',
-- 4='portugues',
-- 5='ingles,portugues',
-- 6='italiano,portugues',
-- 7='ingles,italiano,portugues'.

insert into postulantes (documento,nombre,idioma)
   values('22255265','Juana Pereyra',2);
select * from postulantes;

insert into postulantes (documento,nombre,idioma)
  values('22555888','Juana Pereyra',3);
select * from postulantes;

select * from postulantes
  where idioma like '%ingles%';


select * from postulantes
  where idioma like '%ingles,italiano%';

select * from postulantes
  where idioma='ingles';

select * from postulantes
  where idioma=1;

select * from postulantes
  where idioma='ingles,italiano'; 

 select * from postulantes
  where idioma=3;

select * from postulantes
  where idioma not like '%ingles%';

-- ------------------
-- Otro tipo de datos
-- ------------------
--  tinyblob o tinytext: longitud máxima de 255 caracteres.
--  mediumblob o mediumtext: longitud de 16777215 caracteres.
--  longblob o longtext: longitud para 4294967295 caracteres.



create table peliculas(
  codigo int unsigned auto_increment,
  nombre varchar(40),
  actor varchar(30),
  duracion tinyint unsigned,
  sinopsis text,
  primary key (codigo)  
);

insert into peliculas values(1,'Mentes que brillan','Jodie Foster',120,
 'El no entiende al mundo ni el  mundo lo entiende a él, es un niño superdotado. 
  La escuela especial a la que asiste tampoco resuelve los problemas del niño.
  Su madre hará todo lo que esté a su alcance para ayudarlo. Drama');

insert into peliculas values(2,'Charlie y la fábrica de chocolate','J. Deep',120, 
 'Un niño llamado Charlie tiene la ilusión de encontrar uno de los 5 tickets del 
  concurso para entrar a la fabulosa fábrica de chocolates del excéntrico Willy Wonka 
  y descubrir el misterio de sus golosinas. Aventuras'); 

select * from peliculas
  where sinopsis like '%Drama%';

select * from peliculas
  where sinopsis like '%chocolates%';

  
  
  
  -- ---------
  -- Consultas
  -- ---------
  
  select * from clientes where codigo=3;

-- no recomendado
select * from clientes where codigo='3';

select * from clientes where nombre='juan';
-- error
-- select * from clientes where nombre=juan;

-- -----------------------
-- BUG en MY SQL WORKBENCH
-- -----------------------
select monto * 0.21 as valor_de_iva from facturas;
-- esta sentencia en versiones antiguas de workbench producia un bug y colgaba el soft
-- en las ultimas versiones fue solucionado

-- Funciones para el uso de Cadenas

select ord('A'); -- retorna 65.

select concat('Hola,',' ','como esta?'); -- retorna "Hola, como esta?".

select concat_ws('-','Juan','Pedro','Luis'); -- retorna "Juan-Pedro-Luis".

select length('Hola'); -- devuelve 4.

select locate('o','como le va'); -- devuelve 2

select position('o' in 'como le va'); -- retorna 2.



-- Funciones Matematicas
select abs(-20);
select ceiling(12.34);
select floor(12.34);
select mod(10,3);
select mod(10,2);
select 10%3;
select 10%2;

select power(2,3);
select round(12.34);
select round(12.64);
select round(12.64,1);
select truncate(123.4567,2);
select truncate (123.4567,0);



-- Funciones de Fecha y Hora

select extract(year from '2006-10-10'); -- retorna "2006".
select extract(year_month from '2006-10-10 10:15:25'); -- retorna "200610".
select extract(day_minute from '2006-10-10 10:15:25'); -- retorna "101015";

select current_date,date_add(current_date, interval 5 day);

select current_date,dayofweek(current_date); 

select curdate(),dayofweek(curdate());


