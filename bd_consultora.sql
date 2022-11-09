CREATE DATABASE  consultoraa;

CREATE TABLE consultora(
id_consultora INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(25) NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono VARCHAR(25)NOT NULL,
correo VARCHAR(30) NOT NULL,
pagina_web VARCHAR(30) NOT NULL,
foto VARCHAR(100)NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_consultora)
)ENGINE=INNODB;


CREATE TABLE servicios(
id_servicio INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
descripcion VARCHAR(100) NOT NULL,
servicio VARCHAR(50) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_servicio),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora)
)ENGINE=INNODB;


CREATE TABLE sucursales(
id_sucursal INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
nombre VARCHAR(25) NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono VARCHAR(25)NOT NULL,
correo VARCHAR(30) NOT NULL,
pagina_web VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_sucursal),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora)
)ENGINE=INNODB;


CREATE TABLE personal(
id_personal INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
nombres VARCHAR(25) NOT NULL,
ap VARCHAR(25),
am VARCHAR(25),
ci VARCHAR(20) NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono VARCHAR(25)NOT NULL,
fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
salario INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_personal),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora)
)ENGINE=INNODB;

CREATE TABLE funciones(
id_funcion INT AUTO_INCREMENT NOT NULL,
id_personal INT NOT NULL,
descripcion VARCHAR(100) NOT NULL,
funcion VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_funcion),
FOREIGN KEY(id_personal) REFERENCES personal (id_personal)
)ENGINE=INNODB;


CREATE TABLE profesiones(
id_profesion INT AUTO_INCREMENT NOT NULL,
profesion VARCHAR(40) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_profesion)
)ENGINE=INNODB;


CREATE TABLE personal_profesional(
id_personal_profesional INT AUTO_INCREMENT NOT NULL,
id_personal INT NOT NULL,
id_profesion INT NOT NULL,
Gestion VARCHAR(20) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_personal_profesional),
FOREIGN KEY(id_personal) REFERENCES personal (id_personal),
FOREIGN KEY (id_profesion) REFERENCES profesiones (id_profesion)
)ENGINE=INNODB;


CREATE TABLE trabajos(
id_trabajo INT AUTO_INCREMENT NOT NULL,
id_personal_profesional INT NOT NULL,
fecha_ingreso DATE NOT NULL,
fecha_fin DATE NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_trabajo),
FOREIGN KEY(id_personal_profesional) REFERENCES personal_profesional (id_personal_profesional)
)ENGINE=INNODB;


CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
nombres VARCHAR(25) NOT NULL,
apellidos VARCHAR(25),
ci VARCHAR(20) NOT NULL,
razon_social VARCHAR(40) NOT NULL,
nit INT(50)NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_cliente),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora)
)ENGINE=INNODB;


CREATE TABLE tipo_clientes(
id_tipo_cliente INT AUTO_INCREMENT NOT NULL,
id_cliente INT NOT NULL,
tipo_cliente VARCHAR(40) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_tipo_cliente),
FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente)
)ENGINE=INNODB;


CREATE TABLE personas(
id_persona INT AUTO_INCREMENT NOT NULL,
id_consultora INT NOT NULL,
ci VARCHAR(15) NOT NULL,
nombres VARCHAR (20) NOT NULL,
ap VARCHAR (20) NOT NULL,
am VARCHAR (20) NOT NULL,
telef VARCHAR (15) NOT NULL, 
direccion VARCHAR (20) NOT NULL,
genero VARCHAR (20) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona),
FOREIGN KEY(id_consultora) REFERENCES consultora (id_consultora)
)ENGINE=INNODB;


CREATE TABLE usuarios(
id_usuario INT AUTO_INCREMENT NOT NULL,
id_persona INT NOT NULL,
usuario1 VARCHAR(40) NOT NULL,
clave VARCHAR (100) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY(id_persona) REFERENCES personas (id_persona)
)ENGINE=INNODB;


CREATE TABLE roles(
id_rol INT AUTO_INCREMENT NOT NULL,
rol VARCHAR(40) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_rol)
)ENGINE=INNODB;


CREATE TABLE usuarios_roles(
id_ususario_rol INT AUTO_INCREMENT NOT NULL,
id_usuario INT NOT NULL,
id_rol  INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_ususario_rol),
FOREIGN KEY(id_usuario) REFERENCES usuarios (id_usuario),
FOREIGN KEY(id_rol) REFERENCES roles(id_rol)
)ENGINE=INNODB;


