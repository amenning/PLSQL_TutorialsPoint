/* Objects

PL/SQL allows defining an object type, which helps in designing object-oriented database in Oracle. An object type allows you to crate composite types. Using objects allow you implementing real world objects with specific structure of data and methods for operating it. Objects have attributes and methods. Attributes are properties of an object and are used for storing an object's state; and methods are used for modeling its behaviors.

Objects are created using the CREATE [OR REPLACE] TYPE statement. Below is an example to create a simple address object and customer object consisting of few attributes:
*/
set serveroutput on
CREATE OR REPLACE TYPE address FORCE AS OBJECT
(house_no varchar2(10),
street varchar2(30),
city varchar2(20),
state varchar2(10),
pincode varchar2(10)
);
/
CREATE OR REPLACE TYPE customer AS OBJECT
(code number(5),
name varchar2(30),
contract_no varchar2(12),
addr address,
member procedure display
);
/

--Instantiating an OBJECT
DECLARE
	residence address;
BEGIN
	residence := address('103A', 'M.G.Road', 'Jaipur', 'Rajasthan', '201301');
	dbms_output.put_line('House No: ' || residence.house_no);
	dbms_output.put_line('Street: ' || residence.street);
	dbms_output.put_line('City: ' || residence.city);
	dbms_output.put_line('State: ' || residence.state);
	dbms_output.put_line('Pincode: ' || residence.pincode);
END;
/
