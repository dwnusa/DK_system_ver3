--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2016 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file filter.vhd when simulating
-- the core, filter. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY filter IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(95 DOWNTO 0)
  );
END filter;

ARCHITECTURE filter_a OF filter IS
-- synthesis translate_off
COMPONENT wrapped_filter
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(95 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_filter USE ENTITY XilinxCoreLib.fir_compiler_v6_3(behavioral)
    GENERIC MAP (
      c_accum_op_path_widths => "31,31,31,31",
      c_accum_path_widths => "31,31,31,31",
      c_channel_pattern => "fixed",
      c_coef_file => "filter.mif",
      c_coef_file_lines => 8,
      c_coef_mem_packing => 0,
      c_coef_memtype => 2,
      c_coef_path_sign => "0,0,0,0",
      c_coef_path_src => "0,0,0,0",
      c_coef_path_widths => "16,16,16,16",
      c_coef_reload => 0,
      c_coef_width => 16,
      c_col_config => "8",
      c_col_mode => 1,
      c_col_pipe_len => 4,
      c_component_name => "filter",
      c_config_packet_size => 0,
      c_config_sync_mode => 0,
      c_config_tdata_width => 1,
      c_data_has_tlast => 0,
      c_data_mem_packing => 0,
      c_data_memtype => 0,
      c_data_path_sign => "0,0,0,0",
      c_data_path_src => "0,1,2,3",
      c_data_path_widths => "14,14,14,14",
      c_data_width => 14,
      c_datapath_memtype => 0,
      c_decim_rate => 1,
      c_ext_mult_cnfg => "none",
      c_filter_type => 0,
      c_filts_packed => 0,
      c_has_aclken => 0,
      c_has_aresetn => 0,
      c_has_config_channel => 0,
      c_input_rate => 1,
      c_interp_rate => 1,
      c_ipbuff_memtype => 0,
      c_latency => 16,
      c_m_data_has_tready => 0,
      c_m_data_has_tuser => 0,
      c_m_data_tdata_width => 96,
      c_m_data_tuser_width => 1,
      c_mem_arrangement => 1,
      c_num_channels => 1,
      c_num_filts => 1,
      c_num_madds => 8,
      c_num_reload_slots => 1,
      c_num_taps => 15,
      c_opbuff_memtype => 0,
      c_opt_madds => "none",
      c_optimization => 0,
      c_output_path_widths => "22,22,22,22",
      c_output_rate => 1,
      c_output_width => 22,
      c_oversampling_rate => 1,
      c_reload_tdata_width => 1,
      c_round_mode => 3,
      c_s_data_has_fifo => 1,
      c_s_data_has_tuser => 0,
      c_s_data_tdata_width => 64,
      c_s_data_tuser_width => 1,
      c_symmetry => 1,
      c_xdevicefamily => "spartan6",
      c_zero_packing_factor => 1
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_filter
  PORT MAP (
    aclk => aclk,
    s_axis_data_tvalid => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready,
    s_axis_data_tdata => s_axis_data_tdata,
    m_axis_data_tvalid => m_axis_data_tvalid,
    m_axis_data_tdata => m_axis_data_tdata
  );
-- synthesis translate_on

END filter_a;
