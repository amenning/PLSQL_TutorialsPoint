/* Index-By TABLE

An index-by table (also called an associative array) is a set of key-value pairs. Each key is unique and is used to locate the corresponding value. The key can be either an integer or a string.

An index-by table is created using the following syntax. Here, we are creating an index-by table named table_name whose keys will be of subscript_type and associated values will be of element_type

TYPE type_name IS TABLE OF element_type [NOT NULL] INDEX BY subscript_type;

table_name type_name;
*/
set serveroutput on
DECLARE
	CURSOR c_customers is
		select name from customers;
		
	TYPE c_list IS TABLE OF customers.name%type INDEX BY binary_integer;
	name_list c_list;
	counter integer := 0;
BEGIN
	FOR n IN c_customers LOOP
		counter := counter +1;
		name_list(counter) := n.name;
		dbms_output.put_line('Customer(' || counter || '):'||name_list(counter));
	END LOOP;
END;
/