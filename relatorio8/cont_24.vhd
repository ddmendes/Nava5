ENTITY cont_12 IS
	
	PORT(clk  : IN  BIT;
		 count : OUT INTEGER RANGE 0 TO 11);

END cont_12;

ARCHTECTURE cont_12_imp OF cont_12 IS
BEGIN

	counter : PROCESS(clk)
		VARIABLE icount : INTEGER RANGE 0 TO 11 := 0;
	BEGIN
		IF(clk'event AND clk = '1') THEN
			icount := icount + 1;
		END IF;
		count <= icount;
	END counter;

END cont_12_imp;