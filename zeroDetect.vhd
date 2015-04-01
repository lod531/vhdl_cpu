----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:01 03/03/2015 
-- Design Name: 
-- Module Name:    zeroDetect - Behavioral 
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

entity zeroDetect is
	port(G : in std_logic_vector(15 downto 0);
			Z : out std_logic);
end zeroDetect;

architecture Behavioral of zeroDetect is

begin

Z <= (not(G(0) or G(1) or G(2) or G(3) or G(4) or G(5) or G(6) or G(7) or G(8) or G(9) or G(10) or G(11) or G(12) or G(13) or G(14) or G(15))) after 1 ns;

end Behavioral;

