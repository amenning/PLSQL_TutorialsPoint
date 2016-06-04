/* IF and THEN Statement

It is the simplest form of IF control statement, frequently used in decision making and changing the control flow of the program execution.

The IF statement associates a condition with a sequence of statements enclosed by the keywords THEN and END IF. If the condition is TRUE, the statements get executed, and if the condition is FALSE or NULL, then the IF statement does nothing.
*/
set serveroutput on
DECLARE
	a number(2) := 10;
BEGIN
	a := 10;
	-- check the boolean condition using if statement
	IF( a < 20 ) THEN
		-- if condition is true then print the following
		dbms_output.put_line('a is less than 20 ');
	END IF;
		dbms_output.put_line('value of a is : ' || a);
END;
/