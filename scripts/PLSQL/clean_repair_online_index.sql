SET SERVEROUTPUT ON
DECLARE
   isClean BOOLEAN;
BEGIN

  isClean := FALSE;
WHILE isClean=FALSE
   LOOP
     --isClean := SYS.DBMS_REPAIR.ONLINE_INDEX_CLEAN(DBMS_REPAIR.ALL_INDEX_ID, DBMS_REPAIR.LOCK_WAIT);
	 isClean := SYS.DBMS_REPAIR.ONLINE_INDEX_CLEAN;
	DBMS_LOCK.SLEEP(10);
   END LOOP;

EXCEPTION
WHEN OTHERS THEN
RAISE;
END;
