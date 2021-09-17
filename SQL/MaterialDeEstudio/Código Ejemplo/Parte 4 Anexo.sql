-- -------------
-- Anexo Parte 4
-- -------------

-- --------------------
-- ejemplo con group by
-- --------------------

use cursomysql;

CREATE TABLE `articulos2` (
  `codigo` int(10) unsigned NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL DEFAULT '',
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `precio` float NOT NULL DEFAULT '0',
  `stock` int(10) unsigned NOT NULL DEFAULT '0',
  `marca` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `articulos2` VALUES
(1,'Televisores','TV LCD 19\" MODELO PFL3403',2199,40,'PHILIPS'),
(2,'Televisores','TV LCD22\" MODELO LN22A450',2399,30,'SAMSUNG'),
(3,'Televisores','TV LCD 32\" MODELO LC813H ',2999,25,'NOBLEX'),
(4,'Televisores','TV LCD 26\" MODELO 26LG30R',2999,25,'LG'),
(5,'Televisores','TV LCD 26\" MODELO CDH-L26S02',3099,20,'HITACHI'),
(6,'Televisores','TV LCD 32\" MODELO PL3219 ',3399,20,'PHILCO'),
(7,'Computadoras','CPU LE1250DVD2GB160VS',2199,15,'ADMIRAL'),
(8,'Computadoras','CPU A64X246DV2G160VBOF ',2499,8,'ADMIRAL'),
(9,'Computadoras','CPU E5200DVDR2GB320VB ',2699,5,'ADMIRAL'),
(10,'Computadoras','CPU SG3308LA ',3099,5,'COMPAQ PRESARIO'),
(11,'Impresoras','IMPRESORA T23 ',219,18,'EPSON'),
(12,'Impresoras','IMPRESORA DJ-6940 ',349,20,'HEWLETT PACKARD'),
(13,'Impresoras','IMPRESORA T33',399,12,'EPSON'),
(14,'Impresoras','IMPRESORA K5400  ',499,8,'HEWLETT PACKARD'),
(15,'Home Theater','HOME CINEMA SPH70 ',319,0,'PHILCO'),
(16,'Home Theater','HOME CINEMA AMX115 ',419,0,'NOBLEX'),
(17,'Home Theater','HOME CINEMA HT E 860 ',599,0,'X-VIEW'),
(18,'Home Theater','HOME CINEMA DC-T990 ',759,5,'SANYO'),
(19,'Home Theater','HOME CINEMA HT-1105U',829,18,'NOBLEX'),
(20,'Home Theater','HOME CINEMA HT304SL-A2 ',949,6,'LG'),
(21,'Home Theater','HOME CINEMA HT-Z110 ',999,22,'SAMSUNG'),
(22,'Home Theater','HOME CINEMA HTS3011/55',1099,18,'PHILIPS'),
(23,'Home Theater','HOME CINEMA HT503SH',1299,15,'LG'),
(24,'Home Theater','HOME CINEMA HT503SH-AM',1299,12,'LG'),
(25,'Home Theater','HOME CINEMA HT-IS10',1499,7,'SONY'),
(26,'Home Theater','HOME CINEMA HTS3365/55',1599,5,'PHILIPS'),
(27,'Radio','RADIO PORT RP 299  ',49,5,'NOBLEX'),
(28,'Radio','RADIO DX-365',79,15,'KEN BROWN'),
(29,'Radio','RADIO ICF-S10MK2/SCE',79,15,'SONY'),
(30,'Radio','RADIO ICF-18  ',99,15,'SONY'),
(31,'Radio','RADIO ICF-303/304 AM-FM ',129,8,'SONY'),
(32,'Radio','RADIO SRF-59/SC E ',129,10,'SONY'),
(33,'Notebooks','NOTEBOOK C2D2VB250WC14',3699,12,'ADMIRAL'),
(34,'Notebooks','NOTEBOOK CQ40-300',2999,9,'COMPAQ PRESARIO'),
(35,'Notebooks','NOTEBOOK DV2-1010',3999,7,'HEWLETT PACKARD'),
(36,'Notebooks','NOTEBOOK DV4-1212',4199,9,'HEWLETT PACKARD'),
(37,'Notebooks','NOTEBOOK DV4-1212',4199,10,'HEWLETT PACKARD'),
(38,'Telefonos','TELEFONO DECT1221S INALAMBRICO',169,15,'PHILIPS'),
(39,'Telefonos','TELEFONO CD1401B INALAMBRICO',169,8,'PHILIPS'),
(40,'Telefonos','TELEFONO CD2401S INALAMBRICO',239,8,'PHILIPS'),
(41,'Telefonos','TELEFONO CD1302S INALAMBRICO',249,8,'PHILIPS'),
(42,'Telefonos','TELEFONO SANYO HNS-3300 ',69,10,'SANYO'),
(43,'Lavarropas','LAVARROPA GAFA 7000 DIG PROGR 7KG',1679,7,'GAFA'),
(44,'Lavarropas','LAVARROPA GAFA 7500 T750 7,5K ',1839,4,'GAFA'),
(45,'Lavarropas','LAVARROPA GAFA ACQ7500 GRAFT750 7,5K ',1939,12,'GAFA'),
(46,'Lavarropas','LAVARROPA LG WF-T1202TP 12KG C/S',2449,10,'LG'),
(47,'Lavarropas','LAVARROPA LG WF-T1205TP 12K TITANIUM',2499,10,'LG'),
(48,'Camaras digitales','CAMARA DIGITAL KODAK C813',549,10,'KODAK'),
(49,'Camaras digitales','CAMARA DIGITAL VPCS-870EX ',579,15,'SANYO'),
(50,'Camaras digitales','CAMARA DIGITAL C913',599,15,'KODAK'),
(51,'Camaras digitales','CAMARA DIGITAL 760+KIT',649,15,'SAMSUNG'),
(52,'Camaras digitales','CAMARA DIGITAL ES10',749,20,'SAMSUNG'),
(53,'Camaras digitales','CAMARA DIGITAL ES15 ',799,40,'SAMSUNG'),
(54,'Video camaras','CAMARA VIDEO DCR-DVD650',2749,15,'SONY'),
(55,'Video camaras','CAMARA VIDEO DCR-DVD810 ',2999,10,'SONY'),
(56,'Estufas','CALEFACTOR TB 2400 GN',459,12,'SIGMA'),
(57,'Estufas','CALEFACTOR TB 3000 GN',699,12,'SIGMA'),
(58,'Estufas','CALEFACTOR TB 5000 GN',1999,15,'SIGMA'),
(59,'Aire acondicionado','AIRE ACONDICIONADOR SP TS-C096EMAO 2200FS',1999,15,'LG'),
(60,'Aire acondicionado','AIRE ACONDICIONADOR SP TS-C096EMAO 2200FS ',1999,10,'LG'),
(61,'Aire acondicionado','AIRE ACONDICIONADOR SP TS-C126EMAO 3000FS',2249,10,'LG'),
(62,'Aire acondicionado','AIRE ACONDICIONADOR SP TS-C1865DLO 4500FS',3049,20,'LG'),
(63,'Aire acondicionado','AIRE ACONDICIONADOR SP LS-C1863RMO 4500FS',3349,20,'LG'),
(64,'Aire acondicionado','AIRE ACONDICIONADOR SP WSX09CG5R 2500WFS',1599,15,'WESTINGHOUSE');

select marca, count(*) as cantidad_de_items,sum(stock) cantidad_de_unidades,
sum(precio)*stock as suma_importe_total
from articulos2 group by marca;

select descripcion, count(*) as cantidad_de_items,sum(stock) cantidad_de_unidades,
sum(precio)*stock as suma_importe_total
from articulos2 group by descripcion;


-- -------------------------------------
-- ejemplo con join de mas de dos tablas
-- -------------------------------------


-- -------------    -------------------     -------------     
-- - libros    -    - prestamos       -     - socios    -    
-- -------------    -------------------     -------------     
-- - codigo PK -    - documento   PK  -     - documento -
-- - titulo    -    - codigolibro PK  -     - nombre    -
-- - autor     -    - fechaprestamo   -     - domicilio -
-- -------------    - fechadevolucion -     -------------
--                  -------------------                

drop table if exists libros;
create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  primary key (codigo)
);

