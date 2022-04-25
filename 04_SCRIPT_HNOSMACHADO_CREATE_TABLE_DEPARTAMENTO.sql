------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 2 CREACION TABLA DEPARTAMENTO - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE TABLE DEPARTAMENTO(

COD_DEPARTAMENTO NUMBER(4),
ESPECIALIDAD     VARCHAR(50),
NEMPLEADOS       NUMBER(5),
JEFEDEPT         NUMBER(6)

);

ALTER TABLE DEPARTAMENTO
ADD CONSTRAINT DEPARTAMENTO_PK_COD_DEPT PRIMARY KEY (COD_DEPARTAMENTO);

CREATE SEQUENCE SEQ_COD_DEPARTAMENTO
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999
;