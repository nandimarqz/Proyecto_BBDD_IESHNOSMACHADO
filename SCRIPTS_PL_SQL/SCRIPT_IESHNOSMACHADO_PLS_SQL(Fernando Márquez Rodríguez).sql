------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 1 CREACIÓN FUNCIÓN CALCULAR_CONTRATO - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríuez Félix 
------------------------------------------------------

/*Este PL_SQL muestra el valor en euros de todos los contratos activos llamando a la funcion calcular_contrato se obtiene el valor 
del contrato en funcion del tipo y el consumo.*/

DECLARE
--CREA UN CURSOR QUE RECOGA LOS CONTRATOS
CURSOR C1 IS SELECT * FROM CONTRATO;

DATOSCONTRATO C1%ROWTYPE;

--CREA UN CURSOR CON PARAMETRO QUE RECIBA EL CODIGO DEL CONTADOR DEL CONTRATO PARA SACAR LOS DATOS DE DICHO CONTADOR
CURSOR C2(CODCONTADOR contrato.cod_contador%TYPE)IS
SELECT * FROM CONTADOR
WHERE CODCONTADOR = COD_CONTADOR;

DATOSCONTADOR C2%ROWTYPE;

VALOR NUMBER;
BEGIN
    --RECORRE EL PRIMER CURSOR
    FOR DATOSCONTRATO IN C1 LOOP
        --RECORRE EL SEGUNDO CURSOR
        FOR DATOSCONTADOR IN C2(DATOSCONTRATO.COD_CONTADOR) LOOP
            --GUARDA EN UNA VARIABLE LA SALIDA DE LA FUNCION
            VALOR:= CALCULAR_CONTRATO(DATOSCONTADOR.CONSUMO, DATOSCONTADOR.TIPO);
            --MUESTRA POR CONSOLA
            DBMS_OUTPUT.PUT_LINE('El valor del contrato ' || DATOSCONTRATO.COD_CONTRATO || ' es de un valor de: '|| VALOR || '€');
        
        END LOOP;
    
    END LOOP;

END;
