/* IF and THEN Statement

It is the simplest form of IF control statement, frequently used in decision making and changing the control flow of the program execution.

The IF statement associates a condition with a sequence of statements enclosed by the keywords THEN and END IF. If the condition is TRUE, the statements get executed, and if the condition is FALSE or NULL, then the IF statement does nothing.
*/
set serveroutput on
DECLARE
	c_id customers.id%type := 1;
	c_sal customers.salary%type;
	c_name customers.name%type;
BEGIN
	SELECT name, salary
	INTO c_name, c_sal
	From customers
	WHERE id = c_id;
	IF ( c_sal <= 2000 ) THEN
		UPDATE customers
		SET salary = salary + 1000
			WHERE id = c_id;
		dbms_output.put_line('Salary updated');
	END IF;
	dbms_output.put_line(c_name || ' : ' || c_sal);
END;
/