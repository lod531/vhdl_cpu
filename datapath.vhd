----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:37 03/03/2015 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
	port(destinationSelect, aSelect, bSelect : in std_logic_vector(3 downto 0);
		loadEnable : in std_logic;
		Clk : in std_logic;
		constantSelect : in std_logic;
		dataInSelect : in std_logic;
		constantIn, dataIn : in std_logic_vector(15 downto 0);
		addressOut, dataOut : out std_logic_vector(15 downto 0);
		functionSelect : in std_logic_vector(4 downto 0);
		V, C, N, Z : out std_logic);
end datapath;

architecture Behavioral of datapath is

component functionUnit
	port(A, B : in std_logic_vector(15 downto 0);
			functionSelect : in std_logic_vector(4 downto 0);
			V, C, N, Z : out std_logic;
			F : out std_logic_vector(15 downto 0));
end component;

component registerFile
	port(srcS0, srcS1, srcS2, srcS3: in std_logic;
			src2S0, src2S1, src2S2, src2S3 : in std_logic;
			desS0, desS1, desS2, desS3 : in std_logic;
			loadEnable : in std_logic;
			Clk : in std_logic;
			dataIn : in std_logic_vector(15 downto 0);
			aData, bData : out std_logic_vector(15 downto 0));
end component;

component mux2to16
	port(s0 : in std_logic;
			i0, i1 : in std_logic_vector(15 downto 0);
			Z : out std_logic_vector(15 downto 0));
end component;
	
signal A, B, constantMuxSelect, functionUnitOutput, dataInMuxSelect : std_logic_vector(15 downto 0);

begin

registerFileComponent: registerFile port map(
			srcS0 => aSelect(0),
			srcS1 => aSelect(1),
			srcS2 => aSelect(2),
			srcS3 => aSelect(3),
			src2S0 => bSelect(0),
			src2S1 => bSelect(1),
			src2S2 => bSelect(2),
			src2S3 => bSelect(3),
			desS0 => destinationSelect(0),
			desS1 => destinationSelect(1),
			desS2 => destinationSelect(2),
			desS3 => destinationSelect(3),
			loadEnable => loadEnable,
			Clk => Clk,
			dataIn => dataInMuxSelect,
			aData => A,
			bData => B
);

constantMuxSelectComponent: mux2to16 port map(
			s0 => constantSelect,
			i0 => B,
			i1 => constantIn,
			Z => constantMuxSelect
);

functionUnitComponent: functionUnit port map(
			A => A,
			B => constantMuxSelect,
			functionSelect => functionSelect,
			V => V,
			C => C,
			N => N,
			Z => Z,
			F => functionUnitOutput
);

dataInMuxSelectComponent: mux2to16 port map(
			s0 => dataInSelect,
			i0 => functionUnitOutput,
			i1 => dataIn,
			Z => dataInMuxSelect
);

addressOut <= A after 1 ns;
dataOut <= constantMuxSelect after 1 ns;


end Behavioral;

