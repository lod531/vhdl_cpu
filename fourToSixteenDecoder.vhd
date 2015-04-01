----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:55 03/16/2015 
-- Design Name: 
-- Module Name:    fourToSixteenDecoder - Behavioral 
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

entity fourToSixteenDecoder is
	port(s0, s1, s2, s3 : in std_logic;
			out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15 : out std_logic);
end fourToSixteenDecoder;

architecture Behavioral of fourToSixteenDecoder is

begin

out0 <= not s3 and not s2 and not s1 and not s0 after 1 ns;
out1 <= not s3 and not s2 and not s1 and s0 after 1 ns;
out2 <= not s3 and not s2 and  s1 and not s0 after 1 ns;
out3 <= not s3 and not s2 and  s1 and  s0 after 1 ns;
out4 <= not s3 and  s2 and not s1 and not s0 after 1 ns;
out5 <= not s3 and  s2 and not s1 and  s0 after 1 ns;
out6 <= not s3 and  s2 and  s1 and not s0 after 1 ns;
out7 <= not s3 and  s2 and  s1 and  s0 after 1 ns;
out8 <=  s3 and not s2 and not s1 and not s0 after 1 ns;
out9 <=  s3 and not s2 and not s1 and  s0 after 1 ns;
out10 <=  s3 and not s2 and  s1 and not s0 after 1 ns;
out11 <=  s3 and not s2 and  s1 and  s0 after 1 ns;
out12 <=  s3 and  s2 and not s1 and not s0 after 1 ns;
out13 <=  s3 and  s2 and not s1 and  s0 after 1 ns;
out14 <=  s3 and  s2 and  s1 and not s0 after 1 ns;
out15 <=  s3 and  s2 and  s1 and  s0 after 1 ns;


end Behavioral;

