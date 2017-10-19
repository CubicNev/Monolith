create database monolith;
use monolith;

create table Usuario(
	IDUsuario int primary key not null auto_increment,
	NombreUsuario varchar(100),
	Institucion varchar(120),
    NivelEstudio varchar(120),
	Correo  varchar(70),
	Edad int, 
	Pais varchar(50),
	Direccion varchar(200),
	Contrasena varchar(70)
);

create table Actividad(
	IDActividad int primary key not null auto_increment,
    Titulo varchar(100),
    FormaDeEntregar varchar(50),
    CaracteristicasExtra long,
	IDUsuario int,
    FechaLimite date,
    Estado varchar(60), 
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table Proyecto(
	IDActividad int primary key not null auto_increment,
    Titulo varchar(100),
    FormaDeEntregar varchar(50),
    CaracteristicasExtra long,
	IDUsuario int,
    FechaLimite date,
    Estado varchar(60),
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table Examen(
	IDActividad int primary key not null auto_increment,
    Titulo varchar(100),
    FormaDeEntregar varchar(50),
    CaracteristicasExtra long,
	IDUsuario int,
    FechaLimite date,
    Estado varchar(60),
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table Conversacion(
	IDConversacion int primary key not null auto_increment,
    IDProyecto int
);

insert into Usuario(NombreUsuario,Institucion,Correo,Edad,Pais,Dicreccion,Contrasena)
values ("Juanito banana", "CECYT 9", "juan.nevtor@hotmail.com", 17, "Mexico", "Industria Militar Lt.38", "123456");

insert into Usuario(NombreUsuario,Institucion,Correo,Edad,Pais,Dicreccion,Contrasena)
values ("Rick", "CECYT 9", "juan.nevtor@hotmail.com", 17, "Mexico", "Industria Militar Lt.38", "123456");

select * from usuario;

delete from usuario where NombreUsuario='rick';

insert into Actividad(Titulo,FormaDeEntregar,CaracteristicasExtra,IDUsuario,FechaLimite,Estado)
values ("Lo del pollo", "Computadora", "dsaasdsadsdasd", 2, " 2003-05-21","completada");

insert into Actividad(Titulo,FormaDeEntregar,CaracteristicasExtra,IDUsuario,FechaLimite,Estado)
values ("Arbol", "a mano", "dsaasdsadsdasd", 2, " 2003-05-21","completada");

select *from Actividad;

delete from Usuario where NombreUsuario="Rick";