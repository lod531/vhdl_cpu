----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:23 03/02/2015 
-- Design Name: 
-- Module Name:    adder16 - Behavioral 
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

entity adder16 is
	port(in0, in1 : in std_logic_vector(15 downto 0);
			carryIn : in std_logic;
			sum : out std_logic_vector(15 downto 0);
			carryOut, overFlow : out std_logic);
end adder16;

architecture Behavioral of adder16 is

component fullAdder
	port(x, y, cIn : in std_logic;
			s, cOut : out std_logic);
end component;

signal c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16 : std_logic;

begin

adder00: fullAdder port map(
			x => in0(0),
			y => in1(0),
			cIn => carryIn,
			s => sum(0),
			cOut => c1
);

adder01: fullAdder port map(
			x => in0(1),
			y => in1(1),
			cIn => c1,
			s => sum(1),
			cOut => c2
);

adder02: fullAdder port map(
			x => in0(2),
			y => in1(2),
			cIn => c2,
			s => sum(2),
			cOut => c3
);

adder03: fullAdder port map(
			x => in0(3),
			y => in1(3),
			cIn => c3,
			s => sum(3),
			cOut => c4
);

adder04: fullAdder port map(
			x => in0(4),
			y => in1(4),
			cIn => c4,
			s => sum(4),
			cOut => c5
);

adder05: fullAdder port map(
			x => in0(5),
			y => in1(5),
			cIn => c5,
			s => sum(5),
			cOut => c6
);

adder06: fullAdder port map(
			x => in0(6),
			y => in1(6),
			cIn => c6,
			s => sum(6),
			cOut => c7
);

adder07: fullAdder port map(
			x => in0(7),
			y => in1(7),
			cIn => c7,
			s => sum(7),
			cOut => c8
);

adder08: fullAdder port map(
			x => in0(8),
			y => in1(8),
			cIn => c8,
			s => sum(8),
			cOut => c9
);

adder09: fullAdder port map(
			x => in0(9),
			y => in1(9),
			cIn => c9,
			s => sum(9),
			cOut => c10
);

adder10: fullAdder port map(
			x => in0(10),
			y => in1(10),
			cIn => c10,
			s => sum(10),
			cOut => c11
);

adder11: fullAdder port map(
			x => in0(11),
			y => in1(11),
			cIn => c11,
			s => sum(11),
			cOut => c12
);

adder12: fullAdder port map(
			x => in0(12),
			y => in1(12),
			cIn => c12,
			s => sum(12),
			cOut => c13
);

adder13: fullAdder port map(
			x => in0(13),
			y => in1(13),
			cIn => c13,
			s => sum(13),
			cOut => c14
);

adder14: fullAdder port map(
			x => in0(14),
			y => in1(14),
			cIn => c14,
			s => sum(14),
			cOut => c15
);

adder15: fullAdder port map(
			x => in0(15),
			y => in1(15),
			cIn => c15,
			s => sum(15),
			cOut => c16
);

overFlow <= (c15 xor c16) after 1 ns;
carryout <= c16 after 1 ns;

end Behavioral;

