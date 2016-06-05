/* PL/SQL User-Defined Subtypes
A subtype is a subset of another data type, which is called its base type. A subtype has the same valid operations as its base type, but only a subset of its valid values.
*/
set serveroutput on
DECLARE
	SUBTYPE name IS char(20);
	SUBTYPE message IS varchar2(100);
	salutation name;
	greetings message;
BEGIN
	salutation := 'Reader ';
	greetings := 'Welcome to the World of PL/SQL';
	dbms_output.put_line('Hello ' || salutation || greetings);
END;
/