----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:49 03/02/2015 
-- Design Name: 
-- Module Name:    logicCircuit - Behavioral 
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

entity logicCircuit is
	port(A, B : in std_logic_vector(15 downto 0);
			select0, select1 : in std_logic;
			G : out std_logic_vector(15 downto 0));
end logicCircuit;

architecture Behavioral of logicCircuit is

component mux4to1
	port(in0, in1, in2, in3 : in std_logic;
			s0, s1 : in std_logic;
			z : out std_logic);
end component;

signal andAB0, andAB1, andAB2, andAB3, andAB4, andAB5, andAB6, andAB7, andAB8, andAB9, andAB10, andAB11, andAB12, andAB13, andAB14, andAB15 : std_logic;
signal orAB0, orAB1, orAB2, orAB3, orAB4, orAB5, orAB6, orAB7, orAB8, orAB9, orAB10, orAB11, orAB12, orAB13, orAB14, orAB15 : std_logic;
signal xorAB0, xorAB1, xorAB2, xorAB3, xorAB4, xorAB5, xorAB6, xorAB7, xorAB8, xorAB9, xorAB10, xorAB11, xorAB12, xorAB13, xorAB14, xorAB15 : std_logic;
signal notA0, notA1, notA2, notA3, notA4, notA5, notA6, notA7, notA8, notA9, notA10, notA11, notA12, notA13, notA14, notA15 : std_logic;

begin

andAB0 <= (A(0) and B(0)) after 1 ns;
andAB1 <= (A(1) and B(1)) after 1 ns;
andAB2 <= (A(2) and B(2)) after 1 ns;
andAB3 <= (A(3) and B(3)) after 1 ns;
andAB4 <= (A(4) and B(4)) after 1 ns;
andAB5 <= (A(5) and B(5)) after 1 ns;
andAB6 <= (A(6) and B(6)) after 1 ns;
andAB7 <= (A(7) and B(7)) after 1 ns;
andAB8 <= (A(8) and B(8)) after 1 ns;
andAB9 <= (A(9) and B(9)) after 1 ns;
andAB10 <= (A(10) and B(10)) after 1 ns;
andAB11 <= (A(11) and B(11)) after 1 ns;
andAB12 <= (A(12) and B(12)) after 1 ns;
andAB13 <= (A(13) and B(13)) after 1 ns;
andAB14 <= (A(14) and B(14)) after 1 ns;
andAB15 <= (A(15) and B(15)) after 1 ns;

orAB0 <= (A(0) or B(0)) after 1 ns;
orAB1 <= (A(1) or B(1)) after 1 ns;
orAB2 <= (A(2) or B(2)) after 1 ns;
orAB3 <= (A(3) or B(3)) after 1 ns;
orAB4 <= (A(4) or B(4)) after 1 ns;
orAB5 <= (A(5) or B(5)) after 1 ns;
orAB6 <= (A(6) or B(6)) after 1 ns;
orAB7 <= (A(7) or B(7)) after 1 ns;
orAB8 <= (A(8) or B(8)) after 1 ns;
orAB9 <= (A(9) or B(9)) after 1 ns;
orAB10 <= (A(10) or B(10)) after 1 ns;
orAB11 <= (A(11) or B(11)) after 1 ns;
orAB12 <= (A(12) or B(12)) after 1 ns;
orAB13 <= (A(13) or B(13)) after 1 ns;
orAB14 <= (A(14) or B(14)) after 1 ns;
orAB15 <= (A(15) or B(15)) after 1 ns;

xorAB0 <= (A(0) xor B(0)) after 1 ns;
xorAB1 <= (A(1) xor B(1)) after 1 ns;
xorAB2 <= (A(2) xor B(2)) after 1 ns;
xorAB3 <= (A(3) xor B(3)) after 1 ns;
xorAB4 <= (A(4) xor B(4)) after 1 ns;
xorAB5 <= (A(5) xor B(5)) after 1 ns;
xorAB6 <= (A(6) xor B(6)) after 1 ns;
xorAB7 <= (A(7) xor B(7)) after 1 ns;
xorAB8 <= (A(8) xor B(8)) after 1 ns;
xorAB9 <= (A(9) xor B(9)) after 1 ns;
xorAB10 <= (A(10) xor B(10)) after 1 ns;
xorAB11 <= (A(11) xor B(11)) after 1 ns;
xorAB12 <= (A(12) xor B(12)) after 1 ns;
xorAB13 <= (A(13) xor B(13)) after 1 ns;
xorAB14 <= (A(14) xor B(14)) after 1 ns;
xorAB15 <= (A(15) xor B(15)) after 1 ns;

