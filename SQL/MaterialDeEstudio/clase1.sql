/* Curso de Base de datos
Dias Marte y jueves de 12 a 14 hs.
material en google docs.
lauartaza818@gmail.com

software: Mysql
alternativos Oracle, SqlServer
MariaB

Requerimiento de conexion:
protocolo de conexion : TCP/IP
lenguaje: ANSI SQL

paquete XAMPP 


X				Linux/Windows/Mac
A				Apache server
M				MySql server / MariaDB
P				PHP
P				Perl


*/

/*
Bloque de Comentario
*/

-- comentario de una sola linea

-- ; es el terminador de sentencia

show databases; -- control + enter ejuta sentencia

-- boton del rayo ejecutar codigo
-- boton de rayo con cursor ejecuta linea

drop database if exists clase1;
create database clase1;
show databases;
show tables;
use clase1;
-- crear lista de alumnos

create table alumnos (
	codigo int,
    nombre varchar(25),
    apellido varchar(25),
    mail varchar(25)
    );














