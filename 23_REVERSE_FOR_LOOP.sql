/* REVERSE FOR LOOP

By default, iteration proceeds from the initial value to the final value, generally upward from the lower bound to the higher bound. You can reverse this order by using the REVERSE keyword. In such case, iteration proceeds the other way. After each iteration, the loop counter is decremented.

However, you must write the range bounds in ascending (not descending) order. 
*/
set serveroutput on
DECLARE
	a number(2);
BEGIN
	FOR a IN REVERSE 10 .. 20 LOOP
		dbms_output.put_line('value of a: ' || a);
	END LOOP;
END;
/