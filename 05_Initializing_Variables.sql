/* Initializing Variables in PL/SQL
Whenever you declare a variable, PL/SQL assigns it a default value of NULL. If you want to initialize a variable with a value other than the NULL value, you can do so during the declaration, using either of the following:

The DEFAULT keyword

The assignment operator

You can also specify that a variable should not have a NULL value using the NOT NULL constraint. If you use the NOT NULL constraint, you must explicitly assign an initial value for that variable.

It is a good programming practice to initialize variables properly otherwise, sometimes program would produce unexpected result.
*/
set serveroutput on
DECLARE
	a integer := 10;
	b integer := 20;
	c integer;
	f real;
BEGIN
	c := a + b;
	dbms_output.put_line('Value of c: ' || c);
	f := 70.0/3.0;
	dbms_output.put_line('Value of f: ' || f);
END;
/