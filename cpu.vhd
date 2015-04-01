----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:36 03/19/2015 
-- Design Name: 
-- Module Name:    cpu - Behavioral 
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

entity cpu is
	port(PC : out std_logic_vector(15 downto 0);
			MW : out std_logic;
			MM : out std_logic;
			RW : out std_logic;
			MD : out std_logic;
			FS : out std_logic_vector(4 downto 0);
			MB : out std_logic;
			PL : out std_logic;
			PI : out std_logic;
			IL : out std_logic;
			MC : out std_logic;
			MS : out std_logic_vector(2 downto 0);
			NA : out std_logic_vector(7 downto 0);
			dataOut : out std_logic_vector(15 downto 0);
			CAROutputTest : out std_logic_vector(7 downto 0);
			OPCodeTest : out std_logic_vector(7 downto 0);
			sourceRegisterATest : out std_logic_vector(3 downto 0);
			sourceRegisterBTest : out std_logic_vector(3 downto 0);
			destinationRegisterTest : out std_logic_vector(3 downto 0);
			datapathOutputATest : out std_logic_vector(15 downto 0);
			datapathOutputBTest : out std_logic_vector(15 downto 0);
			programCounterSignExtendInputTest : out std_logic_vector(15 downto 0);
			CARLoad : out std_logic;
			ZTest : out std_logic; --zero out
			reset, Clk : in std_logic);
end cpu;

architecture Behavioral of cpu is

component datapath 
	port(destinationSelect, aSelect, bSelect : in std_logic_vector(3 downto 0);
		loadEnable : in std_logic;
		Clk : in std_logic;
		constantSelect : in std_logic;
		dataInSelect : in std_logic;
		constantIn, dataIn : in std_logic_vector(15 downto 0);
		addressOut, dataOut : out std_logic_vector(15 downto 0);
		functionSelect : in std_logic_vector(4 downto 0);
		V, C, N, Z : out std_logic);
end component;

