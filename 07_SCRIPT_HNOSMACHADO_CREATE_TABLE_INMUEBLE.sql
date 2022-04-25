------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripcion : Script 2 CREACION TABLA DEPARTAMENTO - PROYECTO BBDD
-- Responsables : Fernando Marquez Rodriguez , Rafael Jose Ossorio Lopez, Victor Carrasco Artacho, Carlos Gonzalez Ruiz, Gabriel Rodriguez Felix 
------------------------------------------------------

CREATE TABLE INMUEBLE(
COD_CATASTRAL         VARCHAR2(20),
DIRECCION             VARCHAR(50), 
CODPOSTAL             NUMBER(5),
EFICIENCIA_ENERGETICA CHAR
   
);

ALTER TABLE INMUEBLE
ADD CONSTRAINT INMUEBLE_PK PRIMARY KEY(COD_CATASTRAL);