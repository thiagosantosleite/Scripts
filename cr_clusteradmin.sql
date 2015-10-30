undef tbs;

accept tbs prompt 'Tablespace:'

create user clusteradmin identified by clusteradmin
default tablespace &Tbs
temporary tablespace temp;

grant connect, create table to clusteradmin;

alter user clusteradmin quota 1m on &Tbs;

CREATE TABLE "CLUSTERADMIN"."CLUSTER_STAMP"
 (    "TIME_STAMP" DATE NOT NULL ENABLE
 ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
STORAGE(INITIAL 131072 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE &Tbs
/

insert into clusteradmin.CLUSTER_STAMP values (sysdate);
update clusteradmin.CLUSTER_STAMP set TIME_STAMP = sysdate;
commit;


grant ALTER SESSION to CLUSTERADMIN;
grant CONNECT to CLUSTERADMIN ;
grant CREATE CLUSTER to CLUSTERADMIN;
grant CREATE DATABASE LINK to CLUSTERADMIN;
grant CREATE SEQUENCE to CLUSTERADMIN;
grant CREATE SESSION to CLUSTERADMIN;
grant CREATE SYNONYM to CLUSTERADMIN;
grant CREATE TABLE to CLUSTERADMIN;
grant CREATE VIEW to CLUSTERADMIN;
grant SELECT on SYS.V_$PARAMETER to CLUSTERADMIN;
grant SELECT on SYS.V_$SESSION to CLUSTERADMIN;