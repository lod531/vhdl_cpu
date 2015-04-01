----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:27:00 03/03/2015 
-- Design Name: 
-- Module Name:    shifter - Behavioral 
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

entity shifter is
	port(B : in std_logic_vector(15 downto 0);
			select0, select1 : in std_logic;
			H : out std_logic_vector(15 downto 0));
end shifter;

architecture Behavioral of shifter is

component mux4to1
	port(in0, in1, in2, in3 : in std_logic;
			s0, s1 : in std_logic;
			z : out std_logic);
end component;

begin

mux00 : mux4to1 port map(
			in0 => B(0),
			in1 => B(1),
			in2 => '0',
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(0)
);

mux01 : mux4to1 port map(
			in0 => B(1),
			in1 => B(2),
			in2 => B(0),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(1)
);

mux02 : mux4to1 port map(
			in0 => B(2),
			in1 => B(3),
			in2 => B(1),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(2)
);

mux03 : mux4to1 port map(
			in0 => B(3),
			in1 => B(4),
			in2 => B(2),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(3)
);

mux04 : mux4to1 port map(
			in0 => B(4),
			in1 => B(5),
			in2 => B(3),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(4)
);

mux05 : mux4to1 port map(
			in0 => B(5),
			in1 => B(6),
			in2 => B(4),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(5)
);

mux06 : mux4to1 port map(
			in0 => B(6),
			in1 => B(7),
			in2 => B(5),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(6)
);

mux07 : mux4to1 port map(
			in0 => B(7),
			in1 => B(8),
			in2 => B(6),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(7)
);

mux08 : mux4to1 port map(
			in0 => B(8),
			in1 => B(9),
			in2 => B(7),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(8)
);

mux09 : mux4to1 port map(
			in0 => B(9),
			in1 => B(10),
			in2 => B(8),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(9)
);

mux10 : mux4to1 port map(
			in0 => B(10),
			in1 => B(11),
			in2 => B(9),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(10)
);

mux11 : mux4to1 port map(
			in0 => B(11),
			in1 => B(12),
			in2 => B(10),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(11)
);

mux12 : mux4to1 port map(
			in0 => B(12),
			in1 => B(13),
			in2 => B(11),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(12)
);

mux13 : mux4to1 port map(
			in0 => B(13),
			in1 => B(14),
			in2 => B(12),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(13)
);

mux14 : mux4to1 port map(
			in0 => B(14),
			in1 => B(15),
			in2 => B(13),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(14)
);

mux15 : mux4to1 port map(
			in0 => B(15),
			in1 => '0',
			in2 => B(14),
			in3 => '0',
			s0 => select0,
			s1 => select1,
			z 	=> H(15)
);


end Behavioral;

