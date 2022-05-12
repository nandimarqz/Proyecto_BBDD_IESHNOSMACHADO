------------------------------------------------------
-- Autor       : IES HERMANOS MACHADO
-- Descripción : Script 1 CREACIÓN FUNCIÓN CALCULAR_CONTRATO - PROYECTO BBDD
-- Responsables : Fernando Márquez Rodríguez , Rafael José Ossorio Lopéz, Victor Carrasco Artacho, Carlos González Ruiz, Gabriel Rodríuez Félix 
------------------------------------------------------

/*Esta funcion devuelve un numero que es el valor en euros del contrato en funcion del tipo/especialidad y el consumo que se le pasen por parametro*/

CREATE OR REPLACE FUNCTION CALCULAR_CONTRATO (CONSUMO NUMBER, ESPECIALIDAD VARCHAR2) RETURN NUMBER
IS

    VALOR NUMBER;

BEGIN
    --COMPRUEBA LA ESPECIALIDAD SI ES ELECTRICIDAD MULTIPLICA EL CONSUMO POR 0.23, SI ES 
    --GAS MULTIPLICA EL CONSUMO POR 0.14
    IF UPPER(ESPECIALIDAD) = 'ELECTRICIDAD'
    THEN

        VALOR:= CONSUMO * 0.23;

    ELSIF UPPER(ESPECIALIDAD) = 'GAS'
    THEN

        VALOR:= CONSUMO * 0.14;

    END IF;
    --DEVUELVE EL VALOR
    RETURN VALOR;
END CALCULAR_CONTRATO;
