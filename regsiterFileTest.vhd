--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:09:33 02/15/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/regsiterFileTest.vhd
-- Project Name:  assignment1.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerFile
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
 
ENTITY regsiterFileTest IS
END regsiterFileTest;
 
ARCHITECTURE behavior OF regsiterFileTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerFile
    PORT(
         srcS0 : IN  std_logic;
         srcS1 : IN  std_logic;
         srcS2 : IN  std_logic;
         desS0 : IN  std_logic;
         desS1 : IN  std_logic;
         desS2 : IN  std_logic;
         Clk : IN  std_logic;
         dataSrc : IN  std_logic;
         dataIn : IN  std_logic_vector(15 downto 0);
         reg0 : OUT  std_logic_vector(15 downto 0);
         reg1 : OUT  std_logic_vector(15 downto 0);
         reg2 : OUT  std_logic_vector(15 downto 0);
         reg3 : OUT  std_logic_vector(15 downto 0);
         reg4 : OUT  std_logic_vector(15 downto 0);
         reg5 : OUT  std_logic_vector(15 downto 0);
         reg6 : OUT  std_logic_vector(15 downto 0);
         reg7 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal srcS0 : std_logic := '0';
   signal srcS1 : std_logic := '0';
   signal srcS2 : std_logic := '0';
   signal desS0 : std_logic := '0';
   signal desS1 : std_logic := '0';
   signal desS2 : std_logic := '0';
   signal Clk : std_logic := '0';
   signal dataSrc : std_logic := '0';
   signal dataIn : std_logic_vector(15 downto 0) := X"0000";

 	--Outputs
   signal reg0 : std_logic_vector(15 downto 0);
   signal reg1 : std_logic_vector(15 downto 0);
   signal reg2 : std_logic_vector(15 downto 0);
   signal reg3 : std_logic_vector(15 downto 0);
   signal reg4 : std_logic_vector(15 downto 0);
   signal reg5 : std_logic_vector(15 downto 0);
   signal reg6 : std_logic_vector(15 downto 0);
   signal reg7 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 15 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          srcS0 => srcS0,
          srcS1 => srcS1,
          srcS2 => srcS2,
          desS0 => desS0,
          desS1 => desS1,
          desS2 => desS2,
          Clk => Clk,
          dataSrc => dataSrc,
          dataIn => dataIn,
          reg0 => reg0,
          reg1 => reg1,
          reg2 => reg2,
          reg3 => reg3,
          reg4 => reg4,
          reg5 => reg5,
          reg6 => reg6,
          reg7 => reg7
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
		--below wait loads in dataIn into R0
		wait for Clk_period;
		dataIn <= X"0001";
		desS0 <= '1';
		desS1 <= '0';
		desS2 <= '0';
		wait for Clk_period;
		dataIn <= X"0002";
		desS0 <= '0';
		desS1 <= '1';
		desS2 <= '0';
		wait for Clk_period;
		dataIn <= X"0003";
		desS0 <= '1';
		desS1 <= '1';
		desS2 <= '0';
		wait for Clk_period;
		dataIn <= X"0004";
		desS0 <= '0';
		desS1 <= '0';
		desS2 <= '1';
		wait for Clk_period;
		dataIn <= X"0005";
		desS0 <= '1';
		desS1 <= '0';
		desS2 <= '1';
		wait for Clk_period;
		dataIn <= X"0006";
		desS0 <= '0';
		desS1 <= '1';
		desS2 <= '1';
		wait for Clk_period;
		dataIn <= X"0007";
		desS0 <= '1';
		desS1 <= '1';
		desS2 <= '1';
		wait for Clk_period;
		dataSrc <= '1';
		srcS0 <= '1';
		srcS1 <= '1';
		srcS2 <= '1';
		desS0 <= '0';
		desS1 <= '0';
		desS2 <= '0';
   end process;

END;
