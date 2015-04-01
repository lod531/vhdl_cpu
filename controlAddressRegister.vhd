----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:41 03/21/2015 
-- Design Name: 
-- Module Name:    controlAddressRegister - Behavioral 
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

entity controlAddressRegister is
	port(addressIn : in std_logic_vector(7 downto 0);
			conditionIn, Clk, reset : in std_logic;
			addressOut : out std_logic_vector(7 downto 0));
end controlAddressRegister;

architecture Behavioral of controlAddressRegister is

component reg8
	port ( D : in std_logic_vector(7 downto 0);
		load, Clk, reset : in std_logic;
		Q : out std_logic_vector(7 downto 0));
end component;

component adder8
	port(in0, in1 : in std_logic_vector(7 downto 0);
			carryIn : in std_logic;
			sum : out std_logic_vector(7 downto 0);
			carryOut, overFlow : out std_logic);
end component;

signal currentValue, output, adderOutput : std_logic_vector(7 downto 0);
begin

reg: reg8 port map(
		D => adderOutput,
		load => '1',
		reset => reset,
		Clk => Clk,
		Q => addressOut
);

adder: adder8 port map(
		in0 => addressIn,
		in1 => (others => '0'),
		carryIn => conditionIn,
		sum => adderOutput
);


end Behavioral;

