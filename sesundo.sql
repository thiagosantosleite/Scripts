col USERNAME format a15
col MACHINE format a30
col program format a15
select S.sid, S.SERIAL#, S.USERNAME, S.MACHINE, s.sql_id, S.program, 
	round((T.USED_UBLK * ((select value from v$parameter where name = 'db_block_size') / 1024) ) / 1024) SIZE_MB, 
	T.START_TIME, T.STATUS AS TRANSACTION_STATUS, S.COMMAND, 
        R.SEGMENT_NAME, R.TABLESPACE_NAME, R.SEGMENT_ID,
        S.STATUS AS SESSION_STATUS
FROM V$TRANSACTION T
    inner join DBA_ROLLBACK_SEGS R
        on R.SEGMENT_ID = T.XIDUSN
    inner join V$SESSION S
        on S.SADDR = T.SES_ADDR
order by SIZE_MB;

