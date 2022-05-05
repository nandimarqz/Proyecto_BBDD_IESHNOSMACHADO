------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script CREACION TABLESPACE Y USUARIO - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

ALTER TABLE EMPLEADO
ADD CONSTRAINT EMPLEADO_FK_COD_DEPT FOREIGN KEY (COD_DEPARTAMENTO) REFERENCES DEPARTAMENTO(COD_DEPARTAMENTO) ;