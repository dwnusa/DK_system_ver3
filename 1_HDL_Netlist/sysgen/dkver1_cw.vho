
-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component dkver1_cw  port (
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
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : dkver1_cw
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
-- INST_TAG_END ------ End INSTANTIATION Template ------------
