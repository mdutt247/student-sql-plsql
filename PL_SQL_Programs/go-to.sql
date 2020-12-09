declare
num number(2);
begin
num:=2;
if num = 1 then
goto asha;
else
goto madhav;
end if;
<<madhav>>
dbms_output.put_line('in madhav go to');
<<asha>>
dbms_output.put_line('in asha go to');
dbms_output.put_line('in asha go to');


end;
/