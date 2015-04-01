--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:46:43 03/02/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/arithmeticLogicUnitTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arithmeticLogicUnit
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
 
ENTITY arithmeticLogicUnitTest IS
END arithmeticLogicUnitTest;
 
ARCHITECTURE behavior OF arithmeticLogicUnitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmeticLogicUnit
    PORT(
         carryIn : IN  std_logic;
         select0 : IN  std_logic;
         select1 : IN  std_logic;
         outputSelect : IN  std_logic;
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         G : OUT  std_logic_vector(15 downto 0);
         carryOut : OUT  std_logic;
			overFlow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal carryIn : std_logic := '0';
   signal select0 : std_logic := '0';
   signal select1 : std_logic := '0';
   signal outputSelect : std_logic := '0';
   signal A : std_logic_vector(15 downto 0) := X"0005";
   signal B : std_logic_vector(15 downto 0) := X"0003";

 	--Outputs
   signal G : std_logic_vector(15 downto 0);
   signal carryOut : std_logic;
	signal overFlow : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmeticLogicUnit PORT MAP (
          carryIn => carryIn,
          select0 => select0,
          select1 => select1,
          outputSelect => outputSelect,
          A => A,
          B => B,
          G => G,
          carryOut => carryOut,
			 overFlow => overFlow
        );
 
   -- the resulting sequence should be:
	-- 5 6 8 9 2 4
	-- which it is.
   -- Stimulus process
   stim_proc: process
   begin	
			--starts by default with transfer^
			wait for 25 ns;
			select0 <= '0';
			select1 <= '0';
			outputSelect <= '0';
			carryIn <= '1';
			--increment^
			wait for 25 ns;
			select0 <= '1';
			select1 <= '0';
			outputSelect <= '0';
			carryIn <= '0';
			--add^
			wait for 25 ns;
			select0 <= '1';
			select1 <= '0';
			outputSelect <= '0';
			carryIn <= '1';
			--add with c^
			wait for 25 ns;
			select0 <= '0';
			select1 <= '1';
			outputSelect <= '0';
			carryIn <= '1';
			--subtract^
			wait for 25 ns;
			select0 <= '1';
			select1 <= '1';
			outputSelect <= '0';
			carryIn <= '0';
			--decrement^
			
			--LOGIC TESTS
			--Resulting sequence should be: 1 7 6 not A
			--Which it is.
			wait for 25 ns;
			select0 <= '0';
			select1 <= '0';
			outputSelect <= '1';
			wait for 25 ns;
			select0 <= '1';
			select1 <= '0';
			outputSelect <= '1';
			wait for 25 ns;
			select0 <= '0';
			select1 <= '1';
			outputSelect <= '1';
			wait for 25 ns;
			select0 <= '1';
			select1 <= '1';
			outputSelect <= '1';
			
      
   end process;

END;
