  
-- /////////////////////////////////////////////////////////////////////////////////////////////////////
-- //////Base de Datos de mediciones de temperatura y humedad aplicando un sensor y arduino/////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////////////

drop database if exists db_temp_hum_web;
create database db_temp_hum_web;

use db_temp_hum_web;
drop table if exists db_temp_hum_web;

create table mediciones(

id 					int 			auto_increment primary key,
temperatura 		float			not null,
humedad 			float 			not null,
fecha				datetime		not null


);
