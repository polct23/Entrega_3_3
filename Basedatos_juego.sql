Drop DATABASE IF EXISTS juego;
CREATE DATABASE juego;

USE juego;

CREATE TABLE jugadores(
		nombre VARCHAR(60),
		id INT,
		partidas_jugadas INT,
		partidas_ganadas INT,
		fecha_perfil INT
)	ENGINE = InnoDB;

CREATE TABLE partidas(
		jugador1 VARCHAR(60),
		jugador2 VARCHAR(60),
		Ganador  INT,
		fecha_partida INT,
		duracion INT,
		escenario_jugado INT
)	ENGINE = InnoDB;

CREATE TABLE datos_personales(
		id_jugador INT,
		contraseña VARCHAR(60)
)	ENGINE = InnoDB;
		
CREATE TABLE escenario(
		id_escenario INT,
		nombre_escenario VARCHAR(60),
		Musica INT,
		diseño INT
)	ENGINE = InnoDB;
	
INSERT INTO jugadores VALUES('Pol','0023','2','2','02102023');
INSERT INTO jugadores VALUES('Jaime','0027','3','1','01102023');	
INSERT INTO jugadores VALUES('Mireia','0015','4','1','25072022');

INSERT INTO partidas VALUES('Pol','Mireia','1','01102023','120','04');
INSERT INTO partidas VALUES('Pol','Jaime','1','02102023','75','02');
INSERT INTO partidas VALUES('Jaime','Mireia','2','01102023','320','07');

INSERT INTO datos_personales VALUES('0023','upcbcn');
INSERT INTO datos_personales VALUES('0027','domingoclase');
INSERT INTO datos_personales VALUES('0015','eetacctf');

INSERT INTO escenario VALUES('04','pisos_picados','014','3');
INSERT INTO escenario VALUES('02','laberinto_infernal','007','1');
INSERT INTO escenario VALUES('07','vistalegre','034','6');