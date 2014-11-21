ENTITY cont_60 IS
	
	PORT(clk  : IN  BIT;
		 count : OUT INTEGER RANGE 0 TO 59);

END cont_60;

ARCHTECTURE cont_60_imp OF cont_60 IS
BEGIN

	counter : PROCESS(clk)
		VARIABLE icount : INTEGER RANGE 0 TO 59 := 0;
	BEGIN
		IF(clk'event AND clk = '1') THEN
			icount := icount + 1;
		END IF;
		count <= icount;
	END counter;

END cont_60_imp;