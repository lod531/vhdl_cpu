----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:55 02/15/2015 
-- Design Name: 
-- Module Name:    registerFile - Behavioral 
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

entity registerFile is
	port(srcS0, srcS1, srcS2, srcS3: in std_logic;
			src2S0, src2S1, src2S2, src2S3 : in std_logic;
			desS0, desS1, desS2, desS3 : in std_logic;
			loadEnable : in std_logic;
			Clk : in std_logic;
			dataIn : in std_logic_vector(15 downto 0);
			aData, bData : out std_logic_vector(15 downto 0));
end registerFile;

architecture Behavioral of registerFile is

component reg16
	port(	D : in std_logic_vector(15 downto 0);
			load 	: in std_logic;
			Clk  	: in std_logic;
			Q	  	: out std_logic_vector(15 downto 0));
end component;

component fourToSixteenMux
	port(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15 : in std_logic_vector(15 downto 0);
			s0, s1, s2, s3 : in std_logic;
			z : out std_logic_vector(15 downto 0));
end component;

component fourToSixteenDecoder
	port(s0, s1, s2, s3 : in std_logic;
			out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15 : out std_logic);
end component;



signal loadReg0, loadReg1, loadReg2, loadReg3, loadReg4, loadReg5, loadReg6, loadReg7, loadReg8 : std_logic;
signal loadRegAnd0, loadRegAnd1, loadRegAnd2,loadRegAnd3, loadRegAnd4, loadRegAnd5, loadRegAnd6, loadRegAnd7, loadRegAnd8 : std_logic;
signal reg0Q, reg1Q, reg2Q, reg3Q, reg4Q, reg5Q, reg6Q, reg7Q, reg8Q, srcReg  : std_logic_vector(15 downto 0);

begin

loadRegAnd0	<= (loadReg0 and loadEnable) after 5 ns;
loadRegAnd1	<= (loadReg1 and loadEnable) after 5 ns;
loadRegAnd2	<= (loadReg2 and loadEnable) after 5 ns;
loadRegAnd3	<= (loadReg3 and loadEnable) after 5 ns;
loadRegAnd4	<= (loadReg4 and loadEnable) after 5 ns;
loadRegAnd5	<= (loadReg5 and loadEnable) after 5 ns;
loadRegAnd6	<= (loadReg6 and loadEnable) after 5 ns;
loadRegAnd7	<= (loadReg7 and loadEnable) after 5 ns;
loadRegAnd8	<= (loadReg8 and loadEnable) after 5 ns;

reg00: reg16 port map(
			D => dataIn,
			load => loadRegAnd0,
			Clk => Clk,
			Q	=> reg0Q
);

reg01: reg16 port map(
			D => dataIn,
			load => loadRegAnd1,
			Clk => Clk,
			Q	=> reg1Q
);

reg02: reg16 port map(
			D => dataIn,
			load => loadRegAnd2,
			Clk => Clk,
			Q	=> reg2Q
);

reg03: reg16 port map(
			D => dataIn,
			load => loadRegAnd3,
			Clk => Clk,
			Q	=> reg3Q
);

reg04: reg16 port map(
			D => dataIn,
			load => loadRegAnd4,
			Clk => Clk,
			Q	=> reg4Q
);

reg05: reg16 port map(
			D => dataIn,
			load => loadRegAnd5,
			Clk => Clk,
			Q	=> reg5Q
);

reg06: reg16 port map(
			D => dataIn,
			load => loadRegAnd6,
			Clk => Clk,
			Q	=> reg6Q
);

reg07: reg16 port map(
			D => dataIn,
			load => loadRegAnd7,
			Clk => Clk,
			Q	=> reg7Q
);

reg08: reg16 port map(
			D => dataIn,
			load => loadRegAnd8,
			Clk => Clk,
			Q	=> reg8Q
);

destinationDecoderFourToSixteen : fourToSixteenDecoder port map(
			s0 => desS0,
			s1 => desS1,
			s2 => desS2,
			s3 => desS3,
			out0 => loadReg0,
			out1 => loadReg1,
			out2 => loadReg2,
			out3 => loadReg3,
			out4 => loadReg4,
			out5 => loadReg5,
			out6 => loadReg6,
			out7 => loadReg7,
			out8 => loadReg8,
			out9 => loadReg8,
			out10 => loadReg8,
			out11 => loadReg8,
			out12 => loadReg8,
			out13 => loadReg8,
			out14 => loadReg8,
			out15 => loadReg8
);

fourToSixteenSourceRegisterMux : fourToSixteenMux port map(
			in0 => reg0Q,
			in1 => reg1Q,
			in2 => reg2Q,
			in3 => reg3Q,
			in4 => reg4Q,
			in5 => reg5Q,
			in6 => reg6Q,
			in7 => reg7Q,
			in8 => reg8Q,
			in9 => reg8Q,
			in10 => reg8Q,
			in11 => reg8Q,
			in12 => reg8Q,
			in13 => reg8Q,
			in14 => reg8Q,
			in15 => reg8Q,
			s0 => srcS0,
			s1 => srcS1,
			s2 => srcS2,
			s3 => srcS3,
			Z => aData
);

fourToSixteenSourceRegisterMux2 : fourToSixteenMux port map(
			in0 => reg0Q,
			in1 => reg1Q,
			in2 => reg2Q,
			in3 => reg3Q,
			in4 => reg4Q,
			in5 => reg5Q,
			in6 => reg6Q,
			in7 => reg7Q,
			in8 => reg8Q,
			in9 => reg8Q,
			in10 => reg8Q,
			in11 => reg8Q,
			in12 => reg8Q,
			in13 => reg8Q,
			in14 => reg8Q,
			in15 => reg8Q,
			s0 => src2S0,
			s1 => src2S1,
			s2 => src2S2,
			s3 => src2S3,
			Z => bData
);
end Behavioral;

