set lines 82
set pages 1000
col name format a30 
col isdefault format a7 heading "Default"
col value format a40
col description format a70
set echo on 
 
SELECT   NAME, e.isdefault, e.VALUE, p.description
    FROM v$ses_optimizer_env e LEFT OUTER 
         JOIN v$parameter p USING (NAME)
         JOIN v$session USING (SID)
   WHERE audsid = USERENV ('sessionid')
   ORDER BY isdefault, NAME;