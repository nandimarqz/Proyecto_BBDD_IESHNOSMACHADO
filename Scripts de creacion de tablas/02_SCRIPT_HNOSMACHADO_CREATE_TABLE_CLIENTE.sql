------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripci�n : Script 2 CREACION TABLA CLIENTE - PROYECTO BBDD
-- Responsables : Fernando M�rquez Rodr�guez , Rafael Jos� Ossorio Lop�z, Victor Carrasco Artacho, Carlos Gonz�lez Ruiz, Gabriel Rodr�guez F�lix 
------------------------------------------------------

CREATE TABLE CLIENTE (
NIF                 VARCHAR2(9),
DIRECCION_DOMICILIO VARCHAR2(50),
NUMERO_TELEFONO     NUMBER(9),
CODPOSTAL           NUMBER(5),
EMAIL               VARCHAR2(50)
);

ALTER TABLE CLIENTE
ADD CONSTRAINT CLIENTE_PK_NIF PRIMARY KEY (NIF);



