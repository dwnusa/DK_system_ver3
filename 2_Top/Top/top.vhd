library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.ALL;
use work.FRONTPANEL.all;

Library UNISIM;
use UNISIM.vcomponents.all;


entity top is 
PORT(
		 okUH      : in     STD_LOGIC_VECTOR(4 downto 0);
		 okHU      : out    STD_LOGIC_VECTOR(2 downto 0);
		 okUHU     : inout  STD_LOGIC_VECTOR(31 downto 0);
		 okAA      : inout  STD_LOGIC;	

		 led		 : out	 STD_LOGIC_VECTOR(7 downto 0); 
		 
		sys_clk		: in	std_logic;
--		clkp			: in 	std_logic; -- clock period = 10.0 ns (100.0 Mhz)
--		clkn			: in 	std_logic;

		Adata 	 : in 	 std_logic_vector(13 downto 0);
		Bdata 	 : in 	 std_logic_vector(13 downto 0);
		Cdata 	 : in 	 std_logic_vector(13 downto 0);
		Ddata 	 : in 	 std_logic_vector(13 downto 0)
  
		); 
end top;

architecture Behavioral of top is
	COMPONENT Filter_control
	PORT(
		clk : IN std_logic;
		datain : IN std_logic_vector(55 downto 0);          
		dataout : OUT std_logic_vector(87 downto 0)
		);
	END COMPONENT;
