----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:30:53 03/02/2015 
-- Design Name: 
-- Module Name:    arithmeticLogicUnit - Behavioral 
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

entity arithmeticLogicUnit is
	port(carryIn, select0, select1, outputSelect : in std_logic;
			A, B : in std_logic_vector(15 downto 0);
			G : out std_logic_vector(15 downto 0);
			carryOut, overFlow : out std_logic);
end arithmeticLogicUnit;

architecture Behavioral of arithmeticLogicUnit is

component arithmeticCircuit
	port(input0, input1 : in std_logic_vector(15 downto 0);
			s0, s1, cIn : in std_logic;
			cOut, overFlow : out std_logic;
			z : out std_logic_vector(15 downto 0));
end component;

component logicCircuit
	port(A, B : in std_logic_vector(15 downto 0);
			select0, select1 : in std_logic;
			G : out std_logic_vector(15 downto 0));
end component;

component mux2to16
	port(s0 : in std_logic;
			i0, i1 : in std_logic_vector(15 downto 0);
			Z : out std_logic_vector(15 downto 0));
end component;

signal arithmeticCircuitOutput, logicCircuitOutput : std_logic_vector(15 downto 0);


begin

arithmeticCircuitComponent: arithmeticCircuit port map(
			input0 => A,
			input1 => B,
			s0 => select0,
			s1 => select1,
			cIn => carryIn,
			cOut => carryOut,
			overFlow => overFlow,
			z => arithmeticCircuitOutput
);

logicCircuitComponent: logicCircuit port map(
			A => A,
			B => B,
			select0 => select0,
			select1 => select1,
			G => logicCircuitOutput
);

mux2to16Component: mux2to16 port map(
			s0 => outputSelect,
			i0 => arithmeticCircuitOutput,
			i1 => logicCircuitOutput,
			Z  => G
);



end Behavioral;

