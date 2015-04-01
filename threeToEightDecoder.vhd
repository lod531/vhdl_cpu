----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:47:30 02/15/2015 
-- Design Name: 
-- Module Name:    threeToEightDecoder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity threeToEightDecoder is
	port(s0, s1, s2: in std_logic;
			o0, o1, o2, o3, o4, o5, o6, o7: out std_logic);
end threeToEightDecoder;

architecture Behavioral of threeToEightDecoder is


begin
o0<=((not s2) and (not s1) and (not s0)) after 5 ns;
o1<=((not s2) and (not s1) and (s0)) after 5 ns;
o2<=((not s2) and (s1)		and (not s0)) after 5 ns;
o3<=((not s2) and s1 		and s0) after 5 ns;
o4<=((s2) 	  and (not s1)	and (not s0)) after 5 ns;
o5<=((s2)     and (not s1) and s0) after 5 ns;
o6<=((s2)     and s1 		and (not s0)) after 5 ns;
o7<=((s2)     and (s1) and (s0)) after 5 ns;	
end Behavioral;