--	COMPONENT dkver1_cw
--	PORT(
--		ce : IN std_logic;
--		clk : IN std_logic;
--		ctrl1_stretch21_14 : IN std_logic_vector(7 downto 0);
--		ctrl2_threshold13_0 : IN std_logic_vector(13 downto 0);
--		ctrl3_offseten29 : IN std_logic;
--		ctrl4_offsetrst30 : IN std_logic;
--		ctrl5_sim31 : IN std_logic;
--		datain1 : IN std_logic_vector(13 downto 0);
--		datain2 : IN std_logic_vector(13 downto 0);
--		datain3 : IN std_logic_vector(13 downto 0);
--		datain4 : IN std_logic_vector(13 downto 0);          
--		peakout1 : OUT std_logic_vector(13 downto 0);
--		peakout2 : OUT std_logic_vector(13 downto 0);
--		peakout3 : OUT std_logic_vector(13 downto 0);
--		peakout4 : OUT std_logic_vector(13 downto 0);
--		peakvalid : OUT std_logic;
--		pulseout1 : OUT std_logic_vector(15 downto 0);
--		pulseout2 : OUT std_logic_vector(15 downto 0);
--		pulseout3 : OUT std_logic_vector(15 downto 0);
--		pulseout4 : OUT std_logic_vector(15 downto 0);
--		pulsevalid : OUT std_logic
--		);
--	END COMPONENT;
	COMPONENT dkver1_cw
	PORT(
		ce : IN std_logic;
		clk : IN std_logic;
		ctrl1_stretch21_14 : IN std_logic_vector(7 downto 0);
		ctrl2_threshold13_0 : IN std_logic_vector(13 downto 0);
		ctrl3_offseten29 : IN std_logic;
		ctrl4_offsetrst30 : IN std_logic;
		ctrl5_sim31 : IN std_logic;
		datain1 : IN std_logic_vector(15 downto 0);
		datain2 : IN std_logic_vector(15 downto 0);
		datain3 : IN std_logic_vector(15 downto 0);
		datain4 : IN std_logic_vector(15 downto 0);          
		peakout1 : OUT std_logic_vector(15 downto 0);
		peakout2 : OUT std_logic_vector(15 downto 0);
		peakout3 : OUT std_logic_vector(15 downto 0);
		peakout4 : OUT std_logic_vector(15 downto 0);
		peakvalid : OUT std_logic;
		pulseout1 : OUT std_logic_vector(15 downto 0);
		pulseout2 : OUT std_logic_vector(15 downto 0);
		pulseout3 : OUT std_logic_vector(15 downto 0);
		pulseout4 : OUT std_logic_vector(15 downto 0);
		pulsevalid : OUT std_logic
		);
	END COMPONENT;
	component fifo
	  port (
		 rst : IN STD_LOGIC;
		 wr_clk : IN STD_LOGIC;
		 rd_clk : IN STD_LOGIC;
		 din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 wr_en : IN STD_LOGIC;
		 rd_en : IN STD_LOGIC;
		 dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 full : OUT STD_LOGIC;
		 empty : OUT STD_LOGIC;
--		 rd_data_count : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
--		 wr_data_count : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
		 prog_full : OUT STD_LOGIC
	  );
	end component;	
	COMPONENT fifo_deep
	  PORT (
		 rst : IN STD_LOGIC;
		 wr_clk : IN STD_LOGIC;
		 rd_clk : IN STD_LOGIC;
		 din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 wr_en : IN STD_LOGIC;
		 rd_en : IN STD_LOGIC;
		 dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 full : OUT STD_LOGIC;
		 empty : OUT STD_LOGIC;
		 rd_data_count : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		 wr_data_count : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		 prog_full : OUT STD_LOGIC
	  );
	END COMPONENT;
	component clkgen
	port
	 (-- Clock in ports
	  CLK_IN1           : in     std_logic;
	  -- Clock out ports
	  CLK_OUT1          : out    std_logic
	 );
	end component;
	component clkgen100 
	port
	 (-- Clock in ports
	  CLK_IN1           : in     std_logic;
	  -- Clock out ports
	  CLK_OUT1          : out    std_logic
	 );
	end component;
	
	-------------------------Signal for clk------------------------------
	signal clk    	: STD_LOGIC:= '0';	
	signal divclk : std_logic:= '0';
	signal clkcnt : std_logic_vector(7 downto 0) := (others => '0');
	----------------------USB3.0 signals---------------
	signal okClk      : STD_LOGIC;
	signal okHE       : STD_LOGIC_VECTOR(112 downto 0);
	signal okEH       : STD_LOGIC_VECTOR(64 downto 0);
	signal okEHx      : STD_LOGIC_VECTOR(5*65-1 downto 0*65);	
	----------------------Source and FIFO signals------	
	signal s_datain0 : std_logic_vector(31 downto 0) := (others => '0');
	signal s_dataout0 : std_logic_vector(31 downto 0) := (others => '0');
	signal wr_en0 : std_logic := '0';
	signal rd_en0 : std_logic; --:= '1';
	signal prog_full0 : std_logic := '0';
	signal empty0 : std_logic := '0';	
	signal full0 : std_logic := '0';
	
	signal s_datain1 : std_logic_vector(31 downto 0) := (others => '0');
	signal s_dataout1 : std_logic_vector(31 downto 0) := (others => '0');
	signal dataout1 : std_logic_vector(31 downto 0) := (others => '0');
	signal wr_en1 : std_logic := '0';
	signal rd_en1 : std_logic; --:= '1';
	signal prog_full1 : std_logic := '0';
	signal empty1 : std_logic := '0';	
	signal full1 : std_logic := '0';
	
	signal s_datain2 : std_logic_vector(31 downto 0) := (others => '0');
	signal s_dataout2 : std_logic_vector(31 downto 0) := (others => '0');
	signal wr_en2 : std_logic := '0';
	signal rd_en2 : std_logic; --:= '1';
	signal prog_full2 : std_logic := '0';
	signal empty2 : std_logic := '0';	
	signal full2 : std_logic := '0';

	signal s_datain3 : std_logic_vector(31 downto 0) := (others => '0');
	signal s_dataout3 : std_logic_vector(31 downto 0) := (others => '0');
	signal wr_en3 : std_logic := '0';
	signal rd_en3 : std_logic; --:= '1';
	signal prog_full3 : std_logic := '0';
	signal empty3 : std_logic := '0';	
	signal full3 : std_logic := '0';
	
	signal fulla : std_logic := '0';
	signal fullb : std_logic := '0';

	signal s_datain4 : std_logic_vector(31 downto 0) := (others => '0');
	signal s_dataout4 : std_logic_vector(31 downto 0) := (others => '0');
	signal rd_en4 : std_logic; --:= '1';
	signal prog_full4 : std_logic := '0';
	signal empty4 : std_logic := '0';		
	signal full4 : std_logic := '0';
	
	signal s_cnt : std_logic_vector(31 downto 0) := (others =>'0');
	signal s_fullcnt0 : std_logic_vector(31 downto 0) := (others =>'0');
	signal s_fullcnt1 : std_logic_vector(31 downto 0) := (others =>'0');
	signal s_fullcnt2 : std_logic_vector(31 downto 0) := (others =>'0');
	signal s_fullcnt3 : std_logic_vector(31 downto 0) := (others =>'0');
	signal s_rst	: std_logic := '0';
	signal x_progfull23 : std_logic := '0';
	signal x_empty23 : std_logic := '0';
	signal x_full23 : std_logic := '0';
	signal n_empty23 : std_logic := '0';
	signal n_rd_en23 : std_logic := '0';
	signal x_rd_en23 : std_logic := '0';
	signal co_wren23 : std_logic := '0';
	signal wren23cnt : std_logic_vector(3 downto 0) := (others => '0');
	
