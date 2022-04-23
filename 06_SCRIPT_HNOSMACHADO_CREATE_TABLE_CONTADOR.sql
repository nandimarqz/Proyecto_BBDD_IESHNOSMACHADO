------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 2 CREACION TABLA CONTADOR - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE TABLE CONTADOR(
COD_CONTADOR NUMBER(4),
TIPO         VARCHAR2(20),
CONSUMO      NUMBER(7,2)
    
);

ALTER TABLE CONTADOR 
ADD CONSTRAINT CONTADOR_PK PRIMARY KEY(COD_CONTADOR);
ALTER TABLE CONTADOR
ADD CONSTRAINT CONTADOR_TIPO_CK CHECK(TIPO IN ('GAS', 'ELECTRICIDAD'));