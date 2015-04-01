--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:09:31 03/02/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/fullAdderTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullAdder
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
 
ENTITY fullAdderTest IS
END fullAdderTest;
 
ARCHITECTURE behavior OF fullAdderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdder
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         cIn : IN  std_logic;
         s : OUT  std_logic;
         cOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal cIn : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal cOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
	constant propogationDelay : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdder PORT MAP (
          x => x,
          y => y,
          cIn => cIn,
          s => s,
          cOut => cOut
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for propogationDelay;
		x <= '0';
		y <= '0';
		cIn <= '1';
		wait for propogationDelay;
		x <= '0';
		y <= '1';
		cIn <= '0';
		wait for propogationDelay;
		x <= '0';
		y <= '1';
		cIn <= '1';
		wait for propogationDelay;
		x <= '1';
		y <= '0';
		cIn <= '0';
		wait for propogationDelay;
		x <= '1';
		y <= '0';
		cIn <= '1';
		wait for propogationDelay;
		x <= '1';
		y <= '1';
		cIn <= '0';
		wait for propogationDelay;
		x <= '1';
		y <= '1';
		cIn <= '1';
		
   end process;

END;
