drop database if exists monolith;
create database monolith;
use monolith;

create table Usuario(
	IDUsuario int primary key not null auto_increment,
	NombreUsuario varchar(100),
	Institucion varchar(120),
	Correo  varchar(70),
	Edad int,
    NivelEstudio varchar(40),
	Pais varchar(50),
	Direccion varchar(200),
	Contrasena varchar(70),
    Autenticado varchar(5)
);
select * from Usuario;


create table Validacion(
IdAdendum int primary key not null auto_increment,
Nombre varchar(20) not null,
adendum varchar (50) not null
);


select * from Validacion;

create table Actividad(
	IDActividad int primary key not null auto_increment,
    Titulo varchar(100),
    FormaDeEntregar varchar(50),
    Descripcion long,
	IDUsuario int,
    FechaLimite date,
    Estado varchar(60), 
    foreign key (IDUsuario) references Usuario(IDUsuario) 
    on update cascade on delete cascade
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

create table Colaboradoes(
 IDColaborador int primary key not null auto_increment,
 IDProyecto int,
 IDUsuario int,
 foreign key (IDUsuario) references Usuario(IDUsuario) 
on update cascade  on delete cascade,
foreign key (IDProyecto) references Proyecto(IDProyecto) 
on update cascade  on delete cascade
);

create table ConversacionProyecto(
	IDConversacionProyecto int primary key not null auto_increment,
    IDProyecto int,IDConversacion int, foreign key (IDProyecto) references Proyecto(IDProyecto) 
    on update cascade  on delete cascade
);

create table Mensaje(
	IDMensaje int primary key not null auto_increment,
    IDConversacionProyecto int,
    IDColaborador int,
    OrdenConversacion int,
    Contenido long,
    foreign key (IDConversacionProyecto) references ConversacionProyecto(IDConversacionProyecto) 
    on update cascade  on delete cascade,
    foreign key (IDColaborador) references Colaboradoes(IDColaborador) 
    on update cascade  on delete cascade
);

/*create table TipoAccion(
  IDTipoAccion int primary key not null auto_increment,
  Accion varchar(40)
);*/

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
select * from Cuenta;



/*insert into Cuenta(IDusuario,MotoTotal)values(1,5000);*/


create table CategoriaCuenta(
 IDCategoriaCuenta int primary key not null auto_increment,
 NombreCategoria varchar(40),
 Monto double,
 IDCuenta int,
  foreign key (IDCuenta) references Cuenta(IDCuenta) 
  on update cascade  on delete cascade
);
select * from CategoriaCuenta;
select Monto from CategoriaCuenta WHERE IDCuenta=1; 


create table RegistroFinanza(
 IDRegistroFinanza int primary key not null auto_increment,
IDCategoriaCuenta int,
Fecha date,
Monto double,
Accion varchar(50),
foreign key (IDCategoriaCuenta) references CategoriaCuenta(IDCategoriaCuenta) 
  on update cascade  on delete cascade
/*IDTipoAccion int,*/
  /*foreign key (IDTipoAccion) references TipoAccion(IDTipoAccion) 
  on update cascade  on delete cascade,*/
);
select * from RegistroFinanza;
/*insert into RegistroFinanza(IDCategoriaCuenta,Fecha,Monto,Accion) values(1,now(),100,'comida');*/


select * from Usuario;
select * from actividad;
select * from proyecto;
select * from ConversacionProyecto;
select * from Mensaje;
select * from colaboradoes;

insert into Usuario(NombreUsuario,Institucion,Correo,Edad,NivelEstudio,Pais,Direccion,Contrasena,Autenticado) 
values('rick','cecyt 9','Institucion',12,'MedioSuperior','dssdds','dssddsd','ramv1357','Si');

insert into Usuario(NombreUsuario,Institucion,Correo,Edad,NivelEstudio,Pais,Direccion,Contrasena,Autenticado) 
values('laika','cecyt 9','Institucion',12,'MedioSuperior','dssdds','dssddsd','ramv1357','Si');

insert into Proyecto(Titulo,FormaDeEntregar,Descripcion,IDUSuario,FechaLimite,Estado) 
values('Prueba1','A mnao','sasass',1,'2017-12-03','Concluida');

insert into colaboradoes(IdProyecto,IDUsuario)
values(1,1);

insert into colaboradoes(IdProyecto,IDUsuario)
values(1,2);

insert into colaboradoes(IdProyecto,IDUsuario)
values(1,3);

insert into ConversacionProyecto(IDProyecto,IDConversacion) 
values(1,1);

delete  from Mensaje;

delete  from Usuario where IDUsuario=3;
