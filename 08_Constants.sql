/* A constant holds a value that once declared, does not change in the program. A constant declaration specifies its name, data type, and value, and allocates storage for it. The declaration can also impose the NOT NULL constraint.

Declaring a Constant
A constant is declared using the CONSTANT keyword. It requires an initial value and does not allow that value to be changed.
*/
set serveroutput on
DECLARE
	-- constant declaration
	pi constant number := 3.141592654;
	-- other declarations
	radius number(5,2);
	dia number(5,2);
	circumference number(7,2);
	area number (10,2);
BEGIN
	-- processing
	radius := 9.5;
	dia := radius * 2;
	circumference := 2.0 * pi * radius;
	area := pi * radius * radius;
	-- output
	dbms_output.put_line('Radius: ' || radius);
	dbms_output.put_line('Diameter: ' || dia);
	dbms_output.put_line('Circumference: ' || circumference);
	dbms_output.put_line('Area: ' || area);
END;
/