library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decod_component is
port(
	clk 				: in std_logic;
	A, B, C, D 			: in std_logic_vector(3 downto 0);
	sel_display			: out std_logic_vector(3 downto 0);
	segment				: out std_logic_vector(7 downto 0)
);
end decod_component;

architecture hardware of decod_component is
type segmenton_array is array (0 to 15) of std_logic_vector(7 downto 0);
constant segmenton : segmenton_array := (
	"00000011", -- Zero
	"10011111", -- One
	"00100101", -- Two
	"00001101", -- Three
	"10011001", -- Four
	"01001001", -- Five
	"01000001", -- Six
	"00011111", -- Seven
	"00000001", -- Eight
	"00001001", -- Nine
	"00010001", -- A
	"11000001", -- B
	"01100011", -- C
	"10000101", -- D
	"01100001", -- E
	"01110001"  -- F
);
begin

process(clk)
variable psc : integer range 0 to 50001;
variable sel_dig : integer range 0 to 4;
variable A_var : integer range 0 to 15;
variable B_var : integer range 0 to 15;
variable C_var : integer range 0 to 15;
variable D_var : integer range 0 to 15;
begin

A_var := to_integer(unsigned(A)); -- To search in LUT4 table
B_var := to_integer(unsigned(B));
C_var := to_integer(unsigned(C));
D_var := to_integer(unsigned(D));

	if clk'event and clk = '1' then
		psc := psc + 1;
		if psc = 50001 then
			sel_dig := sel_dig + 1;
			if sel_dig = 4 then
				sel_dig := 0;
			end if;
		end if;
	end if;

case sel_dig is
	when 0 => sel_display <= "0111";
	when 1 => sel_display <= "1011";
	when 2 => sel_display <= "1101";
	when 3 => sel_display <= "1110";
	when others => sel_display <= "1111";
end case;

if sel_dig = 0 then
	case A is
		when "0000" => segment <= segmenton(A_var);
		when "0001" => segment <= segmenton(A_var);
		when "0010" => segment <= segmenton(A_var);
		when "0011" => segment <= segmenton(A_var);
		when "0100" => segment <= segmenton(A_var);
		when "0101" => segment <= segmenton(A_var);
		when "0110" => segment <= segmenton(A_var);
		when "0111" => segment <= segmenton(A_var);
		when "1000" => segment <= segmenton(A_var);
		when "1001" => segment <= segmenton(A_var);
		when others => segment <= segmenton(A_var);
	end case;
end if;

if sel_dig = 1 then
	case B is
		when "0000" => segment <= segmenton(B_var);
		when "0001" => segment <= segmenton(B_var);
		when "0010" => segment <= segmenton(B_var);
		when "0011" => segment <= segmenton(B_var);
		when "0100" => segment <= segmenton(B_var);
		when "0101" => segment <= segmenton(B_var);
		when "0110" => segment <= segmenton(B_var);
		when "0111" => segment <= segmenton(B_var);
		when "1000" => segment <= segmenton(B_var);
		when "1001" => segment <= segmenton(B_var);
		when others => segment <= segmenton(B_var);
	end case;
end if;

if sel_dig = 2 then
	case C is
		when "0000" => segment <= segmenton(C_var);
		when "0001" => segment <= segmenton(C_var);
		when "0010" => segment <= segmenton(C_var);
		when "0011" => segment <= segmenton(C_var);
		when "0100" => segment <= segmenton(C_var);
		when "0101" => segment <= segmenton(C_var);
		when "0110" => segment <= segmenton(C_var);
		when "0111" => segment <= segmenton(C_var);
		when "1000" => segment <= segmenton(C_var);
		when "1001" => segment <= segmenton(C_var);
		when others => segment <= segmenton(C_var);
	end case;
end if;

if sel_dig = 3 then
	case D is
		when "0000" => segment <= segmenton(D_var);
		when "0001" => segment <= segmenton(D_var);
		when "0010" => segment <= segmenton(D_var);
		when "0011" => segment <= segmenton(D_var);
		when "0100" => segment <= segmenton(D_var);
		when "0101" => segment <= segmenton(D_var);
		when "0110" => segment <= segmenton(D_var);
		when "0111" => segment <= segmenton(D_var);
		when "1000" => segment <= segmenton(D_var);
		when "1001" => segment <= segmenton(D_var);
		when others => segment <= segmenton(D_var);
	end case;
end if;

end process;
--sel_display <= digito_buffer;

end hardware;