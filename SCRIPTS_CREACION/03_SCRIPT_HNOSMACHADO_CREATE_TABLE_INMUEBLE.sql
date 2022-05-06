------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripci�n : Script CREACION TABLESPACE Y USUARIO - PROYECTO BBDD
-- Responsables : Fernando M�rquez Rodr�guez , Rafael Jos� Ossorio Lop�z, Victor Carrasco Artacho, Carlos Gonz�lez Ruiz, Gabriel Rodr�guez F�lix 
------------------------------------------------------

CREATE TABLE INMUEBLE(
COD_CATASTRAL         VARCHAR2(20),
DIRECCION             VARCHAR2(50)NOT NULL, 
CODPOSTAL             NUMBER(5)NOT NULL,
EFICIENCIA_ENERGETICA CHAR NOT NULL
   
);

ALTER TABLE INMUEBLE
ADD CONSTRAINT INMUEBLE_PK PRIMARY KEY(COD_CATASTRAL)
ADD CONSTRAINT INMUEBLE_UQ_DIRECCION UNIQUE (DIRECCION); 