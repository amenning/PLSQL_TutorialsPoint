/* IF THEN ELSIF Statement

The IF-THEN-ELSIF statement allows you to choose between several alternatives. An IF-THEN statement can be followed by an optional ELSIF...ELSE statement. The ELSIF clause lets you add additional conditions.

When using IF-THEN-ELSIF statements there are few points to keep in mind.

It's ELSIF, not ELSEIF

An IF-THEN statement can have zero or one ELSE's and it must come after any ELSIF's.

An IF-THEN statement can have zero to many ELSIF's and they must come before the ELSE.

Once an ELSIF succeeds, none of the remaining ELSIF's or ELSE's will be tested.
*/
set serveroutput on
DECLARE
	a number(3) := 100;
BEGIN
	IF ( a = 10 ) THEN
		dbms_output.put_line('Value of a is 10');
	ELSIF ( a = 20 ) THEN
		dbms_output.put_line('Value of a is 20');
	ELSIF (a = 30 ) THEN
		dbms_output.put_line('Value of a is 30');
	ELSE
		dbms_output.put_line('None of the values is matching');
	END IF;
	dbms_output.put_line('Exact value of a is: ' || a);
END;
/