ENTITY cont_60 IS
	
	PORT(clk  : IN  BIT;
		 count : OUT INTEGER RANGE 0 TO 59);

END cont_60;

ARCHITECTURE cont_60_imp OF cont_60 IS
BEGIN

	counter : PROCESS(clk)
		VARIABLE icount : INTEGER RANGE 0 TO 59;
	BEGIN
		IF(clk'event AND clk = '1') THEN
			IF(icount = 59) THEN
				icount := 0;
			ELSE
				icount := icount + 1;
			END IF;
		END IF;
		count <= icount;
	END PROCESS;

END cont_60_imp;