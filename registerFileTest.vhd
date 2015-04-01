--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:27:33 03/16/2015
-- Design Name:   
-- Module Name:   U:/Architecture/assignment1.1/registerFileTest.vhd
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
 
ENTITY registerFileTest IS
END registerFileTest;
 
ARCHITECTURE behavior OF registerFileTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerFile
    PORT(
         srcS0 : IN  std_logic;
         srcS1 : IN  std_logic;
         srcS2 : IN  std_logic;
         srcS3 : IN  std_logic;
         src2S0 : IN  std_logic;
         src2S1 : IN  std_logic;
         src2S2 : IN  std_logic;
         src2S3 : IN  std_logic;
         desS0 : IN  std_logic;
         desS1 : IN  std_logic;
         desS2 : IN  std_logic;
         desS3 : IN  std_logic;
         loadEnable : IN  std_logic;
         Clk : IN  std_logic;
         dataIn : IN  std_logic_vector(15 downto 0);
         aData : OUT  std_logic_vector(15 downto 0);
         bData : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal srcS0 : std_logic := '0';
   signal srcS1 : std_logic := '0';
   signal srcS2 : std_logic := '0';
   signal srcS3 : std_logic := '0';
   signal src2S0 : std_logic := '0';
   signal src2S1 : std_logic := '0';
   signal src2S2 : std_logic := '0';
   signal src2S3 : std_logic := '0';
   signal desS0 : std_logic := '0';
   signal desS1 : std_logic := '0';
   signal desS2 : std_logic := '0';
   signal desS3 : std_logic := '0';
   signal loadEnable : std_logic := '0';
   signal Clk : std_logic := '0';
   signal dataIn : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal aData : std_logic_vector(15 downto 0);
   signal bData : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          srcS0 => srcS0,
          srcS1 => srcS1,
          srcS2 => srcS2,
          srcS3 => srcS3,
          src2S0 => src2S0,
          src2S1 => src2S1,
          src2S2 => src2S2,
          src2S3 => src2S3,
          desS0 => desS0,
          desS1 => desS1,
          desS2 => desS2,
          desS3 => desS3,
          loadEnable => loadEnable,
          Clk => Clk,
          dataIn => dataIn,
          aData => aData,
          bData => bData
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
		dataIn <= X"0008";
		loadEnable <= '1';
		desS0 <= '0';
		desS1 <= '0';
		desS2 <= '0';
		desS3 <= '1';
		src2S0 <= '0';
		src2S1 <= '0';
		src2S2 <= '0';
		src2S3 <= '1';
		--loads 8 into registers 8 (ninth register) and displays it on bData
		
		
   end process;

END;
