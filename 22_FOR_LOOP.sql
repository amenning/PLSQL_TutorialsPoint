/* FOR LOOP

A FOR LOOP is a repetition control structure that allows you to efficiently write a loop that needs to execute a specific number of times.

Following are some special characteristics of PL/SQL for loop:

The initial_value and final_value of the loop variable or counter can be literals, variables, or expressions but must evaluate to numbers. Otherwise, PL/SQL raises the predefined exception VALUE_ERROR.

The initial_value need not to be 1; however, the loop counter increment (or decrement) must be 1.

PL/SQL allows determine the loop range dynamically at run time.
*/
set serveroutput on
DECLARE
	a number(2);
BEGIN
	FOR a in 10 .. 20 LOOP
		dbms_output.put_line('value of a: ' || a);
	END LOOP;
END;
/