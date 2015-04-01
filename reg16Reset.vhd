----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:54:52 03/22/2015 
-- Design Name: 
-- Module Name:    reg16Reset - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity reg16Reset is
	port ( D : in std_logic_vector(15 downto 0);
		load, Clk, reset : in std_logic;
		Q : out std_logic_vector(15 downto 0));
end reg16Reset;
architecture Behavioral of reg16Reset is
begin
	process(Clk)
	begin
		if (rising_edge(Clk)) then
			if load='1' and reset='0' then
				Q<=D after 5 ns;
			else
				Q<=(others => '0');
			end if;
		end if;
	end process;
end Behavioral;


