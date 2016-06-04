/* PL/SQL Procedure

PL/SQL subprograms are named PL/SQL blocks that can be invoked with a set of parameters. PL/SQL provides two kinds of subprograms:

Functions: these subprograms return a single value, mainly used to compute and return a value.

Procedures: these subprograms do not return a value directly, mainly used to perform an action.
*/
set serveroutput on
CREATE OR REPLACE PROCEDURE greetings
AS
BEGIN
	dbms_output.put_line('Hello World!');
END;
/
-- call new procedure greetings or use "EXECUTE greetings" at command line interface
BEGIN
	greetings;
END;
/
-- delete the standalone procedure
DROP PROCEDURE greetings;
