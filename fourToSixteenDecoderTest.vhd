--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:50:17 03/16/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/fourToSixteenDecoderTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourToSixteenDecoder
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
 
ENTITY fourToSixteenDecoderTest IS
END fourToSixteenDecoderTest;
 
ARCHITECTURE behavior OF fourToSixteenDecoderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourToSixteenDecoder
    PORT(
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         s2 : IN  std_logic;
         s3 : IN  std_logic;
         out0 : OUT  std_logic;
         out1 : OUT  std_logic;
         out2 : OUT  std_logic;
         out3 : OUT  std_logic;
         out4 : OUT  std_logic;
         out5 : OUT  std_logic;
         out6 : OUT  std_logic;
         out7 : OUT  std_logic;
         out8 : OUT  std_logic;
         out9 : OUT  std_logic;
         out10 : OUT  std_logic;
         out11 : OUT  std_logic;
         out12 : OUT  std_logic;
         out13 : OUT  std_logic;
         out14 : OUT  std_logic;
         out15 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal s2 : std_logic := '0';
   signal s3 : std_logic := '0';

 	--Outputs
   signal out0 : std_logic;
   signal out1 : std_logic;
   signal out2 : std_logic;
   signal out3 : std_logic;
   signal out4 : std_logic;
   signal out5 : std_logic;
   signal out6 : std_logic;
   signal out7 : std_logic;
   signal out8 : std_logic;
   signal out9 : std_logic;
   signal out10 : std_logic;
   signal out11 : std_logic;
   signal out12 : std_logic;
   signal out13 : std_logic;
   signal out14 : std_logic;
   signal out15 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourToSixteenDecoder PORT MAP (
          s0 => s0,
          s1 => s1,
          s2 => s2,
          s3 => s3,
          out0 => out0,
          out1 => out1,
          out2 => out2,
          out3 => out3,
          out4 => out4,
          out5 => out5,
          out6 => out6,
          out7 => out7,
          out8 => out8,
          out9 => out9,
          out10 => out10,
          out11 => out11,
          out12 => out12,
          out13 => out13,
          out14 => out14,
          out15 => out15
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 1 ns;
		s0 <= '1';
		s1 <= '0';
		s2 <= '0';
		s3 <= '0';
		--1
		wait for 1 ns;
		s0 <= '0';
		s1 <= '1';
		s2 <= '0';
		s3 <= '0';
		--2
		wait for 1 ns;
		s0 <= '1';
		s1 <= '1';
		s2 <= '0';
		s3 <= '0';
		--3
		wait for 1 ns;
		s0 <= '0';
		s1 <= '0';
		s2 <= '1';
		s3 <= '0';
		--4
		wait for 1 ns;
		s0 <= '1';
		s1 <= '0';
		s2 <= '1';
		s3 <= '0';
		--5
		wait for 1 ns;
		s0 <= '0';
		s1 <= '1';
		s2 <= '1';
		s3 <= '0';
		--6
		wait for 1 ns;
		s0 <= '1';
		s1 <= '1';
		s2 <= '1';
		s3 <= '0';
		--7
		wait for 1 ns;
		s0 <= '0';
		s1 <= '0';
		s2 <= '0';
		s3 <= '1';
		--8
		wait for 1 ns;
		s0 <= '1';
		s1 <= '0';
		s2 <= '0';
		s3 <= '1';
		--9
		wait for 1 ns;
		s0 <= '0';
		s1 <= '1';
		s2 <= '0';
		s3 <= '1';
		--10
		wait for 1 ns;
		s0 <= '1';
		s1 <= '1';
		s2 <= '0';
		s3 <= '1';
		--11
		wait for 1 ns;
		s0 <= '0';
		s1 <= '0';
		s2 <= '1';
		s3 <= '1';
		--12
		wait for 1 ns;
		s0 <= '1';
		s1 <= '0';
		s2 <= '1';
		s3 <= '1';
		--13
		wait for 1 ns;
		s0 <= '0';
		s1 <= '1';
		s2 <= '1';
		s3 <= '1';
		--14
		wait for 1 ns;
		s0 <= '1';
		s1 <= '1';
		s2 <= '1';
		s3 <= '1';
		--15
   end process;

END;
