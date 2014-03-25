DECLARE RET_VAL VARCHAR2(4000);
BEGIN
RET_VAL := DBMS_SQLTUNE.CREATE_TUNING_TASK(SQL_ID => '12345678910', SCOPE => 
DBMS_SQLTUNE.SCOPE_COMPREHENSIVE, TIME_LIMIT => 60, TASK_NAME => 'Portilho Tuning Task', 
DESCRIPTION => 'Portilho Tuning Task');
END;
/
BEGIN DBMS_SQLTUNE.EXECUTE_TUNING_TASK('Portilho Tuning Task'); END;
/
SELECT DBMS_SQLTUNE.REPORT_TUNING_TASK('Portilho Tuning Task') RECOMMENTATION FROM 
DUAL;
SELECT DBMS_SQLTUNE.SCRIPT_TUNING_TASK('Portilho Tuning Task') RECOMMENTATION FROM 
DUAL;
BEGIN DBMS_SQLTUNE.DROP_TUNING_TASK('Portilho Tuning Task'); END;
/