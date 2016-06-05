/* TRIGGERS

Triggers are stored programs, which are automatically executed or fired when some events occur. Triggers are, in fact, written to be executed in response to any of the following events:

A database manipulation (DML) statement (DELETE, INSERT, or UPDATE).

A database definition (DDL) statement (CREATE, ALTER, or DROP).

A database operation (SERVERERROR, LOGON, LOGOFF, STARTUP, or SHUTDOWN).

Triggers could be defined on the table, view, schema, or database with which the event is associated.
*/
set serveroutput on
CREATE OR REPLACE TRIGGER display_salary_changes
BEFORE DELETE OR INSERT OR UPDATE ON customers
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
	sal_diff number;
BEGIN
	sal_diff := :NEW.salary - :OLD.salary;
	dbms_output.put_line('Old salary: ' || :OLD.salary);
	dbms_output.put_line('New salaryL ' || :NEW.salary);
	dbms_output.put_line('Salary difference: ' || sal_diff);
END;
/
INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (7, 'Kriti', 22, 'HP', 7500.00);

UPDATE customers
SET salary = salary + 500
WHERE id = 2;
/