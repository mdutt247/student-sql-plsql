Declare
myid test.id%type;
myname test.name%type;
mygrade test.grade%type;
BEGIN
   SELECT * into myid,myname,mygrade FROM test where id=1;
   
     DBMS_OUTPUT.PUT_LINE('ID: '|| myid || ' Name: ' || myname || ' Grade: ' || mygrade);
   
END;
/