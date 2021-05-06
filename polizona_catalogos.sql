/* Database export results for db polizona_69 */

/* Preserve session variables */
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS=0;

/* Export data */

/* Table structure for abono */
CREATE TABLE `abono` (
  `idempresa` int(11) NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idabono` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `monto` float DEFAULT NULL,
  PRIMARY KEY (`idempresa`,`idasiento`,`idabono`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* data for Table abono */
INSERT INTO `abono` VALUES (1,1,1,2,3000);
INSERT INTO `abono` VALUES (69,1,1,1,500);
INSERT INTO `abono` VALUES (130,4,0,12234,200);

/* Table structure for asiento */
CREATE TABLE `asiento` (
  `idempresa` int(11) NOT NULL,
  `idasiento` int(11) NOT NULL,
  `fecasiento` datetime DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idempresa`,`idasiento`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/* data for Table asiento */
INSERT INTO `asiento` VALUES (1,1,"2020-11-09 00:00:00","3000");
INSERT INTO `asiento` VALUES (1,2,"2021-01-22 10:38:10","500");
INSERT INTO `asiento` VALUES (122,2,"2021-01-22 11:18:05","500");
INSERT INTO `asiento` VALUES (69,2,"2021-01-24 15:51:24","500");
INSERT INTO `asiento` VALUES (10,555,"2021-01-25 12:13:26","452");
INSERT INTO `asiento` VALUES (0,0,"2021-01-27 15:27:49","0");
INSERT INTO `asiento` VALUES (333,3,"2021-01-30 13:21:30","334");

/* Table structure for cargo */
CREATE TABLE `cargo` (
  `idempresa` int(11) NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idcargo` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idempresa`,`idasiento`,`idcargo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/* data for Table cargo */
INSERT INTO `cargo` VALUES (1,1,1,1,"3000");
INSERT INTO `cargo` VALUES (69,1,1,1,"500");
INSERT INTO `cargo` VALUES (100,3,5,123478,"400");
INSERT INTO `cargo` VALUES (10,20,30,40,"50");
INSERT INTO `cargo` VALUES (0,0,0,0,"0");

/* Table structure for cuenta */
CREATE TABLE `cuenta` (
  `idcuenta` int(11) NOT NULL,
  `nbcuenta` text,
  `idrubro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcuenta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* data for Table cuenta */
INSERT INTO `cuenta` VALUES (1,"bancos",1);
INSERT INTO `cuenta` VALUES (2,"capital_social",3);
INSERT INTO `cuenta` VALUES (3,"hipotecas",2);
INSERT INTO `cuenta` VALUES (4,"infraestructura",1);
INSERT INTO `cuenta` VALUES (6,"insumosB",1);
INSERT INTO `cuenta` VALUES (5,"insumosA",1);
INSERT INTO `cuenta` VALUES (7,"enproceso",1);
INSERT INTO `cuenta` VALUES (8,"mercancias",1);
INSERT INTO `cuenta` VALUES (9,"clientes",1);
INSERT INTO `cuenta` VALUES (10,"proveedores",2);
INSERT INTO `cuenta` VALUES (11,"utilidades",3);

/* Table structure for rubro */
CREATE TABLE `rubro` (
  `idrubro` int(11) NOT NULL,
  `nbrubro` text,
  PRIMARY KEY (`idrubro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* data for Table rubro */
INSERT INTO `rubro` VALUES (1,"activo");
INSERT INTO `rubro` VALUES (2,"pasivo");
INSERT INTO `rubro` VALUES (3,"capital");

/* Restore session variables to original values */
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
