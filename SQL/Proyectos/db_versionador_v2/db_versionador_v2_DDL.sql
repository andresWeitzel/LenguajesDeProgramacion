-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ////////////////////////////////////////Base de datos del Versionador de Java version 2///////////////////////////////////////
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


drop database if exists db_versionador_v2;

create database db_versionador_v2;

use db_versionador_v2;

use db_versionador_v2;

drop table if exists logs_entrada_usuarios;
drop table if exists logs_acciones_usuarios;
drop table if exists versiones;   
drop table if exists proyectos_detalles;    
drop table if exists proyectos_cabecera;
drop table if exists archivos_vinculados;
drop table if exists transacciones;   
drop table if exists usuarios;

create table usuarios(
	id_usuario int auto_increment primary key,
    nombre varchar(40) not null
    );

create table transacciones(
	id_transaccion int auto_increment primary key,
    id_usuario int not null,
    fecha timestamp not null,
    comentario varchar(200),
    foreign key (id_usuario) references usuarios(id_usuario)
    );

create table logs_entrada_usuarios(
	ip_usuario varchar(15) primary key,  
    id_usuario int not null,
    pc_usuario varchar(50) not null,
    fecha timestamp not null,
    foreign key (id_usuario) references usuarios(id_usuario)
    );
    
create table logs_acciones_usuarios(
	id_usuario int not null,
    fecha timestamp not null,
    accion varchar(50) not null,
    foreign key (id_usuario) references usuarios(id_usuario)
    );

create table proyectos_cabecera(
	id_proyecto int primary key auto_increment,    
    id_usuario int not null,
    nombre varchar(40) not null,
    descripcion varchar(200) not null,
    nombre_carpeta_base varchar(200) not null,
    estado varchar(40) not null,
    fecha timestamp default current_timestamp,
    foreign key (id_usuario) references usuarios(id_usuario)
    );     
    
create table proyectos_detalles(
	id_archivo int primary key auto_increment,
    id_proyecto int not null,
    id_usuario int not null,
    nombre_archivo varchar(200) not null,
    ruta_destino varchar(200) not null,
    foreign key (id_proyecto) references proyectos_cabecera(id_proyecto),
    foreign key (id_usuario) references usuarios(id_usuario)
    );
    
create table versiones(
	id_version int primary key auto_increment,
    id_transaccion int not null,
    id_archivo int not null,
    id_usuario int not null,
    fecha timestamp not null,
    tipo_version varchar(50) not null,
    foreign key (id_transaccion) references transacciones(id_transaccion),
    foreign key (id_archivo) references proyectos_detalles(id_archivo),
    foreign key (id_usuario) references usuarios(id_usuario)
    );

create table archivos_vinculados(
	id_proyecto int not null,
    id_archivo int not null
    );