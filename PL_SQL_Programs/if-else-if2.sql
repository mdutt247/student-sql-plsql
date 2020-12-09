set verify off
set serveroutput on

declare

v_employee_id number(4);
v_salary number(5);
v_commission number(5);

begin

select employee_id, salary into v_employee_id, v_salary from employee
where employee_id=&empid;

if v_salary <= 1000 then
v_commission := 10/100 * v_salary;
end if;

if v_salary between 1001 and 5000 then
v_commission := 20/100 * v_salary;
end if;

if v_salary > 5000 then
v_commission := 30/100 * v_salary;
end if;

if v_commission > 5000 then
dbms_output.put_line('Employee id: ' || v_employee_id || '  Commission: ' || v_commission);
else
dbms_output.put_line('Employee id: ' || v_employee_id || '  Does NOT have commission more than 5000, Commision is: ' || v_commission);
end if;

end;
/