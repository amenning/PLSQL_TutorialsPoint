/* Packages

PL/SQL packages are schema objects that groups logically related PL/SQL types, variables and subprograms.

A package will have two mandatory parts:

Package specification

Package body or definition
*/
set serveroutput on
CREATE OR REPLACE PACKAGE c_package AS
	-- Adds a customer
	PROCEDURE addCustomer(c_id customers.id%type,
	c_name customers.name%type,
	c_age customers.age%type,
	c_addr customers.address%type,
	c_sal customers.salary%type);
	
	-- Removes a customer
	PROCEDURE delCustomer(c_id customers.id%type);
	
	-- Lists all customers
	PROCEDURE listCustomer;
END c_package;
/

CREATE OR REPLACE PACKAGE BODY c_package AS
	PROCEDURE addCustomer(c_id customers.id%type,
		c_name customers.name%type,
		c_age customers.age%type,
		c_addr customers.address%type,
		c_sal customers.salary%type)
	IS
	BEGIN
		INSERT INTO customers (id, name, age, address, salary)
			VALUES(c_id, c_name, c_age, c_addr, c_sal);
	END addCustomer;
	
	PROCEDURE delCustomer(c_id customers.id%type) IS
	BEGIN
		DELETE FROM customers
			WHERE id = c_id;
	END delCustomer;
	
	PROCEDURE listCustomer IS
	CURSOR c_customers is
		SELECT name FROM customers;
	TYPE c_list is TABLE OF customers.name%type;
	name_list c_list := c_list();
	counter integer :=0;
	BEGIN
		FOR n IN c_customers LOOP
		counter := counter +1;
		name_list.extend;
		name_list(counter) := n.name;
		dbms_output.put_line('Customer(' || counter || ')'||name_list(counter));
		END LOOP;
	END listCustomer;
END c_package;
/

DECLARE 
	code customers.id%type:= 9;
BEGIN
	c_package.addCustomer(8, 'Rajnish', 25, 'Chennai', 3500);
	c_package.addCustomer(9, 'Subham', 32, 'Delhi', 7500);
	c_package.listCustomer;
	c_package.delCustomer(code);
	c_package.listCustomer;
END;
/