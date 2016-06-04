/* Functions

A PL/SQL function is same as a procedure except that it returns a value. 

Creating a Function
A standalone function is created using the CREATE FUNCTION statement. The simplified syntax for the CREATE OR REPLACE PROCEDURE statement is as follows:

CREATE [OR REPLACE] FUNCTION function_name
[(parameter_name [IN | OUT | IN OUT] type [, ...])]
RETURN return_datatype
{IS | AS}
BEGIN
   < function_body >
END [function_name];
*/
set serveroutput on
DECLARE
	a number;
	b number;
	c number;
FUNCTION findMax(x IN number, y IN number)
RETURN number
IS
	z number;
BEGIN
	IF x > y THEN
		z:= x;
	ELSE
		z:= y;
	END IF;
	
	RETURN z;
END;
BEGIN
	a:= 23;
	b:= 45;
	
	c:= findMax(a, b);
	dbms_output.put_line(' Maximum of (23,45): ' || c);
END;
/