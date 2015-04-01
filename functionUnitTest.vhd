--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:04:39 03/03/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/functionUnitTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: functionUnit
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
 
ENTITY functionUnitTest IS
END functionUnitTest;
 
ARCHITECTURE behavior OF functionUnitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT functionUnit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         functionSelect : IN  std_logic_vector(4 downto 0);
         V : OUT  std_logic;
         C : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic;
         F : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := X"0004";
   signal B : std_logic_vector(15 downto 0) := X"0003";
   signal functionSelect : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal V : std_logic;
   signal C : std_logic;
   signal N : std_logic;
   signal Z : std_logic;
   signal F : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: functionUnit PORT MAP (
          A => A,
          B => B,
          functionSelect => functionSelect,
          V => V,
          C => C,
          N => N,
          Z => Z,
          F => F
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		--^F = A = 4
      wait for 30 ns;
		functionSelect(0) <= '1';
		functionSelect(1) <= '0';
		functionSelect(2) <= '0';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--increment ^ = 5
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '1';
		functionSelect(2) <= '0';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--addition ^ = 7
		wait for 30 ns;
		functionSelect(0) <= '1';
		functionSelect(1) <= '1';
		functionSelect(2) <= '0';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--increment + addition = 8
		wait for 30 ns;
		functionSelect(0) <= '1';
		functionSelect(1) <= '0';
		functionSelect(2) <= '1';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--subtraction = 1
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '1';
		functionSelect(2) <= '1';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--decrement = 3
		
		--LOGIC OPERATION TESTS
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '0';
		functionSelect(3) <= '1';
		functionSelect(4) <= '0';
		--A AND B = 0
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '1';
		functionSelect(2) <= '0';
		functionSelect(3) <= '1';
		functionSelect(4) <= '0';
		--A OR B = 7
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '1';
		functionSelect(3) <= '1';
		functionSelect(4) <= '0';
		--A XOR B = 7
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '1';
		functionSelect(2) <= '1';
		functionSelect(3) <= '1';
		functionSelect(4) <= '0';
		--NOT A
		
		--SHIFTER TESTS
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '1';
		functionSelect(3) <= '0';
		functionSelect(4) <= '1';
		--SHIFT RIGHT 3 = 1
		wait for 30 ns;
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '0';
		functionSelect(3) <= '1';
		functionSelect(4) <= '1';
		--SHIFT LEFT 3 = 6
		
		
	
		
		
		
		
   end process;

END;
