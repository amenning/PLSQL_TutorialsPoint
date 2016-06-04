/* Parameter Modes in PL/SQL Subprograms

IN OUT
An IN OUT parameter passes an initial value to a subprogram and returns an updated value to the caller. It can be assigned a value and its value can be read.

The actual parameter corresponding to an IN OUT formal parameter must be a variable, not a constant or an expression. Formal parameter must be assigned a value. 

***Actual parameter is passed by value.***
*/
set serveroutput on
DECLARE
	a number;
PROCEDURE squareNum(x IN OUT number) IS
BEGIN
	x := x * x;
END;
BEGIN
	a:= 23;
	squareNum(a);
	dbms_output.put_line(' Square of (23): ' || a);
END;
/