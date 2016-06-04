/* Arrays

Elements of a varray could also be a %ROWTYPE of any database table or %TYPE of any database table field. The following example illustrates the concept:
*/
set serveroutput on
DECLARE
	CURSOR c_customers is
	SELECT name FROM customers;
	type c_list is varray (6) of customers.name%type;
	name_list c_list := c_list();
	counter integer :=0;
BEGIN
	FOR n IN c_customers LOOP
		counter := counter + 1;
		name_list.extend;
		name_list(counter) := n.name;
		dbms_output.put_line('Customer(' ||counter ||'):'||name_list(counter));
	END LOOP;
END;
/