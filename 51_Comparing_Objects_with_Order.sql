/* Comparing Objects with Order method

The comparison methods are used for comparing objects. There are two ways to compare objects:

Map method: The Map method is a function implemented in such a way that its value depends upon the value of the attributes. For example, for a customer object, if the customer code is same for two customers, both customers could be the same and one. So the relationship between these two objects would depend upon the value of code.

Order method: The Order methods implement some internal logic for comparing two objects. For example, for a rectangle object, a rectangle is bigger than another rectangle if both its sides are bigger.
*/
set serveroutput on
CREATE OR REPLACE TYPE rectangle AS OBJECT
(length number,
width number,
member procedure display,
order member function measure(r rectangle) return number
);
/

-- Creating the type body
CREATE OR REPLACE TYPE BODY rectangle AS
	MEMBER PROCEDURE display IS
	BEGIN
		dbms_output.put_line('Length: ' || length);
		dbms_output.put_line('Width: ' || width);
	END display;
	
	ORDER MEMBER FUNCTION measure(r rectangle) return number IS
	BEGIN
		IF(sqrt(self.length*self.length + self.width*self.width)>sqrt(r.length*r.length + r.width*r.width)) then
			return (1);
		ELSE
			return(-1);
		END IF;
	END measure;
END;
/

-- Use rectangle object and member functions
DECLARE
	r1 rectangle;
	r2 rectangle;
BEGIN
	r1 := rectangle(23,44);
	r2 := rectangle(15,17);
	r1.display;
	r2.display;
	IF (r1 > r2) THEN --calling measure function
		r1.display;
	ELSE
		r2.display;
	END IF;
END;
/