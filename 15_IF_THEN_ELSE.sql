/* IF THEN ELSE Statement

A sequence of IF-THEN statements can be followed by an optional sequence of ELSE statements, which execute when the condition is FALSE.
*/
set serveroutput on
DECLARE
	a number(3) := 100;
BEGIN
	-- check the boolean condition using if statements
	IF ( a<20 ) THEN
		-- if condition is true then print the following
		dbms_output.put_line('a is less than 20 ');
	ELSE
		dbms_output.put_line('a is not less than 20 ');
	END IF;
	dbms_output.put_line('value of a is : ' || a);
END;
/