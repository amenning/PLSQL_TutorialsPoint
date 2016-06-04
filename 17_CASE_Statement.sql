/* CASE Statement

Like the IF statement, the CASE statement selects one sequence of statements to execute. However, to select the sequence, the CASE statement uses a selector rather than multiple Boolean expressions. A selector is an expression, whose value is used to select one of several alternatives.

Note that there is no fall through like other languages, such as Java.
*/
set serveroutput on
DECLARE
	grade char(1) := 'A';
BEGIN
	CASE grade
		when 'A' then dbms_output.put_line('Excellent');
		when 'B' then dbms_output.put_line('Very good');
		when 'C' then dbms_output.put_line('Well done');
		when 'D' then dbms_output.put_line('You passed');
		when 'F' then dbms_output.put_line('Better try again');
		else dbms_output.put_line('No such grade');
	END CASE;
END;
/