drop table if exists socios;
create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  primary key (documento)
);

drop table if exists prestamos;
create table prestamos(
  documento char(8) not null,
  codigolibro int unsigned,
  fechaprestamo date not null,
  fechadevolucion date,
  primary key (codigolibro,fechaprestamo)
);

insert into socios values('22333444','Juan Perez','Colon 345');
insert into socios values('23333444','Luis Lopez','Caseros 940');
insert into socios values('25333444','Ana Herrero','Sucre 120');

insert into libros values(1,'Manual de 2º grado','Molina Manuel');
insert into libros values(25,'Aprenda PHP','Oscar Mendez');
insert into libros values(42,'Martin Fierro','Jose Hernandez');

insert into prestamos values('22333444',1,'2006-08-10','2006-08-12');
insert into prestamos values('22333444',1,'2006-08-15',null);
insert into prestamos values('25333444',25,'2006-08-10','2006-08-13');
insert into prestamos values('25333444',42,'2006-08-10',null);
insert into prestamos values('25333444',25,'2006-08-15',null);
insert into prestamos values('30333444',42,'2006-08-02','2006-08-05');
insert into prestamos values('25333444',2,'2006-08-02','2006-08-05');

select nombre,titulo,fechaprestamo
  from prestamos as p
  join socios as s
  on s.documento=p.documento
  join libros as l
  on codigolibro=codigo;

