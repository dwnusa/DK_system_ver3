library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "DKver1/OffsetCtrl_1d"

entity offsetctrl_1d_entity_722b8ff6b9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    offsetin1: in std_logic_vector(19 downto 0); 
    offsetin2: in std_logic_vector(19 downto 0); 
    offsetin3: in std_logic_vector(19 downto 0); 
    offsetin4: in std_logic_vector(19 downto 0); 
    sigin1: in std_logic_vector(15 downto 0); 
    sigin2: in std_logic_vector(15 downto 0); 
    sigin3: in std_logic_vector(15 downto 0); 
    sigin4: in std_logic_vector(15 downto 0); 
    sigout1: out std_logic_vector(15 downto 0); 
    sigout2: out std_logic_vector(15 downto 0); 
    sigout3: out std_logic_vector(15 downto 0); 
    sigout4: out std_logic_vector(15 downto 0)
  );
end offsetctrl_1d_entity_722b8ff6b9;

architecture structural of offsetctrl_1d_entity_722b8ff6b9 is
  signal addsub1_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub3_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal convert4_dout_net_x0: std_logic;
  signal delay1_q_net_x0: std_logic_vector(15 downto 0);
  signal delay2_q_net_x0: std_logic_vector(15 downto 0);
  signal delay3_q_net_x0: std_logic_vector(15 downto 0);
  signal delay4_q_net_x0: std_logic_vector(15 downto 0);
  signal register1_q_net_x0: std_logic_vector(19 downto 0);
  signal register2_q_net_x0: std_logic_vector(19 downto 0);
  signal register3_q_net_x0: std_logic_vector(19 downto 0);
  signal register_q_net_x0: std_logic_vector(19 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  convert4_dout_net_x0 <= en;
  register_q_net_x0 <= offsetin1;
  register1_q_net_x0 <= offsetin2;
  register2_q_net_x0 <= offsetin3;
  register3_q_net_x0 <= offsetin4;
  delay1_q_net_x0 <= sigin1;
  delay2_q_net_x0 <= sigin2;
  delay3_q_net_x0 <= sigin3;
  delay4_q_net_x0 <= sigin4;
  sigout1 <= addsub_s_net_x0;
  sigout2 <= addsub1_s_net_x0;
  sigout3 <= addsub2_s_net_x0;
  sigout4 <= addsub3_s_net_x0;

  addsub: entity work.xladdsub_DKver1
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 20,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 21,
      core_name0 => "addsb_11_0_c56061fb4dfcdca4",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 21,
      latency => 1,
      overflow => 2,
      quantization => 2,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => delay1_q_net_x0,
      b => register_q_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en(0) => convert4_dout_net_x0,
      s => addsub_s_net_x0
    );

  addsub1: entity work.xladdsub_DKver1
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 20,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 21,
      core_name0 => "addsb_11_0_c56061fb4dfcdca4",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 21,
      latency => 1,
      overflow => 2,
      quantization => 2,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => delay2_q_net_x0,
      b => register1_q_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en(0) => convert4_dout_net_x0,
      s => addsub1_s_net_x0
    );

  addsub2: entity work.xladdsub_DKver1
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 20,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 21,
      core_name0 => "addsb_11_0_c56061fb4dfcdca4",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 21,
      latency => 1,
      overflow => 2,
      quantization => 2,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => delay3_q_net_x0,
      b => register2_q_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en(0) => convert4_dout_net_x0,
      s => addsub2_s_net_x0
    );

  addsub3: entity work.xladdsub_DKver1
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 20,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 21,
      core_name0 => "addsb_11_0_c56061fb4dfcdca4",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 21,
      latency => 1,
      overflow => 2,
      quantization => 2,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => delay4_q_net_x0,
      b => register3_q_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en(0) => convert4_dout_net_x0,
      s => addsub3_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "DKver1/OffsetCtrl_3d"

entity offsetctrl_3d_entity_dcaf28bbd4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    sigin1: in std_logic_vector(15 downto 0); 
    sigin2: in std_logic_vector(15 downto 0); 
    sigin3: in std_logic_vector(15 downto 0); 
    sigin4: in std_logic_vector(15 downto 0); 
    offsetout1: out std_logic_vector(19 downto 0); 
    offsetout2: out std_logic_vector(19 downto 0); 
    offsetout3: out std_logic_vector(19 downto 0); 
    offsetout4: out std_logic_vector(19 downto 0); 
    valid: out std_logic
  );
