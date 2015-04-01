--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:31:34 03/23/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/cpuTestBasic.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cpu
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cpuTestBasic IS
END cpuTestBasic;
 
ARCHITECTURE behavior OF cpuTestBasic IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cpu
    PORT(
         PC : OUT  std_logic_vector(15 downto 0);
         MW : OUT  std_logic;
         MM : OUT  std_logic;
         RW : OUT  std_logic;
         MD : OUT  std_logic;
         FS : OUT  std_logic_vector(4 downto 0);
         MB : OUT  std_logic;
         PL : OUT  std_logic;
         PI : OUT  std_logic;
         IL : OUT  std_logic;
         MC : OUT  std_logic;
         MS : OUT  std_logic_vector(2 downto 0);
         NA : OUT  std_logic_vector(7 downto 0);
         dataOut : OUT  std_logic_vector(15 downto 0);
         CAROutputTest : OUT  std_logic_vector(7 downto 0);
         OPCodeTest : OUT  std_logic_vector(7 downto 0);
			sourceRegisterATest : OUT std_logic_vector(3 downto 0);
			sourceRegisterBTest : OUT std_logic_vector(3 downto 0);
			destinationRegisterTest : OUT std_logic_vector(3 downto 0);
			CARLoad : OUT std_logic;
			datapathOutputATest : OUT  std_logic_vector(15 downto 0);
			datapathOutputBTest : OUT  std_logic_vector(15 downto 0);
			programCounterSignExtendInputTest : OUT std_logic_vector(15 downto 0);
			ZTest : OUT std_logic;
         reset : IN  std_logic;
         Clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal PC : std_logic_vector(15 downto 0);
   signal CAR : std_logic_vector(7 downto 0);
   signal MW : std_logic;
   signal MM : std_logic;
   signal RW : std_logic;
   signal MD : std_logic;
   signal FS : std_logic_vector(4 downto 0);
   signal MB : std_logic;
   signal PL : std_logic;
   signal PI : std_logic;
   signal IL : std_logic;
   signal MC : std_logic;
   signal MS : std_logic_vector(2 downto 0);
   signal NA : std_logic_vector(7 downto 0);
   signal dataOut : std_logic_vector(15 downto 0);
   signal CAROutputTest : std_logic_vector(7 downto 0);
   signal OPCodeTest : std_logic_vector(7 downto 0);
	signal sourceRegisterATest : std_logic_vector(3 downto 0);
	signal sourceRegisterBTest : std_logic_vector(3 downto 0);
	signal destinationRegisterTest : std_logic_vector(3 downto 0);
	signal CARLoad : std_logic;
	signal datapathOutputATest : std_logic_vector(15 downto 0);
	signal datapathOutputBTest: std_logic_vector(15 downto 0);
	signal programCounterSignExtendInputTest : std_logic_vector(15 downto 0);
	signal ZTest : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cpu PORT MAP (
          PC => PC,
          MW => MW,
          MM => MM,
          RW => RW,
          MD => MD,
          FS => FS,
          MB => MB,
          PL => PL,
          PI => PI,
          IL => IL,
          MC => MC,
          MS => MS,
          NA => NA,
          dataOut => dataOut,
          CAROutputTest => CAROutputTest,
          OPCodeTest => OPCodeTest,
			 sourceRegisterATest => sourceRegisterATest,
			 sourceRegisterBTest => sourceRegisterBTest,
			 destinationRegisterTest => destinationRegisterTest,
			 CARLoad => CARLoad,
			 datapathOutputATest => datapathOutputATest,
			 datapathOutputBTest => datapathOutputBTest,
			 programCounterSignExtendInputTest => programCounterSignExtendInputTest,
			 ZTest => ZTest,
          reset => reset,
          Clk => Clk
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for Clk_period;
		reset <= '1';
		wait for Clk_period;
		reset <= '0';
		wait;
   end process;

END;
