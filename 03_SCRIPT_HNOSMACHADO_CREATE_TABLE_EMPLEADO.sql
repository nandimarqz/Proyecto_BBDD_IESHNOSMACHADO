------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 2 CREACION TABLA EMPLEADO - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
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