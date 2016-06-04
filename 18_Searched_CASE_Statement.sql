/* Searched CASE Statement

The searched CASE statement has no selector and its WHEN clauses contain search conditions that give Boolean values.
*/
set serveroutput on
DECLARE
	grade char(1) := 'B';
BEGIN
	CASE
		when grade = 'A' then dbms_output.put_line('Excellent');
		when grade = 'B' then dbms_output.put_line('Very good');
		when grade = 'C' then dbms_output.put_line('Well done');
		when grade = 'D' then dbms_output.put_line('You passed');
		when grade = 'F' then dbms_output.put_line('Better try again');
		else dbms_output.put_line('No such grade');
	END CASE;
END;
/