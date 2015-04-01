--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:09:24 03/03/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/adder16Test.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder16
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
 
ENTITY adder16Test IS
END adder16Test;
 
ARCHITECTURE behavior OF adder16Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder16
    PORT(
         in0 : IN  std_logic_vector(15 downto 0);
         in1 : IN  std_logic_vector(15 downto 0);
         carryIn : IN  std_logic;
         sum : OUT  std_logic_vector(15 downto 0);
         carryOut : OUT  std_logic;
			overFlow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(15 downto 0) := (others => '0');
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal carryIn : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(15 downto 0);
   signal carryOut : std_logic;
	signal overFlow : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder16 PORT MAP (
          in0 => in0,
          in1 => in1,
          carryIn => carryIn,
          sum => sum,
          carryOut => carryOut,
			 overFlow => overFlow
        );
 

   -- Stimulus process
   stim_proc: process
	begin	 
      wait for 18 ns;
		in0 <= X"0005";
		in1 <= X"0001";
		wait for 18 ns;
		in0 <= X"1234";
		in1 <= X"2345";
		wait for 18 ns;
		in0 <= X"1234";
		in1 <= X"1278";
		wait for 18 ns;
		in0 <= X"7FFF";
		in1 <= X"7FFF";
		wait for 18 ns;
		in0 <= X"FFFF";
		in1 <= X"FFFF";
		
   end process;

END;
