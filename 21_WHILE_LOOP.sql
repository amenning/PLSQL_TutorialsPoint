/* WHILE LOOP

A WHILE LOOP statement in PL/SQL programming language repeatedly executes a target statement as long as a given condition is true.
*/
set serveroutput on
DECLARE
	a number(2) := 10;
BEGIN
	WHILE a < 20 LOOP
		dbms_output.put_line('value of a: ' || a);
		a := a + 1;
	END LOOP;
END;
/