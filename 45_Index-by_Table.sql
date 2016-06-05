/* Index-By TABLE

An index-by table (also called an associative array) is a set of key-value pairs. Each key is unique and is used to locate the corresponding value. The key can be either an integer or a string.

An index-by table is created using the following syntax. Here, we are creating an index-by table named table_name whose keys will be of subscript_type and associated values will be of element_type

TYPE type_name IS TABLE OF element_type [NOT NULL] INDEX BY subscript_type;

table_name type_name;
*/
set serveroutput on
DECLARE
	TYPE salary IS TABLE OF NUMBER INDEX BY VARCHAR2(20);
	salary_list salary;
	name VARCHAR2(20);
BEGIN
	-- adding elements to the table
	salary_list('Rajnish') := 62000;
	salary_list('Minakshi') := 75000;
	salary_list('Martin') := 100000;
	salary_list('James') := 78000;
	
	-- printing the table
	name := salary_list.FIRST;
	WHILE name IS NOT null LOOP
		dbms_output.put_line('Salary of ' || name || ' is ' || TO_CHAR(salary_list(name)));
		name := salary_list.NEXT(name);
	END LOOP;
END;
/