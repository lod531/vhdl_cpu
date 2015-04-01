--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:26:47 03/16/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/fourToSixteenMuxTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourToSixteenMux
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
 
ENTITY fourToSixteenMuxTest IS
END fourToSixteenMuxTest;
 
ARCHITECTURE behavior OF fourToSixteenMuxTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourToSixteenMux
    PORT(
         in0 : IN  std_logic_vector(15 downto 0);
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         in3 : IN  std_logic_vector(15 downto 0);
         in4 : IN  std_logic_vector(15 downto 0);
         in5 : IN  std_logic_vector(15 downto 0);
         in6 : IN  std_logic_vector(15 downto 0);
         in7 : IN  std_logic_vector(15 downto 0);
         in8 : IN  std_logic_vector(15 downto 0);
         in9 : IN  std_logic_vector(15 downto 0);
         in10 : IN  std_logic_vector(15 downto 0);
         in11 : IN  std_logic_vector(15 downto 0);
         in12 : IN  std_logic_vector(15 downto 0);
         in13 : IN  std_logic_vector(15 downto 0);
         in14 : IN  std_logic_vector(15 downto 0);
         in15 : IN  std_logic_vector(15 downto 0);
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         s2 : IN  std_logic;
         s3 : IN  std_logic;
         z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(15 downto 0) := X"0000";
   signal in1 : std_logic_vector(15 downto 0) := X"0001";
   signal in2 : std_logic_vector(15 downto 0) := X"0002";
   signal in3 : std_logic_vector(15 downto 0) := X"0003";
   signal in4 : std_logic_vector(15 downto 0) := X"0004";
   signal in5 : std_logic_vector(15 downto 0) := X"0005";
   signal in6 : std_logic_vector(15 downto 0) := X"0006";
   signal in7 : std_logic_vector(15 downto 0) := X"0007";
   signal in8 : std_logic_vector(15 downto 0) := X"0008";
   signal in9 : std_logic_vector(15 downto 0) := X"0009";
   signal in10 : std_logic_vector(15 downto 0) := X"000A";
   signal in11 : std_logic_vector(15 downto 0) := X"000B";
   signal in12 : std_logic_vector(15 downto 0) := X"000C";
   signal in13 : std_logic_vector(15 downto 0) := X"000D";
   signal in14 : std_logic_vector(15 downto 0) := X"000E";
   signal in15 : std_logic_vector(15 downto 0) := X"000F";
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal s2 : std_logic := '0';
   signal s3 : std_logic := '0';

 	--Outputs
   signal z : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourToSixteenMux PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
          in8 => in8,
          in9 => in9,
          in10 => in10,
          in11 => in11,
          in12 => in12,
          in13 => in13,
          in14 => in14,
          in15 => in15,
          s0 => s0,
          s1 => s1,
          s2 => s2,
          s3 => s3,
          z => z
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
