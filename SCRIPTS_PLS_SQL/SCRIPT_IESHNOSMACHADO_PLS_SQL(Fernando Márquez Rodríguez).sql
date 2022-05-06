------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 3 SCRIPT PLSQL - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

DECLARE

CURSOR C1 IS SELECT * FROM CONTRATO;
DATOSCONTRATO C1%ROWTYPE;

CURSOR C2(CODCONTADOR contrato.cod_contador%TYPE)IS
SELECT * FROM CONTADOR
WHERE CODCONTADOR = COD_CONTADOR;
DATOSCONTADOR C2%ROWTYPE;

VALOR NUMBER;
BEGIN

    FOR DATOSCONTRATO IN C1 LOOP
    
        FOR DATOSCONTADOR IN C2(DATOSCONTRATO.COD_CONTADOR) LOOP
        
            VALOR:= CALCULAR_CONTRATO(DATOSCONTADOR.CONSUMO, DATOSCONTADOR.TIPO);
            
            DBMS_OUTPUT.PUT_LINE('El valor del contrato ' || DATOSCONTRATO.COD_CONTRATO || ' es de un valor de: '|| VALOR || 'â‚¬');
        
        END LOOP;
    
    END LOOP;

END;
