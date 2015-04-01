----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:59 03/22/2015 
-- Design Name: 
-- Module Name:    programCounterSignExtend - Behavioral 
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

entity programCounterSignExtend is
	port(input : in std_logic_vector(5 downto 0);
			output : out std_logic_vector(15 downto 0));
end programCounterSignExtend;

architecture Behavioral of programCounterSignExtend is

begin

output(5 downto 0) <= input(5 downto 0);
output(15 downto 6) <= (others => input(5));

end Behavioral;

