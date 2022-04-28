------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripci�n : Script 2 CREACION TABLA INMUEBLE - PROYECTO BBDD
-- Responsables : Fernando M�rquez Rodr�guez , Rafael Jos� Ossorio Lop�z, Victor Carrasco Artacho, Carlos Gonz�lez Ruiz, Gabriel Rodr�guez F�lix 
------------------------------------------------------

CREATE TABLE INMUEBLE(
COD_CATASTRAL         VARCHAR2(20),
DIRECCION             VARCHAR(50), 
CODPOSTAL             NUMBER(5),
EFICIENCIA_ENERGETICA CHAR
   
);

ALTER TABLE INMUEBLE
ADD CONSTRAINT INMUEBLE_PK PRIMARY KEY(COD_CATASTRAL); 