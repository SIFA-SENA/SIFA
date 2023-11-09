create database gestion_fichas;
use gestion_fichas;

create table Usuario(
idUsuario int primary key auto_increment,
nombreUsuario varchar(50) not null,
tipodocUsuario varchar(30) not null,
documentoUsuario int not null,
celularUsuario int not null,
rol varchar(30) not null,
usuario varchar(30) not null,
correo varchar(50)not null,
clave varchar(20) not null
);


create table Ficha(
idFicha int primary key  auto_increment,
programaFormacion varchar(50) not null,
areaFormacion varchar(50) not null,
lugarFormacion varchar(50) not null,
estadoFicha varchar(30) not null
-- FOREIGN KEY (idUsuarioFK) REFERENCES Usuario(idUsuario),
);

create table Aprendiz(
idAprendiz int primary key auto_increment,
nombreAprendiz varchar(50) not null,
tipodocAprendiz varchar(30) not null,
documentoAprendiz int not null,
celularAprendiz int not null,
correoAprendiz varchar(50) not null,
fechaNacimientoAprendiz date not null,
estadoAprendiz varchar(30) not null,
observaciones varchar(100) not null,
idFichaFK int,
FOREIGN KEY (idFichaFK) REFERENCES Ficha(idFicha)
);

select * from Usuario;
select * from Aprendiz;
