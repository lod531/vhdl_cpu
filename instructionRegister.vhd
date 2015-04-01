----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:09 03/22/2015 
-- Design Name: 
-- Module Name:    instructionRegister - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instructionRegister is
	port(inputInstruction : in std_logic_vector(15 downto 0);
			instructionLoad, Clk, reset : in std_logic;
			opCode : out std_logic_vector(6 downto 0);
			destinationRegister : out std_logic_vector(2 downto 0);
			sourceRegisterA : out std_logic_vector(2 downto 0);
			sourceRegisterB : out std_logic_vector(2 downto 0));
end instructionRegister;

architecture Behavioral of instructionRegister is

component reg16
	port(	D : in std_logic_vector(15 downto 0);
			load 	: in std_logic;
			Clk  	: in std_logic;
			Q	  	: out std_logic_vector(15 downto 0));
end component;

signal currentInstruction : std_logic_vector(15 downto 0);

begin

reg: reg16 port map(
			D => inputInstruction,
			load => instructionLoad,
			Clk => Clk,
			Q	=> currentInstruction
);


opCode <= currentInstruction(15 downto 9) after 0 ns when reset ='0' else
			(others => '0') after 0 ns;
			
destinationRegister <= currentInstruction(8 downto 6) after 0 ns when reset ='0' else
								(others => '0') after 0 ns;
								
sourceRegisterA <= currentInstruction(5 downto 3) after 0 ns when reset ='0' else
								(others => '0') after 0 ns;
								
sourceRegisterB <= currentInstruction(2 downto 0) after 0 ns when reset ='0' else
								(others => '0') after 0 ns;


end Behavioral;

