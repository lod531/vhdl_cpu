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

entity arithmeticCircuitLogic is
	port(B : in std_logic_vector(15 downto 0);
			select0, select1 : in std_logic;
			Y : out std_logic_vector(15 downto 0));
end arithmeticCircuitLogic;

architecture Behavioral of arithmeticCircuitLogic is

component mux4to1
	port(in0, in1, in2, in3 : in std_logic;
			s0, s1 : in std_logic;
			z : out std_logic);
end component;

signal notB0, notB1, notB2, notB3, notB4, notB5, notB6, notB7, notB8, notB9, notB10, notB11, notB12, notB13, notB14, notB15 : std_logic;

begin

notB0 <= not B(0) after 1 ns;
notB1 <= not B(1) after 1 ns;
notB2 <= not B(2) after 1 ns;
notB3 <= not B(3) after 1 ns;
notB4 <= not B(4) after 1 ns;
notB5 <= not B(5) after 1 ns;
notB6 <= not B(6) after 1 ns;
notB7 <= not B(7) after 1 ns;
notB8 <= not B(8) after 1 ns;
notB9 <= not B(9) after 1 ns;
notB10 <= not B(10) after 1 ns;
notB11 <= not B(11) after 1 ns;
notB12 <= not B(12) after 1 ns;
notB13 <= not B(13) after 1 ns;
notB14 <= not B(14) after 1 ns;
notB15 <= not B(15) after 1 ns;

mux00 : mux4to1 port map(
			in0 => '0',
			in1 => B(0),
			in2 => notB0,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(0)
);

mux01 : mux4to1 port map(
			in0 => '0',
			in1 => B(1),
			in2 => notB1,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(1)
);

mux02 : mux4to1 port map(
			in0 => '0',
			in1 => B(2),
			in2 => notB2,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(2)
);

mux03 : mux4to1 port map(
			in0 => '0',
			in1 => B(3),
			in2 => notB3,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(3)
);

mux04 : mux4to1 port map(
			in0 => '0',
			in1 => B(4),
			in2 => notB4,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(4)
);

mux05 : mux4to1 port map(
			in0 => '0',
			in1 => B(5),
			in2 => notB5,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(5)
);

mux06 : mux4to1 port map(
			in0 => '0',
			in1 => B(6),
			in2 => notB6,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(6)
);

mux07 : mux4to1 port map(
			in0 => '0',
			in1 => B(7),
			in2 => notB7,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(7)
);

mux08 : mux4to1 port map(
			in0 => '0',
			in1 => B(8),
			in2 => notB8,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(8)
);

mux09 : mux4to1 port map(
			in0 => '0',
			in1 => B(9),
			in2 => notB9,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(9)
);

mux10 : mux4to1 port map(
			in0 => '0',
			in1 => B(10),
			in2 => notB10,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(10)
);

mux11 : mux4to1 port map(
			in0 => '0',
			in1 => B(11),
			in2 => notB11,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(11)
);

mux12 : mux4to1 port map(
			in0 => '0',
			in1 => B(12),
			in2 => notB12,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(12)
);

mux13 : mux4to1 port map(
			in0 => '0',
			in1 => B(13),
			in2 => notB13,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(13)
);

mux14 : mux4to1 port map(
			in0 => '0',
			in1 => B(14),
			in2 => notB14,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(14)
);

mux15 : mux4to1 port map(
			in0 => '0',
			in1 => B(15),
			in2 => notB15,
			in3 => '1',
			s0 => select0,
			s1 => select1,
			z 	=> Y(15)
);


end Behavioral;

