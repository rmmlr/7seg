----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ruemmler, Elias
-- 
-- Create Date:    09:11:37 07/13/2018 
-- Design Name: 
-- Module Name:    seg7 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 0.01
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

entity seg7 is
    Port ( x0 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           ya : out  STD_LOGIC;
           yb : out  STD_LOGIC;
           yc : out  STD_LOGIC;
           yd : out  STD_LOGIC;
           ye : out  STD_LOGIC;
           yf : out  STD_LOGIC;
           yg : out  STD_LOGIC;
           ydp : out  STD_LOGIC;
           ya0 : out  STD_LOGIC;
           ya1 : out  STD_LOGIC;
           ya2 : out  STD_LOGIC;
           ya3 : out  STD_LOGIC);
end seg7;

architecture Behavioral of seg7 is

begin

ya0 <= '1';
ya1 <= '0'; -- aktive Stelle
ya2 <= '1';
ya3 <= '1';

ydp <= '0'; -- DP an



		
ya <= NOT (x3 OR x1 OR (x2 AND x0) OR (NOT x2 AND NOT x0));
yb <= NOT ((NOT x2) OR (NOT x1 AND NOT x0) OR (x1 AND x0));
yc <= NOT (x2 OR NOT x1 OR x0);
yd <= NOT ((NOT x2 AND NOT x0) OR (x1 AND NOT x0) OR (x2 AND NOT x1 AND x0) OR (NOT x2 AND x1) OR x3);
ye <= NOT ((NOT x2 AND NOT x0) OR (x1 AND NOT x0));
yf <= NOT (x3 OR (NOT x1 AND NOT x0) OR (x2 AND NOT x1) OR (x2 AND NOT x0));
yg <= NOT (x3 OR (x2 AND NOT x1) OR ( NOT x2 AND x1) OR (x1 AND NOT x0));

		
				

end Behavioral;

