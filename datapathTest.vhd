--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:00:39 03/16/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/datapathTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: datapath
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
 
ENTITY datapathTest IS
END datapathTest;
 
ARCHITECTURE behavior OF datapathTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT datapath
    PORT(
         destinationSelect : IN  std_logic_vector(3 downto 0);
         aSelect : IN  std_logic_vector(3 downto 0);
         bSelect : IN  std_logic_vector(3 downto 0);
         loadEnable : IN  std_logic;
         Clk : IN  std_logic;
         constantSelect : IN  std_logic;
         dataInSelect : IN  std_logic;
         constantIn : IN  std_logic_vector(15 downto 0);
         dataIn : IN  std_logic_vector(15 downto 0);
         addressOut : OUT  std_logic_vector(15 downto 0);
         dataOut : OUT  std_logic_vector(15 downto 0);
         functionSelect : IN  std_logic_vector(4 downto 0);
         V : OUT  std_logic;
         C : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal destinationSelect : std_logic_vector(3 downto 0) := (others => '0');
   signal aSelect : std_logic_vector(3 downto 0) := (others => '0');
   signal bSelect : std_logic_vector(3 downto 0) := (others => '0');
   signal loadEnable : std_logic := '0';
   signal Clk : std_logic := '0';
   signal constantSelect : std_logic := '0';
   signal dataInSelect : std_logic := '0';
   signal constantIn : std_logic_vector(15 downto 0) := (others => '0');
   signal dataIn : std_logic_vector(15 downto 0) := X"0005";
   signal functionSelect : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal addressOut : std_logic_vector(15 downto 0);
   signal dataOut : std_logic_vector(15 downto 0);
   signal V : std_logic;
   signal C : std_logic;
   signal N : std_logic;
   signal Z : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: datapath PORT MAP (
          destinationSelect => destinationSelect,
          aSelect => aSelect,
          bSelect => bSelect,
          loadEnable => loadEnable,
          Clk => Clk,
          constantSelect => constantSelect,
          dataInSelect => dataInSelect,
          constantIn => constantIn,
          dataIn => dataIn,
          addressOut => addressOut,
          dataOut => dataOut,
          functionSelect => functionSelect,
          V => V,
          C => C,
          N => N,
          Z => Z
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
		loadEnable <= '1';
		dataInSelect <= '1';
		constantSelect <= '0';
		aSelect(0) <= '0';
		aSelect(1) <= '0';
		aSelect(2) <= '0';
		bSelect(0) <= '1';
		bSelect(1) <= '0';
		bSelect(2) <= '0';
		wait for Clk_period;
		destinationSelect(0) <= '1';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		dataIn <= X"0002";
		wait for Clk_period;
		dataInSelect <= '0';
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		functionSelect(0) <= '0';
		functionSelect(1) <= '1';
		functionSelect(2) <= '0';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--^addition, to be stored back into register 0
		--register 0 now contains 7
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		functionSelect(0) <= '1';
		functionSelect(1) <= '0';
		functionSelect(2) <= '1';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--^subtraction, to be stored back into register 0
		--register 0 now contains 5, again.
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		constantIn <= X"0005";
		constantSelect <= '1';
		functionSelect(0) <= '1';
		functionSelect(1) <= '0';
		functionSelect(2) <= '1';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--^subtraction with constant, to be stored into r0
		--register 0 now contains 0
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		constantIn <= X"0005";
		constantSelect <= '1';
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '0';
		functionSelect(3) <= '0';
		functionSelect(4) <= '1';
		--^transfer from constant in, to be stored in r0
		--register 0 now contains 5
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		constantIn <= X"0005";
		constantSelect <= '1';
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '0';
		functionSelect(3) <= '1';
		functionSelect(4) <= '1';
		--^shift from constant in, to be stored in r0
		--register 0 now contains 10
		
		--all functionality is not retested, seeing as it was
		--already tested with previous testbenches
   end process;

END;