component programCounterSignExtend
	port(input : in std_logic_vector(5 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component programCounter
	port(PI, PL, Clk, reset : in std_logic;
			offset : in std_logic_vector(15 downto 0);
			programCounterOutput : out std_logic_vector(15 downto 0));
end component;

component instructionRegister
	port(inputInstruction : in std_logic_vector(15 downto 0);
			instructionLoad, Clk, reset : in std_logic;
			opCode : out std_logic_vector(6 downto 0);
			destinationRegister : out std_logic_vector(2 downto 0);
			sourceRegisterA : out std_logic_vector(2 downto 0);
			sourceRegisterB : out std_logic_vector(2 downto 0));
end component;

component mux2to16
	port(s0 : in std_logic;
			i0, i1 : in std_logic_vector(15 downto 0);
			Z : out std_logic_vector(15 downto 0));
end component;

component controlAddressRegister
	port(addressIn : in std_logic_vector(7 downto 0);
			conditionIn, Clk, reset : in std_logic;
			addressOut : out std_logic_vector(7 downto 0));
end component;

component mux2to8
	port(s0 : in std_logic;
			i0, i1 : in std_logic_vector(7 downto 0);
			Z : out std_logic_vector(7 downto 0));
end component;

component control_memory
	Port ( MW : out std_logic;
		MM : out std_logic;
		RW : out std_logic;
		MD : out std_logic;
		FS : out std_logic_vector(4 downto 0);
		MB : out std_logic;
		TB : out std_logic;
		TA : out std_logic;
		TD : out std_logic;
		PL : out std_logic;
		PI : out std_logic;
		IL : out std_logic;
		MC : out std_logic;
		MS : out std_logic_vector(2 downto 0);
		NA : out std_logic_vector(7 downto 0);
		IN_CAR : in std_logic_vector(7 downto 0));
end component;

component threeToEightMultiplexer
	port(s0, s1, s2: in std_logic;
			in0, in1, in2, in3, in4, in5, in6, in7: in std_logic;
			Z : out std_logic);
end component;

component signExtend
	port(input : in std_logic_vector(2 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component memory
	Port ( address : in  std_logic_vector(15 downto 0);
				write_data : in std_logic_vector(15 downto 0);
				MemWrite, MemRead : in std_logic;
				read_data : out std_logic_vector(15 downto 0));
end component;

signal programCounterOffsetExtendedBits : std_logic_vector(15 downto 0);
signal programCounterOutput : std_logic_vector(15 downto 0);
signal datapathOutputA, datapathOutputB : std_logic_vector(15 downto 0);
signal addressOut : std_logic_vector(15 downto 0);
signal memoryOutput : std_logic_vector(15 downto 0);
signal MWsignal, MMSignal, RWSignal, MDSignal, MBSignal: std_logic;
signal TBSignal, TASignal, TDSignal, PLsignal, PISignal, ILSignal, MCSignal : std_logic; 
signal FSSignal : std_logic_vector(4 downto 0);
signal MSSignal : std_logic_vector(2 downto 0);
signal NASignal : std_logic_vector(7 downto 0);
signal destinationRegister, sourceRegisterA, sourceRegisterB : std_logic_vector(3 downto 0);
signal opCode : std_logic_vector(7 downto 0);
signal CARInput, CAROutput : std_logic_vector(7 downto 0);
signal conditionMuxOutput : std_logic;
signal N, Z, V, C, notZ, notC : std_logic;
signal programCounterSignExtendInput : std_logic_vector(5 downto 0);
signal signExtendOutput : std_logic_vector(15 downto 0);

begin

programCounterInstance: programCounter port map(
		PI => PISignal,
		PL => PLsignal,
		Clk => Clk,
		reset => reset,
		offset => programCounterOffsetExtendedBits,
		programCounterOutput => programCounterOutput
);

muxM : mux2to16 port map(
		s0 => MMsignal,
		i0 => datapathOutputA, 
		i1 => programCounterOutput,
		Z => addressOut
);

memoryInstance: memory port map(
		address => addressOut,
		write_data => datapathOutputB,
		MemWrite => MWSignal,
		MemRead => '1',
		read_data => memoryOutput
);

instructionRegisterInstance: instructionRegister port map(
		inputInstruction => memoryOutput,
		instructionLoad => ILSignal,
		Clk => Clk,
		reset => '0',
		opCode => opCode(6 downto 0),
		destinationRegister => destinationRegister(2 downto 0),
		sourceRegisterA => sourceRegisterA(2 downto 0),
		sourceRegisterB => sourceRegisterB(2 downto 0)
);

muxC: mux2to8 port map(
		s0 => MCSignal,
		i0 => NASignal,
		i1 => opCode,
		Z => CARInput
);

CARinstance : controlAddressRegister port map(
		addressIn => CARInput,
		conditionIn => conditionMuxOutput,
		Clk => Clk,
		reset => reset,
		addressOut => CAROutput
);

controlMemoryInstance: control_memory port map(
		MW => MWSignal,
		MM => MMSignal,
		RW => RWSignal,
		MD => MDSignal,
		FS => FSSignal,
		MB => MBSignal,
		TB => sourceRegisterB(3),
		TA => sourceRegisterA(3),
		TD => destinationRegister(3),
		PL => PLSignal,
		PI => PISignal,
		IL => ILSignal,
		MC => MCSignal,
		MS => MSSignal,
		NA => NASignal,
		IN_CAR => CAROutput
);
		
conditionMux: threeToEightMultiplexer port map(
		s0 => MSSignal(0),
		s1 => MSSignal(1),
		s2 => MSSignal(2),
		in0 => '0',
		in1 => '1',
		in2 => C,
		in3 => V,
		in4 => Z,
		in5 => N,
		in6 => notC,
		in7 => notZ,
		Z => conditionMuxOutput
);

programCoutnerSignExtendInstance: programCounterSignExtend port map(
		input => programCounterSignExtendInput,
		output => programCounterOffsetExtendedBits
);

signExtendInstance: signExtend port map(
		input => sourceRegisterB(2 downto 0),
		output => signExtendOutput
);

datapathInstance: datapath port map(
		destinationSelect => destinationRegister,
		aSelect => sourceRegisterA,
		bSelect => sourceRegisterB,
		loadEnable => RWSignal,
		Clk => Clk,
		constantSelect => MBSignal,
		dataInSelect => MDSignal,
		constantIn => signExtendOutput,
		dataIn => memoryOutput,
		addressOut => datapathOutputA,
		dataOut => datapathOutputB,
		functionSelect => FSSignal,
		V => V,
		C => C,
		N => N,
		Z => Z
);

programCounterSignExtendInput <= sourceRegisterA(2 downto 0) & sourceRegisterB(2 downto 0);
notZ <= not Z after 0 ns;
notC <= not C after 0 ns;
opCode(7) <= '0';	--takes care once and for all of the 8'th bit of the opcode

PC <= programCounterOutput;
MW <= MWSignal after 0 ns;
MM <= MMSignal after 0 ns;
RW <= RWSignal after 0 ns;
MD <= MDSignal after 0 ns;
FS <= FSSignal after 0 ns;
MB <= MBSignal after 0 ns;
PL <= PLSignal after 0 ns;
PI <= PISignal after 0 ns;
IL <= ILSignal after 0 ns;
MC <= MCSignal after 0 ns;
MS <= MSSignal after 0 ns;
NA <= NASignal after 0 ns;
dataOut <= memoryOutput after 0 ns;
CAROutputTest <= CAROutput after 0 ns;
OPCodeTest <= opCode after 0 ns;
sourceRegisterATest <= sourceRegisterA;
sourceRegisterBTest <= sourceRegisterB;
destinationRegisterTest <= destinationRegister;
CARLoad <= conditionMuxOutput;
datapathOutputATest <= datapathOutputA;
datapathOutputBTest <= datapathOutputB;
programCounterSignExtendInputTest <= programCounterOffsetExtendedBits;
ZTest <= Z;






end Behavioral;

