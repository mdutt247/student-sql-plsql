SET SERVEROUTPUT ON

SET VERIFY OFF

DECLARE
    n      NUMBER;
    s      NUMBER := 0;
    r      NUMBER;
    temp   NUMBER;
BEGIN
    n := &n;
    temp := n;
    WHILE temp > 0 LOOP
        r := MOD(temp,10);
        s := s + power(r,3);
        temp := trunc(temp / 10);
    END LOOP;

    IF
        n = s
    THEN
        dbms_output.put_line(chr(10)
        || n
        || ' is armstrong number');
    ELSE
        dbms_output.put_line(chr(10)
        || n
        || ' is not armstrong number');
    END IF;

END;
/