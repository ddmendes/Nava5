ENTITY cont_12 IS
	
	PORT(clk  : IN  BIT;
		 count : OUT INTEGER RANGE 0 TO 11);

END cont_12;

ARCHITECTURE cont_12_imp OF cont_12 IS
BEGIN

	counter : PROCESS(clk)
		VARIABLE icount : INTEGER RANGE 0 TO 11;
	BEGIN
		IF(clk'event AND clk = '1') THEN
			IF(icount = 11) THEN
				icount := 0;
			ELSE
				icount := icount + 1;
			END IF;
		END IF;
		count <= icount;
	END PROCESS;

END cont_12_imp;