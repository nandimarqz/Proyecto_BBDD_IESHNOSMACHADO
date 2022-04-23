------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 2 CREACION TABLA LIDERA - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE TABLE LIDERA(
CODEMPLEADO       NUMBER(6),
COD_DEPARTAMENTO  NUMBER(4)

);

ALTER TABLE LIDERA
ADD (CONSTRAINT LIDERA_FK_CODEMPLEADO FOREIGN KEY (CODEMPLEADO) REFERENCES EMPLEADO(CODEMPLEADO),
    CONSTRAINT LIDERA_FK_COD_DEPT FOREIGN KEY (COD_DEPARTAMENTO) REFERENCES DEPARTAMENTO(COD_DEPARTAMENTO));