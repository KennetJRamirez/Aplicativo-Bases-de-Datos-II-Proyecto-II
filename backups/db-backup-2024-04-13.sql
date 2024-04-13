

CREATE TABLE `carretera` (
  `ID_CARRETERA` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `ID_REGION` int(11) DEFAULT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CARRETERA`),
  KEY `ID_REGION` (`ID_REGION`),
  KEY `ID_CATEGORIA` (`ID_CATEGORIA`),
  CONSTRAINT `carretera_ibfk_1` FOREIGN KEY (`ID_REGION`) REFERENCES `catalogo_region` (`ID_REGION`),
  CONSTRAINT `carretera_ibfk_2` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `catalogo_categoria` (`ID_CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO carretera VALUES("1","Carretera 1","1","1");
INSERT INTO carretera VALUES("2","Carretera 2","1","2");
INSERT INTO carretera VALUES("3","Carretera 3","1","3");
INSERT INTO carretera VALUES("4","Carretera 4","1","4");
INSERT INTO carretera VALUES("5","Carretera 5","1","1");
INSERT INTO carretera VALUES("6","Carretera 6","2","2");
INSERT INTO carretera VALUES("7","Carretera 7","2","3");
INSERT INTO carretera VALUES("8","Carretera 8","2","4");
INSERT INTO carretera VALUES("9","Carretera 9","2","1");
INSERT INTO carretera VALUES("10","Carretera 10","2","2");
INSERT INTO carretera VALUES("11","Carretera 11","3","3");
INSERT INTO carretera VALUES("12","Carretera 12","3","4");
INSERT INTO carretera VALUES("13","Carretera 13","3","1");
INSERT INTO carretera VALUES("14","Carretera 14","3","2");
INSERT INTO carretera VALUES("15","Carretera 15","3","3");
INSERT INTO carretera VALUES("16","Carretera 16","4","4");
INSERT INTO carretera VALUES("17","Carretera 17","4","1");
INSERT INTO carretera VALUES("18","Carretera 18","4","2");
INSERT INTO carretera VALUES("19","Carretera 19","4","3");
INSERT INTO carretera VALUES("20","Carretera 20","4","4");
INSERT INTO carretera VALUES("21","Carretera 21","1","1");
INSERT INTO carretera VALUES("22","Carretera 22","1","2");
INSERT INTO carretera VALUES("23","Carretera 23","1","3");
INSERT INTO carretera VALUES("24","Carretera 24","1","4");
INSERT INTO carretera VALUES("25","Carretera 25","1","1");
INSERT INTO carretera VALUES("26","Carretera 26","2","2");
INSERT INTO carretera VALUES("27","Carretera 27","2","3");
INSERT INTO carretera VALUES("28","Carretera 28","2","4");
INSERT INTO carretera VALUES("29","Carretera 29","2","1");
INSERT INTO carretera VALUES("30","Carretera 30","2","2");
INSERT INTO carretera VALUES("31","Carretera 31","3","3");
INSERT INTO carretera VALUES("32","Carretera 32","3","4");
INSERT INTO carretera VALUES("33","Carretera 33","3","1");
INSERT INTO carretera VALUES("34","Carretera 34","3","2");
INSERT INTO carretera VALUES("35","Carretera 35","3","3");
INSERT INTO carretera VALUES("36","Carretera 36","4","4");
INSERT INTO carretera VALUES("37","Carretera 37","4","1");
INSERT INTO carretera VALUES("38","Carretera 38","4","2");
INSERT INTO carretera VALUES("39","Carretera 39","4","3");
INSERT INTO carretera VALUES("40","Carretera 40","4","4");
INSERT INTO carretera VALUES("41","Carretera 41","1","1");
INSERT INTO carretera VALUES("42","Carretera 42","1","2");
INSERT INTO carretera VALUES("43","Carretera 43","1","3");
INSERT INTO carretera VALUES("44","Carretera 44","1","4");
INSERT INTO carretera VALUES("45","Carretera 45","1","1");
INSERT INTO carretera VALUES("46","Carretera 46","2","2");
INSERT INTO carretera VALUES("47","Carretera 47","2","3");
INSERT INTO carretera VALUES("48","Carretera 48","2","4");
INSERT INTO carretera VALUES("49","Carretera 49","2","1");
INSERT INTO carretera VALUES("50","Carretera 50","2","2");





CREATE TABLE `carretera_comunidad` (
  `ID_CARRETERA_COMUNIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CARRETERA` int(11) DEFAULT NULL,
  `ID_COMUNIDAD` int(11) DEFAULT NULL,
  `KM` float DEFAULT NULL,
  PRIMARY KEY (`ID_CARRETERA_COMUNIDAD`),
  KEY `ID_CARRETERA` (`ID_CARRETERA`),
  KEY `ID_COMUNIDAD` (`ID_COMUNIDAD`),
  CONSTRAINT `carretera_comunidad_ibfk_1` FOREIGN KEY (`ID_CARRETERA`) REFERENCES `carretera` (`ID_CARRETERA`),
  CONSTRAINT `carretera_comunidad_ibfk_2` FOREIGN KEY (`ID_COMUNIDAD`) REFERENCES `comunidad` (`ID_COMUNIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO carretera_comunidad VALUES("1","1","1","10");
INSERT INTO carretera_comunidad VALUES("2","2","2","11");
INSERT INTO carretera_comunidad VALUES("3","3","3","12");
INSERT INTO carretera_comunidad VALUES("4","4","4","10");
INSERT INTO carretera_comunidad VALUES("5","5","5","11");
INSERT INTO carretera_comunidad VALUES("6","6","6","12");
INSERT INTO carretera_comunidad VALUES("7","7","7","12");
INSERT INTO carretera_comunidad VALUES("8","8","8","11");
INSERT INTO carretera_comunidad VALUES("9","9","9","10");
INSERT INTO carretera_comunidad VALUES("10","10","10","9");
INSERT INTO carretera_comunidad VALUES("11","11","11","10");
INSERT INTO carretera_comunidad VALUES("12","12","12","11");
INSERT INTO carretera_comunidad VALUES("13","13","13","12");
INSERT INTO carretera_comunidad VALUES("14","14","14","12");
INSERT INTO carretera_comunidad VALUES("15","15","15","11");
INSERT INTO carretera_comunidad VALUES("16","16","16","10");
INSERT INTO carretera_comunidad VALUES("17","17","17","10");
INSERT INTO carretera_comunidad VALUES("18","18","18","11");
INSERT INTO carretera_comunidad VALUES("19","19","19","12");
INSERT INTO carretera_comunidad VALUES("20","20","20","11");





CREATE TABLE `catalogo_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO catalogo_categoria VALUES("1","Local");
INSERT INTO catalogo_categoria VALUES("2","Comercial");
INSERT INTO catalogo_categoria VALUES("3","Regional");
INSERT INTO catalogo_categoria VALUES("4","Nacional");





CREATE TABLE `catalogo_region` (
  `ID_REGION` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_REGION`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO catalogo_region VALUES("1","Norte");
INSERT INTO catalogo_region VALUES("2","Sur");
INSERT INTO catalogo_region VALUES("3","Este");
INSERT INTO catalogo_region VALUES("4","Oeste");





CREATE TABLE `comunidad` (
  `ID_COMUNIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_COMUNIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO comunidad VALUES("1","Comunidad 1");
INSERT INTO comunidad VALUES("2","Comunidad 2");
INSERT INTO comunidad VALUES("3","Comunidad 3");
INSERT INTO comunidad VALUES("4","Comunidad 4");
INSERT INTO comunidad VALUES("5","Comunidad 5");
INSERT INTO comunidad VALUES("6","Comunidad 6");
INSERT INTO comunidad VALUES("7","Comunidad 7");
INSERT INTO comunidad VALUES("8","Comunidad 8");
INSERT INTO comunidad VALUES("9","Comunidad 9");
INSERT INTO comunidad VALUES("10","Comunidad 10");
INSERT INTO comunidad VALUES("11","Comunidad 11");
INSERT INTO comunidad VALUES("12","Comunidad 12");
INSERT INTO comunidad VALUES("13","Comunidad 13");
INSERT INTO comunidad VALUES("14","Comunidad 14");
INSERT INTO comunidad VALUES("15","Comunidad 15");
INSERT INTO comunidad VALUES("16","Comunidad 16");
INSERT INTO comunidad VALUES("17","Comunidad 17");
INSERT INTO comunidad VALUES("18","Comunidad 18");
INSERT INTO comunidad VALUES("19","Comunidad 19");
INSERT INTO comunidad VALUES("20","Comunidad 20");





CREATE TABLE `tramo` (
  `ID_TRAMO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `ID_CARRETERA` int(11) DEFAULT NULL,
  `ES_ASFALTADA` tinyint(1) DEFAULT NULL,
  `KM_ASFALTADA` float DEFAULT NULL,
  `KM_NO_ASFALTADO` float DEFAULT NULL,
  PRIMARY KEY (`ID_TRAMO`),
  KEY `ID_CARRETERA` (`ID_CARRETERA`),
  CONSTRAINT `tramo_ibfk_1` FOREIGN KEY (`ID_CARRETERA`) REFERENCES `carretera` (`ID_CARRETERA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tramo VALUES("1","Tramo 1","1","1","5.2","2.5");
INSERT INTO tramo VALUES("2","Tramo 2","1","0","10.3","3.2");
INSERT INTO tramo VALUES("3","Tramo 3","1","1","7.5","4.7");
INSERT INTO tramo VALUES("4","Tramo 4","1","0","2.5","3.6");
INSERT INTO tramo VALUES("5","Tramo 5","1","1","3.6","3.5");
INSERT INTO tramo VALUES("6","Tramo 6","2","0","7.9","3.4");
INSERT INTO tramo VALUES("7","Tramo 7","2","1","8","3.3");
INSERT INTO tramo VALUES("8","Tramo 8","2","0","2.6","3.2");
INSERT INTO tramo VALUES("9","Tramo 9","2","1","3.5","2.3");
INSERT INTO tramo VALUES("10","Tramo 10","2","0","4.1","2.5");
INSERT INTO tramo VALUES("11","Tramo 11","3","1","2.5","6.1");
INSERT INTO tramo VALUES("12","Tramo 12","3","0","3.6","2");
INSERT INTO tramo VALUES("13","Tramo 13","3","1","7.8","3");
INSERT INTO tramo VALUES("14","Tramo 14","3","0","8","4");
INSERT INTO tramo VALUES("15","Tramo 15","3","1","9","2");
INSERT INTO tramo VALUES("16","Tramo 16","4","0","10","3");
INSERT INTO tramo VALUES("17","Tramo 17","4","1","10.5","2.5");
INSERT INTO tramo VALUES("18","Tramo 18","4","0","12","1.6");
INSERT INTO tramo VALUES("19","Tramo 19","4","1","11","2.3");
INSERT INTO tramo VALUES("20","Tramo 20","4","0","3.6","3.5");
INSERT INTO tramo VALUES("21","Tramo 21","5","1","7.8","3.4");
INSERT INTO tramo VALUES("22","Tramo 22","5","0","8.9","3.3");
INSERT INTO tramo VALUES("23","Tramo 23","5","1","9","3.2");
INSERT INTO tramo VALUES("24","Tramo 24","5","0","5.6","2.3");
INSERT INTO tramo VALUES("25","Tramo 25","5","1","5","2.5");
INSERT INTO tramo VALUES("26","Tramo 26","6","0","4.5","6.1");
INSERT INTO tramo VALUES("27","Tramo 27","6","1","3","2");
INSERT INTO tramo VALUES("28","Tramo 28","6","0","6","3");
INSERT INTO tramo VALUES("29","Tramo 29","6","1","2","4");
INSERT INTO tramo VALUES("30","Tramo 30","6","0","1.9","2");
INSERT INTO tramo VALUES("31","Tramo 31","7","1","7.8","3");
INSERT INTO tramo VALUES("32","Tramo 32","7","0","6","2.5");
INSERT INTO tramo VALUES("33","Tramo 33","8","1","6.5","3.2");
INSERT INTO tramo VALUES("34","Tramo 34","8","0","5.3","4.7");
INSERT INTO tramo VALUES("35","Tramo 35","9","1","5.6","3.6");
INSERT INTO tramo VALUES("36","Tramo 36","9","0","8","3.5");
INSERT INTO tramo VALUES("37","Tramo 37","9","1","9.1","3.4");
INSERT INTO tramo VALUES("38","Tramo 38","9","0","10","3.3");
INSERT INTO tramo VALUES("39","Tramo 39","10","1","11","3.2");
INSERT INTO tramo VALUES("40","Tramo 40","10","0","12.5","2.3");
INSERT INTO tramo VALUES("41","Tramo 41","10","1","12","2.5");
INSERT INTO tramo VALUES("42","Tramo 42","10","0","2.6","6.1");
INSERT INTO tramo VALUES("43","Tramo 43","11","1","3.8","2");
INSERT INTO tramo VALUES("44","Tramo 44","11","0","2.7","3");
INSERT INTO tramo VALUES("45","Tramo 45","12","1","8.2","4");
INSERT INTO tramo VALUES("46","Tramo 46","13","0","5.3","2");
INSERT INTO tramo VALUES("47","Tramo 47","14","1","4.9","3");
INSERT INTO tramo VALUES("48","Tramo 48","14","0","6.5","2.5");
INSERT INTO tramo VALUES("49","Tramo 49","15","1","4.8","1.6");
INSERT INTO tramo VALUES("50","Tramo 50","16","0","8.4","2.3");





CREATE TABLE `tramo_comunidad` (
  `ID_TRAMO_COMUNIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `ID_TRAMO` int(11) DEFAULT NULL,
  `ID_COMUNIDAD` int(11) DEFAULT NULL,
  `KM_INICIO` float DEFAULT NULL,
  `KM_FIN` float DEFAULT NULL,
  PRIMARY KEY (`ID_TRAMO_COMUNIDAD`),
  KEY `ID_TRAMO` (`ID_TRAMO`),
  KEY `ID_COMUNIDAD` (`ID_COMUNIDAD`),
  CONSTRAINT `tramo_comunidad_ibfk_1` FOREIGN KEY (`ID_TRAMO`) REFERENCES `tramo` (`ID_TRAMO`),
  CONSTRAINT `tramo_comunidad_ibfk_2` FOREIGN KEY (`ID_COMUNIDAD`) REFERENCES `comunidad` (`ID_COMUNIDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tramo_comunidad VALUES("1","1","1","2","4");
INSERT INTO tramo_comunidad VALUES("2","1","1","3","5");
INSERT INTO tramo_comunidad VALUES("3","1","2","6","8");
INSERT INTO tramo_comunidad VALUES("4","2","2","9","11");
INSERT INTO tramo_comunidad VALUES("5","2","3","10","11");
INSERT INTO tramo_comunidad VALUES("6","2","3","5","6");
INSERT INTO tramo_comunidad VALUES("7","3","4","7","8");
INSERT INTO tramo_comunidad VALUES("8","3","4","8","10");
INSERT INTO tramo_comunidad VALUES("9","3","5","9","11");
INSERT INTO tramo_comunidad VALUES("10","4","5","6","7");
INSERT INTO tramo_comunidad VALUES("11","4","6","7","9");
INSERT INTO tramo_comunidad VALUES("12","4","6","8","10");
INSERT INTO tramo_comunidad VALUES("13","5","7","9","11");
INSERT INTO tramo_comunidad VALUES("14","5","7","5","7");
INSERT INTO tramo_comunidad VALUES("15","5","8","6","9");
INSERT INTO tramo_comunidad VALUES("16","6","8","2","5");
INSERT INTO tramo_comunidad VALUES("17","6","9","3","5");
INSERT INTO tramo_comunidad VALUES("18","6","9","5","7");
INSERT INTO tramo_comunidad VALUES("19","7","10","7","9");
INSERT INTO tramo_comunidad VALUES("20","7","10","4","6");
INSERT INTO tramo_comunidad VALUES("21","7","11","1","3");
INSERT INTO tramo_comunidad VALUES("22","8","11","2","4");
INSERT INTO tramo_comunidad VALUES("23","8","12","5","6");
INSERT INTO tramo_comunidad VALUES("24","8","12","8","9");
INSERT INTO tramo_comunidad VALUES("25","9","13","9","11");
INSERT INTO tramo_comunidad VALUES("26","9","13","6","9");
INSERT INTO tramo_comunidad VALUES("27","9","14","3","5");
INSERT INTO tramo_comunidad VALUES("28","10","14","4","6");
INSERT INTO tramo_comunidad VALUES("29","10","15","2","5");
INSERT INTO tramo_comunidad VALUES("30","10","15","5","7");
INSERT INTO tramo_comunidad VALUES("31","11","16","6","9");
INSERT INTO tramo_comunidad VALUES("32","11","16","7","9");
INSERT INTO tramo_comunidad VALUES("33","11","17","9","11");
INSERT INTO tramo_comunidad VALUES("34","12","17","8","12");
INSERT INTO tramo_comunidad VALUES("35","12","18","7","9");
INSERT INTO tramo_comunidad VALUES("36","12","18","8","10");
INSERT INTO tramo_comunidad VALUES("37","13","19","8","10");
INSERT INTO tramo_comunidad VALUES("38","13","19","5","6");
INSERT INTO tramo_comunidad VALUES("39","13","20","6","7");
INSERT INTO tramo_comunidad VALUES("40","13","20","6","7");



