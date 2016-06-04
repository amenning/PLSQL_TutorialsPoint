/* Arrays

PL/SQL programming language provides a data structure called the VARRAY, which can store a fixed-size sequential collection of elements of the same type. A varray is used to store an ordered collection of data, but it is often more useful to think of an array as a collection of variables of the same type.

Please note:

In oracle environment, the starting index for varrays is always 1.

You can initialize the varray elements using the constructor method of the varray type, which has the same name as the varray.

Varrays are one-dimensional arrays.

A varray is automatically NULL when it is declared and must be initialized before its elements can be referenced.
*/
set serveroutput on
DECLARE
	type namesarray IS VARRAY(5) OF VARCHAR2(10);
	type grades IS VARRAY(5) OF INTEGER;
	names namesarray;
	marks grades;
	total integer;
BEGIN
	names  := namesarray('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
	marks := grades(98, 97, 78, 87, 92);
	total := names.count;
	dbms_output.put_line('Total ' || total || ' Students');
	FOR i in 1 .. total LOOP
		dbms_output.put_line('Student: ' || names(i) || ' Marks: ' || marks(i));
	END LOOP;
END;
/