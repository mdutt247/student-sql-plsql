/*
>desc acct_mstr
 Name                                      Null?    Type
 ----------------------------------------- -------- -------------

 ACCT_NO                                            VARCHAR2(7)
 CURBAL                                             NUMBER(11,2)
 
>select * from acct_mstr;
ACCT_NO     CURBAL
------- ----------
123          10000
124           3600
*/
SET SERVEROUTPUT ON;
Declare
	Cur_Bal Number (11,2);
	Acct_No1 varchar2 (7);
	Fine number(4) := 100;
	Min_Bal constant number (7,2) := 5000.00;
Begin 
Acct_No1 := &AcctNo;
Select Curbal INTO Cur_Bal From Acct_MStr Where Acct_No = Acct_No1;
If Cur_Bal < Min_Bal Then
	Update Acct_Mstr SET Curbal = Curbal - Fine
		Where Acct_No = Acct_No1;
	dbms_output.put_line('===============================');
	dbms_output.put_line('Balance cut for account no: ' || Acct_No1);
	dbms_output.put_line('===============================');
ELSE
	dbms_output.put_line('=====================================');
	dbms_output.put_line('Balance sufficent for account no: ' || Acct_No1);
	dbms_output.put_line('=====================================');
End If;
End;
/