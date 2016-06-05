/* Nested TABLESPACE

A nested table is like a one-dimensional array with an arbitrary number of elements. However, a nested table differs from an array in the following aspects:

An array has a declared number of elements, but a nested table does not. The size of a nested table can increase dynamically.

An array is always dense, i.e., it always has consecutive subscripts. A nested array is dense initially, but it can become sparse when elements are deleted from it.
*/
set serveroutput on
DECLARE
	CURSOR c_customers IS
		SELECT name FROM customers;
		
	TYPE c_list IS TABLE of customers.name%type;
	name_list c_list := c_list();
	counter integer :=0;
BEGIN
	FOR n IN c_customers LOOP
		counter := counter +1;
		name_list.extend;
		name_list(counter) := n.name;
		dbms_output.put_line('Customer('||counter||'):'||name_list(counter));
	END LOOP;
END;
/