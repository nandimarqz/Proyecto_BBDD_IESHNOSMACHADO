CREATE FUNCTION CALCULAR_CONTRATO (CONSUMO NUMBER, ESPECIALIDAD VARCHAR2) RETURN NUMBER
IS

    VALOR NUMBER;

BEGIN

    IF UPPER(ESPECIALIDAD) = 'ELECTRICIDAD'
    THEN

        VALOR:= CONSUMO * 0.23;

    ELSIF UPPER(ESPECIALIDAD) = 'GAS'
    THEN

        VALOR:= CONSUMO * 0.14;

    END IF;

    RETURN VALOR;
END CALCULAR_CONTRATO;