--	signal sigab : std_logic_vector(31 downto 0);
	signal sigab : std_logic_vector(31 downto 0);
	signal sigcd : std_logic_vector(31 downto 0);
	signal sigen : std_logic;
	signal wrenout : std_logic;
	signal xysum : std_logic_vector(31 downto 0);
	signal xysum_valid : std_logic := '0';
	signal offsetout1 : std_logic_vector(13 downto 0);
	signal offsetout2 : std_logic_vector(13 downto 0);
	signal offsetout3 : std_logic_vector(13 downto 0);
	signal offsetout4 : std_logic_vector(13 downto 0);
--	signal sAdata : std_logic_vector(13 downto 0);
--	signal sBdata : std_logic_vector(13 downto 0);
--	signal sCdata : std_logic_vector(13 downto 0);
--	signal sDdata : std_logic_vector(13 downto 0);

	signal buf_clk : std_logic;
	signal oclk : std_logic;
	signal clk1   : std_logic;
	signal clk100 : std_logic;
	signal clkSEL : std_logic := '1';
	
--	signal dout : std_logic_vector(13 downto 0);
	signal rawA : std_logic_vector(15 downto 0);
	signal rawB : std_logic_vector(15 downto 0);
	signal rawC : std_logic_vector(15 downto 0);
	signal rawD : std_logic_vector(15 downto 0);
	signal rawab : std_logic_vector(31 downto 0);
	signal rawcd : std_logic_vector(31 downto 0);
	signal rawvalid : std_logic := '0';
	signal rawpair : std_logic_vector (1 downto 0) := (others => '0');
	signal featurea : std_logic_vector(15 downto 0) := (others => '0');
	signal featureb : std_logic_vector(15 downto 0) := (others => '0');
	signal featurec : std_logic_vector(15 downto 0) := (others => '0');
	signal featured : std_logic_vector(15 downto 0) := (others => '0');
	signal feature_valid : std_logic := '0';
	--signal x : std_logic_vector(8 downto 0);
	--signal y : std_logic_vector(8 downto 0);
	
	signal ep00wire        : STD_LOGIC_VECTOR(31 downto 0) := "101" & "0000000" & x"64" & "00" & x"0C8"; --Simul(b1) OffsetReset(b0) OffsetEn(b1) Peakstretch(d100) Threshold(d200)
	signal ep20wire        : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
	signal buf1_ep20wire        : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
	signal buf2_ep20wire        : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
	signal buf3_ep20wire        : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
	signal buf4_ep20wire        : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
	
	signal full : std_logic := '0';
	
	signal dout_first_fifo : std_logic_vector(55 downto 0);
	signal dout :std_logic_vector(87 downto 0);
	signal data : std_logic_vector(63 downto 0);
