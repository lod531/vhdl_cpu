----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:09 03/22/2015 
-- Design Name: 
-- Module Name:    programCounter - Behavioral 
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

entity programCounter is
	port(PI, PL, Clk, reset : in std_logic;
			offset : in std_logic_vector(15 downto 0);
			programCounterOutput : out std_logic_vector(15 downto 0));
end programCounter;

architecture Behavioral of programCounter is

component adder16
	port(in0, in1 : in std_logic_vector(15 downto 0);
			carryIn : in std_logic;
			sum : out std_logic_vector(15 downto 0);
			carryOut, overFlow : out std_logic);
end component;

component reg16Reset
	port ( D : in std_logic_vector(15 downto 0);
		load, Clk, reset : in std_logic;
		Q : out std_logic_vector(15 downto 0));
end component;

signal currentValue, offsetSignal, output : std_logic_vector(15 downto 0);
begin

reg: reg16Reset port map(
		D => currentValue,
		load => '1',
		reset => reset,
		Clk => Clk,
		Q => output
);

adder: adder16 port map(
		in0 => output,
		in1 => offsetSignal,
		carryIn => PI,
		sum => currentValue
);
offsetSignal <= offset after 0 ns when PL = '1' and reset = '0' else
						(others => '0') after 0 ns;
programCounterOutput <= output after 0 ns;


end Behavioral;

