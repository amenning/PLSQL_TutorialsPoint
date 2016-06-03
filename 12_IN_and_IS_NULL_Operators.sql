/* IN and IS NULL Operators

The IN operator tests set membership. x IN (set) means that x is equal to any member of set.

The IS NULL operator returns the BOOLEAN value TRUE if its operand is NULL or FALSE if it is not NULL. Comparisons involving NULL values always yield NULL.
*/
set serveroutput on
DECLARE
	letter varchar2(1) := 'm';
BEGIN
	IF (letter in ('a', 'b', 'c')) THEN
		dbms_output.put_line('True');
	ELSE
		dbms_output.put_line('False');
	END IF;
	
	IF (letter in ('m', 'n', 'o')) THEN
		dbms_output.put_line('True');
	ELSE
		dbms_output.put_line('False');
	END IF;
	
	IF (letter is null) THEN
		dbms_output.put_line('True');
	ELSE
		dbms_output.put_line('False');
	END IF;
END;
/