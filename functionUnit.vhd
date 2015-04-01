----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:19 03/03/2015 
-- Design Name: 
-- Module Name:    functionUnit - Behavioral 
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

entity functionUnit is
	port(A, B : in std_logic_vector(15 downto 0);
			functionSelect : in std_logic_vector(4 downto 0);
			V, C, N, Z : out std_logic;
			F : out std_logic_vector(15 downto 0));
end functionUnit;

architecture Behavioral of functionUnit is

component arithmeticLogicUnit
	port(carryIn, select0, select1, outputSelect : in std_logic;
			A, B : in std_logic_vector(15 downto 0);
			G : out std_logic_vector(15 downto 0);
			carryOut, overFlow : out std_logic);
end component;

component shifter
	port(B : in std_logic_vector(15 downto 0);
			select0, select1 : in std_logic;
			H : out std_logic_vector(15 downto 0));
end component;

component mux2to16
	port(s0 : in std_logic;
			i0, i1 : in std_logic_vector(15 downto 0);
			Z : out std_logic_vector(15 downto 0));
end component;

component zeroDetect
	port(G : in std_logic_vector(15 downto 0);
			Z : out std_logic);
end component;

signal arithmeticLogicUnitOutput, shifterOutput : std_logic_vector(15 downto 0);

begin

arithmeticLogicUnitComponent: arithmeticLogicUnit port map(
			carryIn => functionSelect(0),
			select0 => functionSelect(1),
			select1 => functionSelect(2),
			outputSelect => functionSelect(3),
			A => A,
			B => B,
			G => arithmeticLogicUnitOutput,
			carryOut => C,
			overFlow => V
);

shifterComponent: shifter port map(
			B => B,
			select0 => functionSelect(2),
			select1 => functionSelect(3),
			H => shifterOutput
);

zeroDetectComponent: zeroDetect port map(
			G => arithmeticLogicUnitOutput,
			Z => Z
);

arithmeticAndShiftSelect: mux2to16 port map(
			s0 => functionSelect(4),
			i0 => arithmeticLogicUnitOutput,
			i1 => shifterOutput,
			Z => F
);

N <= arithmeticLogicUnitOutput(15) after 1 ns;



end Behavioral;

