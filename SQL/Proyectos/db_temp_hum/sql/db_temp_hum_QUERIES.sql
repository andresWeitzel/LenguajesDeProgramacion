-- /////////////////////////////////////////////////////////////////////////////////////////////////////
-- //////Base de Datos de mediciones de temperatura y humedad aplicando un sensor y arduino/////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////////////

use db_temp_hum;

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
update mediciones set temperatura=17.09 where id=1;

