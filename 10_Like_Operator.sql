/* LIKE Operators

The LIKE operator compares a character, string, or CLOB value to a pattern and returns TRUE if the value matches the pattern and FALSE if it does not.
*/
set serveroutput on
DECLARE
PROCEDURE compare (value varchar2, pattern varchar2) is
BEGIN
	IF value LIKE pattern THEN
		dbms_output.put_line('True');
	ELSE
		dbms_output.put_line('False');
	END IF;
END;

BEGIN
	compare('Zara Ali', 'Z%A_i');
	compare('Nuha Ali', 'Z%A_i');
END;
/