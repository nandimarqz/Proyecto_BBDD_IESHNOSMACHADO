------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script CREACION TABLESPACE Y USUARIO - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE TABLE INMUEBLE(
COD_CATASTRAL         VARCHAR2(20),
DIRECCION             VARCHAR(50)NOT NULL, 
CODPOSTAL             NUMBER(5)NOT NULL,
EFICIENCIA_ENERGETICA CHAR NOT NULL
   
);

ALTER TABLE INMUEBLE
ADD CONSTRAINT INMUEBLE_PK PRIMARY KEY(COD_CATASTRAL)
ADD CONSTRAINT INMUEBLE_UQ_DIRECCION UNIQUE (DIRECCION); 