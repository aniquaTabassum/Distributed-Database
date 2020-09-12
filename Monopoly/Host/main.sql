SET SERVEROUTPUT ON;
DECLARE
	chance_index NUMBER(2);

BEGIN

FOR Lcntr IN 1..10
LOOP
chance_index := dbms_random.value(1,6);
FOR t IN (SELECT cid, action FROM chance_cards where cid = chance_index) 
   LOOP 
      dbms_output.put_line(t.cid || '. ' || t.action); 
   END LOOP; 
END LOOP;	
END;
/