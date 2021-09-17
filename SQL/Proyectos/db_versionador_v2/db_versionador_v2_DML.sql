-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ////////////////////////////////////////Base de datos del Versionador de Java version 2///////////////////////////////////////
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



use db_versionador_v2;

insert into usuarios(nombre) values
	('Marcelo'),-- 1
    ('Mónica'),-- 2
    ('Andrea'), -- 3
    ('Luis'),-- 4
    ('Fabián'), -- 5
    ('Felipe'), -- 6
    ('Celeste'), -- 7
    ('María'), -- 8
    ('Matías'), -- 9
    ('Marcelo'),-- 10
    ('Juan');-- 11
  
insert into transacciones (id_usuario, comentario) values
	(1, 'primer ejemplo de comentario'),
    (2, 'segundo ejemplo de comentario'), 
    (3, 'tercer ejemplo de comentario'), 
    (4, 'cuarto ejemplo de comentario'),
    (5, 'quinto ejemplo de comentario'),
    (6, 'sexto ejemplo de comentario'),
    (7, 'séptimo ejemplo de comentario'),
    (8, 'octavo ejemplo de comentario');

 
insert into logs_entrada_usuarios(ip_usuario, id_usuario, pc_usuario) values
	('22.333.239.100', 1, 'PC1'),
    ('22.333.239.101', 2, 'PC2'), 
    ('22.333.239.102', 3, 'PC3'),
    ('22.333.239.103', 4, 'PC4'),
    ('22.333.239.104', 5, 'PC5'), 
    ('22.333.239.105', 6, 'PC6'),
    ('22.333.239.106', 7, 'PC7'),
    ('22.333.239.107', 8, 'PC8'),
    ('22.333.239.108', 9, 'PC9');
 
 
insert into logs_acciones_usuarios(id_usuario, accion) values
	(1, "agrega cambios"), 
    (2, "realiza mejoras"),
    (3, "borra"),
    (4, "corrije"),
    (5, "documenta"),
    (6, "agrega cambios"), 
    (7, "realiza mejoras"),
    (8, "documenta"),
    (9, "borra");
   
    
insert into proyectos_cabecera(id_usuario, nombre, descripcion, nombre_carpeta_base, estado) values
	(1,'Proyecto nro1', 'descripción del proyecto nro1', 'CarpetaBase1','activo'), 
    (2,'Proyecto nro2', 'descripción del proyecto nro2', 'CarpetaBase2','baja'),
    (3,'Proyecto nro3', 'descripción del proyecto nro3', 'CarpetaBase3','suspendido'), 
    (4,'Proyecto nro4', 'descripción del proyecto nro4', 'CarpetaBase4','en espera de aprobación'),
    (5,'Proyecto nro5', 'descripción del proyecto nro5', 'CarpetaBase5','activo'), 
    (6,'Proyecto nro6', 'descripción del proyecto nro6', 'CarpetaBase6','en espera de aprobación'),
    (7,'Proyecto nro7', 'descripción del proyecto nro7', 'CarpetaBase7','activo'),
    (8,'Proyecto nro8', 'descripción del proyecto nro8', 'CarpetaBase8','baja'),
    (9,'Proyecto nro9', 'descripción del proyecto nro9', 'CarpetaBase9','activo');
    
   
insert into proyectos_detalles(id_proyecto, id_usuario, nombre_archivo, ruta_destino) values
	(1,1,'nombreDeArchivo1','destino/del/proyecto/a/guardar'),
    (2,2,'nombreDeArchivo2','destino/del/proyecto/a/guardar'),
    (3,3,'nombreDeArchivo3','destino/del/proyecto/a/guardar'),
    (4,4,'nombreDeArchivo4','destino/del/proyecto/a/guardar'),
    (5,5,'nombreDeArchivo5','destino/del/proyecto/a/guardar'),
    (6,6,'nombreDeArchivo6','destino/del/proyecto/a/guardar'),
    (7,7,'nombreDeArchivo7','destino/del/proyecto/a/guardar'),
    (8,8,'nombreDeArchivo8','destino/del/proyecto/a/guardar');
  
 
insert into versiones(id_transaccion, id_archivo, id_usuario, tipo_version) values
	(1,1,1,'tipoDeVersión'),
    (2,2,2,'tipoDeVersión'),
    (3,3,3,'tipoDeVersión'),
    (4,4,4,'tipoDeVersión'),
    (5,5,5,'tipoDeVersión'),
    (6,6,6,'tipoDeVersión'),
    (7,7,7,'tipoDeVersión'),
    (8,8,8,'tipoDeVersión');


insert into archivos_vinculados(id_proyecto, id_archivo) values
	(1,1),
    (7,7),
    (12,12);
   