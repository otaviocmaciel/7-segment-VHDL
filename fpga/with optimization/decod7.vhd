library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decod7 is
port(
	CLK : std_logic;
	SEL : out std_logic_vector(3 downto 0);
	SEG : out std_logic_vector(7 downto 0)
);
end decod7;

architecture hardware of decod7 is
component decod_component is
port(
	clk 				: in std_logic;
	A, B, C, D 			: in std_logic_vector(3 downto 0);
	sel_display			: out std_logic_vector(3 downto 0);
	segment				: out std_logic_vector(7 downto 0)
);
end component;

SIGNAL A : std_logic_vector(3 downto 0) := X"1";
SIGNAL B : std_logic_vector(3 downto 0) := X"9";
SIGNAL C : std_logic_vector(3 downto 0) := X"8";
SIGNAL D : std_logic_vector(3 downto 0) := X"7";

begin

--process(clk)
--variable psc 		: integer range 0 to 12000001;
--variable number 	: integer range 0 to 65536 := 0;
--begin
--	if clk'event and clk = '1' then
--		psc := psc + 1;
--		if psc = 12000001 then
--			number := number + 1;
--			A <= std_logic_vector(to_unsigned(number, 16)(3 downto 0));
--			B <= std_logic_vector(to_unsigned(number, 16)(7 downto 4));
--			C <= std_logic_vector(to_unsigned(number, 16)(11 downto 8));
--			D <= std_logic_vector(to_unsigned(number, 16)(15 downto 12));
--		end if;
--	end if;
--end process;

uut1 : decod_component port map(
	clk => CLK,
	A => A,
	B => B,
	C => C,
	D => D,
	sel_display=> SEL,
	segment => SEG
);
end hardware;