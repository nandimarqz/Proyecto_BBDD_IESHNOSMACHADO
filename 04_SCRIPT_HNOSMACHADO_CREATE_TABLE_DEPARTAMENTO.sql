------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripcion : Script 2 CREACION TABLA DEPARTAMENTO - PROYECTO BBDD
-- Responsables : Fernando Marquez Rodriguez , Rafael Jose Ossorio Lopez, Victor Carrasco Artacho, Carlos Gonzalez Ruiz, Gabriel Rodriguez Felix 
------------------------------------------------------

CREATE TABLE DEPARTAMENTO(

COD_DEPARTAMENTO NUMBER(4),
ESPECIALIDAD     VARCHAR2(50),
NEMPLEADOS       NUMBER(5)

);

ALTER TABLE DEPARTAMENTO
ADD CONSTRAINT DEPARTAMENTO_PK_COD_DEPT PRIMARY KEY (COD_DEPARTAMENTO);

CREATE SEQUENCE SEQ_COD_DEPARTAMENTO
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999
;