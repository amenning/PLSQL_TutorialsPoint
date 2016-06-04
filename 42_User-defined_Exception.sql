/* User-defined Exceptions

PL/SQL allows you to define your own exceptions according to the need of your program. A user-defined exception must be declared and then raised explicitly, using either a RAISE statement or the procedure DBMS_STANDARD.RAISE_APPLICATION_ERROR.
*/
set serveroutput on
DECLARE
	c_id customers.id%type := &cc_id;
	c_name customers.name%type;
	c_addr customers.address%type;
	
	-- user defined exception
	ex_invalid_id EXCEPTION;
BEGIN
	IF c_id <= 0 THEN
		RAISE ex_invalid_id;
	ELSE
		SELECT name, address INTO c_name, c_addr
		FROM customers
		WHERE id = c_id;
		
		dbms_output.put_line('Name: '|| c_name);
		dbms_output.put_line('Address: ' || c_addr);
	END IF;
EXCEPTION
	WHEN ex_invalid_id THEN
		dbms_output.put_line('ID must be greater than zero!');
	WHEN no_data_found THEN
		dbms_output.put_line('No such customer!');
	WHEN others THEN
		dbms_output.put_line('Error!');
END;
/