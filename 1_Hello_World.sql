DECLARE
	message varchar2(20):= 'Hello, World!';
BEGIN
	--Need to run 'set serveroutput on' first
	dbms_output.put_line(message);
END;
/