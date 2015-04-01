--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:55:30 03/03/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/zeroDetectTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: zeroDetect
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
 
ENTITY zeroDetectTest IS
END zeroDetectTest;
 
ARCHITECTURE behavior OF zeroDetectTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zeroDetect
    PORT(
         G : IN  std_logic_vector(15 downto 0);
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal G : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zeroDetect PORT MAP (
          G => G,
          Z => Z
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 1 ns;
		G <= X"0001";
		wait for 1 ns;
		G <= X"0000";
   end process;

END;
