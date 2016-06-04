/* User-defined RECORD

A PL/SQL record is a data structure that can hold data items of different kinds. Records consist of different fields, similar to a row of a database table.

For example, you want to keep track of your books in a library. You might want to track the following attributes about each book like, Title, Author, Subject, Book ID. A record containing a field for each of these items allows treating a BOOK as a logical unit and allows you to organize and represent its information in a better way.

PL/SQL can handle the following types of records:

Table-based

Cursor-based records

User-defined records

PL/SQL provides a user-defined record type that allows you to define different record structures. Records consist of different fields. Suppose you want to keep track of your books in a library. You might want to track the following attributes about each book:

Title

Author

Subject

Book ID
*/
set serveroutput on
DECLARE
	type books is record
		(title varchar(50),
		author varchar(50),
		subject varchar(100),
		book_id number);
	book1 books;
	book2 books;
BEGIN
	-- Book 1 specification
	book1.title := 'C Programming';
	book1.author := 'Nuha Ali ';
	book1.subject := 'C Programming Tutorial';
	book1.book_id := 6495407;
	
	-- Book 2 specification
	book2.title := 'Telecom Billing';
	book2.author := 'Zara Ali';
	book2.subject := 'Telecom Billing Tutorial';
	book2.book_id := 6495700;
	
	-- Print book 1 record
	dbms_output.put_line('Book 1 title : ' || book1.title);
	dbms_output.put_line('Book 1 author : ' || book1.author);
	dbms_output.put_line('Book 1 subject : ' || book1.subject);
	dbms_output.put_line('Book 1 book_id : ' || book1.book_id);
	
	-- Print book 2 record
	dbms_output.put_line('Book 2 title : ' || book2.title);
	dbms_output.put_line('Book 2 author : ' || book2.author);
	dbms_output.put_line('Book 2 subject : ' || book2.subject);
	dbms_output.put_line('Book 2 book_id : ' || book2.book_id);
END;
/