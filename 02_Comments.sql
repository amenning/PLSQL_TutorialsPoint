set serveroutput on
DECLARE
	-- variable declaration <- Example single-line comment
	message varchar2(20):= 'Hello, World!';
BEGIN
	/* Example multi-line comment
	 * PL/SQL executable statement(s)
	 */
	dbms_output.put_line(message);
END;
/