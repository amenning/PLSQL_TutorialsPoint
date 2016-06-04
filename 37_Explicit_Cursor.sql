/* Cursors

Oracle creates a memory area, known as context area, for processing an SQL statement, which contains all information needed for processing the statement, for example, number of rows processed, etc.

A cursor is a pointer to this context area. PL/SQL controls the context area through a cursor. A cursor holds the rows (one or more) returned by a SQL statement. The set of rows the cursor holds is referred to as the active set.

You can name a cursor so that it could be referred to in a program to fetch and process the rows returned by the SQL statement, one at a time. There are two types of cursors:

Implicit cursors

Explicit cursors

Explicit Cursors
Explicit cursors are programmer defined cursors for gaining more control over the context area. An explicit cursor should be defined in the declaration section of the PL/SQL Block. It is created on a SELECT Statement which returns more than one row.

The syntax for creating an explicit cursor is :

CURSOR cursor_name IS select_statement;
Working with an explicit cursor involves four steps:

Declaring the cursor for initializing in the memory

Opening the cursor for allocating memory

Fetching the cursor for retrieving data

Closing the cursor to release allocated memory
*/
set serveroutput on
DECLARE
	c_id customers.id%type;
	c_name customers.name%type;
	c_addr customers.address%type;
	CURSOR c_customers is
		SELECT id, name, address FROM customers;
BEGIN
	OPEN c_customers;
	LOOP
		FETCH c_customers into c_id, c_name, c_addr;
		EXIT WHEN c_customers%notfound;
		dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
	END LOOP;
	CLOSE c_customers;
END;
/