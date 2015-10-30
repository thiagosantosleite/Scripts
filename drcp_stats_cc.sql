col CCLASS_NAME for a30

	PROMPT ######### TOTAIS ##############
	select CCLASS_NAME, CLIENT_REQ_TIMEOUTS, NUM_AUTHENTICATIONS FROM v$CPOOL_CC_STATS;

	PROMPT ######### RATIOS ##############
	select CCLASS_NAME, 
		round(NUM_HITS / NUM_REQUESTS * 100, 2) HITS_RATIO,
		round(NUM_MISSES / NUM_REQUESTS * 100, 2) MISSES_RATIO,
	        round(NUM_WAITS / NUM_REQUESTS * 100, 2) WAITS_RATIO, 
	        NUM_REQUESTS, NUM_HITS, NUM_MISSES, NUM_WAITS
	 from v$CPOOL_CC_STATS;