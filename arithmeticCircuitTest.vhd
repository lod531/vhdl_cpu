--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:05:33 03/02/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/arithmeticCircuitTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arithmeticCircuit
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
 
ENTITY arithmeticCircuitTest IS
END arithmeticCircuitTest;
 
ARCHITECTURE behavior OF arithmeticCircuitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmeticCircuit
    PORT(
         input0 : IN  std_logic_vector(15 downto 0);
         input1 : IN  std_logic_vector(15 downto 0);
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         cIn : IN  std_logic;
         cOut : OUT  std_logic;
			overFlow : OUT  std_logic;
         z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input0 : std_logic_vector(15 downto 0) := X"0001";
   signal input1 : std_logic_vector(15 downto 0) := X"0001";
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal cIn : std_logic := '0';

 	--Outputs
   signal cOut : std_logic;
	signal overFlow : std_logic;
   signal z : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmeticCircuit PORT MAP (
          input0 => input0,
          input1 => input1,
          s0 => s0,
          s1 => s1,
          cIn => cIn,
          cOut => cOut,
          z => z,
			 overFlow => overFlow
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
		s0 <= '0';
		s1 <= '0';
		cIn <= '1';
		wait for 20 ns;
		s0 <= '1';
		s1 <= '0';
		cIn <= '1';
		wait for 20ns;
		s0 <= '0';
		s1 <= '1';
		cIn <= '1';
   end process;

END;
