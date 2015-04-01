--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:54:43 03/19/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/memoryTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memory
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
 
ENTITY memoryTest IS
END memoryTest;
 
ARCHITECTURE behavior OF memoryTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memory
    PORT(
         address : IN  std_logic_vector(15 downto 0);
         write_data : IN  std_logic_vector(15 downto 0);
         MemWrite : IN  std_logic;
         MemRead : IN  std_logic;
         read_data : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(15 downto 0) := X"0000";
   signal write_data : std_logic_vector(15 downto 0) := X"0000";
   signal MemWrite : std_logic := '0';
   signal MemRead : std_logic := '0';

 	--Outputs
   signal read_data : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memory PORT MAP (
          address => address,
          write_data => write_data,
          MemWrite => MemWrite,
          MemRead => MemRead,
          read_data => read_data
        );

   -- Stimulus process
   stim_proc: process
   begin	
		--memory locations were initialized, at the time of testing the memory
		-- to 0 at [0], 1 at [1] etc.
      wait for 10 ns;
		MemRead <= '1';
		wait for 10 ns;
		address <= X"0000";
		wait for 10 ns;
		address <= X"0001";
		wait for 10 ns;
		address <= X"0002";
		wait for 10 ns;
		address <= X"0003";
		wait for 10 ns;
		address <= X"0004";
		wait for 10 ns;
		address <= X"0005";
		wait for 10 ns;
		address <= X"0006";
		wait for 10 ns;
		address <= X"0007";
		wait for 10 ns;
		address <= X"0000";
		write_data <= X"0008";
		MemWrite <= '1';
		MemRead <= '0';
		--overwriting 0 at [0] with 8
		wait for 10 ns;
		MemWrite <= '0';
		
   end process;

END;
