--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:59:09 03/02/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/arithmeticCircuitLogicTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arithmeticCircuitLogic
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
 
ENTITY arithmeticCircuitLogicTest IS
END arithmeticCircuitLogicTest;
 
ARCHITECTURE behavior OF arithmeticCircuitLogicTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmeticCircuitLogic
    PORT(
         B : IN  std_logic_vector(15 downto 0);
         select0 : IN  std_logic;
         select1 : IN  std_logic;
         Y : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(15 downto 0) := X"FFFF";
   signal select0 : std_logic := '0';
   signal select1 : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmeticCircuitLogic PORT MAP (
          B => B,
          select0 => select0,
          select1 => select1,
          Y => Y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 1 ns;
		select0 <= '1';
		select1 <= '0';
		wait for 1 ns;
		select0 <= '0';
		select1 <= '1';
		wait for 1 ns;
		select0 <= '1';
		select1 <= '1';
		wait for 1 ns;
		select0 <= '0';
		select1 <= '0';
   end process;

END;
