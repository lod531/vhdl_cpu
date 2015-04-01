--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:04:23 03/02/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/logicCircuitTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: logicCircuit
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
 
ENTITY logicCircuitTest IS
END logicCircuitTest;
 
ARCHITECTURE behavior OF logicCircuitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logicCircuit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         select0 : IN  std_logic;
         select1 : IN  std_logic;
         G : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := X"0001";
   signal B : std_logic_vector(15 downto 0) := X"0003";
   signal select0 : std_logic := '0';
   signal select1 : std_logic := '0';

 	--Outputs
   signal G : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logicCircuit PORT MAP (
          A => A,
          B => B,
          select0 => select0,
          select1 => select1,
          G => G
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 2 ns;
		select0 <= '1';
		select1 <= '0';
		wait for 2 ns;
		select0 <= '0';
		select1 <= '1';
		wait for 2 ns;
		select0 <= '1';
		select1 <= '1';
		wait for 2 ns;
		select0 <= '0';
		select1 <= '0';
		
   end process;

END;
