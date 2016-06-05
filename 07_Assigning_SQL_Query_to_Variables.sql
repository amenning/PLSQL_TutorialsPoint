/* Assigning SQL Query Results to PL/SQL Variables
You can use the SELECT INTO statement of SQL to assign values to PL/SQL variables. For each item in the SELECT list, there must be a corresponding, type-compatible variable in the INTO list. 
*/

CREATE TABLE CUSTOMERS(
	ID INT NOT NULL,
	NAME VARCHAR (20) NOT NULL,
	AGE INT NOT NULL,
	ADDRESS CHAR (25),
	SALARY DECIMAL (18, 2),
	PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES(2, 'Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES(3, 'kaushik', 23, 'Kota', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES(4, 'Chaitali', 25, 'Mumbai', 6500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES(5, 'Hardik', 27, 'Bhopal', 8500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES(6, 'Komal', 22, 'MP', 4500.00 );

set serveroutput on
DECLARE
	c_id customers.id%type := 1;
	c_name customers.name%type;
	c_addr customers.address%type;
	c_sal customers.salary%type;
BEGIN
	SELECT name, address, salary INTO c_name, c_addr, c_sal
	FROM customers
	WHERE id = c_id;
	
	dbms_output.put_line('Customer ' || c_name || ' from ' || c_addr || ' earns ' || c_sal);
END;
/