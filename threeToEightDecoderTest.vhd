--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:27:42 02/15/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/threeToEightDecoderTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: threeToEightDecoder
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
 
ENTITY threeToEightDecoderTest IS
END threeToEightDecoderTest;
 
ARCHITECTURE behavior OF threeToEightDecoderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT threeToEightDecoder
    PORT(
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         s2 : IN  std_logic;
         o0 : OUT  std_logic;
         o1 : OUT  std_logic;
         o2 : OUT  std_logic;
         o3 : OUT  std_logic;
         o4 : OUT  std_logic;
         o5 : OUT  std_logic;
         o6 : OUT  std_logic;
         o7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal s2 : std_logic := '0';

 	--Outputs
   signal o0 : std_logic:= '0';
   signal o1 : std_logic:= '0';
   signal o2 : std_logic:= '0';
   signal o3 : std_logic:= '0';
   signal o4 : std_logic:= '0';
   signal o5 : std_logic:= '0';
   signal o6 : std_logic:= '0';
   signal o7 : std_logic:= '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: threeToEightDecoder PORT MAP (
          s0 => s0,
          s1 => s1,
          s2 => s2,
          o0 => o0,
          o1 => o1,
          o2 => o2,
          o3 => o3,
          o4 => o4,
          o5 => o5,
          o6 => o6,
          o7 => o7
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 10 ns;
		s0 <= '0';
		s1 <= '0';
		s2 <= '0';
      wait for 10 ns;
		s0 <= '1';
		s1 <= '0';
		s2 <= '0';
		wait for 10 ns;
		s0 <= '0';
		s1 <= '1';
		s2 <= '0';
		wait for 10 ns;
		s0 <= '1';
		s1 <= '1';
		s2 <= '0';
		wait for 10 ns;
		s0 <= '0';
		s1 <= '0';
		s2 <= '1';
		wait for 10 ns;
		s0 <= '1';
		s1 <= '0';
		s2 <= '1';
		wait for 10 ns;
		s0 <= '0';
		s1 <= '1';
		s2 <= '1';
		wait for 10 ns;
		s0 <= '1';
		s1 <= '1';
		s2 <= '1';
   end process;

END;
