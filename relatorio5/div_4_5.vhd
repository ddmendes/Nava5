entity divisor_4_5 is

	port (  mc, clk : in  bit;
	        A       : out bit );

end divisor_4_5;

architecture div_4_5_imp of divisor_4_5 is
	type   state_type is (s000, s001, s010, s011, s100, s101, s110, s111);
	signal act_state, next_state : state_type;
begin

	-- Atualização de estados.
	registers : process (clk)
	begin
		if(clk'event and clk='1') then
			act_state <= next_state;
		end if;
	end process;

	--Transição de estados.
	transitions : process (mc)
	begin
		case act_state is
			when s000 =>
				A <= '0';
				if (mc='0') then
					next_state <= s010;
				else
					next_state <= s011;
				end if;
			when s001 =>
				A <= '0';
				if (mc='0') then 
					next_state <= s010;
				else
				    next_state <= s011;
				end if ;
			when s010 =>
				A <= '0';
				next_state <= s011;
			when s011 =>
				A <= '0';
				next_state <= s111;
			when s100 =>
				A <= '1';
				if (mc='0') then
					next_state <= s000;
				else
				    next_state <= s001;
				end if ;
			when s101 =>
				A <= '1';
				if (mc='0') then
					next_state <= s000;
				else
				    next_state <= s001;
				end if;
			when s110 =>
				A <= '1';
				next_state <= s001;
			when s111 =>
				A <= '1';
				next_state <= s101;
		end case;
	end process;
end div_4_5_imp;