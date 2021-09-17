-- -------------
-- Anexo Parte 3
-- -------------

use cursomysql;

-- ----------------------------
-- Comando Replace
-- ----------------------------
-- Funciona igual que INSERT, salvo que si el campo clave es existente reemplaza al registro

replace into clientes (nombre,apellido) values ('Ana','Lorenzo');
-- Actua insertando registros

replace into clientes values (1,'Monica','Fernandez','4444','Pampa 543','');
-- Actua reemplazando el registro de codigo 1



  
-- ----------------------------
-- OVERFLOW de Campos Númericos
-- ----------------------------

drop table if exists xx;
create table xx(
a tinyint
);
insert into xx values (127);
insert into xx values (128);
select * from xx;
update xx set a=a+1;
select * from xx;
insert into xx values (-128);
select * from xx;
update xx set a=a-1;
select * from xx;


-- -----------------
-- manejo de indices
-- -----------------

describe clientes;
select 
    *
from
    clientes;

-- Para facilitar la obtención de información de una tabla se utilizan índices.
-- El indice de una tabla desempeña la misma función que el índice de un libro: permite encontrar
-- 		datos rápidamente; en el caso de las tablas, localiza registros.
-- Una tabla se indexa por un campo (o varios).
-- El índice es un tipo de archivo con 2 entradas: un dato (un valor de algún campo de la tabla) 
-- 		y un puntero.
-- Un índice posibilita el acceso directo y rápido haciendo más eficiente las búsquedas. Sin índice, 
-- 		se debe recorrer secuencialmente toda la tabla para encontrar un registro.
-- El objetivo de un indice es acelerar la recuperación de información.
-- La desventaja es que consume espacio en el disco.
-- La indexación es una técnica que optimiza el acceso a los datos, mejora el rendimiento acelerando
-- 	 	las consultas y otras operaciones. Es útil cuando la tabla contiene miles de registros.
-- Los índices se usan para varias operaciones:
--  - para buscar registros rápidamente.
--  - para recuperar registros de otras tablas empleando "join".


-- Hay distintos tipos de índices, a saber:

-- 1) "primary key": es el que definimos como clave primaria. Los valores indexados deben ser únicos
-- 		 y además no pueden ser nulos. MySQL le da el nombre "PRIMARY". Una tabla solamente puede
-- 		 tener una clave primaria.

-- 2) "index": crea un indice común, los valores no necesariamente son unicos y aceptan valores
-- 		 "null". Podemos darle un nombre, si no se lo damos, se coloca uno por defecto. "key" 
-- 		 es sinónimo de "index". Puede haber varios por tabla.

-- 3) "unique": crea un indice para los cuales los valores deben ser únicos y diferentes, 
-- 		aparece un mensaje de error si intentamos agregar un registro con un valor ya existente.
-- 		Permite valores nulos y pueden definirse varios por tabla. Podemos darle un nombre, 
-- 		si no se lo damos, se coloca uno por defecto.

-- Todos los índices pueden ser multicolumna, es decir, pueden estar formados por más de 1 campo.


-- muestra los indices de una tabla
show index from clientes;
-- la tabla ya tiene un indice del tipo primary key

-- indice comun
create table libros3 (
    codigo int unsigned auto_increment,
    titulo varchar(40) not null,
    autor varchar(30),
    editorial varchar(15),
    primary key (codigo),
    index i_editorial (editorial)
);
show index from libros3;
describe libros3;

-- indice comun multicolumna
create table libros4 (
    codigo int unsigned auto_increment,
    titulo varchar(40) not null,
    autor varchar(30),
    editorial varchar(15),
    primary key (codigo),
    index i_tituloeditorial (titulo , editorial)
);
show index from libros4;
describe libros4;

-- indice unique
create table libros5(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  unique i_codigo(codigo),
  unique i_tituloeditorial (titulo,editorial)
);

show index from libros5;
describe libros5;

-- borrar indices
drop index i_editorial on libros3;
describe libros3;
drop index i_tituloeditorial on libros4;
describe libros4;


-- crear indices de una tabla ya existente
create index i_editorial on libros3 (editorial);
describe libros3;
create unique index i_tituloeditorial on libros4 (titulo,editorial);
describe libros4;


-- Si inserto registros con codigo desordenado siendo codigo PK
-- al listarlo los veo ordenados dado que el indice los presenta asi
-- No hay posibilidad de recorrido plano
select * from clientes;
insert into clientes values(25,'Jose','Paso','xxxxx','Larrea 324',null);
insert into clientes values(20,'Diego','Lorenzo','xxxxx','Laureles 623',null);
select * from clientes;




-- -------------------------
-- Estructuras de control if
-- -------------------------

drop table if exists libros;

create table if not exists libros(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(30),
  precio decimal(5,2) unsigned,
  primary key (codigo)
);



insert into libros (titulo, autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',50.5);
insert into libros (titulo, autor,editorial,precio)
  values('Alicia a traves del espejo','Lewis Carroll','Emece',25);
insert into libros (titulo, autor,editorial,precio) 
  values('El aleph','Borges','Paidos',15);
insert into libros (titulo, autor,editorial,precio)
  values('Matemática estas ahi','Paenza','Paidos',10);
insert into libros (titulo, autor,editorial)
  values('Antologia','Borges','Paidos');
insert into libros (titulo, editorial)
  values('El gato con botas','Paidos');
insert into libros (titulo, autor,editorial,precio)
  values('Martin Fierro','Jose Hernandez','Emece',90);

select titulo from libros
  where precio<50;

select titulo from libros
  where precio >=50;


select titulo,
  if (precio>50,'caro','economico')
  from libros;

select autor, count(*)
  from libros
  group by autor;

select autor, count(*)
  from libros
  group by autor
  having count(*)>1;

select autor,
  if (count(*)>1,'Más de 1','1')
  from libros
  group by autor;

select autor,
  if (count(*)>1,'Más de 1','1') as cantidad
  from libros
  group by autor
  order by cantidad;


select editorial,
  if (count(*)>4,'5 o más','menos de 5') as cantidad
  from libros
  group by editorial
  order by cantidad;

select editorial,
  if (count(*)>1,'Mas de 2','1') as 'cantidad'
  from libros
  group by editorial;



-- ---------------------------
-- Estructuras de control case
-- ---------------------------

select editorial,
  case count(*)
   when 1 then 1
   else 'mas de 1' end as 'cantidad'
  from libros
  group by editorial;


select editorial,
  case count(*)
   when 1 then 1
   end as 'cantidad'
  from libros
  group by editorial;


select editorial,
  case count(*)
   when 1 then 1
   when 2 then 2
   when 3 then 3
  else 'Más de 3' end as 'cantidad'
  from libros
  group by editorial;



