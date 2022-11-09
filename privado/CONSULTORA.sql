CREATE DATABASE consultora;

CREATE TABLE consultora(
id_consultora INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(25) NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono VARCHAR(25)NOT NULL,
correo VARCHAR(30) NOT NULL,
pagina_web VARCHAR(30) NOT NULL,
foto VARCHAR(100)NOT NULL,
PRIMARY KEY(id_consultora)
);

CREATE TABLE servicios(
id_servicio INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
descripcion VARCHAR(100) NOT NULL,
servicio VARCHAR(50) NOT NULL,
PRIMARY KEY(id_servicio),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora)
);
CREATE TABLE sucursales(
id_sucursal INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
nombre VARCHAR(25) NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono VARCHAR(25)NOT NULL,
correo VARCHAR(30) NOT NULL,
pagina_web VARCHAR(30) NOT NULL,
PRIMARY KEY(id_sucursal),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora)
);
CREATE TABLE funciones(
id_funcion INT AUTO_INCREMENT NOT NULL,
descripcion VARCHAR(100) NOT NULL,
funcion VARCHAR(30) NOT NULL,
PRIMARY KEY(id_funcion)
);

CREATE TABLE personal(
id_personal INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
id_funcion INT NOT NULL,
nombres VARCHAR(25) NOT NULL,
ap VARCHAR(25),
am VARCHAR(25),
ci VARCHAR(20) NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono VARCHAR(25)NOT NULL,
fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
PRIMARY KEY(id_personal),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora),
FOREIGN KEY(id_funcion) REFERENCES funciones (id_funcion)

);

CREATE TABLE profesiones(
id_profesion INT AUTO_INCREMENT NOT NULL,
profesion VARCHAR(40) NOT NULL,
PRIMARY KEY(id_profesion)
);

CREATE TABLE personal_profesional(
id_personal_profesional INT AUTO_INCREMENT NOT NULL,
id_personal INT NOT NULL,
id_profesion INT NOT NULL,
Gestion VARCHAR(4) NOT NULL,
PRIMARY KEY(id_personal_profesional),
FOREIGN KEY(id_personal) REFERENCES personal (id_personal),
FOREIGN KEY (id_profesion) REFERENCES profesiones (id_profesion)
);

CREATE TABLE trabajos(
id_trabajo INT AUTO_INCREMENT NOT NULL,
id_personal_profesional INT NOT NULL,
fecha_ingreso DATE NOT NULL,
fecha_fin DATE NOT NULL,
PRIMARY KEY(id_trabajo),
FOREIGN KEY(id_personal_profesional) REFERENCES personal_profesional (id_personal_profesional)
);

CREATE TABLE tipo_clientes(
id_tipo_cliente INT AUTO_INCREMENT NOT NULL,
tipo_cliente VARCHAR(40) NOT NULL,
PRIMARY KEY(id_tipo_cliente)
);


CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
id_tipo_cliente INT NOT NULL,
nombres VARCHAR(25) NOT NULL,
apellidos VARCHAR(25),
ci VARCHAR(20) NOT NULL,
razon_social VARCHAR(40) NOT NULL,
nit INT(25)NOT NULL,
PRIMARY KEY(id_cliente),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora),
FOREIGN KEY(id_tipo_cliente) REFERENCES tipo_clientes (id_tipo_cliente)
);
