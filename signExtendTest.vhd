--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:18:40 03/22/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/signExtendTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: signExtend
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
 
ENTITY signExtendTest IS
END signExtendTest;
 
ARCHITECTURE behavior OF signExtendTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT signExtend
    PORT(
         input : IN  std_logic_vector(2 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: signExtend PORT MAP (
          input => input,
          output => output
        );
 

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 5 ns;
      input(0) <= '0';
		input(1) <= '1';
		input(2) <= '0';
		wait for 5 ns;
		input(0) <= '0';
		input(1) <= '1';
		input(2) <= '1';
   end process;

END;
