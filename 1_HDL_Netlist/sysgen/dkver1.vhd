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
--    (c) Copyright 1995-2017 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_c56061fb4dfcdca4.vhd when simulating
-- the core, addsb_11_0_c56061fb4dfcdca4. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_c56061fb4dfcdca4 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(20 DOWNTO 0)
  );
END addsb_11_0_c56061fb4dfcdca4;

ARCHITECTURE addsb_11_0_c56061fb4dfcdca4_a OF addsb_11_0_c56061fb4dfcdca4 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_c56061fb4dfcdca4
  PORT (
    a : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(20 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_c56061fb4dfcdca4 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 21,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000000000000",
      c_b_width => 21,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 1,
      c_out_width => 21,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "spartan6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_c56061fb4dfcdca4
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_c56061fb4dfcdca4_a;
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
--    (c) Copyright 1995-2017 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_00fd590c4e52f518.vhd when simulating
-- the core, cntr_11_0_00fd590c4e52f518. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_00fd590c4e52f518 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END cntr_11_0_00fd590c4e52f518;

ARCHITECTURE cntr_11_0_00fd590c4e52f518_a OF cntr_11_0_00fd590c4e52f518 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_00fd590c4e52f518
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_00fd590c4e52f518 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 13,
      c_xdevicefamily => "spartan6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_00fd590c4e52f518
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_00fd590c4e52f518_a;
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
--    (c) Copyright 1995-2017 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_80e8f2a7fd3ba205.vhd when simulating
-- the core, cntr_11_0_80e8f2a7fd3ba205. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_80e8f2a7fd3ba205 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END cntr_11_0_80e8f2a7fd3ba205;

ARCHITECTURE cntr_11_0_80e8f2a7fd3ba205_a OF cntr_11_0_80e8f2a7fd3ba205 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_80e8f2a7fd3ba205
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_80e8f2a7fd3ba205 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 11,
      c_xdevicefamily => "spartan6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_80e8f2a7fd3ba205
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_80e8f2a7fd3ba205_a;
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
--    (c) Copyright 1995-2017 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_81606633e3bc7b5b.vhd when simulating
-- the core, cntr_11_0_81606633e3bc7b5b. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_81606633e3bc7b5b IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_81606633e3bc7b5b;

ARCHITECTURE cntr_11_0_81606633e3bc7b5b_a OF cntr_11_0_81606633e3bc7b5b IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_81606633e3bc7b5b
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_81606633e3bc7b5b USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 32,
      c_xdevicefamily => "spartan6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_81606633e3bc7b5b
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_81606633e3bc7b5b_a;

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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;

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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub_DKver1 is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub_DKver1;
architecture behavior of xladdsub_DKver1 is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_c56061fb4dfcdca4
    port (
          a: in std_logic_vector(21 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(21 - 1 downto 0)
    );
  end component;
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_c56061fb4dfcdca4")) generate
    core_instance0: addsb_11_0_c56061fb4dfcdca4
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_62ff279733 is
  port (
    b : in std_logic_vector((16 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_62ff279733;


architecture behavior of accum_62ff279733 is
  signal b_17_24: signed((16 - 1) downto 0);
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "00000000000000000000000000000000";
      elsif ((ce = '1') and (accum_reg_41_23_en = '1')) then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 0, 32, 0);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, en_17_32, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    elsif en_17_32 then
      accum_reg_join_47_1_rst <= '0';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
    if en_17_32 then
      accum_reg_join_47_1_en <= '1';
    else 
      accum_reg_join_47_1_en <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  accum_reg_41_23_en <= accum_reg_join_47_1_en;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free_DKver1 is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free_DKver1 ;
architecture behavior of xlcounter_free_DKver1 is
  component cntr_11_0_00fd590c4e52f518
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_00fd590c4e52f518:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_00fd590c4e52f518:
    component is "true";
  attribute box_type of cntr_11_0_00fd590c4e52f518:
    component  is "black_box";
  component cntr_11_0_81606633e3bc7b5b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_81606633e3bc7b5b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_81606633e3bc7b5b:
    component is "true";
  attribute box_type of cntr_11_0_81606633e3bc7b5b:
    component  is "black_box";
  component cntr_11_0_80e8f2a7fd3ba205
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_80e8f2a7fd3ba205:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_80e8f2a7fd3ba205:
    component is "true";
  attribute box_type of cntr_11_0_80e8f2a7fd3ba205:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_00fd590c4e52f518")) generate
    core_instance0: cntr_11_0_00fd590c4e52f518
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_81606633e3bc7b5b")) generate
    core_instance1: cntr_11_0_81606633e3bc7b5b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_80e8f2a7fd3ba205")) generate
    core_instance2: cntr_11_0_80e8f2a7fd3ba205
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_6844eee868 is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_6844eee868;


architecture behavior of inverter_6844eee868 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_22_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_799f62af22 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_799f62af22;


architecture behavior of logical_799f62af22 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;

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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_465b2eaa2d is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_465b2eaa2d;


architecture behavior of delay_465b2eaa2d is
  signal d_1_22: std_logic;
  signal rst_1_29: std_logic;
  signal op_mem_0_8_24_next: std_logic;
  signal op_mem_0_8_24: std_logic := '0';
  signal op_mem_0_8_24_rst: std_logic;
  signal op_mem_0_join_10_5: std_logic;
  signal op_mem_0_join_10_5_rst: std_logic;
begin
  d_1_22 <= d(0);
  rst_1_29 <= rst(0);
  proc_op_mem_0_8_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_0_8_24_rst = '1')) then
        op_mem_0_8_24 <= '0';
      elsif (ce = '1') then 
        op_mem_0_8_24 <= op_mem_0_8_24_next;
      end if;
    end if;
  end process proc_op_mem_0_8_24;
  proc_if_10_5: process (d_1_22, rst_1_29)
  is
  begin
    if rst_1_29 = '1' then
      op_mem_0_join_10_5_rst <= '1';
    else 
      op_mem_0_join_10_5_rst <= '0';
    end if;
    op_mem_0_join_10_5 <= d_1_22;
  end process proc_if_10_5;
  op_mem_0_8_24_next <= d_1_22;
  op_mem_0_8_24_rst <= op_mem_0_join_10_5_rst;
  q <= std_logic_to_vector(op_mem_0_8_24);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_97b5175c82 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_97b5175c82;


architecture behavior of relational_97b5175c82 is
  signal a_1_31: signed((16 - 1) downto 0);
  signal b_1_34: signed((16 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_a6d07705dd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_a6d07705dd;


architecture behavior of logical_a6d07705dd is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_954ee29728 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_954ee29728;


architecture behavior of logical_954ee29728 is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_b85573c9cd is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((14 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_b85573c9cd;


architecture behavior of relational_b85573c9cd is
  signal a_1_31: signed((16 - 1) downto 0);
  signal b_1_34: signed((14 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((16 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_18_16 <= s2s_cast(b_1_34, 0, 16, 0);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8d1942da8e is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8d1942da8e;


architecture behavior of relational_8d1942da8e is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_16_16 <= u2u_cast(b_1_34, 0, 32, 0);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_1c0f59dbb1 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((11 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_1c0f59dbb1;


architecture behavior of mux_1c0f59dbb1 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((11 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "0000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
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
        unregy_join_6_1 <= cast(d1_1_27, 0, 16, 0, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

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
