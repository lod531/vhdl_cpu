----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:26 03/02/2015 
-- Design Name: 
-- Module Name:    mux4to1 - Behavioral 
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

entity mux4to1 is
	port(in0, in1, in2, in3 : in std_logic;
			s0, s1 : in std_logic;
			z : out std_logic);
end mux4to1;

architecture Behavioral of mux4to1 is

begin

z <= 	in0 after 1 ns when s0='0' and s1='0' else
		in1 after 1 ns when s0='1' and s1='0' else
		in2 after 1 ns when s0='0' and s1='1' else
		in3 after 1 ns when s0='1' and s1='1' else
		'0' after 1 ns;


end Behavioral;

