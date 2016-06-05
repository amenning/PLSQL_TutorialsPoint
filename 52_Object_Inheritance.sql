/* Inheritance for PL/SQL Objects:

PL/SQL allows creating object from existing base objects. To implement inheritance, the base objects should be declared as NOT FINAL. The default is FINAL.

The following programs illustrate inheritance in PL/SQL Objects. Let us create another object named TableTop, which is inheriting from the Rectangle object. 
*/
set serveroutput on
CREATE OR REPLACE TYPE rectangle FORCE AS OBJECT
(length number,
width number,
member function enlarge(inc number) return rectangle,
NOT FINAL member procedure display) NOT FINAL
/


-- Creating the base type body:
CREATE OR REPLACE TYPE BODY rectangle AS
	MEMBER FUNCTION enlarge(inc number) return rectangle IS
	BEGIN
		return rectangle(self.length + inc, self.width + inc);
	END enlarge;
	
	MEMBER PROCEDURE display IS
	BEGIN
		dbms_output.put_line('Length: ' || length);
		dbms_output.put_line('Width: ' || width);
	END display;
END;
/


-- Creating the child object tabletop:
CREATE OR REPLACE TYPE tabletop UNDER rectangle
(
	material varchar2(20),
	OVERRIDING member procedure display
)
/


-- Creating the type body for the child object tabletop:
CREATE OR REPLACE TYPE BODY tabletop AS
OVERRIDING MEMBER PROCEDURE display IS
	BEGIN
		dbms_output.put_line('Length: '||length);
		dbms_output.put_line('Wdith: '||width);
		dbms_output.put_line('Material: '||material);
	END display;
END;
/


-- Using the tabletop object and its member functions:
DECLARE
	t1 tabletop;
	t2 tabletop;
BEGIN
	t1:= tabletop(20, 10, 'Wood');
	t2:= tabletop(50, 30, 'Steel');
	t1.display;
	t2.display;
END;
/