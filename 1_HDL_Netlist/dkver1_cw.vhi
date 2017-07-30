
-- VHDL Instantiation Created from source file dkver1_cw.vhd -- 21:53:35 07/28/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_dkver1_cw: dkver1_cw PORT MAP(
		ce => ,
		clk => ,
		ctrl1_stretch21_14 => ,
		ctrl2_threshold13_0 => ,
		ctrl3_offseten29 => ,
		ctrl4_offsetrst30 => ,
		ctrl5_sim31 => ,
		datain1 => ,
		datain2 => ,
		datain3 => ,
		datain4 => ,
		peakout1 => ,
		peakout2 => ,
		peakout3 => ,
		peakout4 => ,
		peakvalid => ,
		pulseout1 => ,
		pulseout2 => ,
		pulseout3 => ,
		pulseout4 => ,
		pulsevalid => 
	);


