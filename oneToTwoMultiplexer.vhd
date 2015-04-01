----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:28 02/15/2015 
-- Design Name: 
-- Module Name:    oneToTwoMultiplexer - Behavioral 
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

entity oneToTwoMultiplexer is
	port(s0 : in std_logic;
			i0, i1 : in std_logic_vector(15 downto 0);
			Z : out std_logic_vector(15 downto 0));
end oneToTwoMultiplexer;

architecture Behavioral of oneToTwoMultiplexer is

begin

Z<=i0 after 5 ns when s0='0' else
	i1 after 5 ns when s0='1' else
	X"0000" after 5ns;



end Behavioral;

