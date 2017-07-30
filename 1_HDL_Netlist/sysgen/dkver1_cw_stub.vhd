----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
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

entity dkver1_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 9.0 ns (111.11111111111111 Mhz)
      ctrl1_stretch21_14: in std_logic_vector(7 downto 0); 
      ctrl2_threshold13_0: in std_logic_vector(13 downto 0); 
      ctrl3_offseten29: in std_logic; 
      ctrl4_offsetrst30: in std_logic; 
      ctrl5_sim31: in std_logic; 
      datain1: in std_logic_vector(15 downto 0); 
      datain2: in std_logic_vector(15 downto 0); 
      datain3: in std_logic_vector(15 downto 0); 
      datain4: in std_logic_vector(15 downto 0); 
      peakout1: out std_logic_vector(15 downto 0); 
      peakout2: out std_logic_vector(15 downto 0); 
      peakout3: out std_logic_vector(15 downto 0); 
      peakout4: out std_logic_vector(15 downto 0); 
      peakvalid: out std_logic; 
      pulseout1: out std_logic_vector(15 downto 0); 
      pulseout2: out std_logic_vector(15 downto 0); 
      pulseout3: out std_logic_vector(15 downto 0); 
      pulseout4: out std_logic_vector(15 downto 0); 
      pulsevalid: out std_logic
    );
end dkver1_cw_stub;

architecture Behavioral of dkver1_cw_stub is

  component dkver1_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 9.0 ns (111.11111111111111 Mhz)
      ctrl1_stretch21_14: in std_logic_vector(7 downto 0); 
      ctrl2_threshold13_0: in std_logic_vector(13 downto 0); 
      ctrl3_offseten29: in std_logic; 
      ctrl4_offsetrst30: in std_logic; 
      ctrl5_sim31: in std_logic; 
      datain1: in std_logic_vector(15 downto 0); 
      datain2: in std_logic_vector(15 downto 0); 
      datain3: in std_logic_vector(15 downto 0); 
      datain4: in std_logic_vector(15 downto 0); 
      peakout1: out std_logic_vector(15 downto 0); 
      peakout2: out std_logic_vector(15 downto 0); 
      peakout3: out std_logic_vector(15 downto 0); 
      peakout4: out std_logic_vector(15 downto 0); 
      peakvalid: out std_logic; 
      pulseout1: out std_logic_vector(15 downto 0); 
      pulseout2: out std_logic_vector(15 downto 0); 
      pulseout3: out std_logic_vector(15 downto 0); 
      pulseout4: out std_logic_vector(15 downto 0); 
      pulsevalid: out std_logic
    );
  end component;
begin

dkver1_cw_i : dkver1_cw
  port map (
    ce => ce,
    clk => clk,
    ctrl1_stretch21_14 => ctrl1_stretch21_14,
    ctrl2_threshold13_0 => ctrl2_threshold13_0,
    ctrl3_offseten29 => ctrl3_offseten29,
    ctrl4_offsetrst30 => ctrl4_offsetrst30,
    ctrl5_sim31 => ctrl5_sim31,
    datain1 => datain1,
    datain2 => datain2,
    datain3 => datain3,
    datain4 => datain4,
    peakout1 => peakout1,
    peakout2 => peakout2,
    peakout3 => peakout3,
    peakout4 => peakout4,
    peakvalid => peakvalid,
    pulseout1 => pulseout1,
    pulseout2 => pulseout2,
    pulseout3 => pulseout3,
    pulseout4 => pulseout4,
    pulsevalid => pulsevalid);
end Behavioral;

