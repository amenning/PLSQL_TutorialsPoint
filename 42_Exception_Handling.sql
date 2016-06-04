/* Exception Handling

An error condition during a program execution is called an exception in PL/SQL. PL/SQL supports programmers to catch such conditions using EXCEPTION block in the program and an appropriate action is taken against the error condition. There are two types of exceptions:

System-defined exceptions

User-defined exceptions
*/
set serveroutput on
DECLARE
	c_id customers.id%type := 8;
	c_name customers.name%type;
	c_addr customers.address%type;
BEGIN
	SELECT name, address INTO c_name, c_addr
	FROM customers
	WHERE id = c_id;
	
	dbms_output.put_line('Name: ' || c_name);
	dbms_output.put_line('Address: ' || c_addr);
EXCEPTION
	WHEN no_data_found THEN
		dbms_output.put_line('No such customer!');
	WHEN others THEN
		dbms_output.put_line('Error!');
END;
/