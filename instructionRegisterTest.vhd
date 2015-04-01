--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:30:56 03/22/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/instructionRegisterTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: instructionRegister
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
 
ENTITY instructionRegisterTest IS
END instructionRegisterTest;
 
ARCHITECTURE behavior OF instructionRegisterTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instructionRegister
    PORT(
         inputInstruction : IN  std_logic_vector(15 downto 0);
         instructionLoad : IN  std_logic;
         Clk : IN  std_logic;
			reset : IN  std_logic;
         opCode : OUT  std_logic_vector(6 downto 0);
         destinationRegister : OUT  std_logic_vector(2 downto 0);
         sourceRegisterA : OUT  std_logic_vector(2 downto 0);
         sourceRegisterB : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputInstruction : std_logic_vector(15 downto 0) := (others => '0');
   signal instructionLoad : std_logic := '0';
   signal Clk : std_logic := '0';
	signal reset : std_logic := '0';

 	--Outputs
   signal opCode : std_logic_vector(6 downto 0);
   signal destinationRegister : std_logic_vector(2 downto 0);
   signal sourceRegisterA : std_logic_vector(2 downto 0);
   signal sourceRegisterB : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instructionRegister PORT MAP (
          inputInstruction => inputInstruction,
          instructionLoad => instructionLoad,
          Clk => Clk,
			 reset => reset,
          opCode => opCode,
          destinationRegister => destinationRegister,
          sourceRegisterA => sourceRegisterA,
          sourceRegisterB => sourceRegisterB
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
		instructionLoad <= '1';
		reset <= '0';
		inputInstruction <= X"FE88";
		wait for Clk_period;
		inputInstruction <= X"F888";
		wait for Clk_period;
		wait for Clk_period;
   end process;

END;
