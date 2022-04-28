------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripcion : Script 2 CREACION TABLA DEPARTAMENTO - PROYECTO BBDD
-- Responsables : Fernando Marquez Rodriguez , Rafael Jose Ossorio Lopez, Victor Carrasco Artacho, Carlos Gonzalez Ruiz, Gabriel Rodriguez Felix 
------------------------------------------------------

CREATE TABLE CONTADOR(
COD_CONTADOR NUMBER(4),
TIPO         VARCHAR2(20),
CONSUMO      NUMBER(7,2),
COD_CATASTRAL VARCHAR2(20)
);

ALTER TABLE CONTADOR
ADD CONSTRAINT CONTADOR_PK PRIMARY KEY(COD_CONTADOR)
ADD CONSTRAINT CONTADOR_TIPO_CK CHECK(TIPO IN ('GAS', 'ELECTRICIDAD'))
ADD CONSTRAINT CONTADOR_FK_COD_CATASTRAL FOREIGN KEY (COD_CATASTRAL) REFERENCES INMUEBLE (COD_CATASTRAL);
