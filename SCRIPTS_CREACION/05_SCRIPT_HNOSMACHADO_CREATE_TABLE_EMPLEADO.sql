------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripci�n : Script 2 CREACION TABLA EMPLEADO - PROYECTO BBDD
-- Responsables : Fernando M�rquez Rodr�guez , Rafael Jos� Ossorio Lop�z, Victor Carrasco Artacho, Carlos Gonz�lez Ruiz, Gabriel Rodr�guez F�lix 
------------------------------------------------------

CREATE TABLE EMPLEADO(
NIF                 VARCHAR(9) NOT NULL,
CODEMPLEADO         NUMBER(6),
DIRECCION_DOMICILIO VARCHAR(50),
NUMERO_TELEFONO     NUMBER(9) NOT NULL,
CODPOSTAL           NUMBER(5),
EMAIL               VARCHAR(50),
COD_DEPARTAMENTO    NUMBER(4)

);

ALTER TABLE EMPLEADO
ADD CONSTRAINT EMPLEADO_PK_CODEMPLEADO PRIMARY KEY (CODEMPLEADO);
    
CREATE SEQUENCE SEQ_COD_EMPLEADO
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999999
;