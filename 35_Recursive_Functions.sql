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
	num number;
	factorial number;
	
FUNCTION fact(x number)
RETURN number
IS
	f number;
BEGIN
	IF x=0 THEN
		f := 1;
	ELSE
		f := x*fact(x-1);
	END IF;
RETURN f;
END;

BEGIN
	num:=6;
	factorial := fact(num);
	dbms_output.put_line(' Factorial ' || num || ' is ' || factorial);
END;
/