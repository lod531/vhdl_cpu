--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:59:48 03/22/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/controlAddressRegisterTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: controlAddressRegister
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
 
ENTITY controlAddressRegisterTest IS
END controlAddressRegisterTest;
 
ARCHITECTURE behavior OF controlAddressRegisterTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT controlAddressRegister
    PORT(
         addressIn : IN  std_logic_vector(7 downto 0);
         conditionIn : IN  std_logic;
         Clk : IN  std_logic;
         reset : IN  std_logic;
         addressOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addressIn : std_logic_vector(7 downto 0) := (others => '0');
   signal conditionIn : std_logic := '0';
   signal Clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal addressOut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controlAddressRegister PORT MAP (
          addressIn => addressIn,
          conditionIn => conditionIn,
          Clk => Clk,
          reset => reset,
          addressOut => addressOut
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for Clk_period;
      reset <= '1';
		wait for Clk_period;
		reset <= '0';
		conditionIn <= '1';
		wait for Clk_period;
		addressIn <= addressOut;
		wait for Clk_period;
		addressIn <= addressOut;
		wait for Clk_period;
		addressIn <= addressOut;
		wait for Clk_period;
		reset <= '1';
		conditionIn <= '0';
		wait for Clk_period;
		reset <= '0';
		addressIn <= X"FF";
		
   end process;

END;
