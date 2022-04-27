------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripcion : Script 2 CREACION TABLA DEPARTAMENTO - PROYECTO BBDD
-- Responsables : Fernando Marquez Rodriguez , Rafael Jose Ossorio Lopez, Victor Carrasco Artacho, Carlos Gonzalez Ruiz, Gabriel Rodriguez Felix 
------------------------------------------------------

CREATE TABLE EMPLEADO(
NIF                 VARCHAR(9),
CODEMPLEADO         NUMBER(6),
DIRECCION_DOMICILIO VARCHAR(50),
NUMERO_TELEFONO     NUMBER(9),
CODPOSTAL           NUMBER(5),
EMAIL               VARCHAR(50),
COD_DEPARTAMENTO    NUMBER(4)

);

ALTER TABLE EMPLEADO
ADD(CONSTRAINT EMPLEADO_PK_CODEMPLEADO PRIMARY KEY (CODEMPLEADO),
    CONSTRAINT EMPLEADO_FK_COD_DEPT FOREIGN KEY (COD_DEPARTAMENTO) REFERENCES DEPARTAMENTO(COD_DEPARTAMENTO));
    
CREATE SEQUENCE SEQ_COD_EMPLEADO
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999999
;