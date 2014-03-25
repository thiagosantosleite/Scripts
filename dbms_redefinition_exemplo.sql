
Alterado tablespace default do usu�rio
	09:54:22 orausdw>alter user BIPUB default tablespace BIPUB_DATA2;

	Usu�rio alterado.

-> Mover tabela de tablespace:
1) Validar se pode fazer redifini�� online:
	09:32:44 orausdw>EXEC DBMS_IMI_RESULTADO_BILLING_NEW_DATA.CAN_REDEF_TABLE('BIPUB', 'IMI_RESULTADO_BILLING_NEW', DBMS_IMI_RESULTADO_BILLING_NEW_DATA.CONS_USE_PK);
	Procedimento PL/SQL conclu�do com sucesso.


2) Cria tabala paralela:
	  CREATE TABLE "BIPUB"."IMI_RESULTADO_BILLING_NEW2"
	   (    "RB_ID" VARCHAR2(20),
			"RB_OPER" VARCHAR2(20),
			"RB_SC" VARCHAR2(50),
			"RB_MOVIL" VARCHAR2(70),
			"RB_COD_OBRA" VARCHAR2(30),
			"RB_COD_PAIS" VARCHAR2(10),
			"RB_TIPO_OBRA" VARCHAR2(50),
			"RB_ID_BILLING" VARCHAR2(70),
			"RB_ESTADO" VARCHAR2(10),
			"RB_FECHA" TIMESTAMP (6),
			"RB_GLOSA" VARCHAR2(255),
			"RB_BT_IDS" VARCHAR2(30),
			"RB_ID_ALTERNATIVO" VARCHAR2(70),
			"RB_QREC_ID" VARCHAR2(30),
			"RB_POSTPAGO" CHAR(1),
			"RB_URL_CONTENIDO" VARCHAR2(255),
			"RB_NOTIFICACION_JAMBA" CHAR(1),
			"RB_ORIGEN" VARCHAR2(50),
			"RB_USER_AGENT" VARCHAR2(255),
			"RB_SERVICE_PROVIDER" VARCHAR2(100),
			"RB_IP_ACCESO" VARCHAR2(50),
			"RB_CONTPROV_ID" VARCHAR2(10),
			"RB_CONT_LOCATION" VARCHAR2(100),
			"RB_CONTENT_ID" VARCHAR2(20),
			"RB_PRECIO" VARCHAR2(20),
			"RB_EVENT" VARCHAR2(100),
			"RB_PROMO" VARCHAR2(20),
			"RB_ID_INTEGRADOR" VARCHAR2(24),
			"RB_CODIGO_MCERT" VARCHAR2(50),
			"RB_ORIGEN_MCERT" VARCHAR2(30),
			"RB_PREFIJO_INTEGRADOR" VARCHAR2(4)
	   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA"
	  PARTITION BY RANGE ("RB_FECHA")
	 (PARTITION "IRBN_P011"  VALUES LESS THAN (TIMESTAMP' 2009-01-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P012"  VALUES LESS THAN (TIMESTAMP' 2009-02-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P013"  VALUES LESS THAN (TIMESTAMP' 2009-03-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P014"  VALUES LESS THAN (TIMESTAMP' 2009-04-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P015"  VALUES LESS THAN (TIMESTAMP' 2009-05-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P016"  VALUES LESS THAN (TIMESTAMP' 2009-06-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P017"  VALUES LESS THAN (TIMESTAMP' 2009-07-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P018"  VALUES LESS THAN (TIMESTAMP' 2009-08-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P019"  VALUES LESS THAN (TIMESTAMP' 2009-09-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P020"  VALUES LESS THAN (TIMESTAMP' 2009-10-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P021"  VALUES LESS THAN (TIMESTAMP' 2009-11-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P022"  VALUES LESS THAN (TIMESTAMP' 2009-12-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P023"  VALUES LESS THAN (TIMESTAMP' 2010-01-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P024"  VALUES LESS THAN (TIMESTAMP' 2010-02-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P025"  VALUES LESS THAN (TIMESTAMP' 2010-03-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P026"  VALUES LESS THAN (TIMESTAMP' 2010-04-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P027"  VALUES LESS THAN (TIMESTAMP' 2010-05-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P028"  VALUES LESS THAN (TIMESTAMP' 2010-06-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P029"  VALUES LESS THAN (TIMESTAMP' 2010-07-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P030"  VALUES LESS THAN (TIMESTAMP' 2010-08-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P031"  VALUES LESS THAN (TIMESTAMP' 2010-09-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P032"  VALUES LESS THAN (TIMESTAMP' 2010-10-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P033"  VALUES LESS THAN (TIMESTAMP' 2010-11-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P034"  VALUES LESS THAN (TIMESTAMP' 2010-12-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P035"  VALUES LESS THAN (TIMESTAMP' 2011-01-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P036"  VALUES LESS THAN (TIMESTAMP' 2011-02-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P037"  VALUES LESS THAN (TIMESTAMP' 2011-03-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P038"  VALUES LESS THAN (TIMESTAMP' 2011-04-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P039"  VALUES LESS THAN (TIMESTAMP' 2011-05-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P040"  VALUES LESS THAN (TIMESTAMP' 2011-06-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P041"  VALUES LESS THAN (TIMESTAMP' 2011-07-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P042"  VALUES LESS THAN (TIMESTAMP' 2011-08-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P043"  VALUES LESS THAN (TIMESTAMP' 2011-09-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P044"  VALUES LESS THAN (TIMESTAMP' 2011-10-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P045"  VALUES LESS THAN (TIMESTAMP' 2011-11-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P046"  VALUES LESS THAN (TIMESTAMP' 2011-12-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P047"  VALUES LESS THAN (TIMESTAMP' 2012-01-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P048"  VALUES LESS THAN (TIMESTAMP' 2012-02-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P049"  VALUES LESS THAN (TIMESTAMP' 2012-03-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P050"  VALUES LESS THAN (TIMESTAMP' 2012-04-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P051"  VALUES LESS THAN (TIMESTAMP' 2012-05-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P052"  VALUES LESS THAN (TIMESTAMP' 2012-06-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P053"  VALUES LESS THAN (TIMESTAMP' 2012-07-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P054"  VALUES LESS THAN (TIMESTAMP' 2012-08-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P055"  VALUES LESS THAN (TIMESTAMP' 2012-09-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P056"  VALUES LESS THAN (TIMESTAMP' 2012-10-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" COMPRESS ,
	 PARTITION "IRBN_P057"  VALUES LESS THAN (TIMESTAMP' 2012-11-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ,
	 PARTITION "IRBN_P058"  VALUES LESS THAN (TIMESTAMP' 2012-12-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ,
	 PARTITION "IRBN_P059"  VALUES LESS THAN (TIMESTAMP' 2013-01-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ,
	 PARTITION "IRBN_P060"  VALUES LESS THAN (TIMESTAMP' 2013-02-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ,
	 PARTITION "IRBN_P061"  VALUES LESS THAN (TIMESTAMP' 2013-03-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ,
	 PARTITION "IRBN_P062"  VALUES LESS THAN (TIMESTAMP' 2013-04-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ,
	 PARTITION "IRBN_P063"  VALUES LESS THAN (TIMESTAMP' 2013-05-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ,
	 PARTITION "IRBN_P064"  VALUES LESS THAN (TIMESTAMP' 2013-06-01 00:00:00')
	  TABLESPACE "IMI_RESULTADO_BILLING_NEW_DATA" NOCOMPRESS ) ;
   
3) Inicia redefini��o:      
		BEGIN
		  DBMS_REDEFINITION.start_redef_table(
			uname      => 'BIPUB',        
			orig_table => 'IMI_RESULTADO_BILLING_NEW',
			int_table  => 'IMI_RESULTADO_BILLING_NEW2');
		END;
		/			 		   
     
4) Criar outros objetos:
	GRANT SELECT ON "BIPUB"."IMI_RESULTADO_BILLING_NEW2" TO "BIL";
	GRANT SELECT ON "BIPUB"."IMI_RESULTADO_BILLING_NEW2" TO "SELECT_BIPUB";
	GRANT SELECT ON "BIPUB"."IMI_RESULTADO_BILLING_NEW2" TO "PUBCLI";
      
5) Indices + constraints: 
	ALTER TABLE "BIPUB"."IMI_RESULTADO_BILLING_NEW2" ADD CONSTRAINT "PK_IMI_RESULTADO_BILLING_NEW2" PRIMARY KEY ("RB_ID")
	TABLESPACE "IMI_RESULTADO_BILLING_NEW_INDX"  ENABLE;

    CREATE INDEX "BIPUB"."IMI_RESULTADO_BILLING_NEW_I022" ON "BIPUB"."IMI_RESULTADO_BILLING_NEW2" ("RB_ID_BILLING")
    TABLESPACE "IMI_RESULTADO_BILLING_NEW_INDX"
	NOLOGGING
	PARALLEL 2;

	CREATE INDEX "BIPUB"."IMI_RESULT_BILLING_NEW_I012" ON "BIPUB"."IMI_RESULTADO_BILLING_NEW2" ("RB_FECHA", "RB_ESTADO")
	TABLESPACE "IMI_RESULTADO_BILLING_NEW_INDX"  LOCAL
	NOLOGGING
	PARALLEL 2;	
	
	ALTER INDEX "BIPUB"."IMI_RESULTADO_BILLING_NEW_I022" PARALLEL 1;
	ALTER INDEX "BIPUB"."IMI_RESULT_BILLING_NEW_I012" PARALLEL 1;
	
6) Estatisticas
	EXEC DBMS_STATS.gather_table_stats('BIPUB', 'IMI_RESULTADO_BILLING_NEW2', cascade => TRUE);	
	
7) Finalizar procedimento:	
		BEGIN
		  dbms_redefinition.finish_redef_table(
			uname      => 'BIPUB',        
			orig_table => 'IMI_RESULTADO_BILLING_NEW',
			int_table  => 'IMI_RESULTADO_BILLING_NEW2');
		END;
		/	

8) Recompile		
	10:23:59 orausdw>@objinv
	Informe o valor para owner: BIPUB
	antigo   4: and owner like UPPER('&OWNER')
	novo   4: and owner like UPPER('BIPUB')

	OBJECT                                                       TYPE                           LAST_DDL_TIME
	------------------------------------------------------------ ------------------------------ -------------------
	BIPUB.BI_MED_CERTIFICA_CARGA_MODELO                          PROCEDURE                      28/05/2012 14:56:05
	BIPUB.BI_MED_CERTIFICA_CARGA_MODELO2                         PROCEDURE                      28/05/2012 14:56:14
	BIPUB.BI_MED_DART_CARGA_MODELO                               PROCEDURE                      28/05/2012 14:56:06
	BIPUB.BI_MED_PPI_CARGA_MODELO                                PROCEDURE                      28/05/2012 14:56:06
	BIPUB.BI_MED_STATW_CARGA_MODELO                              PROCEDURE                      28/05/2012 14:56:04
	BIPUB.BI_MED_STREAMING_CARGA_MODELO                          PROCEDURE                      28/05/2012 14:56:06
	BIPUB.BI_MED_STREAMING_CARGA_MODELO2                         PROCEDURE                      28/05/2012 14:56:14
	BIPUB.BI_MED_TSTAT_CARGA_MODELO                              PROCEDURE                      28/05/2012 14:56:04
	BIPUB.BI_PPI_CONTABITEM_UPD                                  PROCEDURE                      28/05/2012 14:56:05
	BIPUB.CARGA_CLUBES_MCP_ANTIGUA                               PROCEDURE                      09/03/2012 13:24:39
	BIPUB.CARGA_CLUBES_MCP_PRUEBA                                PROCEDURE                      28/05/2012 14:56:15
	BIPUB.CB_REPORTE_VOLCADO                                     PROCEDURE                      28/05/2012 14:56:10
	BIPUB.FNC_ADD_LOG                                            FUNCTION                       28/05/2012 14:55:43
	BIPUB.FN_QUERY_TABLE                                         FUNCTION                       28/05/2012 14:55:43
	BIPUB.GATEWAY_NEW                                            PROCEDURE                      28/05/2012 14:56:09
	BIPUB.GRAFICO_ANUNCIANTE_RELATORIO6                          PROCEDURE                      28/05/2012 14:56:07
	BIPUB.OVERFLOW_TEST                                          FUNCTION                       28/05/2012 14:55:44
	BIPUB.PCK_CERTIFICA                                          PACKAGE BODY                   28/05/2012 14:55:44
	BIPUB.PPP_FILL_CONTABITEM                                    PROCEDURE                      28/05/2012 14:56:12
	BIPUB.PPP_PROCESO                                            PROCEDURE                      28/05/2012 14:56:10
	BIPUB.PPP_PROC_CONTABITEM                                    PROCEDURE                      28/05/2012 14:56:08
	BIPUB.PRC_AGG_MENSAL                                         PROCEDURE                      28/05/2012 14:56:04
	BIPUB.PRC_AGG_MENSAL_METRICAS                                PROCEDURE                      28/05/2012 14:55:51
	BIPUB.PRC_AGG_MENSAL_STAT                                    PROCEDURE                      17/05/2010 13:27:48
	BIPUB.PRC_DIM_GLOBAL                                         PROCEDURE                      28/05/2012 14:56:03
	BIPUB.PRC_DIM_PAIS                                           PROCEDURE                      17/05/2010 13:27:48
	BIPUB.PRC_DIM_TEMPO_BI                                       PROCEDURE                      28/05/2012 14:55:52
	BIPUB.PRC_FTO_CANAL_DIARIA_METRICAS                          PROCEDURE                      28/05/2012 14:56:03
	BIPUB.PRC_FTO_CANAL_DIARIA_STAT                              PROCEDURE                      17/05/2010 13:27:48
	BIPUB.PRC_POPULA_ESTR_LOCAL                                  PROCEDURE                      17/05/2010 13:27:47
	BIPUB.SP_ODS_MEDIA_ADSERVER                                  PROCEDURE                      28/05/2012 14:56:08
	BIPUB.SP_TEST_OPERADORES                                     PROCEDURE                      28/05/2012 14:56:15
	BIPUB.SRL_PRUEBA                                             PROCEDURE                      28/05/2012 14:56:14
	BIPUB.TEST_AGG                                               PROCEDURE                      28/05/2012 14:56:08
	BIPUB.TEST_DELETE                                            PROCEDURE                      28/05/2012 14:56:07
	BIPUB.TPDA_PROC_LOG_DELETE                                   PROCEDURE                      28/05/2012 14:56:07
	BIPUB.V_CER_METRICA                                          VIEW                           28/05/2012 14:56:16
	BIPUB.V_CER_METRICA_LATAM                                    VIEW                           28/05/2012 14:56:16
	BIPUB.V_SRL_TPDA_PRUEBA                                      VIEW                           28/05/2012 14:56:16

	39 linhas selecionadas.
		
8) validar:
	SELECT *
	FROM   dba_tables
	WHERE  table_name in ('IMI_RESULTADO_BILLING_NEW', 'IMI_RESULTADO_BILLING_NEW2')
	and owner = 'BIPUB';		
	
	SELECT /*+ PARALLEL(tbl 4)*/ COUNT(1) FROM BIPUB.IMI_RESULTADO_BILLING_NEW tbl;
	SELECT /*+ PARALLEL(tbl 4)*/ COUNT(1) FROM BIPUB.IMI_RESULTADO_BILLING_NEW2 tbl;
	
9) drop tabela antiga e rename dos objetos:	
	DROP TABLE "BIPUB"."IMI_RESULTADO_BILLING_NEW2";		
	ALTER TABLE "BIPUB"."IMI_RESULTADO_BILLING_NEW" RENAME CONSTRAINT "PK_IMI_RESULTADO_BILLING_NEW2" TO "PK_IMI_RESULTADO_BILLING_NEW";	
    ALTER INDEX "BIPUB"."IMI_RESULTADO_BILLING_NEW_I022" RENAME TO IMI_RESULTADO_BILLING_NEW_I02;
	ALTER INDEX "BIPUB"."IMI_RESULT_BILLING_NEW_I012" RENAME TO IMI_RESULT_BILLING_NEW_I01;	
	
	
Rollback se necess�rio:
		EXEC DBMS_REDEFINITION.ABORT_REDEF_TABLE('BIPUB', 'IMI_RESULTADO_BILLING_NEW', 'IMI_RESULTADO_BILLING_NEW2');