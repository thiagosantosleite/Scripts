SELECT DISTINCT TABLESPACE_NAME 
FROM DBA_SEGMENTS 
WHERE OWNER = upper('&OWNER');