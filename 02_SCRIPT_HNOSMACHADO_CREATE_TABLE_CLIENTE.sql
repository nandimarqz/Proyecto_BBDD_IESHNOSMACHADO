------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 2 CREACION TABLA CLIENTE - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE TABLE CLIENTE (
NIF                 VARCHAR2(9)NOT NULL ,
DIRECCION_DOMICILIO VARCHAR2(50),
NUMERO_TELEFONO     NUMBER(9) NOT NULL ,
CODPOSTAL           NUMBER(5),
EMAIL               VARCHAR2(50)
);

ALTER TABLE CLIENTE
ADD CONSTRAINT CLIENTE_PK_NIF PRIMARY KEY (NIF);



