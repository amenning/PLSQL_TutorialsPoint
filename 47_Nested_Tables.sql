/* Nested TABLESPACE

A nested table is like a one-dimensional array with an arbitrary number of elements. However, a nested table differs from an array in the following aspects:

An array has a declared number of elements, but a nested table does not. The size of a nested table can increase dynamically.

An array is always dense, i.e., it always has consecutive subscripts. A nested array is dense initially, but it can become sparse when elements are deleted from it.
*/
set serveroutput on
DECLARE
	TYPE names_table IS TABLE OF VARCHAR2(10);
	TYPE grades IS TABLE OF INTEGER;
	
	names names_table;
	marks grades;
	total integer;
BEGIN
	names := names_table('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
	marks := grades(98,97,78,87,92);
	total := names.count;
	dbms_output.put_line('Total ' || total || ' Students');
	FOR i IN 1 .. total LOOP
		dbms_output.put_line('Student:'||names(i)||', Marks:'||marks(i));
	END LOOP;
END;
/