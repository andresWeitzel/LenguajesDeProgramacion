  
-- /////////////////////////////////////////////////////////////////////////////////////////////////////
-- //////Base de Datos de mediciones de temperatura y humedad aplicando un sensor y arduino/////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////////////

drop database if exists db_temp_hum;
create database db_temp_hum;

use db_temp_hum;
drop table if exists db_temp_hum;

create table mediciones(

id 					int 			auto_increment primary key,
temperatura 		float			not null,
humedad 			float 			not null,
fecha				datetime		not null


);
