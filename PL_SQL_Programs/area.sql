declare
	r number(2) := &radious;
	area number(7,2);
	pi constant number(3,2) := 3.14;
begin
	area := pi * r * r;
	dbms_output.put_line('Area is: ' || area);
end;
/