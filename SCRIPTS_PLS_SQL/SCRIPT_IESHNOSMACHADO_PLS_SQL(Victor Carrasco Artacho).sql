------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 3 SCRIPT PLSQL - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríguez Félix 
------------------------------------------------------

/*Los departamentos requieren de una consulta de los datos de los clientes que tengan
algun contrato a su nombre y que sea del tipo del mismo departamento que lo consulta,
de forma adicional se desea saber si el contador de ese mismo contrato pertenece al inmueble
del domicilio del cliente.*/

DECLARE
    /*Muestra a los clientes que han firmado un 
    contrato con el departamento de electricidad*/
    CURSOR C1 IS
    SELECT * FROM CLIENTE
    WHERE CLIENTE.NIF IN (
        SELECT NIF_CLIENTE FROM CONTRATO
        WHERE COD_DEPARTAMENTO IN (
            SELECT COD_DEPARTAMENTO FROM DEPARTAMENTO
            /*Cambiando "Gas" por "Electricidad" se mostrarian los clientes de los
            otros tipos de contrataciones*/
            WHERE ESPECIALIDAD LIKE 'Gas'
        )
    );
    
    /*Muestra los codigos de contadores asociado al cliente pasado
    por parametro, por el contrato*/
    CURSOR C2 (COD_CLIENTE CLIENTE.NIF%TYPE)IS
    SELECT COD_CONTADOR FROM CONTRATO
    WHERE nif_cliente = COD_CLIENTE;
    
    ID_CONTADOR CONTADOR.COD_CONTADOR%TYPE;
    ID_CATASTRAL CONTADOR.COD_CATASTRAL%TYPE;
    DIRECCION_INMUEBLE inmueble.direccion%TYPE;
BEGIN
    FOR D1 IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE(D1.NIF || ', ' || D1.DIRECCION_DOMICILIO || ', ' || 
            D1.NUMERO_TELEFONO || ', ' || D1.EMAIL);
        OPEN C2 (D1.NIF);
        LOOP
            FETCH C2 INTO ID_CONTADOR;
            EXIT WHEN C2%NOTFOUND;
                /*Muestra el codigo catastral del cod contrato correspondiente*/
                SELECT COD_CATASTRAL
                INTO ID_CATASTRAL
                FROM CONTADOR
                WHERE cod_contador = ID_CONTADOR;
            
                /*Muestra la direccion del inmueble del cod catastral pertinente*/
                SELECT DIRECCION
                INTO DIRECCION_INMUEBLE
                FROM INMUEBLE
                WHERE INMUEBLE.cod_catastral = ID_CATASTRAL;
            IF DIRECCION_INMUEBLE LIKE D1.DIRECCION_DOMICILIO THEN
                DBMS_OUTPUT.PUT_LINE('  + El contador con codigo: ' || ID_CONTADOR|| ' esta en el domicilio del cliente');
            ELSE
                DBMS_OUTPUT.PUT_LINE('  + El contador con codigo: ' || ID_CONTADOR|| ' no esta en el domicilio del cliente');
            END IF;
        END LOOP;
        CLOSE C2;
    END LOOP;
END;