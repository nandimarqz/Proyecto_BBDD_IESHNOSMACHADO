------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripci�n : Script 2 CREACION TABLA CONTADOR - PROYECTO BBDD
-- Responsables : Fernando M�rquez Rodr�guez , Rafael Jos� Ossorio Lop�z, Victor Carrasco Artacho, Carlos Gonz�lez Ruiz, Gabriel Rodr�guez F�lix 
------------------------------------------------------

CREATE TABLE CONTADOR(
COD_CONTADOR  NUMBER(4),
COD_CATASTRAL VARCHAR2(20),
TIPO          VARCHAR2(20),
CONSUMO       NUMBER(7,2)
    
);

ALTER TABLE CONTADOR 
ADD CONSTRAINT CONTADOR_PK PRIMARY KEY(COD_CONTADOR)
ADD CONSTRAINT CONTADOR_TIPO_CK CHECK(TIPO IN ('GAS', 'ELECTRICIDAD'))
ADD CONSTRAINT CONTADOR_FK_COD_CATASTRAL FOREIGN KEY (COD_CATASTRAL) REFERENCES INMUEBLE(COD_CATASTRAL);