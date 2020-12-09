set serveroutput on
declare
acct_balance number(11,2);
acct_no varchar2(6);
debit_amt number(4) := 2000;
min_bal constant number(3) := 500;
begin
acct_no:=&acct_no;
select balance into acct_balance from accounts where account_id = acct_no;
 --dbms_output.put_line(acct_balance);
 
 acct_balance := acct_balance - debit_amt;
 
 if acct_balance >= min_bal then
	update accounts set balance = acct_balance where account_id = acct_no;
 else
    dbms_output.put_line('Insufficient min balance');
 end if;
 
end;
/