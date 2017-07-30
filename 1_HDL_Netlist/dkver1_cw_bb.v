


// Declare the module black box
module dkver1_cw (
    ce , 
    clk , 
    ctrl1_stretch21_14 , 
    ctrl2_threshold13_0 , 
    ctrl3_offseten29 , 
    ctrl4_offsetrst30 , 
    ctrl5_sim31 , 
    datain1 , 
    datain2 , 
    datain3 , 
    datain4 , 
    peakout1 , 
    peakout2 , 
    peakout3 , 
    peakout4 , 
    peakvalid , 
    pulseout1 , 
    pulseout2 , 
    pulseout3 , 
    pulseout4 , 
    pulsevalid 
    ); // synthesis black_box 


	// Inputs
	input ce;
	input clk;
	input [7:0] ctrl1_stretch21_14;
	input [13:0] ctrl2_threshold13_0;
	input ctrl3_offseten29;
	input ctrl4_offsetrst30;
	input ctrl5_sim31;
	input [15:0] datain1;
	input [15:0] datain2;
	input [15:0] datain3;
	input [15:0] datain4;

	// Outputs
	output [15:0] peakout1;
	output [15:0] peakout2;
	output [15:0] peakout3;
	output [15:0] peakout4;
	output peakvalid;
	output [15:0] pulseout1;
	output [15:0] pulseout2;
	output [15:0] pulseout3;
	output [15:0] pulseout4;
	output pulsevalid;


//synthesis attribute box_type dkver1_cw "black_box"
endmodule
