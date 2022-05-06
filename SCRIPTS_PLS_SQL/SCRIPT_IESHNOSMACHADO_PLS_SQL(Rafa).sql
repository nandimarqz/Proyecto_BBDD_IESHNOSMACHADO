------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 3 SCRIPT PLSQL - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

/*Se mostrará la información de contacto (teléfono y email) de cada uno de los empleados asignados al departamento
encargado de gestionar el contrato de cada uno de los clientes, para facilitar a los encargados tener esa 
información al alcance de una manera rápida.*/

DECLARE
    CURSOR C_CLIENTE IS
        SELECT NIF
        FROM CLIENTE;
        
    CURSOR C_CONTRATO(DATO_NIF CLIENTE.NIF%TYPE) IS
        SELECT COD_DEPARTAMENTO
        FROM CONTRATO
        WHERE NIF_CLIENTE = DATO_NIF;
        
    CURSOR C_EMPLEADO(DATO_CODDEP EMPLEADO.COD_DEPARTAMENTO%TYPE) IS
        SELECT CODEMPLEADO, NUMERO_TELEFONO, EMAIL
        FROM EMPLEADO
        WHERE COD_DEPARTAMENTO = DATO_CODDEP;
        
    DATOS_C_CLIENTE C_CLIENTE%ROWTYPE;
    DATOS_C_CONTRATO C_CONTRATO%ROWTYPE;
    DATOS_C_EMPLEADO C_EMPLEADO%ROWTYPE;
    
BEGIN
    OPEN C_CLIENTE;
    LOOP
        FETCH C_CLIENTE INTO DATOS_C_CLIENTE;
        EXIT WHEN C_CLIENTE%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('NIF Cliente: ' || DATOS_C_CLIENTE.NIF);
        OPEN C_CONTRATO(DATOS_C_CLIENTE.NIF);
        LOOP
            FETCH C_CONTRATO INTO DATOS_C_CONTRATO;
            EXIT WHEN C_CONTRATO%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('');
            DBMS_OUTPUT.PUT_LINE(CHR(9)|| 'Datos de contacto de los empleados del departamento ' || DATOS_C_CONTRATO.COD_DEPARTAMENTO);
            OPEN C_EMPLEADO(DATOS_C_CONTRATO.COD_DEPARTAMENTO);
                LOOP
                    FETCH C_EMPLEADO INTO DATOS_C_EMPLEADO;
                    EXIT WHEN C_EMPLEADO%NOTFOUND;  
                    DBMS_OUTPUT.PUT_LINE(CHR(9)|| CHR(9)|| '+ Empleado número ' || DATOS_C_EMPLEADO.CODEMPLEADO);
                    DBMS_OUTPUT.PUT_LINE(CHR(9)|| CHR(9)|| CHR(9)|| '- Teléfono: '||DATOS_C_EMPLEADO.EMAIL);
                    DBMS_OUTPUT.PUT_LINE(CHR(9)|| CHR(9)|| CHR(9)|| '- Email: '||DATOS_C_EMPLEADO.EMAIL);
                    DBMS_OUTPUT.PUT_LINE('');
                END LOOP;
                DBMS_OUTPUT.PUT_LINE('');
            CLOSE C_EMPLEADO;
        END LOOP;
        CLOSE C_CONTRATO;
    END LOOP;
    CLOSE C_CLIENTE;
END;