CREATE TABLE grupos(
id_grupo INT AUTO_INCREMENT NOT NULL,
grupo  VARCHAR(100) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1)NOT NULL,
PRIMARY KEY(id_grupo)
)ENGINE=INNODB;


CREATE TABLE opciones(
id_opcion INT AUTO_INCREMENT NOT NULL,
id_grupo INT NOT NULL,
opcion VARCHAR(100) NOT NULL,
contenido VARCHAR(100) NOT NULL,
orden INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1)NOT NULL,
PRIMARY KEY(id_opcion),
FOREIGN KEY(id_grupo) REFERENCES grupos (id_grupo)
)ENGINE=INNODB;

CREATE TABLE accesos(
id_acceso INT AUTO_INCREMENT NOT NULL,
id_opcion INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modif TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1)NOT NULL,
PRIMARY KEY(id_acceso),
FOREIGN KEY(id_opcion) REFERENCES opciones (id_opcion),
FOREIGN KEY(id_rol) REFERENCES roles (id_rol)
)ENGINE=INNODB;







INSERT INTO consultora VALUES (1,'IFNI', 'Barrio San Bernardo', 65810907, 'irenenava022@gmail.com', 'www.ifni.com','logo.png',now(),now(),1,1 );


INSERT INTO servicios VALUES (1,1,'Consolidación de estados financieros', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (2,1,'Trabajos de reconstrucción de contabilidades', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (3,1,'Planificación financiera', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (4,1, 'Análisis para la integración o consolidación de estados financieros', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (5,1,'Diagnóstico y documentación de procesos en el área económico-financiera', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (6,1,'Asesoramiento para mejoras de eficiencia', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (7,1,'Llenado de  formularios ', 'Impositiva',now(),now(),1,1 );
INSERT INTO servicios VALUES (8,1,'Regularización de balances', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (9,1,'Confección de estados financieros para servir de base en restructuraciones societarias', 'Contabilidad',now(),now(),1,1 );
INSERT INTO servicios VALUES (10,1,'Asesoramiento fiscal y gestion fiscal','Impositiva',now(),now(),1,1 );


INSERT INTO sucursales VALUES (1,1,'CITV', 'Barrio San Pedro', '78945612', 'citv@gmail.com','www.citv.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (2,1,'MHNC', 'Barrio San Marcos', '74545612', 'mhnc@gmail.com','www.mhnc.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (3,1,'SMNI', 'Barrio San Avaroa', '78785612', 'smni@gmail.com','www.smni.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (4,1,'ETAI', 'Barrio San Palmarcito', '79945612', 'etai@gmail.com','www.etai.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (5,1,'TGIL', 'Av. Belgrano', '71245612', 'tgil@gmail.com','www.tgil.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (6,1,'MEVI', 'Av. La Paz', '75645612', 'mevi@gmail.com','www.mevi.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (7,1,'VHAA', 'Av. Monte Rojas', '73345612', 'vhaa@gmail.com','www.vhaa.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (8,1,'ALRS', 'Barrio Lourdes', '75645612', 'alrs@gmail.com','www.alrs.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (9,1,'LMDL', 'Av. Las Americas', '79945612', 'alrs@gmail.com','www.lmdl.com',now(),now(),1,1 );
INSERT INTO sucursales VALUES (10,1,'JSTI', 'Barrio San Lucas', '78595612', 'jsti@gmail.com','www.jsti.com',now(),now(),1,1 );


INSERT INTO personal VALUES (1,1,'Sergio','Nava', 'Ibañez','10753920', 'Barrio San Bernardo', '72954568', '2021-05-12', '2022-03-30',5000,now(),now(),1,1);
INSERT INTO personal VALUES (2,1,'Erick','Aliga', 'Cazon','10723920', 'Barrio San Marcos', '78554568', '2021-05-18', '2022-03-30', 6000,now(),now(),1,1);
INSERT INTO personal VALUES (3,1,'Pedro','Arancibia', 'Dabila','78853920', 'Barrio San Lourdes', '78794568', '2021-05-20', '2022-03-30',7000,now(),now(),1,1);
INSERT INTO personal VALUES (4,1,'Mario','Rojas', 'Mariscal','10758520', 'Barrio San Mendez', '72951238', '2021-08-21', '2022-03-30',8000,now(),now(),1,1);
INSERT INTO personal VALUES (5,1,'Hugo','Marca', 'Ramos','10753000', 'Barrio San Arcos de Fe', '72985668', '2021-09-29', '2022-03-30',9000,now(),now(),1,1);
INSERT INTO personal VALUES (6,1,'Teresa','Acebedo', 'Ruis','10223920', 'Barrio Lindo', '72954588', '2021-09-05', '2022-03-30',10000,now(),now(),1,1);
INSERT INTO personal VALUES (7,1,'Adriana','Cruz', 'Bejarano','10203920', 'Av. La Paz', '71254568', '2021-09-12', '2022-03-30',4500,now(),now(),1,1);
INSERT INTO personal VALUES (8,1,'Laura','Zenteno', 'Gutierrez','10963920', 'Barrio 4 Dea Julio', '62954568', '2021-10-02', '2022-03-30',6500,now(),now(),1,1);
INSERT INTO personal VALUES (9,1,'Jose','Oropeza', 'Calderon','10029920', 'Av. Los Molles', '72951278', '2021-11-12', '2022-03-30',4800,now(),now(),1,1);
INSERT INTO personal VALUES (10,1,'Brayan','Paco', 'Ursagaste','2223920', 'Av. Las Americas', '78954568', '2021-11-22', '2022-03-30',7500,now(),now(),1,1);


INSERT INTO funciones VALUES (1,1,'Establecer la cuantía de los bienes, deudas y el patrimonio que posee la empresa', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (2,2,'Llevar el control de ingresos y egresos', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (3,3,'Determinar las utilidades o pérdidas obtenidas al finalizar el periodo contable', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (4,4,'Ofrecer información ordenada del estado económico y financiero de la empresa', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (5,5, 'Contar con información fiable ante terceros (clientes, inversionistas, bancos y gobierno)', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (6,6,'Contar con información fiable ante terceros (clientes, inversionistas, bancos y gobierno)', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (7,7,'Verificacion de estados financieros', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (8,8,'Llevar el control de ingresos y egresos', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (9,9,'Verificacion de estados financieros', 'Contabilidad',now(),now(),1,1 );
INSERT INTO funciones VALUES (10,10,'Verificacion de fiscal', 'Impositiva',now(),now(),1,1 );


INSERT INTO profesiones VALUES (1,'Auditor',now(),now(),1,1 );
INSERT INTO profesiones VALUES (2,'Contador',now(),now(),1,1 );
INSERT INTO profesiones VALUES (3,'Administrador de Empresas',now(),now(),1,1 );
INSERT INTO profesiones VALUES (4,'Economista',now(),now(),1,1 );
INSERT INTO profesiones VALUES (5,'Abogado',now(),now(),1,1 );
INSERT INTO profesiones VALUES (6,'Ingeniero en Sistemas',now(),now(),1,1 );
INSERT INTO profesiones VALUES (7,'Secretario',now(),now(),1,1 );
INSERT INTO profesiones VALUES (8,'Auditor',now(),now(),1,1 );
INSERT INTO profesiones VALUES (9,'Auditor',now(),now(),1,1 );
INSERT INTO profesiones VALUES (10,'Auditor',now(),now(),1,1 );


INSERT INTO personal_profesional VALUES (1,1,1,'2021-03-12',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (2,2,2,'2021-04-13',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (3,3,3,'2021-04-17',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (4,4,4,'2021-05-27',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (5,5,5,'2021-05-30',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (6,6,6,'2021-06-12',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (7,7,7,'2021-06-20',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (8,8,8,'2021-07-26',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (9,9,9,'2021-08-26',now(),now(),1,1 );
INSERT INTO personal_profesional VALUES (10,10,10,'2021-12-12',now(),now(),1,1 );


INSERT INTO trabajos VALUES (1,1,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (2,2,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (3,3,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (4,4,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (5,5,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (6,6,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (7,7,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (8,8,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (9,9,'2021-05-12', '2022-03-29',now(),now(),1,1);
INSERT INTO trabajos VALUES (10,10,'2021-05-12', '2022-03-29',now(),now(),1,1);


INSERT INTO clientes VALUES (1,1,'Ariel','Mendez Avaroa','10857890', 'Manaco S.A.', '1085789000',now(),now(),1,1);
INSERT INTO clientes VALUES (2,1,'Richard','Mercado Dabila','10227890', 'SOTO S.A.', '1022789000',now(),now(),1,1);
INSERT INTO clientes VALUES (3,1,'Alberto','Arancibia Zubelsa','2277890', 'Piolin S.A.', '227789000',now(),now(),1,1);
INSERT INTO clientes VALUES (4,1,'Carlos','Manrrique Aranaos','225790', 'Casasola S.A.', '22579000',now(),now(),1,1);
INSERT INTO clientes VALUES (5,1,'Raul','Belmonte Zadarau','10855890', 'Acuarela S.A.', '1085589000',now(),now(),1,1);
INSERT INTO clientes VALUES (6,1,'Irma','Antesolo Zubia','10925890', ' Lidita S.R.L.', '1092589000',now(),now(),1,1);
INSERT INTO clientes VALUES (7,1,'Maria','Zabedra Delgado','102227890', 'Zabedra S.A.', '102227890',now(),now(),1,1);
INSERT INTO clientes VALUES (8,1,'Pamela','Torrico Velasquez','10002890', ' PAMETV S.R.L.','1000289000',now(),now(),1,1);
INSERT INTO clientes VALUES (9,1,'Andrea','Rojas Chambi','10750012', 'Andaluz S.R.L.', '10750010',now(),now(),1,1);
INSERT INTO clientes VALUES (10,1,'Ramiro','Caceres Oropeza','2257890', 'Ramiro S.A.', '2257890',now(),now(),1,1);


INSERT INTO tipo_clientes VALUES (1,1,'Persona Natural',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (2,2,'Persona Juridica',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (3,3,'Persona Natural',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (4,4,'Persona Juridica',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (5,5,'Persona Natural',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (6,6,'Persona Juridica',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (7,7,'Persona Natural',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (8,8,'Persona Juridica',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (9,9,'Persona Natural',now(),now(),1,1 );
INSERT INTO tipo_clientes VALUES (10,10,'Persona Juridica',now(),now(),1,1 );


INSERT INTO personas VALUES (1,1,'10703518','Irene', 'Nava','Ibañez','65810907','Barrio San Bernardo','F',now(), now(), 1,1);
INSERT INTO personas VALUES (2,1,'10603518','Irma', 'carrasco','Quispe','65130907','Barrio Mendez Arcos','F',now(), now(), 1,1);
INSERT INTO personas VALUES (3,1,'10503518','Camila', 'Zabedra','Setins','65140907','Barrio Lourdes','F',now(), now(), 1,1);
INSERT INTO personas VALUES (4,1,'10803518','Aida', 'Zenteno','Abam','65150907','Barrio Mendez ','F',now(), now(), 1,1);
INSERT INTO personas VALUES (5,1,'10903518','Sandro', 'Ruis','Ibañez','65160907','Barrio Bernardo','M',now(), now(), 1,1);
INSERT INTO personas VALUES (6,1,'10703518','Raul', 'Navasa','Ibarra','65170907','Barrio Salamanca','M',now(), now(), 1,1);
INSERT INTO personas VALUES (7,1,'10103518','Zoe', 'Narvaes','Hilo','65818907','Barrio Mendez Rojas','F',now(), now(), 1,1);
INSERT INTO personas VALUES (8,1,'10203518','Alberto', 'Osorio','Ruiz','65190907','Barrio Florida','M',now(), now(), 1,1);
INSERT INTO personas VALUES (9,1,'10303518','Andres', 'Terrazas','Avendaño','65200907','Barrio Senac','M',now(), now(), 1,1);
INSERT INTO personas VALUES (10,1,'10403518','Carlos', 'Caseres','Heredia','65250907','Barrio Arcos','M',now(), now(), 1,1);


INSERT INTO usuarios VALUES (1,1,'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (2,2,'adm1','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (3,3,'adm2','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (4,4,'admin4','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (5,5,'admin5','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (6,6,'admin6','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (7,7,'admin7','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (8,8,'admin8','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (9,9,'admin9','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);
INSERT INTO usuarios VALUES (10,10,'admin10','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', now(), now(), 1,1);

INSERT INTO roles VALUES (1, 'ADMINISTRADOR', now(), now(),1,1);
INSERT INTO roles VALUES (2, 'PRUEBA1', now(), now(),1,1);
INSERT INTO roles VALUES (3, 'PRUEBA2', now(), now(),1,1);

INSERT INTO usuarios_roles VALUES (1,1,1, now(), now(),1,1);
INSERT INTO usuarios_roles VALUES (2,2,2, now(), now(),1,1);
INSERT INTO usuarios_roles VALUES (3,3,3, now(), now(),1,1);

INSERT INTO grupos VALUES (1,'HERRAMIENTAS', now(), now(), 1,1);
INSERT INTO grupos VALUES (2,'PARAMETROS', now(), now(), 1,1);
INSERT INTO grupos VALUES (3,'CONSULTORA', now(), now(), 1,1);
INSERT INTO grupos VALUES (4,'REPORTES', now(), now(), 1,1);

INSERT INTO opciones VALUES (1,1,'personas','../privada/personas/personas.php',10,now(), now(),1,1);
INSERT INTO opciones VALUES (2,1,'usuarios','../privada/usuarios/usuarios.php',20,now(), now(),1,1);
INSERT INTO opciones VALUES (3,1,'grupos','../privada/grupos/grupos.php',30,now(), now(),1,1);
INSERT INTO opciones VALUES (4,1,'roles','../privada/roles/roles.php',40,now(), now(),1,1);
INSERT INTO opciones VALUES (5,1,'usuarios_roles','../privada/usuarios_roles/usuarios_roles.php',50,now(), now(),1,1);
INSERT INTO opciones VALUES (6,1,'opciones','../privada/opciones/opciones.php',60,now(), now(),1,1);
INSERT INTO opciones VALUES (7,1,'accesos','../privada/accesos/accesos.php',70,now(), now(),1,1);

INSERT INTO opciones VALUES (8,2,'consultora','../privada/libreria/libreria.php',10,now(), now(),1,1);
INSERT INTO opciones VALUES (9,2,'sucursales','../privada/empleados/empleados.php',20,now(), now(),1,1);
INSERT INTO opciones VALUES (10,2,'servicios','../privada/servicios/servicios.php',30,now(), now(),1,1);
INSERT INTO opciones VALUES (11,2,'personal','../privada/personal/personal.php',50,now(), now(),1,1);
INSERT INTO opciones VALUES (12,2,'funciones','../privada/funciones/funciones.php',40,now(), now(),1,1);

INSERT INTO opciones VALUES (13,3,'personal_profesional','../privada/personal_profesional/personal_profesional.php',10,now(), now(),1,1);
INSERT INTO opciones VALUES (14,3,'profesiones','../privada/productos/productos.php',20,now(), now(),1,1);
INSERT INTO opciones VALUES (15,3,'trabajos','../privada/productos/productos.php',30,now(), now(),1,1);
INSERT INTO opciones VALUES (16,3,'tipo_clientes','../privada/tipo_clientes/tipo_clientes.php',40,now(), now(),1,1);
INSERT INTO opciones VALUES (17,3,'clientes','../privada/clientes/clientes.php',50,now(), now(),1,1);

INSERT INTO opciones  VALUES (18,4,'Rtp de personas por genero ',' ../privada/reportes/personas_usuarios1.php',10,now(), now(),1,1);
INSERT INTO opciones VALUES (19,4,'Ficha tecnica de personas ','../privada/reportes/personas_fechas.php',20,now(), now(),1,1);
INSERT INTO opciones  VALUES (20,4,'Rtp de personal por genero ',' ../privada/reportes/personal_usuarios1.php',30,now(), now(),1,1);
INSERT INTO opciones VALUES (21,4,'Ficha tecnica de personal ','../privada/reportes/personal_fechas.php',40,now(), now(),1,1);


INSERT INTO accesos  VALUES (1,1,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (2,2,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (3,3,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (4,4,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (5,5,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (6,6,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (7,7,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (8,8,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (9,9,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (10,10,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (11,11,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (12,12,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (13,13,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (14,14,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (15,15,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (16,16,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (17,17,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (18,18,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (19,19,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (20,20,1,now(), now(),1,1);
INSERT INTO accesos  VALUES (21,21,1,now(), now(),1,1);



INSERT INTO accesos  VALUES (22,8,2,now(), now(),1,1);
INSERT INTO accesos  VALUES (23,9,2,now(), now(),1,1);
INSERT INTO accesos  VALUES (24,10,2,now(), now(),1,1);
INSERT INTO accesos  VALUES (25,11,2,now(), now(),1,1);
INSERT INTO accesos  VALUES (26,12,2,now(), now(),1,1);
INSERT INTO accesos  VALUES (27,13,2,now(), now(),1,1);


INSERT INTO accesos  VALUES (28,10,3,now(), now(),1,1);
INSERT INTO accesos  VALUES (29,11,3,now(), now(),1,1);
INSERT INTO accesos  VALUES (30,12,3,now(), now(),1,1);
INSERT INTO accesos  VALUES (31,13,3,now(), now(),1,1);





