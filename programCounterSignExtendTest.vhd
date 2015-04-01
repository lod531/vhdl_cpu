--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:42:26 03/22/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/programCounterSignExtendTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: programCounterSignExtend
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
 
ENTITY programCounterSignExtendTest IS
END programCounterSignExtendTest;
 
ARCHITECTURE behavior OF programCounterSignExtendTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT programCounterSignExtend
    PORT(
         input : IN  std_logic_vector(5 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: programCounterSignExtend PORT MAP (
          input => input,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 5 ns;
      input(3 downto 0) <= X"F";
		input(4) <= '0';
		input(5) <= '0';
		wait for 5 ns;
		input(3 downto 0) <= X"0";
		input(4) <= '0';
		input(5) <= '1';
   end process;

END;
