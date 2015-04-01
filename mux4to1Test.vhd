--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:55:13 03/02/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/mux4to1Test.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4to1
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
 
ENTITY mux4to1Test IS
END mux4to1Test;
 
ARCHITECTURE behavior OF mux4to1Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4to1
    PORT(
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         in3 : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic := '0';
   signal in1 : std_logic := '1';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '1';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';

 	--Outputs
   signal z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4to1 PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          s0 => s0,
          s1 => s1,
          z => z
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 1 ns;
		s0 <= '1';
		s1 <= '0';
		wait for 1 ns;
		s0 <= '0';
		s1 <= '1';
		wait for 1 ns;
		s0 <= '1';
		s1 <= '1';
		wait for 1 ns;
		s0 <= '0';
		s1 <= '0';
   end process;

END;
