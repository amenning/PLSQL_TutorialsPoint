/* Nested LOOP

he syntax for a nested basic LOOP statement in PL/SQL is as follows:

LOOP
   Sequence of statements1
   LOOP
      Sequence of statements2
   END LOOP;
END LOOP;
*/
set serveroutput on
DECLARE
	i number(3);
	j number(3);
BEGIN
	i := 2;
	LOOP
		j := 2;
		LOOP
			exit WHEN ((mod(i, j) = 0) or (j=i));
			j := j +1;
		END LOOP;
	IF (j = i) THEN
		dbms_output.put_line(i || ' is prime');
	END IF;
	i := i + 1;
	exit WHEN i = 50;
	END LOOP;
END;
/