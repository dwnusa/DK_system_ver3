
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple',
    'Impl_file' => 'Vivado Implementation Defaults',
    'Impl_file_sgadvanced' => '',
    'Synth_file' => 'Vivado Synthesis Defaults',
    'Synth_file_sgadvanced' => '',
    'TEMP' => 'C:/Users/ROBOT3~1/AppData/Local/Temp',
    'TMP' => 'C:/Users/ROBOT3~1/AppData/Local/Temp',
    'Temp' => 'C:/Users/ROBOT3~1/AppData/Local/Temp',
    'Tmp' => 'C:/Users/ROBOT3~1/AppData/Local/Temp',
    'analysis_type' => 'None',
    'analyzer_type' => 'Timing',
    'apply_std_logic_for_1_bit' => 'off',
    'base_system_period_hardware' => 9.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'block_type' => 'sysgen',
    'block_version' => '',
    'board_displayname' => 'None',
    'board_fileversion' => '',
    'board_name' => '',
    'board_part' => '',
    'board_revision' => '',
    'board_vendor' => '',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => '',
    'clock_wrapper' => 'Clock Enables',
    'clock_wrapper_sgadvanced' => '',
    'compilation' => 'Timing and Power Analysis',
    'compilation_display' => 'HDL Netlist',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'IP Catalog',
        'Synthesized Checkpoint',
        'Timing and Power Analysis',
      ],
      'values' => [
        'target1',
        'target2',
        'target3',
        'target4',
      ],
    },
    'compilation_target' => 'Timing and Power Analysis',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => 'C:/Users/ROBOT3~1/AppData/Local/Temp/sysgentmp-Robot32-VM/cg_wk/ce5c1233ab64adfd0',
    'coregen_part_family' => 'spartan6',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 10.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'DKver1',
    'design_full_path' => 'C:\\Users\\Robot32-VM\\Documents\\System Generator\\11_Gamma_Simple\\DKver1.slx',
    'device' => 'xc6slx150-2fgg484',
    'device_speed' => '-2',
    'directory' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis',
    'disable_clocking' => 0.0,
    'dsp_cache_root_path' => 'C:/Users/ROBOT3~1/AppData/Local/Temp/sysgentmp-Robot32-VM',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2079.105224609375,
    'generating_subsystem_handle' => 2079.105224609375,
    'generation_directory' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis',
    'has_advanced_control' => '0',
    'hdlDir' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_library' => 'xil_defaultlib',
    'hdl_path' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '14.7i',
    'master_sysgen_token_handle' => 2082.0811767578125,
    'matlab' => 'C:/Program Files/MATLAB/R2013b',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 2079.105224609375,
    'mdlPath' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/DKver1.mdl',
    'modelDiagnostics' => [
      {
        'count' => 239.0,
        'isMask' => 0.0,
        'type' => 'DKver1 Total blocks',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 6.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 36.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Mux',
      },
      {
        'count' => 31.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 134.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'Scope',
      },
      {
        'count' => 8.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Sum',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'TransferFcn',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Random Source',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Accumulator Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 9.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 26.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 9.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 36.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 9.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/DKver1.mdl',
    'myxilinx' => 'C:/Xilinx/14.7/ISE_DS/ISE',
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '20000',
    'package' => 'fgg484',
    'part' => 'xc6slx150',
    'partFamily' => 'spartan6',
    'port_data_types_enabled' => 1.0,
    'postgeneration_fcn' => 'xlTimingPostGeneration',
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'proj_type_sgadvanced' => '',
    'remote_ip_caching' => 0.0,
    'run_coregen' => 'off',
    'run_coregen_sgadvanced' => '',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'settings_fcn' => 'xlTimingSettings',
    'sg_blockgui_xml' => '',
    'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
    'sg_list_contents' => '',
    'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
    'sg_version' => '',
    'sggui_pos' => '-1,-1,-1,-1',
    'simulation_island_subsystem_handle' => 2079.105224609375,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-2',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 9.0,
    'sysgen' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenRoot' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'Impl_file' => 'Vivado Implementation Defaults',
      'Impl_file_sgadvanced' => '',
      'Synth_file' => 'Vivado Synthesis Defaults',
      'Synth_file_sgadvanced' => '',
      'analysis_type' => 'None',
      'analyzer_type' => 'Timing',
      'apply_std_logic_for_1_bit' => 'off',
      'base_system_period_hardware' => 9.0,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'block_type' => 'sysgen',
      'block_version' => '',
      'board_displayname' => 'None',
      'board_fileversion' => '',
      'board_name' => '',
      'board_part' => '',
      'board_revision' => '',
      'board_vendor' => '',
      'ce_clr' => 0.0,
      'clock_loc' => '',
      'clock_wrapper' => 'Clock Enables',
      'clock_wrapper_sgadvanced' => '',
      'compilation' => 'Timing and Power Analysis',
      'compilation_display' => 'HDL Netlist',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'IP Catalog',
          'Synthesized Checkpoint',
          'Timing and Power Analysis',
        ],
        'values' => [
          'target1',
          'target2',
          'target3',
          'target4',
        ],
      },
      'core_generation' => 1.0,
      'core_generation_sgadvanced' => '',
      'coregen_part_family' => 'spartan6',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dbl_ovrd_sgadvanced' => '',
      'dcm_input_clock_period' => 10.0,
      'deprecated_control' => 'off',
      'deprecated_control_sgadvanced' => '',
      'directory' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis',
      'disable_clocking' => 0.0,
      'eval_field' => '0',
      'has_advanced_control' => '0',
      'hdl_library' => 'xil_defaultlib',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 2082.0811767578125,
      'package' => 'fgg484',
      'part' => 'xc6slx150',
      'postgeneration_fcn' => 'xlTimingPostGeneration',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'proj_type_sgadvanced' => '',
      'remote_ip_caching' => 0.0,
      'run_coregen' => 'off',
      'run_coregen_sgadvanced' => '',
      'settings_fcn' => 'xlTimingSettings',
      'sg_blockgui_xml' => '',
      'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
      'sg_list_contents' => '',
      'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
      'sggui_pos' => '-1,-1,-1,-1',
      'simulation_island_subsystem_handle' => 2079.105224609375,
      'simulink_period' => 1.0,
      'speed' => '-2',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'synthesis_tool_sgadvanced' => '',
      'sysclk_period' => 9.0,
      'ta_hold_violations' => 'off',
      'testbench' => 0,
      'testbench_sgadvanced' => '',
      'trim_vbits' => 1.0,
      'trim_vbits_sgadvanced' => '',
      'use_std_logic_for_1_bit' => 'off',
      'version' => '11.2',
      'xilinx_device' => 'xc6slx150-2fgg484',
      'xilinxfamily' => 'spartan6',
    },
    'sysgen_Root' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 9.0,
    'ta_hold_violations' => 'off',
    'tempdir' => 'C:/Users/ROBOT3~1/AppData/Local/Temp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => 'C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen',
    'trim_vbits' => 1.0,
    'trim_vbits_sgadvanced' => '',
    'use_std_logic_for_1_bit' => 'off',
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => 'C:/Users/ROBOT3~1/AppData/Local/Temp/sysgentmp-Robot32-VM',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '11.2',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '198275.000000 ns',
    'xilinx' => 'C:/Xilinx/14.7/ISE_DS/ISE',
    'xilinx_device' => 'xc6slx150-2fgg484',
    'xilinx_family' => 'spartan6',
    'xilinx_package' => 'fgg484',
    'xilinx_part' => 'xc6slx150',
    'xilinxdevice' => 'xc6slx150-2fgg484',
    'xilinxfamily' => 'spartan6',
    'xilinxpart' => 'xc6slx150',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.vhd',
    'sourceFile' => 'hdl/conv_pkg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.vhd',
    'sourceFile' => 'hdl/synth_reg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.vhd',
    'sourceFile' => 'hdl/synth_reg_w_init.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Adder_Subtracter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 21',
    'CSET Add_Mode = Subtract',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 21',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 1',
    'CSET Out_Width = 21',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_c56061fb4dfcdca4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6646280db555911b2689be8093612fdc',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(21 - 1 downto 0);
    clk: in std_logic:= \'0\';
    ce: in std_logic:= \'0\';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(21 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_c56061fb4dfcdca4',
      'entityName' => 'xladdsub_DKver1',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '86051bd76738f1676e0e5ba2ef39fdcd',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal b_17_24: signed((14 - 1) downto 0);
  signal rst_17_27: boolean;
  signal en_17_32: boolean;
  signal accum_reg_41_23: signed((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal accum_reg_41_23_en: std_logic;
  signal cast_51_42: signed((32 - 1) downto 0);
  signal accum_reg_join_47_1: signed((33 - 1) downto 0);
  signal accum_reg_join_47_1_en: std_logic;
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  en_17_32 <= ((en) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (accum_reg_41_23_rst = \'1\')) then
        accum_reg_41_23 <= "00000000000000000000000000000000";
      elsif ((ce = \'1\') and (accum_reg_41_23_en = \'1\')) then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 0, 32, 0);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, en_17_32, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= \'1\';
    elsif en_17_32 then
      accum_reg_join_47_1_rst <= \'0\';
    else 
      accum_reg_join_47_1_rst <= \'0\';
    end if;
    if en_17_32 then
      accum_reg_join_47_1_en <= \'1\';
    else 
      accum_reg_join_47_1_en <= \'0\';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  accum_reg_41_23_en <= accum_reg_join_47_1_en;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end',
      'crippled_entity' => 'is
  port (
    b : in std_logic_vector((14 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'accum_4f86e0e3cd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '67ae3f8d0e84b48c5045f58e031fdc15',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '795939a8f96efd2dbab18a9e8a188ac2',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 13',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_00fd590c4e52f518',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ab9f4af4687d95fd65ada504e652db6a',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_00fd590c4e52f518',
      'entityName' => 'xlcounter_free_DKver1',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c51e366ba3f9036aa3a03d57a6013ae6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_22_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_6844eee868',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7a72192302247cfdaed5f8aae13d083b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_799f62af22',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5ee02e1c56ba76b9826a2ee05ea380b5',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4925c27838391ce4584a1abb379240e8',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e748bf2d59fe5f162dfc0a2e79b492f5',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9832d9e2e716b71a54ff26ec11b63207',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  signal rst_1_29: std_logic;
  signal op_mem_0_8_24_next: std_logic;
  signal op_mem_0_8_24: std_logic := \'0\';
  signal op_mem_0_8_24_rst: std_logic;
  signal op_mem_0_join_10_5: std_logic;
  signal op_mem_0_join_10_5_rst: std_logic;
begin
  d_1_22 <= d(0);
  rst_1_29 <= rst(0);
  proc_op_mem_0_8_24: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_0_8_24_rst = \'1\')) then
        op_mem_0_8_24 <= \'0\';
      elsif (ce = \'1\') then 
        op_mem_0_8_24 <= op_mem_0_8_24_next;
      end if;
    end if;
  end process proc_op_mem_0_8_24;
  proc_if_10_5: process (d_1_22, rst_1_29)
  is
  begin
    if rst_1_29 = \'1\' then
      op_mem_0_join_10_5_rst <= \'1\';
    else 
      op_mem_0_join_10_5_rst <= \'0\';
    end if;
    op_mem_0_join_10_5 <= d_1_22;
  end process proc_if_10_5;
  op_mem_0_8_24_next <= d_1_22;
  op_mem_0_8_24_rst <= op_mem_0_join_10_5_rst;
  q <= std_logic_to_vector(op_mem_0_8_24);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_465b2eaa2d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '310a4a0533be9e8b7d5d989ef53978a3',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a96e5a91fd8fda60527f4ddd576087a5',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '24892ca450f3cb2a63f86a3a18ce0883',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '555121de7c496a8f8b8fe512a91f8d5b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: signed((14 - 1) downto 0);
  signal b_1_34: signed((14 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((14 - 1) downto 0);
    b : in std_logic_vector((14 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_ad15df22d8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 32',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_81606633e3bc7b5b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f5922107cf56237019ffd2e8f9a9861c',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_81606633e3bc7b5b',
      'entityName' => 'xlcounter_free_DKver1',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5ff5894dd312fcf665c7dc36614c1a37',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '849107f5885d745f3e3f4f19bbed978d',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'de4543ef2796aec3076335969ebf2eb6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_a6d07705dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bdf08e8ca83a9a263b87a62d95c77c3e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_954ee29728',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e0155246be488876f99ff0cb214ae760',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: signed((14 - 1) downto 0);
  signal b_1_34: signed((14 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((14 - 1) downto 0);
    b : in std_logic_vector((14 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_12d5ac26f1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '42245da14f8ed3b40fc79e62008160b0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_16_16: unsigned((32 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_16_16 <= u2u_cast(b_1_34, 0, 32, 0);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8d1942da8e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_80e8f2a7fd3ba205',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '091ed90a03e9a30e61b0be6098c3e419',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_80e8f2a7fd3ba205',
      'entityName' => 'xlcounter_free_DKver1',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b7c6c4470e3d9214c669f6826b5e8b6a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((14 - 1) downto 0);
  signal d1_1_27: std_logic_vector((11 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((14 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000");
  signal pipe_16_22_front_din: std_logic_vector((14 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((14 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((14 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 0, 14, 0, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((14 - 1) downto 0);
    d1 : in std_logic_vector((11 - 1) downto 0);
    y : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_4832b2866e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6686e218f012a66b32a8fd41082e460f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((14 - 1) downto 0);
  signal in1_1_27: unsigned((18 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((14 - 1) downto 0);
    in1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_104f8d24fb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '22eac45ebdd39140adc0ee3432d8bc76',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 18',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_de5346cf0bbfe7ef',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0aeda52ed5875cf5815b4f536bcc0540',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_de5346cf0bbfe7ef',
      'entityName' => 'xlcounter_free_DKver1',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '90553ce6208a4f0918dca4e10c2885ab',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen';
  open(RESULTS, '> C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/script_results1912991989400682711') || 
    croak 'couldn\'t open C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/script_results1912991989400682711';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/script_results1912991989400682711';
};

if ($@) {
  open(RESULTS, '> C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/script_results1912991989400682711') || 
    croak 'couldn\'t open C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/script_results1912991989400682711';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Users/Robot32-VM/Documents/System Generator/11_Gamma_Simple/0_Timing_Analysis/sysgen/script_results1912991989400682711';
  exit(1);
}

exit(0);
