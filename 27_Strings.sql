/* Strings

The string in PL/SQL is actually a sequence of characters with an optional size specification. The characters could be numeric, letters, blank, special characters or a combination of all. PL/SQL offers three kinds of strings:

Fixed-length strings: In such strings, programmers specify the length while declaring the string. The string is right-padded with spaces to the length so specified.

Variable-length strings: In such strings, a maximum length up to 32,767, for the string is specified and no padding takes place.

Character large objects (CLOBs): These are variable-length strings that can be up to 128 terabytes.

PL/SQL strings could be either variables or literals.
*/
set serveroutput on
DECLARE
	greetings varchar2(11) := 'hello world';
BEGIN
	dbms_output.put_line(UPPER(greetings));
	
	dbms_output.put_line(LOWER(greetings));
	
	dbms_output.put_line(INITCAP(greetings));
	
	/* retrieve the first character in teh string */
	dbms_output.put_line( SUBSTR (greetings, 1, 1));
	
	/* retrieve the last character in the string */
	dbms_output.put_line( SUBSTR (greetings, -1, 1));
	
	/* retrieve five characters, starting from the seventh position. */
	dbms_output.put_line( SUBSTR (greetings, 7, 5));
	
	/* retrieve the remainder of the string, starting from the second position. */
	dbms_output.put_line( SUBSTR (greetings, 2));
	
	/* find the location of the first "e" */
	dbms_output.put_line( INSTR (greetings, 'e'));
END;
/