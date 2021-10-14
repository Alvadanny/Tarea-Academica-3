create database CURRIER;
use CURRIER;
CREATE TABLE EMPRESA_Y(
IDempresa int primary key auto_increment,
ingresoPedido int unique,
empresa int unique,
recepcionRepartidor int unique,
constraint FK_PEDIDO foreign key(ingresoPedido) references PEDIDO(IDPEDIDO),
constraint FK_empresa foreign key(empresa) references EMPRESAS(IDempre),
constraint FK_REPARTIDOR foreign key(recepcionRepartidor) references REPARTIDOR(IDrepartidor)
);
CREATE TABLE EMPRESAS(
IDempre int primary key auto_increment,
ubicacion varchar(50),
nomEmpresa varchar(50),
PEDIDO INT UNIQUE,
constraint FK_NroPEDIDO foreign key(PEDIDO) references PEDIDO(IDPEDIDO)
);
CREATE TABLE PEDIDO(
IDPEDIDO int primary key auto_increment,
ubientrega varchar(50)
);
CREATE TABLE REPARTIDOR(
IDrepartidor int primary key auto_increment,
nombreRepartidor varchar(20),
apellidoRepartidor varchar(30),
tipo varchar(12)
);