Declare
myid number(5);
myname varchar2(20);
mygrade char(1);
BEGIN
   SELECT * into myid,myname,mygrade FROM test where id=1;
   
     DBMS_OUTPUT.PUT_LINE('ID: '|| myid || ' Name: ' || myname || ' Grade: ' || mygrade);
   
END;
/