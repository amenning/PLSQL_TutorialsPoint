/* Variable Scope in PL/SQL
PL/SQL allows the nesting of Blocks, i.e., each program block may contain another inner block. If a variable is declared within an inner block, it is not accessible to the outer block. However, if a variable is declared and accessible to an outer Block, it is also accessible to all nested inner Blocks. There are two types of variable scope:

Local variables - variables declared in an inner block and not accessible to outer blocks.

Global variables - variables declared in the outermost block or a package.
*/
set serveroutput on
DECLARE
	--Global variables
	num1 number := 95;
	num2 number := 85;
BEGIN
	dbms_output.put_line('Outer Variable num1: ' || num1);
	dbms_output.put_line('Outer Variable num2: ' || num2);
	DECLARE
		-- Local variables
		num1 number := 195;
		num2 number := 185;
	BEGIN
		dbms_output.put_line('Inner Variable num1: ' || num1);
		dbms_output.put_line('Inner Variable num2: ' || num2);
	END;
END;
/