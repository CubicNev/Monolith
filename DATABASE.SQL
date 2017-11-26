create database monolith;
use monolith;
/*drop database monolith;*/

create table Usuario(
	IDUsuario int primary key not null auto_increment,
	NombreUsuario varchar(100),
	Institucion varchar(120),
	Correo  varchar(70),
	Edad int,
    NivelEstudio varchar(40),
	Pais varchar(50),
	Direccion varchar(200),
	Contrasena varchar(70)
);

create table Actividad(
	IDActividad int primary key not null auto_increment,
    Titulo varchar(100),
    FormaDeEntregar varchar(50),
    Descripcion long,
	IDUsuario int,
    FechaLimite date,
    Estado varchar(60), 
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table Proyecto(
	IDProyecto int primary key not null auto_increment,
    Titulo varchar(100),
    FormaDeEntregar varchar(50),
    Descripcion long,
	IDUsuario int,
    FechaLimite date,
    Estado varchar(60),
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table Examen(
	IDExamen int primary key not null auto_increment,
    Titulo varchar(100),
    FormaDeEntregar varchar(50),
    Descripcion long,
	IDUsuario int,
    FechaLimite date,
    Estado varchar(60),
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table Colaboradores(
 IDColaborador int primary key not null auto_increment,
 IDProyecto int,
 IDUsuario int,
 foreign key (IDUsuario) references Usuario(IDUsuario) 
on update cascade  on delete cascade,
foreign key (IDProyecto) references Proyecto(IDProyecto) 
on update cascade  on delete cascade
);

create table Mensaje(
	IDMensaje int primary key not null auto_increment,
    IDProyecto int,
    IDColaborador int,
    Contenido long,
	Fecha DateTime,
    foreign key (IDProyecto) references Proyecto(IDProyecto) 
    on update cascade  on delete cascade,
    foreign key (IDColaborador) references Colaboradores(IDColaborador) 
    on update cascade  on delete cascade
);

create table TipoAccion(
  IDTipoAccion int primary key not null auto_increment,
  Accion varchar(40)
);

create table NivelSeguridad(
  IDNivelSeguridad int primary key not null auto_increment,
  Nivel varchar(40)
);

create table Rutas(
     IDRuta int primary key not null auto_increment,
     TiempoRecorrido int,
     LugarPartida varchar(40),
     LugarLlegada varchar(40),
     IDNivelSeguridad int,
     IDUsuario int,
     Horas int,
     Dias int,
	foreign key (IDNivelSeguridad) references NivelSeguridad(IDNivelSeguridad) 
    on update cascade  on delete cascade,
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table Cuenta(
   IDCuenta int primary key not null auto_increment,
   IDusuario int,
   MotoTotal int,
   foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade  on delete cascade
);

create table CategoriaCuenta(
 IDCategoriaCuenta int primary key not null auto_increment,
 NombreCategoria varchar(40),
 Monto double,
 IDCuenta int,
  foreign key (IDCuenta) references Cuenta(IDCuenta) 
  on update cascade  on delete cascade
);

create table RegistroFinanza(
 IDRegistroFinanza int primary key not null auto_increment,
IDCategoriaCuenta int,
Fecha date,
Monto double,
Accion varchar(50),
foreign key (IDCategoriaCuenta) references CategoriaCuenta(IDCategoriaCuenta) 
  on update cascade  on delete cascade
);

select * from Usuario;
select * from actividad;
select * from proyecto;
delete from Mensaje;
select * from Mensaje;
select * from colaboradores;
select * from examen;

insert into Usuario(NombreUsuario,Institucion,Correo,Edad,NivelEstudio,Pais,Direccion,Contrasena) 
values('rick','cecyt 9','Institucion',12,'MedioSuperior','dssdds','dssddsd','ramv1357');

insert into Usuario(NombreUsuario,Institucion,Correo,Edad,NivelEstudio,Pais,Direccion,Contrasena) 
values('laika','cecyt 9','Institucion',12,'MedioSuperior','dssdds','dssddsd','ramv1357');

insert into Proyecto(Titulo,FormaDeEntregar,Descripcion,IDUSuario,FechaLimite,Estado) 
values('Prueba1','A mnao','sasass',1,'2017-12-03','Concluida');

insert into colaboradores(IdProyecto,IDUsuario)
values(1,1);

insert into colaboradores(IdProyecto,IDUsuario)
values(1,2);

select * from Mensaje inner join Colaboradores on Mensaje.IDColaborador=Colaboradores.IDColaborador inner join Usuario
on Usuario.IDUsuario=Colaboradores.IDColaborador where Mensaje.IDProyecto=1 and Usuario.NombreUsuario='rick';

delete  from colaboradores;
delete  from Mensaje;
delete  from Usuario where IDUsuario=3;
select * from colaboradores inner join usuario on usuario.IDUsuario=colaboradores.IDUsuario where usuario.NombreUsuario='rick';
