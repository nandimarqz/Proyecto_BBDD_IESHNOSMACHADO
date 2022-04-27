------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripcion : Script 2 CREACION TABLA DEPARTAMENTO - PROYECTO BBDD
-- Responsables : Fernando Marquez Rodriguez , Rafael Jose Ossorio Lopez, Victor Carrasco Artacho, Carlos Gonzalez Ruiz, Gabriel Rodriguez Felix 
------------------------------------------------------

CREATE TABLE LIDERA(
CODEMPLEADO       NUMBER(6),
COD_DEPARTAMENTO  NUMBER(4)

);

ALTER TABLE LIDERA
ADD (CONSTRAINT LIDERA_FK_CODEMPLEADO FOREIGN KEY (CODEMPLEADO) REFERENCES EMPLEADO(CODEMPLEADO),
    CONSTRAINT LIDERA_FK_COD_DEPT FOREIGN KEY (COD_DEPARTAMENTO) REFERENCES DEPARTAMENTO(COD_DEPARTAMENTO));