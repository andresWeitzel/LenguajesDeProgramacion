-- /////////////////////////////////////////////////////////////////////////////////////////////////////
-- //////Base de Datos de mediciones de temperatura y humedad aplicando un sensor y arduino/////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////////////

use db_temp_hum_web;

/*
-- SELECT 
show tables;
describe mediciones;
select * from mediciones;
select count(*) from mediciones;

*/

-- INSERT
insert into mediciones (temperatura, humedad, fecha ) values 
(00.00, 00.00, now());


-- UPDATE 
update mediciones set temperatura=12.09 where id=1;

