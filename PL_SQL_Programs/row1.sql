Declare
item test%rowtype;
BEGIN
   SELECT * into item FROM test where id=1;
   
     DBMS_OUTPUT.PUT_LINE('ID: '|| item.id || ' Name: ' || item.name || ' Grade: ' || item.grade);
   
END;
/