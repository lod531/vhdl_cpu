----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:32 02/15/2015 
-- Design Name: 
-- Module Name:    threeToEightMultiplexer - Behavioral 
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

entity threeToEightMultiplexer is
	port(s0, s1, s2: in std_logic;
			in0, in1, in2, in3, in4, in5, in6, in7: in std_logic;
			Z : out std_logic);
end threeToEightMultiplexer;

architecture Behavioral of threeToEightMultiplexer is

begin

Z <= 	in0 after 5ns when s0='0' and s1='0' and s2='0' else
		in1 after 5ns when s0='1' and s1='0' and s2='0' else
		in2 after 5ns when s0='0' and s1='1' and s2='0' else
		in3 after 5ns when s0='1' and s1='1' and s2='0' else
		in4 after 5ns when s0='0' and s1='0' and s2='1' else
		in5 after 5ns when s0='1' and s1='0' and s2='1' else
		in6 after 5ns when s0='0' and s1='1' and s2='1' else
		in7 after 5ns when s0='1' and s1='1' and s2='1' else
		'0' after 5ns;
end Behavioral;

