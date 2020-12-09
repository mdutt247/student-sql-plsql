SET SERVEROUTPUT ON

SET VERIFY OFF

DECLARE
    i      NUMBER;
    s      NUMBER := 0;
    r      NUMBER;
    temp   NUMBER;
    n1     NUMBER;
    n2     NUMBER;
BEGIN
    n1 := &n1;
    n2 := &n2;
    FOR i IN n1..n2 LOOP
        temp := i;
        s := 0;
        WHILE temp > 0 LOOP
            r := MOD(temp,10);
            s := s + power(r,3);
            temp := trunc(temp / 10);
        END LOOP;

        IF
            i = s
        THEN
            dbms_output.put_line(s);
        END IF;
    END LOOP;

END;
/