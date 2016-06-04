/* Cursor-based RECORD

A PL/SQL record is a data structure that can hold data items of different kinds. Records consist of different fields, similar to a row of a database table.

For example, you want to keep track of your books in a library. You might want to track the following attributes about each book like, Title, Author, Subject, Book ID. A record containing a field for each of these items allows treating a BOOK as a logical unit and allows you to organize and represent its information in a better way.

PL/SQL can handle the following types of records:

Table-based

Cursor-based records

User-defined records
*/
set serveroutput on
DECLARE
	CURSOR customer_cur is
		SELECT id, name, address
		FROM customers;
	customer_rec customer_cur%rowtype;
BEGIN
	OPEN customer_cur;
	LOOP
		FETCH customer_cur into customer_rec;
		EXIT WHEN customer_cur%notfound;
		dbms_output.put_line(customer_rec.id || ' ' || customer_rec.name);
	END LOOP;
END;
/