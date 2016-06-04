/* Functions

A PL/SQL function is same as a procedure except that it returns a value. 

Creating a Function
A standalone function is created using the CREATE FUNCTION statement. The simplified syntax for the CREATE OR REPLACE PROCEDURE statement is as follows:

CREATE [OR REPLACE] FUNCTION function_name
[(parameter_name [IN | OUT | IN OUT] type [, ...])]
RETURN return_datatype
{IS | AS}
BEGIN
   < function_body >
END [function_name];
*/
set serveroutput on
CREATE OR REPLACE FUNCTION totalCustomers
RETURN number IS
	total number(2) := 0;
BEGIN
	SELECT count(*) into total
	FROM customers;
	
	RETURN total;
END;
/
-- call above function
DECLARE
	c number(2);
BEGIN
	c := totalCustomers();
	dbms_output.put_line('Total no. of Customers: ' || c);
END;
/