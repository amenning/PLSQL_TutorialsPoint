/* Table-based RECORD

A PL/SQL record is a data structure that can hold data items of different kinds. Records consist of different fields, similar to a row of a database table.

For example, you want to keep track of your books in a library. You might want to track the following attributes about each book like, Title, Author, Subject, Book ID. A record containing a field for each of these items allows treating a BOOK as a logical unit and allows you to organize and represent its information in a better way.

PL/SQL can handle the following types of records:

Table-based

Cursor-based records

User-defined records

Table-Based Records
The %ROWTYPE attribute enables a programmer to create table-based and cursor-based records.
*/
set serveroutput on
DECLARE
	customer_rec customers%rowtype;
BEGIN
	SELECT * into customer_rec
	FROM customers
	WHERE id = 5;
	
	dbms_output.put_line('Customer ID: ' || customer_rec.id);
	dbms_output.put_line('Customer Name: ' || customer_rec.name);
	dbms_output.put_line('Customer Address: ' || customer_rec.address);
	dbms_output.put_line('Customer Salary: ' || customer_rec.salary);
END;
/