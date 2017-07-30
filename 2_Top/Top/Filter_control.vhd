----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:12 06/29/2016 
-- Design Name: 
-- Module Name:    Filter_control - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Filter_control is
	port (		
			clk : in std_logic;
			datain : in std_logic_vector(55 downto 0);
			dataout : out std_logic_vector(87 downto 0)
			);
end Filter_control;

architecture Behavioral of Filter_control is
	COMPONENT filter
	  PORT (
		 aclk : IN STD_LOGIC;
		 s_axis_data_tvalid : IN STD_LOGIC;
		 s_axis_data_tready : OUT STD_LOGIC;
		 s_axis_data_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		 m_axis_data_tvalid : OUT STD_LOGIC;
		 m_axis_data_tdata : OUT STD_LOGIC_VECTOR(95 DOWNTO 0)
	  );
	END COMPONENT;
	
	COMPONENT input_fifo
	  PORT (
		 clk : IN STD_LOGIC;
		 din : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
		 wr_en : IN STD_LOGIC;
		 rd_en : IN STD_LOGIC;
		 dout : OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
		 full : OUT STD_LOGIC;
		 empty : OUT STD_LOGIC;
		 valid : OUT STD_LOGIC
	  );
	END COMPONENT;	
	
	signal s_axis_data_tready : std_logic := '0';
	signal s_axis_data_tdata : std_logic_vector(63 downto 0) := (others => '0');
	signal dout : std_logic_vector(55 downto 0) := (others => '0');
	signal s_axis_data_tvalid : std_logic := '0';
	signal m_axis_data_tvalid : std_logic := '0';
	signal m_axis_data_tdata : std_logic_vector(95 downto 0) := (others => '0');
--	signal temp : std_logic_vector(63 downto 0);
--	signal data :std_logic_vector(31 downto 0);
begin

	s_axis_data_tdata <= "00" & dout (55 downto 42) & "00" & dout(41 downto 28) & "00" & dout(27 downto 14) & "00" & dout(13 downto 0);

	inst_input_fifo  : input_fifo
	  PORT MAP (
		 clk => clk,
		 din => datain,
		 wr_en => '1',
		 rd_en => s_axis_data_tready,
		 dout => dout,
		 full => open,
		 empty => open,
		 valid => s_axis_data_tvalid
	  );
	
	
	inst_filter : filter
	  PORT MAP (
		 aclk => clk,
		 s_axis_data_tvalid => s_axis_data_tvalid, -- input fifo valid
		 s_axis_data_tready => s_axis_data_tready, -- input fifo ren 
		 s_axis_data_tdata =>  s_axis_data_tdata,  -- input fifo data
		 --- filter input parts
		 m_axis_data_tvalid => m_axis_data_tvalid, -- output fifo wen	
		 m_axis_data_tdata => m_axis_data_tdata --
		 --- filter output parts
  );
  
	
   dataout(87 downto 66) <= std_logic_vector(SHIFT_RIGHT(signed(m_axis_data_tdata(93 downto 72)),6)) when m_axis_data_tvalid = '1';
	dataout(65 downto 44) <= std_logic_vector(SHIFT_RIGHT(signed(m_axis_data_tdata(69 downto 48)),6)) when m_axis_data_tvalid = '1';
	dataout(43 downto 22) <= std_logic_vector(SHIFT_RIGHT(signed(m_axis_data_tdata(45 downto 24)),6)) when m_axis_data_tvalid = '1';
	dataout(21 downto 0) <= std_logic_vector(SHIFT_RIGHT(signed(m_axis_data_tdata(21 downto 0)),6)) when m_axis_data_tvalid = '1';
  
  
end Behavioral;

