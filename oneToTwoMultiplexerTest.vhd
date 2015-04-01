LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY oneToTwoMultiplexerTest IS
END oneToTwoMultiplexerTest;
 
ARCHITECTURE behavior OF oneToTwoMultiplexerTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT oneToTwoMultiplexer
    PORT(
         s0 : IN  std_logic;
         i0 : IN  std_logic_vector(15 downto 0);
         i1 : IN  std_logic_vector(15 downto 0);
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s0 : std_logic := '0';
   signal i0 : std_logic_vector(15 downto 0) := X"0001";
   signal i1 : std_logic_vector(15 downto 0) := X"0002";

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: oneToTwoMultiplexer PORT MAP (
          s0 => s0,
          i0 => i0,
          i1 => i1,
          Z => Z
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 5 ns;
		s0 <= '0';
		wait for 5 ns;
		s0 <= '1';
		
   end process;

END;