begin

	dout_first_fifo <= (Adata & Bdata & Cdata & Ddata);
	
	Inst_Filter_control: Filter_control 
	PORT MAP(
		clk => clk,
		datain => dout_first_fifo,
		dataout => dout
	);
	data(63 downto 48) <= std_logic_vector(resize(signed(dout(87 downto 66)),16));
	data(47 downto 32) <= std_logic_vector(resize(signed(dout(65 downto 44)),16));
	data(31 downto 16) <= std_logic_vector(resize(signed(dout(43 downto 22)),16));
	data(15 downto 0) <= std_logic_vector(resize(signed(dout(21 downto 0)),16));
	  
  
  dcm_clk : clkgen
  port map
  (
	  CLK_IN1 => sys_clk,
	  CLK_OUT1 => clk1
  );

	clk <= clk1;
   
	led(7) <= not s_fullcnt0(24); 					--u0_fifo full0 debug
	led(6) <= not s_fullcnt1(24); 					--u1_fifo full1 debug
	led(5) <= not s_fullcnt2(24); 					--u2_fifo full2 debug
	led(4) <= not s_fullcnt3(24); 					--u3_fifo full3 debug
	led(3 downto 0) <= not s_cnt(28 downto 25); 	--sys_clk debug
	
	fulla <= full0 and full1;
	fullb <= full2 and full3;
	process(clk,ep00wire(30))
	begin
		if rising_edge(clk) then
			clkcnt <= clkcnt + '1';
			s_cnt <= s_cnt + '1';
			if ep00wire(30) = '1' then
				s_fullcnt0 <= (others => '0');
				s_fullcnt1 <= (others => '0');
				s_fullcnt2 <= (others => '0');
				s_fullcnt3 <= (others => '0');
			else
				if fulla = '1' then
					s_fullcnt0 <= s_fullcnt0 + '1';
					s_fullcnt1 <= s_fullcnt1 + '1';
				end if;
				if fullb = '1' then
					s_fullcnt2 <= s_fullcnt2 + '1';
					s_fullcnt3 <= s_fullcnt3 + '1';
				end if;
			end if;			
		end if;
	end process;
	
	okHI : okHost port map (
		okUH=>okUH, 
		okHU=>okHU, 
		okUHU=>okUHU, 
		okAA=>okAA, 
		okClk=>okClk, 
		okHE=>okHE, 
		okEH=>okEH 
	);

	okWO : okWireOR    generic map (N=>5) port map (okEH=>okEH, okEHx=>okEHx);
	
	wi00 : okWireIn    port map (okHE=>okHE, ep_addr=>x"00", ep_dataout=>ep00wire);
	
	wi20 : okWireOut   port map (okHE=>okHE, okEH=>okEHx( 1*65-1 downto 0*65 ), 
											ep_addr=>x"20", ep_datain=>ep20wire);
	--For featureA, at u0_fifo
	--For Sample and realtime (XYSUM), at u0_fifo
	epA0 : okBTPipeOut port map (okHE=>okHE, okEH=>okEHx( 2*65-1 downto 1*65 ),  ep_addr=>x"A0", 
										ep_read=>rd_en0, ep_blockstrobe=>open, 
										ep_datain=>s_dataout0, ep_ready=> not empty0);	
	--For featureB, at u0_fifo
	--For feature and featureB, at u1_fifo
	epA1 : okBTPipeOut port map (okHE=>okHE, okEH=>okEHx( 3*65-1 downto 2*65 ),  ep_addr=>x"A1", 
										ep_read=>rd_en1, ep_blockstrobe=>open, 
										ep_datain=>s_dataout1, ep_ready=> not empty1);
	--For featureC, at u0_fifo
	--For Capture and rawab, at u2_fifo
	epA2 : okBTPipeOut port map (okHE=>okHE, okEH=>okEHx( 4*65-1 downto 3*65 ),  ep_addr=>x"A2", 
										ep_read=>rd_en2, ep_blockstrobe=>open, 
										ep_datain=>s_dataout2, ep_ready=>not empty2);	
	--For featureD, at u0_fifo
	--For Capture and rawcd, at u3_fifo
	epA3 : okBTPipeOut port map (okHE=>okHE, okEH=>okEHx( 5*65-1 downto 4*65 ),  ep_addr=>x"A3", 
										ep_read=>rd_en3, ep_blockstrobe=>open, 
										ep_datain=>s_dataout3, ep_ready=>not empty3);
process(clk)
begin
	if rising_edge(clk) then
		rawpair <= rawpair + '1';
		s_datain0 <= featurea & featureb;--when (ep00wire(23) = '0') else std_logic_vector(resize(signed(featurea),32));
		s_datain1 <= featurec & featured;--when (ep00wire(23) = '0') else std_logic_vector(resize(signed(featureb),32));
		s_datain2 <= rawa & rawb;--when (ep00wire(23) = '0') else std_logic_vector(resize(signed(featurec),32));
		s_datain3 <= rawc & rawd;--when (ep00wire(23) = '0') else std_logic_vector(resize(signed(featured),32));
		
		wr_en0 <= ep00wire(22) and (feature_valid or (not ep00wire(28)));--when (ep00wire(23) = '0') else feature_valid;
		wr_en1 <= ep00wire(22) and (feature_valid or (not ep00wire(28)));--when (ep00wire(23) = '0') else feature_valid;
		wr_en2 <= ep00wire(22) and (rawvalid or (not ep00wire(28))) 	;--when (ep00wire(23) = '0') else feature_valid;
		wr_en3 <= ep00wire(22) and (rawvalid or (not ep00wire(28))) 	;--when (ep00wire(23) = '0') else feature_valid;
		
		ep20wire(0) <= prog_full0;
		ep20wire(1) <= prog_full1;
		ep20wire(2) <= prog_full2;
		ep20wire(3) <= prog_full3;
	end if;
