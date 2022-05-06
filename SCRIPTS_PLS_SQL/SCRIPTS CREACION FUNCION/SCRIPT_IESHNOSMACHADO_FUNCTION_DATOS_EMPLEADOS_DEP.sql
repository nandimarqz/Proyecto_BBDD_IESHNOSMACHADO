------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 3 CREACIÓN FUNCIÓN DATOS_EMPLEADOS - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

CREATE FUNCTION EMAIL_EMPLEADOS(codEmpleado VARCHAR) RETURN VARCHAR
IS
    EMAIL VARCHAR(50);
    
BEGIN    
    IF EMAIL_EMPLEADOS IS NOT NULL
    THEN    
        CONTIENE_NUMERO := 1;        
    ELSE
        CONTIENE_NUMERO := 0;        
    END IF;    
    RETURN CONTIENE_NUMERO;
    
END COMPROBAR_DIRECCION;