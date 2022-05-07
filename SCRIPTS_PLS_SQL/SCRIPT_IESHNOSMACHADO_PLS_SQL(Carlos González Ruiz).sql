------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 3 SCRIPT PLSQL - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

/*Este PL/SQL muestra el consumo total de cada cliente de todos sus contratos de las 3 formas siguientes:
    - Con solo contadores de tipo 'electricidad'.
    - Con solo contadores de tipo 'gas'.
    - Ambos tipos de contadores (total).
*/

DECLARE
    /*Muestra todos los clientes.*/
    CURSOR C_CLIENTES IS SELECT * FROM CLIENTE;
    
    /*Muestra una lista de contratos según el NIF de cliente pasado por parámetro.*/
    CURSOR C_CONTRATOS(NIF CLIENTE.NIF%TYPE) IS
       SELECT *
       FROM CONTRATO
       WHERE NIF_CLIENTE = NIF;
    
    /*Muestra un contador específico según el código de contador pasado por parámetro.*/
    CURSOR C_CONTADOR(CODIGO CONTADOR.COD_CONTADOR%TYPE) IS
       SELECT *
       FROM CONTADOR
       WHERE COD_CONTADOR = CODIGO;
    
    DATOS_C_CLIENTE C_CLIENTES%ROWTYPE;
    DATOS_C_CONTRATO C_CONTRATOS%ROWTYPE;
    DATOS_C_CONTADOR C_CONTADOR%ROWTYPE;
    
    CONSUMO_ELECTRICIDAD CONTADOR.CONSUMO%TYPE;
    CONSUMO_GAS CONTADOR.CONSUMO%TYPE;
BEGIN
    FOR DATOS_C_CLIENTE IN C_CLIENTES LOOP
        CONSUMO_ELECTRICIDAD := 0;
        CONSUMO_GAS := 0;
        
        FOR DATOS_C_CONTRATO IN C_CONTRATOS(DATOS_C_CLIENTE.NIF) LOOP
            
            OPEN C_CONTADOR(DATOS_C_CONTRATO.COD_CONTADOR);
            FETCH C_CONTADOR INTO DATOS_C_CONTADOR;
            CLOSE C_CONTADOR;
            
            IF UPPER(DATOS_C_CONTADOR.TIPO) = 'ELECTRICIDAD' THEN
                CONSUMO_ELECTRICIDAD := CONSUMO_ELECTRICIDAD + DATOS_C_CONTADOR.CONSUMO;
            ELSIF UPPER(DATOS_C_CONTADOR.TIPO) = 'GAS' THEN
                CONSUMO_GAS := CONSUMO_GAS + DATOS_C_CONTADOR.CONSUMO;
            END IF;
            
        END LOOP;
        
        DBMS_OUTPUT.PUT_LINE('Cliente: ' || DATOS_C_CLIENTE.NIF);
        DBMS_OUTPUT.PUT_LINE('  Consumo eléctrico: ' || CONSUMO_ELECTRICIDAD);
        DBMS_OUTPUT.PUT_LINE('  Consumo gas: ' || CONSUMO_GAS);
        DBMS_OUTPUT.PUT_LINE('  Consumo total: ' || (CONSUMO_GAS + CONSUMO_ELECTRICIDAD));
        
    END LOOP;
END;
