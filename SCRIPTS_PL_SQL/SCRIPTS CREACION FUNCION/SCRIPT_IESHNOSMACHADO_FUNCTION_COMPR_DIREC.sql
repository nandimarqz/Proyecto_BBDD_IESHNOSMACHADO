------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 2 CREACIÓN FUNCIÓN COMPROBAR_DIRECCION - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------


CREATE FUNCTION COMPROBAR_DIRECCION(DIRECCION VARCHAR2) RETURN NUMBER
IS
    CONTIENE_NUMERO NUMBER(1);
BEGIN
    
    IF DIRECCION NOT LIKE '%S/N'
    THEN
    
        CONTIENE_NUMERO := 1;
        
    ELSE
        CONTIENE_NUMERO := 0;
        
    END IF;
    
    RETURN CONTIENE_NUMERO;
END COMPROBAR_DIRECCION;