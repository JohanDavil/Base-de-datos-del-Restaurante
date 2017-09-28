create database Sis_Restaurante;

use Sis_Restaurante;

-- CREAR TABLA Usuario

CREATE TABLE Usuario (
    IdUsuario INT(4) NOT NULL,
	Tipo VARCHAR(20)NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Direccion VARCHAR(100),
    PRIMARY KEY (IdUsuario)
);

-- CREAR TABLA Categoria

CREATE TABLE Categoria (
    IdCategoria INT(4) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY (IdCategoria),
);


-- CREAR TABLA Plato

CREATE TABLE Plato (
    IdPlato INT(4) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
	IdCategoria INT(20)NOT NULL,
    Precio DECIMAL(18 , 2 ) NOT NULL,
    PRIMARY KEY (IdProducto),
	CONSTRAINT IdCategoria FOREIGN KEY (IdCategoria)
    REFERENCES Categoria (IdCategoria)
);


-- CREAR TABLA Pedido

CREATE  TABLE Pedido
 (
  IdPedido INT(1000) NOT NULL,
  IdPlato INT NOT NULL ,
  Cantidad INT NOT NULL ,
  Descuento DECIMAL(18,2),
  PRIMARY KEY (IdDetalle) ,
  CONSTRAINT IdPlato FOREIGN KEY (IdPlato) REFERENCES Plato (IdPlato) 
);
