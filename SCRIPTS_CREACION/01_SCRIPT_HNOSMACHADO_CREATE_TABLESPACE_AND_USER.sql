------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripci�n : Script CREACION TABLESPACE Y USUARIO - PROYECTO BBDD
-- Responsables : Fernando M�rquez Rodr�guez , Rafael Jos� Ossorio Lop�z, Victor Carrasco Artacho, Carlos Gonz�lez Ruiz, Gabriel Rodr�guez F�lix 
------------------------------------------------------

/*CREAMOS EL TABLESPACE CON EL SYS PARA LUEGO PONERSELO AL USUARIO*/
CREATE TABLESPACE PROYECTO_BBDD_DUAL_DATOS DATAFILE
'F:\bbdd\Oracle\product\18.0.0\oradata\XE\proyecto_bbdd_dual_datos2.dbf'
SIZE 100M 
AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED;

alter session set "_ORACLE_SCRIPT"=true;

/*CREAMOS EL USUARIO CON EL TABLESPACE CREADO*/
CREATE USER ADMIN_GEST_ENERG IDENTIFIED BY ROOTROOT DEFAULT TABLESPACE PROYECTO_BBDD_DUAL_DATOS;

/*LE DAMOS LOS PERMISOS AL USUARIO*/
GRANT CREATE SESSION, ALTER SESSION, CREATE TABLE, CREATE SEQUENCE,
CREATE TABLESPACE, UNLIMITED TABLESPACE TO ADMIN_GEST_ENERG;
