----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:33 03/21/2015 
-- Design Name: 
-- Module Name:    controlMemory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_memory is
	Port ( MW : out std_logic;
		MM : out std_logic;
		RW : out std_logic;
		MD : out std_logic;
		FS : out std_logic_vector(4 downto 0);
		MB : out std_logic;
		TB : out std_logic;
		TA : out std_logic;
		TD : out std_logic;
		PL : out std_logic;
		PI : out std_logic;
		IL : out std_logic;
		MC : out std_logic;
		MS : out std_logic_vector(2 downto 0);
		NA : out std_logic_vector(7 downto 0);
		IN_CAR : in std_logic_vector(7 downto 0));
end control_memory;

architecture Behavioral of control_memory is
type mem_array is array(0 to 255) of std_logic_vector(27 downto 0);

begin

memory_m: process(IN_CAR)
				variable control_mem : mem_array:=(
				X"0104002", -- 0 load next instruction 0 -> opcode 0
				X"0208002", -- 1 load next instruction 1
				X"0218002", -- 2 load next instruction 2
				X"0000306", -- 3 load immediate value 0  -> opcode 11
				X"0000226", -- 4 ADI 0						  -> opcode 100
				X"0000146", -- 5 SR							  -> opcode 101
				X"0000016", -- 6 INC	A						  -> opcode 110
				X"00000E6", -- 7 NOT A						  -> opcode 111
				X"0000026", -- 8 ADD							  -> opcode 1000
				X"0102002", -- 9 UNCONDITION BRANCH		  -> opcode 1001
				X"0B89002", -- 10 BZE0 (if zero)			  -> opcode 1010
				X"0000002", -- 11 BZE1 (branch not taken)
				X"0900002", -- 12 BZE2 (take branch)	 
				others => X"0000000"
				);
				variable addr : integer;
				variable control_out : std_logic_vector(27 downto 0);

begin
				addr := conv_integer(IN_CAR);
				control_out := control_mem(addr);
				MW <= control_out(0);
				MM <= control_out(1);
				RW <= control_out(2);
				MD <= control_out(3);
				FS <= control_out(8 downto 4);
				MB <= control_out(9);
				TB <= control_out(10);
				TA <= control_out(11);
				TD <= control_out(12);
				PL <= control_out(13);
				PI <= control_out(14);
				IL <= control_out(15);
				MC <= control_out(16);
				MS <= control_out(19 downto 17);
				NA <= control_out(27 downto 20);
	end process;
end Behavioral;

