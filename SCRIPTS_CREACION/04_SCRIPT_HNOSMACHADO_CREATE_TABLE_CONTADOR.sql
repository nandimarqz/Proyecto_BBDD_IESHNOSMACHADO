------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script CREACION TABLESPACE Y USUARIO - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE TABLE CONTADOR(
COD_CONTADOR  NUMBER(4),
COD_CATASTRAL VARCHAR2(20),
TIPO          VARCHAR2(20) NOT NULL,
CONSUMO       NUMBER(7,2)
    
);

ALTER TABLE CONTADOR 
ADD CONSTRAINT CONTADOR_PK PRIMARY KEY(COD_CONTADOR, COD_CATASTRAL)
ADD CONSTRAINT CONTADOR_TIPO_CK CHECK(TIPO IN ('GAS', 'ELECTRICIDAD'))
ADD CONSTRAINT CONTADOR_FK_COD_CATASTRAL FOREIGN KEY (COD_CATASTRAL) REFERENCES INMUEBLE(COD_CATASTRAL);