----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:04:14 03/02/2015 
-- Design Name: 
-- Module Name:    arithmeticCircuit - Behavioral 
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

entity arithmeticCircuit is
	port(input0, input1 : in std_logic_vector(15 downto 0);
			s0, s1, cIn : in std_logic;
			cOut, overFlow : out std_logic;
			z : out std_logic_vector(15 downto 0));

end arithmeticCircuit;

architecture Behavioral of arithmeticCircuit is

component arithmeticCircuitLogic 
	port(B : in std_logic_vector(15 downto 0);
			select0, select1 : in std_logic;
			Y : out std_logic_vector(15 downto 0));
end component;

component adder16
	port(in0, in1 : in std_logic_vector(15 downto 0);
			carryIn : in std_logic;
			sum : out std_logic_vector(15 downto 0);
			carryOut, overFlow : out std_logic);
end component;

signal arithmeticCircuitLogicOutput : std_logic_vector(15 downto 0);

begin

arithmeticLogicInstance: arithmeticCircuitLogic port map(
			B => input1,
			select0 => s0,
			select1 => s1,
			Y => arithmeticCircuitLogicOutput
);

rippleAdder: adder16 port map(
			in0 => input0,
			in1 => arithmeticCircuitLogicOutput,
			carryIn => cIn,
			sum => z,
			carryOut => cOut,
			overFlow => overFlow
);

end Behavioral;

