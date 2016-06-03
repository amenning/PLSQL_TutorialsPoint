/* BETWEEN Operators

The BETWEEN operator tests whether a value lies in a specified range. x BETWEEN a AND b means that x >= a and x <= b.
*/
set serveroutput on
DECLARE
	x number(2) := 10;
BEGIN
	IF (x between 5 and 20) THEN
		dbms_output.put_line('True');
	ELSE
		dbms_output.put_line('False');
	END IF;
	
	IF (x BETWEEN 5 AND 10) THEN
		dbms_output.put_line('True');
	ELSE
		dbms_output.put_line('False');
	END IF;
	
	IF (x BETWEEN 11 and 20) THEN
		dbms_output.put_line('True');
	ELSE
		dbms_output.put_line('False');
	END IF;
END;
/