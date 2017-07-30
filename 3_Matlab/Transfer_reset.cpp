#include "mex.h"
#include "okFrontPanelDLL.h"
#include <string.h>
#include <stdio.h>

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
    //Matlab Input Matrix Size
    if(nrhs != 1)
        mexErrMsgTxt("Invalid number of input arguments");
    if(nlhs != 0)
        mexErrMsgTxt("Invalid number of outputs");
    
    unsigned int* ep00wire = (unsigned int*)mxGetData(prhs[0]);
    
    //Opalkelly variable
	okCFrontPanel *dev = new okCFrontPanel;
    
    dev->OpenBySerial("");//14230007CO
    
    if (dev->IsOpen()) {} //mexPrintf("IsOpen Pass\n");
    else{
        mexPrintf("IsOpen Fail\n");
        dev->~okCFrontPanel();
        return;}
    if (dev->IsFrontPanelEnabled()) {} //mexPrintf("FrontPanel support is enabled.\n");
    else{
        mexPrintf("FrontPanel support is not enabled.\n");
        dev->~okCFrontPanel();
        return;}
    
    unsigned int temp = ep00wire[0] & 0xFFBFFFFF; //wren을 해제한다. bit22(0)
    dev->SetWireInValue( (int)0x00, (unsigned int)temp, (unsigned int)0xffffffff );
    dev->UpdateWireIns(); //wr_en 해제(0)
    
    temp = temp | 0x40000000; //reset을 설정한다. bit30(1)
    dev->SetWireInValue((int)0x00, (unsigned int)temp, (unsigned int)0xffffffff);
    dev->UpdateWireIns();
    
    temp = temp & 0xBFFFFFFF; //reset을 해제한다. bit30(0)
    dev->SetWireInValue((int)0x00, (unsigned int)temp, (unsigned int)0xffffffff);
    dev->UpdateWireIns();
    
    temp = temp | 0x00400000; //wren을 설정한다. bit22(1)
    dev->SetWireInValue( (int)0x00, (unsigned int)temp, (unsigned int)0xffffffff );
    dev->UpdateWireIns();
    //종료
    dev->~okCFrontPanel();
}