notA0 <= not A(0) after 1 ns;
notA1 <= not A(1) after 1 ns;
notA2 <= not A(2) after 1 ns;
notA3 <= not A(3) after 1 ns;
notA4 <= not A(4) after 1 ns;
notA5 <= not A(5) after 1 ns;
notA6 <= not A(6) after 1 ns;
notA7 <= not A(7) after 1 ns;
notA8 <= not A(8) after 1 ns;
notA9 <= not A(9) after 1 ns;
notA10 <= not A(10) after 1 ns;
notA11 <= not A(11) after 1 ns;
notA12 <= not A(12) after 1 ns;
notA13 <= not A(13) after 1 ns;
notA14 <= not A(14) after 1 ns;
notA15 <= not A(15) after 1 ns;

mux00 : mux4to1 port map(
			in0 => andAB0,
			in1 => orAB0,
			in2 => xorAB0,
			in3 => notA0,
			s0 => select0,
			s1 => select1,
			z 	=> G(0)
);

mux01 : mux4to1 port map(
			in0 => andAB1,
			in1 => orAB1,
			in2 => xorAB1,
			in3 => notA1,
			s0 => select0,
			s1 => select1,
			z 	=> G(1)
);

mux02 : mux4to1 port map(
			in0 => andAB2,
			in1 => orAB2,
			in2 => xorAB2,
			in3 => notA2,
			s0 => select0,
			s1 => select1,
			z 	=> G(2)
);

mux03 : mux4to1 port map(
			in0 => andAB3,
			in1 => orAB3,
			in2 => xorAB3,
			in3 => notA3,
			s0 => select0,
			s1 => select1,
			z 	=> G(3)
);

mux04 : mux4to1 port map(
			in0 => andAB4,
			in1 => orAB4,
			in2 => xorAB4,
			in3 => notA4,
			s0 => select0,
			s1 => select1,
			z 	=> G(4)
);

mux05 : mux4to1 port map(
			in0 => andAB5,
			in1 => orAB5,
			in2 => xorAB5,
			in3 => notA5,
			s0 => select0,
			s1 => select1,
			z 	=> G(5)
);

mux06 : mux4to1 port map(
			in0 => andAB6,
			in1 => orAB6,
			in2 => xorAB6,
			in3 => notA6,
			s0 => select0,
			s1 => select1,
			z 	=> G(6)
);

mux07 : mux4to1 port map(
			in0 => andAB7,
			in1 => orAB7,
			in2 => xorAB7,
			in3 => notA7,
			s0 => select0,
			s1 => select1,
			z 	=> G(7)
);

mux08 : mux4to1 port map(
			in0 => andAB8,
			in1 => orAB8,
			in2 => xorAB8,
			in3 => notA8,
			s0 => select0,
			s1 => select1,
			z 	=> G(8)
);

mux09 : mux4to1 port map(
			in0 => andAB9,
			in1 => orAB9,
			in2 => xorAB9,
			in3 => notA9,
			s0 => select0,
			s1 => select1,
			z 	=> G(9)
);

mux10 : mux4to1 port map(
			in0 => andAB10,
			in1 => orAB10,
			in2 => xorAB10,
			in3 => notA10,
			s0 => select0,
			s1 => select1,
			z 	=> G(10)
);

mux11 : mux4to1 port map(
			in0 => andAB11,
			in1 => orAB11,
			in2 => xorAB11,
			in3 => notA11,
			s0 => select0,
			s1 => select1,
			z 	=> G(11)
);
mux12 : mux4to1 port map(
			in0 => andAB12,
			in1 => orAB12,
			in2 => xorAB12,
			in3 => notA12,
			s0 => select0,
			s1 => select1,
			z 	=> G(12)
);
mux13 : mux4to1 port map(
			in0 => andAB13,
			in1 => orAB13,
			in2 => xorAB13,
			in3 => notA13,
			s0 => select0,
			s1 => select1,
			z 	=> G(13)
);
mux14 : mux4to1 port map(
			in0 => andAB14,
			in1 => orAB14,
			in2 => xorAB14,
			in3 => notA14,
			s0 => select0,
			s1 => select1,
			z 	=> G(14)
);
mux15 : mux4to1 port map(
			in0 => andAB15,
			in1 => orAB15,
			in2 => xorAB15,
			in3 => notA15,
			s0 => select0,
			s1 => select1,
			z 	=> G(15)
);



end Behavioral;

