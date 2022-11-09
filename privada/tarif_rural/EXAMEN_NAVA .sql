-------------------------------------------------------------------------------------------------------------
/*NAVA*/
/*Utilizando la siguiente base de datos realizar:
*Crear un grupo en su menu con el nombre EVA TERCER BIMESTRE
*Crear una opción dentro del grupo creado que se llame Rpt x TarifRural utilizando a la empresa en el select
*Crear una opción que se llame Ficha Técnica TarifRural, en la que va tener un buscador (nombre de la empresa-select, lugar, tarifa_carrera)
*/

CREATE TABLE empresa(
  id_empresa INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(25) NOT NULL,
  direccion VARCHAR(50) NOT NULL,
  telefono1 VARCHAR(20),
  telefono2 VARCHAR(20),
  PRIMARY KEY(id_empresa)
)ENGINE=INNODB;


CREATE TABLE tarif_rural(
  id_tar_rur INT NOT NULL AUTO_INCREMENT,
  id_empresa INT NOT NULL,
  lugar VARCHAR(50) NOT NULL,
  tarifa_carrera FLOAT NOT NULL,
  PRIMARY KEY(id_tar_rur),
  FOREIGN KEY(id_empresa) REFERENCES empresa(id_empresa)
)ENGINE=INNODB;


INSERT INTO empresa VALUES(1, 'RADIO MOVIL"ANDALUZ"','aVENIDA CASTELLANOS FRENTE A DIPROVE','66-63010','66-33010');

INSERT INTO tarif_rural VALUES(1, 1, "LA PINTADA", 25);
INSERT INTO tarif_rural VALUES(2, 1, "CRUCE AL VALLE", 30);
INSERT INTO tarif_rural VALUES(3, 1, "ANCON", 35);
INSERT INTO tarif_rural VALUES(4, 1, "CONCEPCION", 45);
INSERT INTO tarif_rural VALUES(5, 1, "LA COMPAÑIA", 50);
INSERT INTO tarif_rural VALUES(6, 1, "SALADILLO", 55);
INSERT INTO tarif_rural VALUES(7, 1, "RUJERO", 65);
INSERT INTO tarif_rural VALUES(8, 1, "CHOCLOCA", 80);
INSERT INTO tarif_rural VALUES(9, 1, "JUNTAS", 100);
INSERT INTO tarif_rural VALUES(10, 1, "SANTA ANA LA VIEJA", 35);