end offsetctrl_3d_entity_dcaf28bbd4;

architecture structural of offsetctrl_3d_entity_dcaf28bbd4 is
  signal accumulator1_q_net: std_logic_vector(31 downto 0);
  signal accumulator2_q_net: std_logic_vector(31 downto 0);
  signal accumulator3_q_net: std_logic_vector(31 downto 0);
  signal accumulator_q_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal convert1_dout_net: std_logic_vector(19 downto 0);
  signal convert2_dout_net: std_logic_vector(19 downto 0);
  signal convert3_dout_net: std_logic_vector(19 downto 0);
  signal convert4_dout_net_x1: std_logic;
  signal convert_dout_net: std_logic_vector(19 downto 0);
  signal counter_op_net: std_logic_vector(12 downto 0);
  signal ctrl3_offseten29_net_x0: std_logic;
  signal ctrl4_offsetrst30_net_x0: std_logic;
  signal delay1_q_net_x1: std_logic_vector(15 downto 0);
  signal delay2_q_net_x1: std_logic_vector(15 downto 0);
  signal delay3_q_net_x1: std_logic_vector(15 downto 0);
  signal delay4_q_net_x1: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal register1_q_net_x1: std_logic_vector(19 downto 0);
  signal register2_q_net_x1: std_logic_vector(19 downto 0);
  signal register3_q_net_x1: std_logic_vector(19 downto 0);
  signal register_q_net_x1: std_logic_vector(19 downto 0);
  signal slice1_y_net: std_logic_vector(19 downto 0);
  signal slice2_y_net: std_logic_vector(19 downto 0);
  signal slice3_y_net: std_logic_vector(19 downto 0);
  signal slice4_y_net: std_logic;
  signal slice_y_net: std_logic_vector(19 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  ctrl3_offseten29_net_x0 <= en;
  ctrl4_offsetrst30_net_x0 <= rst;
  delay1_q_net_x1 <= sigin1;
  delay2_q_net_x1 <= sigin2;
  delay3_q_net_x1 <= sigin3;
  delay4_q_net_x1 <= sigin4;
  offsetout1 <= register_q_net_x1;
  offsetout2 <= register1_q_net_x1;
  offsetout3 <= register2_q_net_x1;
  offsetout4 <= register3_q_net_x1;
  valid <= convert4_dout_net_x1;

  accumulator: entity work.accum_62ff279733
    port map (
      b => delay1_q_net_x1,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => ctrl3_offseten29_net_x0,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => accumulator_q_net
    );

  accumulator1: entity work.accum_62ff279733
    port map (
      b => delay2_q_net_x1,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => ctrl3_offseten29_net_x0,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => accumulator1_q_net
    );

  accumulator2: entity work.accum_62ff279733
    port map (
      b => delay3_q_net_x1,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => ctrl3_offseten29_net_x0,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => accumulator2_q_net
    );

  accumulator3: entity work.accum_62ff279733
    port map (
      b => delay4_q_net_x1,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => ctrl3_offseten29_net_x0,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => accumulator3_q_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 20,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 20,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => slice_y_net,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 20,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 20,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 20,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 20,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 20,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 20,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => slice4_y_net,
      en => "1",
      dout(0) => convert4_dout_net_x1
    );

  counter: entity work.xlcounter_free_DKver1
    generic map (
      core_name0 => "cntr_11_0_00fd590c4e52f518",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => ctrl4_offsetrst30_net_x0,
      op => counter_op_net
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => convert4_dout_net_x1,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      d0(0) => ctrl3_offseten29_net_x0,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 20,
      init_value => b"00000000000000000000"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => convert1_dout_net,
      en(0) => inverter_op_net,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => register1_q_net_x1
    );

  register2: entity work.xlregister
    generic map (
      d_width => 20,
      init_value => b"00000000000000000000"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => convert2_dout_net,
      en(0) => inverter_op_net,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => register2_q_net_x1
    );

  register3: entity work.xlregister
    generic map (
      d_width => 20,
      init_value => b"00000000000000000000"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => convert3_dout_net,
      en(0) => inverter_op_net,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => register3_q_net_x1
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 20,
      init_value => b"00000000000000000000"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => convert_dout_net,
      en(0) => inverter_op_net,
      rst(0) => ctrl4_offsetrst30_net_x0,
      q => register_q_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 31,
      x_width => 32,
      y_width => 20
    )
    port map (
      x => accumulator_q_net,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 31,
      x_width => 32,
      y_width => 20
    )
    port map (
      x => accumulator1_q_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 31,
      x_width => 32,
      y_width => 20
    )
    port map (
      x => accumulator2_q_net,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 31,
      x_width => 32,
      y_width => 20
    )
    port map (
      x => accumulator3_q_net,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 12,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "DKver1/PeakSensing_3d"

entity peaksensing_3d_entity_dc4d47ad19 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    sigin1: in std_logic_vector(15 downto 0); 
    sigin2: in std_logic_vector(15 downto 0); 
    sigin3: in std_logic_vector(15 downto 0); 
    sigin4: in std_logic_vector(15 downto 0); 
    sigout1: out std_logic_vector(15 downto 0); 
    sigout2: out std_logic_vector(15 downto 0); 
    sigout3: out std_logic_vector(15 downto 0); 
    sigout4: out std_logic_vector(15 downto 0); 
    trig: out std_logic
  );
end peaksensing_3d_entity_dc4d47ad19;

architecture structural of peaksensing_3d_entity_dc4d47ad19 is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal delay10_q_net_x0: std_logic_vector(15 downto 0);
  signal delay11_q_net_x0: std_logic_vector(15 downto 0);
  signal delay12_q_net_x0: std_logic_vector(15 downto 0);
  signal delay13_q_net_x0: std_logic_vector(15 downto 0);
  signal delay1_q_net: std_logic;
  signal delay2_q_net_x0: std_logic_vector(15 downto 0);
  signal delay3_q_net_x0: std_logic_vector(15 downto 0);
  signal delay4_q_net_x0: std_logic_vector(15 downto 0);
  signal delay5_q_net_x0: std_logic_vector(15 downto 0);
  signal delay_q_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal register1_q_net: std_logic_vector(15 downto 0);
  signal register2_q_net: std_logic_vector(15 downto 0);
  signal register3_q_net: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(15 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational4_op_net_x0: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  relational4_op_net_x0 <= en;
  delay10_q_net_x0 <= sigin1;
  delay11_q_net_x0 <= sigin2;
  delay12_q_net_x0 <= sigin3;
  delay13_q_net_x0 <= sigin4;
  sigout1 <= delay5_q_net_x0;
  sigout2 <= delay4_q_net_x0;
  sigout3 <= delay2_q_net_x0;
  sigout4 <= delay3_q_net_x0;
  trig <= delay_q_net_x0;

  delay: entity work.delay_465b2eaa2d
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      d(0) => inverter_op_net,
      rst(0) => delay1_q_net,
      q(0) => delay_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => register2_q_net,
      en => '1',
      rst => '1',
      q => delay2_q_net_x0
    );

  delay3: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => register3_q_net,
      en => '1',
      rst => '1',
      q => delay3_q_net_x0
    );

  delay4: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => register1_q_net,
      en => '1',
      rst => '1',
      q => delay4_q_net_x0
    );

  delay5: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => register_q_net,
      en => '1',
      rst => '1',
      q => delay5_q_net_x0
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      ip(0) => relational4_op_net_x0,
      op(0) => inverter_op_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => delay11_q_net_x0,
      en(0) => relational1_op_net,
      rst(0) => inverter_op_net,
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => delay12_q_net_x0,
      en(0) => relational2_op_net,
      rst(0) => inverter_op_net,
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => delay13_q_net_x0,
      en(0) => relational3_op_net,
      rst(0) => inverter_op_net,
      q => register3_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => delay10_q_net_x0,
      en(0) => relational_op_net,
      rst(0) => inverter_op_net,
      q => register_q_net
    );

  relational: entity work.relational_97b5175c82
    port map (
      a => delay10_q_net_x0,
      b => register_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_97b5175c82
    port map (
      a => delay11_q_net_x0,
      b => register1_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_97b5175c82
    port map (
      a => delay12_q_net_x0,
      b => register2_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_97b5175c82
    port map (
      a => delay13_q_net_x0,
      b => register3_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "DKver1/SigDetect_10d"

entity sigdetect_10d_entity_019b4552c7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sigin1: in std_logic_vector(15 downto 0); 
    sigin2: in std_logic_vector(15 downto 0); 
    sigin3: in std_logic_vector(15 downto 0); 
    sigin4: in std_logic_vector(15 downto 0); 
    stretch: in std_logic_vector(7 downto 0); 
    threshold: in std_logic_vector(13 downto 0); 
    sigout1: out std_logic_vector(15 downto 0); 
    sigout2: out std_logic_vector(15 downto 0); 
    sigout3: out std_logic_vector(15 downto 0); 
    sigout4: out std_logic_vector(15 downto 0); 
    valid: out std_logic
  );
end sigdetect_10d_entity_019b4552c7;

architecture structural of sigdetect_10d_entity_019b4552c7 is
  signal addsub1_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub3_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal ctrl1_stretch21_14_net_x0: std_logic_vector(7 downto 0);
  signal ctrl2_threshold13_0_net_x0: std_logic_vector(13 downto 0);
  signal delay10_q_net_x1: std_logic_vector(15 downto 0);
  signal delay11_q_net_x1: std_logic_vector(15 downto 0);
  signal delay12_q_net_x1: std_logic_vector(15 downto 0);
  signal delay13_q_net_x1: std_logic_vector(15 downto 0);
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal delay6_q_net: std_logic;
  signal delay7_q_net: std_logic;
  signal delay8_q_net: std_logic;
  signal delay9_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net: std_logic;
  signal logical3_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational4_op_net_x1: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  addsub_s_net_x1 <= sigin1;
  addsub1_s_net_x1 <= sigin2;
  addsub2_s_net_x1 <= sigin3;
  addsub3_s_net_x1 <= sigin4;
  ctrl1_stretch21_14_net_x0 <= stretch;
  ctrl2_threshold13_0_net_x0 <= threshold;
  sigout1 <= delay10_q_net_x1;
  sigout2 <= delay11_q_net_x1;
  sigout3 <= delay12_q_net_x1;
  sigout4 <= delay13_q_net_x1;
  valid <= relational4_op_net_x1;

  counter: entity work.xlcounter_free_DKver1
    generic map (
      core_name0 => "cntr_11_0_81606633e3bc7b5b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      en(0) => relational4_op_net_x1,
      rst(0) => delay8_q_net,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational_op_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay10: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d => addsub_s_net_x1,
      en => '1',
      rst => '1',
      q => delay10_q_net_x1
    );

  delay11: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d => addsub1_s_net_x1,
      en => '1',
      rst => '1',
      q => delay11_q_net_x1
    );

  delay12: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d => addsub2_s_net_x1,
      en => '1',
      rst => '1',
      q => delay12_q_net_x1
    );

  delay13: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d => addsub3_s_net_x1,
      en => '1',
      rst => '1',
      q => delay13_q_net_x1
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational1_op_net,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational1_op_net,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational2_op_net,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net
    );

  delay5: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational2_op_net,
      en => '1',
      rst => '1',
      q(0) => delay5_q_net
    );

  delay6: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational3_op_net,
      en => '1',
      rst => '1',
      q(0) => delay6_q_net
    );

  delay7: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => relational3_op_net,
      en => '1',
      rst => '1',
      q(0) => delay7_q_net
    );

  delay8: entity work.delay_465b2eaa2d
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      d(0) => logical_y_net,
      rst(0) => delay9_q_net,
      q(0) => delay8_q_net
    );

  delay9: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => logical_y_net,
      en => '1',
      rst => '1',
      q(0) => delay9_q_net
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => logical2_y_net,
      d2(0) => logical3_y_net,
      d3(0) => logical4_y_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => delay_q_net,
      d2(0) => delay1_q_net,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational1_op_net,
      d1(0) => delay2_q_net,
      d2(0) => delay3_q_net,
      y(0) => logical2_y_net
    );

  logical3: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net,
      d1(0) => delay4_q_net,
      d2(0) => delay5_q_net,
      y(0) => logical3_y_net
    );

  logical4: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational3_op_net,
      d1(0) => delay6_q_net,
      d2(0) => delay7_q_net,
      y(0) => logical4_y_net
    );

  relational: entity work.relational_b85573c9cd
    port map (
      a => addsub_s_net_x1,
      b => ctrl2_threshold13_0_net_x0,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_b85573c9cd
    port map (
      a => addsub1_s_net_x1,
      b => ctrl2_threshold13_0_net_x0,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_b85573c9cd
    port map (
      a => addsub2_s_net_x1,
      b => ctrl2_threshold13_0_net_x0,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_b85573c9cd
    port map (
      a => addsub3_s_net_x1,
      b => ctrl2_threshold13_0_net_x0,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      op(0) => relational3_op_net
    );

  relational4: entity work.relational_8d1942da8e
    port map (
      a => counter_op_net,
      b => ctrl1_stretch21_14_net_x0,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      op(0) => relational4_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "DKver1/SigMux_1d"

entity sigmux_1d_entity_7b192397cd is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(15 downto 0); 
    in2: in std_logic_vector(15 downto 0); 
    in3: in std_logic_vector(15 downto 0); 
    in4: in std_logic_vector(15 downto 0); 
    in5: in std_logic; 
    out1: out std_logic_vector(15 downto 0); 
    out2: out std_logic_vector(15 downto 0); 
    out3: out std_logic_vector(15 downto 0); 
    out4: out std_logic_vector(15 downto 0)
  );
end sigmux_1d_entity_7b192397cd;

architecture structural of sigmux_1d_entity_7b192397cd is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal ctrl5_sim31_net_x0: std_logic;
  signal datain1_net_x0: std_logic_vector(15 downto 0);
  signal datain2_net_x0: std_logic_vector(15 downto 0);
  signal datain3_net_x0: std_logic_vector(15 downto 0);
  signal datain4_net_x0: std_logic_vector(15 downto 0);
  signal mux1_y_net_x0: std_logic_vector(15 downto 0);
  signal mux2_y_net_x0: std_logic_vector(15 downto 0);
  signal mux3_y_net_x0: std_logic_vector(15 downto 0);
  signal mux4_y_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  datain1_net_x0 <= in1;
  datain2_net_x0 <= in2;
  datain3_net_x0 <= in3;
  datain4_net_x0 <= in4;
  ctrl5_sim31_net_x0 <= in5;
  out1 <= mux1_y_net_x0;
  out2 <= mux2_y_net_x0;
  out3 <= mux3_y_net_x0;
  out4 <= mux4_y_net_x0;

  counter: entity work.xlcounter_free_DKver1
    generic map (
      core_name0 => "cntr_11_0_80e8f2a7fd3ba205",
      op_arith => xlSigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  mux1: entity work.mux_1c0f59dbb1
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d0 => datain1_net_x0,
      d1 => counter_op_net,
      sel(0) => ctrl5_sim31_net_x0,
      y => mux1_y_net_x0
    );

  mux2: entity work.mux_1c0f59dbb1
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d0 => datain2_net_x0,
      d1 => counter_op_net,
      sel(0) => ctrl5_sim31_net_x0,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_1c0f59dbb1
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d0 => datain3_net_x0,
      d1 => counter_op_net,
      sel(0) => ctrl5_sim31_net_x0,
      y => mux3_y_net_x0
    );

  mux4: entity work.mux_1c0f59dbb1
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d0 => datain4_net_x0,
      d1 => counter_op_net,
      sel(0) => ctrl5_sim31_net_x0,
      y => mux4_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "DKver1/SigSeparation1_1d"

entity sigseparation1_1d_entity_9e1277b02d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sigin1: in std_logic_vector(15 downto 0); 
    sigin2: in std_logic_vector(15 downto 0); 
    sigin3: in std_logic_vector(15 downto 0); 
    sigin4: in std_logic_vector(15 downto 0); 
    sigout1: out std_logic_vector(15 downto 0); 
    sigout2: out std_logic_vector(15 downto 0); 
    sigout3: out std_logic_vector(15 downto 0); 
    sigout4: out std_logic_vector(15 downto 0)
  );
end sigseparation1_1d_entity_9e1277b02d;

architecture structural of sigseparation1_1d_entity_9e1277b02d is
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_dout_net_x0: std_logic_vector(15 downto 0);
  signal delay10_q_net_x2: std_logic_vector(15 downto 0);
  signal delay11_q_net_x2: std_logic_vector(15 downto 0);
  signal delay12_q_net_x2: std_logic_vector(15 downto 0);
  signal delay13_q_net_x2: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  delay10_q_net_x2 <= sigin1;
  delay11_q_net_x2 <= sigin2;
  delay12_q_net_x2 <= sigin3;
  delay13_q_net_x2 <= sigin4;
  sigout1 <= convert_dout_net_x0;
  sigout2 <= convert1_dout_net_x0;
  sigout3 <= convert2_dout_net_x0;
  sigout4 <= convert3_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din => delay10_q_net_x2,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din => delay11_q_net_x2,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din => delay12_q_net_x2,
      en => "1",
      dout => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din => delay13_q_net_x2,
      en => "1",
      dout => convert3_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "DKver1"

entity dkver1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end dkver1;

architecture structural of dkver1 is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "DKver1,sysgen_core,{clock_period=9.00000000,clocking=Clock_Enables,compilation=HDL_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=229,xilinx_accumulator_block=4,xilinx_adder_subtracter_block=4,xilinx_arithmetic_relational_operator_block=9,xilinx_bit_slice_extractor_block=5,xilinx_bus_multiplexer_block=4,xilinx_counter_block=3,xilinx_delay_block=24,xilinx_gateway_in_block=9,xilinx_gateway_out_block=34,xilinx_inverter_block=2,xilinx_logical_block_block=6,xilinx_register_block=8,xilinx_system_generator_block=1,xilinx_type_converter_block=9,}";

  signal addsub1_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub3_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal convert4_dout_net_x1: std_logic;
  signal ctrl1_stretch21_14_net: std_logic_vector(7 downto 0);
  signal ctrl2_threshold13_0_net: std_logic_vector(13 downto 0);
  signal ctrl3_offseten29_net: std_logic;
  signal ctrl4_offsetrst30_net: std_logic;
  signal ctrl5_sim31_net: std_logic;
  signal datain1_net: std_logic_vector(15 downto 0);
  signal datain2_net: std_logic_vector(15 downto 0);
  signal datain3_net: std_logic_vector(15 downto 0);
  signal datain4_net: std_logic_vector(15 downto 0);
  signal delay10_q_net_x2: std_logic_vector(15 downto 0);
  signal delay11_q_net_x2: std_logic_vector(15 downto 0);
  signal delay12_q_net_x2: std_logic_vector(15 downto 0);
  signal delay13_q_net_x2: std_logic_vector(15 downto 0);
  signal delay1_q_net_x1: std_logic_vector(15 downto 0);
  signal delay2_q_net_x1: std_logic_vector(15 downto 0);
  signal delay3_q_net_x1: std_logic_vector(15 downto 0);
  signal delay4_q_net_x1: std_logic_vector(15 downto 0);
  signal mux1_y_net_x0: std_logic_vector(15 downto 0);
  signal mux2_y_net_x0: std_logic_vector(15 downto 0);
  signal mux3_y_net_x0: std_logic_vector(15 downto 0);
  signal mux4_y_net_x0: std_logic_vector(15 downto 0);
  signal peakout1_net: std_logic_vector(15 downto 0);
  signal peakout2_net: std_logic_vector(15 downto 0);
  signal peakout3_net: std_logic_vector(15 downto 0);
  signal peakout4_net: std_logic_vector(15 downto 0);
  signal peakvalid_net: std_logic;
  signal pulseout1_net: std_logic_vector(15 downto 0);
  signal pulseout2_net: std_logic_vector(15 downto 0);
  signal pulseout3_net: std_logic_vector(15 downto 0);
  signal pulseout4_net: std_logic_vector(15 downto 0);
  signal pulsevalid_net: std_logic;
  signal register1_q_net_x1: std_logic_vector(19 downto 0);
  signal register2_q_net_x1: std_logic_vector(19 downto 0);
  signal register3_q_net_x1: std_logic_vector(19 downto 0);
  signal register_q_net_x1: std_logic_vector(19 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  ctrl1_stretch21_14_net <= ctrl1_stretch21_14;
  ctrl2_threshold13_0_net <= ctrl2_threshold13_0;
  ctrl3_offseten29_net <= ctrl3_offseten29;
  ctrl4_offsetrst30_net <= ctrl4_offsetrst30;
  ctrl5_sim31_net <= ctrl5_sim31;
  datain1_net <= datain1;
  datain2_net <= datain2;
  datain3_net <= datain3;
  datain4_net <= datain4;
  peakout1 <= peakout1_net;
  peakout2 <= peakout2_net;
  peakout3 <= peakout3_net;
  peakout4 <= peakout4_net;
  peakvalid <= peakvalid_net;
  pulseout1 <= pulseout1_net;
  pulseout2 <= pulseout2_net;
  pulseout3 <= pulseout3_net;
  pulseout4 <= pulseout4_net;
  pulsevalid <= pulsevalid_net;

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay1_q_net_x1
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => mux2_y_net_x0,
      en => '1',
      rst => '1',
      q => delay2_q_net_x1
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => mux3_y_net_x0,
      en => '1',
      rst => '1',
      q => delay3_q_net_x1
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => mux4_y_net_x0,
      en => '1',
      rst => '1',
      q => delay4_q_net_x1
    );

  offsetctrl_1d_722b8ff6b9: entity work.offsetctrl_1d_entity_722b8ff6b9
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      en => convert4_dout_net_x1,
      offsetin1 => register_q_net_x1,
      offsetin2 => register1_q_net_x1,
      offsetin3 => register2_q_net_x1,
      offsetin4 => register3_q_net_x1,
      sigin1 => delay1_q_net_x1,
      sigin2 => delay2_q_net_x1,
      sigin3 => delay3_q_net_x1,
      sigin4 => delay4_q_net_x1,
      sigout1 => addsub_s_net_x1,
      sigout2 => addsub1_s_net_x1,
      sigout3 => addsub2_s_net_x1,
      sigout4 => addsub3_s_net_x1
    );

  offsetctrl_3d_dcaf28bbd4: entity work.offsetctrl_3d_entity_dcaf28bbd4
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      en => ctrl3_offseten29_net,
      rst => ctrl4_offsetrst30_net,
      sigin1 => delay1_q_net_x1,
      sigin2 => delay2_q_net_x1,
      sigin3 => delay3_q_net_x1,
      sigin4 => delay4_q_net_x1,
      offsetout1 => register_q_net_x1,
      offsetout2 => register1_q_net_x1,
      offsetout3 => register2_q_net_x1,
      offsetout4 => register3_q_net_x1,
      valid => convert4_dout_net_x1
    );

  peaksensing_3d_dc4d47ad19: entity work.peaksensing_3d_entity_dc4d47ad19
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      en => pulsevalid_net,
      sigin1 => delay10_q_net_x2,
      sigin2 => delay11_q_net_x2,
      sigin3 => delay12_q_net_x2,
      sigin4 => delay13_q_net_x2,
      sigout1 => peakout1_net,
      sigout2 => peakout2_net,
      sigout3 => peakout3_net,
      sigout4 => peakout4_net,
      trig => peakvalid_net
    );

  sigdetect_10d_019b4552c7: entity work.sigdetect_10d_entity_019b4552c7
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      sigin1 => addsub_s_net_x1,
      sigin2 => addsub1_s_net_x1,
      sigin3 => addsub2_s_net_x1,
      sigin4 => addsub3_s_net_x1,
      stretch => ctrl1_stretch21_14_net,
      threshold => ctrl2_threshold13_0_net,
      sigout1 => delay10_q_net_x2,
      sigout2 => delay11_q_net_x2,
      sigout3 => delay12_q_net_x2,
      sigout4 => delay13_q_net_x2,
      valid => pulsevalid_net
    );

  sigmux_1d_7b192397cd: entity work.sigmux_1d_entity_7b192397cd
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in1 => datain1_net,
      in2 => datain2_net,
      in3 => datain3_net,
      in4 => datain4_net,
      in5 => ctrl5_sim31_net,
      out1 => mux1_y_net_x0,
      out2 => mux2_y_net_x0,
      out3 => mux3_y_net_x0,
      out4 => mux4_y_net_x0
    );

  sigseparation1_1d_9e1277b02d: entity work.sigseparation1_1d_entity_9e1277b02d
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      sigin1 => delay10_q_net_x2,
      sigin2 => delay11_q_net_x2,
      sigin3 => delay12_q_net_x2,
      sigin4 => delay13_q_net_x2,
      sigout1 => pulseout1_net,
      sigout2 => pulseout2_net,
      sigout3 => pulseout3_net,
      sigout4 => pulseout4_net
    );

end structural;