select nombre,titulo,fechaprestamo
  from prestamos as p
  left join socios as s
  on p.documento=s.documento
  left join libros as l
  on l.codigo=p.codigolibro;

select nombre,titulo,fechaprestamo
  from prestamos as p
  left join socios as s
  on p.documento=s.documento
  join libros as l
  on p.codigolibro=l.codigo;

  
  
-- -------------------------------
-- consulto el estado de una tabla
-- -------------------------------
-- obtengo informacion del tipo de engine
show table status like 'clientes';


-- -------------------------------
-- crear un punto de recuperacion
-- -------------------------------

set autocommit = 0; -- es nesario para poder guardar el punto
show processlist; -- muestra la lista de procesos


select * from clientes;

savepoint punto1;

delete from clientes where codigo=5;

select * from clientes;

rollback to savepoint punto1;

select * from clientes;



-- El problema es que si lo hago seteando AUTOCOMMIT = 0, las diferentes operaciones no son 
-- consistentes entre sí, y si pongo AUTOCOMMIT = 1, cada operación se considera una transacción 
-- finalizada, lo que implica que todos los SAVEPOINTs anteriores a esa operación son eliminados.
-- Entonces, el Rollback al punto1 cuando llega, si se da el caso, ya no existe.


-- drop table clientes;
-- recupera operaciones con registros no con trablas


-- ----------------------------
-- Variables de usuarios
-- ----------------------------
 select @mayorprecio:=max(precio) from articulos;

 select * from articulos
  where precio=@mayorprecio;


 create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(30),
  autor varchar(30),
  codigoeditorial tinyint unsigned,
  precio decimal(5,2) unsigned,
  primary key(codigo)
 );

 create table editoriales(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20),
  primary key(codigo)
 );
 
-- ----------------------------
-- Crear Tabla a partir de otra o otras
-- ----------------------------  
create table editoriales
select distinct editorial as nombre
from libros;
  
 create table cantidadporeditorial
  select e.nombre,count(*) as cantidad
  from libros as l
  join editoriales as e
  on l.codigoeditorial=e.codigo    	
  group by e.nombre;

  
-- ----------------------------
-- Insertar registros a partir de un select
-- ----------------------------  
 insert into libros (titulo,autor,codigoeditorial,precio)
  select 'Cervantes y el quijote','Borges',codigo,35
  from editoriales
  where nombre='Plaza & Janes';

-- ----------------------------
-- Actualizacion en cascada
-- ----------------------------   
 update libros
  set codigoeditorial=9
  where codigoeditorial=2;

-- ----------------------------
-- Borrado en cascada
-- ----------------------------   
 delete libros,editoriales
  from libros
  join editoriales
  on libros.codigoeditorial=editoriales.codigo
  where editoriales.nombre='Emece';
  
  
