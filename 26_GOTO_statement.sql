/* GOTO statement

A GOTO statement in PL/SQL programming language provides an unconditional jump from the GOTO to a labeled statement in the same subprogram.

NOTE: Use of GOTO statement is highly discouraged in any programming language because it makes difficult to trace the control flow of a program, making the program hard to understand and hard to modify. Any program that uses a GOTO can be rewritten so that it doesn't need the GOTO.
*/
set serveroutput on
DECLARE
	a number(2) := 10;
BEGIN
	<<loopstart>>
	-- while loop execution
	WHILE a < 20 LOOP
		dbms_output.put_line('value of a: ' || a);
		a := a + 1;
		IF a = 15 THEN
			a := a + 1;
			GOTO loopstart;
		END IF;
	END LOOP;
END;
/