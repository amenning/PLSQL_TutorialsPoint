/* Parameter Modes in PL/SQL Subprograms

IN
An IN parameter lets you pass a value to the subprogram. It is a read-only parameter. Inside the subprogram, an IN parameter acts like a constant. It cannot be assigned a value. You can pass a constant, literal, initialized variable, or expression as an IN parameter. You can also initialize it to a default value; however, in that case, it is omitted from the subprogram call. 

***It is the default mode of parameter passing. Parameters are passed by reference.***

OUT
An OUT parameter returns a value to the calling program. Inside the subprogram, an OUT parameter acts like a variable. You can change its value and reference the value after assigning it. 

***The actual parameter must be variable and it is passed by value.***
*/
set serveroutput on
DECLARE
	a number;
	b number;
	c number;
	
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS
BEGIN
	IF x < y THEN
		z:= x;
	ELSE
		z:= y;
	END IF;
END;

BEGIN
	a:= 23;
	b:= 45;
	findMin(a,b,c);
	dbms_output.put_line(' Minimum of (23, 45) : ' || c);
END;
/