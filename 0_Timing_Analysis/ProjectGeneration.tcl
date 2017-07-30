#
# Created by System Generator     Tue Apr  4 18:17:39 2017
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {Timing and Power Analysis}
    set Project {dkver1_cw}
    set DSPFamily {Spartan6}
    set DSPDevice {xc6slx150}
    set DSPPackage {fgg484}
    set DSPSpeed {-2}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {111.111111111111}
    set CreateInterfaceDocument {off}
    set NewXSTParser {1}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{dkver1_cw.vhd} -view All}
        {{dkver1.vhd} -view All}
        {{dkver1_cw.ucf}}
        {{dkver1_cw.xdc}}
        {{C:\Users\Robot32-VM\Documents\System Generator\11_Gamma_Simple\DKver1.slx}}
    }
    set TopLevelModule {dkver1_cw}
    set SynthesisConstraintsFile {dkver1_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
