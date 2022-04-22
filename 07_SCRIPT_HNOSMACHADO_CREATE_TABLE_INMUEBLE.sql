------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 2 CREACION TABLA INMUEBLE - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE TABLE INMUEBLE(
COD_CATASTRAL         VARCHAR2(20),
COD_CONTADOR          NUMBER(4),
DIRECCION             VARCHAR(50), 
CODPOSTAL             NUMBER(5),
EFICIENCIA_ENERGETICA CHAR
   
);

ALTER TABLE INMUEBLE
ADD CONSTRAINT INMUEBLE_PK PRIMARY KEY(COD_CATASTRAL)
ADD CONSTRAINT INMUEBLE_CONTADOR_FK FOREIGN KEY(COD_CONTADOR) REFERENCES CONTADOR(COD_CONTADOR); 