-- 
-- --------------------------
-- Listado de funciones MySQL
-- --------------------------
-- 
-- Funciones de control de flujo:
-- ------------------------------
-- IF 	Elección en función de una expresión booleana
-- IFNULL 	Elección en función de si el valor de una expresión es NULL
-- NULLIF 	Devuelve NULL en función del valor de una expresión
-- 
-- 
-- Funciones matemáticas:
-- ----------------------
-- ABS 	Devuelve el valor absoluto
-- ACOS 	Devuelve el arcocoseno
-- ASIN 	Devuelve el arcoseno
-- ATAN y ATAN2 	Devuelven el arcotangente
-- CEILING y CEIL 	Redondeo hacia arriba
-- COS 	Coseno de un ángulo
-- COT 	Cotangente de un ángulo
-- CRC32 	Cálculo de comprobación de redundancia cíclica
-- DEGREES 	Conversión de grados a radianes
-- EXP 	Cálculo de potencias de e
-- FLOOR 	Redondeo hacia abajo
-- LN 	Logaritmo natural
-- LOG 	Logaritmo en base arbitraria
-- LOG10 	Logaritmo en base 10
-- LOG2 	Logaritmo en base dos
-- MOD o % 	Resto de una división entera
-- PI 	Valor del número p
-- POW o POWER 	Valor de potencias
-- RADIANS 	Conversión de radianes a grados
-- RAND 	Valores aleatorios
-- ROUND 	Cálculo de redondeos
-- SIGN 	Devuelve el signo
-- SIN 	Cálculo del seno de un ángulo
-- SQRT 	Cálculo de la raíz cuadrada
-- TAN 	Cálculo de la tangente de un ángulo
-- TRUNCATE 	Elimina decimales
-- 
-- 
-- Funciones de cadenas:
-- ---------------------
-- ASCII 	Valor de código ASCII de un carácter
-- BIN 	Converión a binario
-- BIT_LENGTH 	Cálculo de longitud de cadena en bits
-- CHAR 	Convierte de ASCII a carácter
-- CHAR_LENGTH o CHARACTER_LENGTH 	Cálculo de longitud de cadena en caracteres
-- COMPRESS 	Comprime una cadena de caracteres
-- CONCAT 	Concatena dos cadenas de caracteres
-- CONCAT_WS 	Concatena cadenas con separadores
-- CONV 	Convierte números entre distintas bases
-- ELT 	Elección entre varias cadenas
-- EXPORT_SET 	Expresiones binarias como conjuntos
-- FIELD 	Busca el índice en listas de cadenas
-- FIND_IN_SET 	Búsqueda en listas de cadenas
-- HEX 	Conversión de números a hexadecimal
-- INSERT 	Inserta una cadena en otra
-- INSTR 	Busca una cadena en otra
-- LEFT 	Extraer parte izquierda de una cadena
-- LENGTH u OCTET_LENGTH 	Calcula la longitud de una cadena en bytes
-- LOAD_FILE 	Lee un fichero en una cadena
-- LOCATE o POSITION 	Encontrar la posición de una cadena dentro de otra
-- LOWER o LCASE 	Convierte una cadena a minúsculas
-- LPAD 	Añade caracteres a la izquierda de una cadena
-- LTRIM 	Elimina espacios a la izquierda de una cadena
-- MAKE_SET 	Crea un conjunto a partir de una expresión binaria
-- OCT 	Convierte un número a octal
-- ORD 	Obtiene el código ASCII, incluso con caracteres multibyte
-- QUOTE 	Entrecomilla una cadena
-- REPEAT 	Construye una cadena como una repetición de otra
-- REPLACE 	Busca una secuencia en una cadena y la sustituye por otra
-- REVERSE 	Invierte el orden de los caracteres de una cadena
-- RIGHT 	Devuelve la parte derecha de una cadena
-- RPAD 	Inserta caracteres al final de una cadena
-- RTRIM 	Elimina caracteres blancos a la derecha de una cadena
-- SOUNDEX 	Devuelve la cadena "soundex" para una cadena concreta
-- SOUNDS LIKE 	Compara cadenas según su pronunciación
-- SPACE 	Devuelve cadenas consistentes en espacios
-- SUBSTRING o MID 	Extraer subcadenas de una cadena
-- SUBSTRING_INDEX 	Extraer subcadenas en función de delimitadores
-- TRIM 	Elimina sufijos y/o prefijos de una cadena.
-- UCASE o UPPER 	Convierte una cadena a mayúsculas
-- UNCOMPRESS 	Descomprime una cadena comprimida mediante COMPRESS
-- UNCOMPRESSED_LENGTH 	Calcula la longitud original de una cadena comprimida
-- UNHEX 	Convierte una cadena que representa un número hexadecimal a cadena de caracteres
-- 
-- 

-- ejemplos de uso
select pi() as PI;
select ord('@');
select ucase('carlos');
select lower('CARLOS');
select round(PI(),2) as PI_REDONDEADO;