end process;

							
	u0_fifo : fifo
	port map( 
			rst => ep00wire(30),
			wr_clk => clk,
			rd_clk => okclk,
			din => s_datain0,
			wr_en => wr_en0, 
			rd_en => rd_en0,
			dout => s_dataout0,
			full => full0, 
			prog_full => prog_full0,
			empty => empty0
		  );
		  
	u1_fifo : fifo
	port map( 
			rst => ep00wire(30),
			wr_clk => clk,
			rd_clk => okclk,
			din => s_datain1,
			wr_en => wr_en1,
			rd_en => rd_en1,
			dout => s_dataout1,
			full => full1, 
			prog_full => prog_full1,
			empty => empty1
		  );
	
	u2_fifo : fifo
	port map( 
			rst => ep00wire(30),
			wr_clk => clk,
			rd_clk => okclk,
			din => s_datain2,
			wr_en => wr_en2,
			rd_en => rd_en2,
			dout => s_dataout2,
			full => full2, 
			prog_full => prog_full2,
			empty => empty2
		  );
	
	u3_fifo : fifo
	port map( 
			rst => ep00wire(30),
			wr_clk => clk,
			rd_clk => okclk,
			din => s_datain3,
			wr_en => wr_en3,
			rd_en => rd_en3,
			dout => s_dataout3,
			full => full3, 
			prog_full => prog_full3,
			empty => empty3
		  );
	
--	U0_sync_div_cw: peak_sync_div_cw PORT MAP(
--		x13_0_th => ep00wire(13 downto 0),
--		x21_14_ps => ep00wire(21 downto 14),
--		x29_osen => ep00wire(29),
--		x30_osrst => ep00wire(30),
--		x31_sim => ep00wire(31),
--		 
--		ce => '1',
--		clk => clk,
--		
--		adata => adata,
--		bdata => bdata, 
--		cdata => cdata,
--		ddata => ddata,
--		
--		rawab => rawab,
--		rawcd => rawcd ,
--		rawvalid => rawvalid,
--		
--		feature_valid => feature_valid,
--		featurea => featurea(15 downto 0),
--		featureb => featureb(15 downto 0),
--		featurec => featurec(15 downto 0),
--		featured => featured(15 downto 0),
--		
--		xysum => xysum,
--		xysum_valid => xysum_valid
--	);	
	U0_dkver1_cw : dkver1_cw PORT MAP(
		ce => '1',
		clk => clk,
		ctrl1_stretch21_14 => ep00wire(21 downto 14),
		ctrl2_threshold13_0 => ep00wire(13 downto 0),
		ctrl3_offseten29 => ep00wire(29),
		ctrl4_offsetrst30 => ep00wire(30),
		ctrl5_sim31 => ep00wire(31),
		datain1 => data(63 downto 48),
		datain2 => data(47 downto 32),
		datain3 => data(31 downto 16),
		datain4 => data(15 downto 0),
		peakout1 => rawA,
		peakout2 => rawB,
		peakout3 => rawC,
		peakout4 => rawD,
		peakvalid => rawvalid,
		pulseout1 => featurea,
		pulseout2 => featureb,
		pulseout3 => featurec,
		pulseout4 => featured,
		pulsevalid => feature_valid
	);
--	
--	U0_dkver1_cw : dkver1_cw PORT MAP(
--		ce => '1',
--		clk => clk,
--		ctrl1_stretch21_14 => ep00wire(21 downto 14),
--		ctrl2_threshold13_0 => ep00wire(13 downto 0),
--		ctrl3_offseten29 => ep00wire(29),
--		ctrl4_offsetrst30 => ep00wire(30),
--		ctrl5_sim31 => ep00wire(31),
--		datain1 => adata,
--		datain2 => bdata,
--		datain3 => cdata,
--		datain4 => ddata,
--		dataout1 => featurea,
--		dataout2 => featureb,
--		dataout3 => featurec,
--		dataout4 => featured,
--		valid => feature_valid
--	);
	
	end Behavioral;
