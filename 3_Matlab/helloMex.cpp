#include "mex.h"
#include "okFrontPanelDLL.h"
#include <string.h>
#include <stdio.h>

#define MIN(a,b)   (((a)<(b)) ? (a) : (b))
#define BLOCKSIZE 2048

bool InitializeFPGA(okCFrontPanel *dev, char *filename, const char *serial)
{
    okTDeviceInfo  m_devInfo;
    
	if (okCFrontPanel::NoError != dev->OpenBySerial(std::string(serial))) {
		mexPrintf("Device could not be opened.  Is one connected?\n");
        return false;
	}
    
    dev->GetDeviceInfo(&m_devInfo);
    mexPrintf("Found a device: %s\n", m_devInfo.productName);
    dev->LoadDefaultPLLConfiguration();
    // Get some general information about the XEM.
	mexPrintf("Device firmware version: %d.%d\n", m_devInfo.deviceMajorVersion, m_devInfo.deviceMinorVersion);
	mexPrintf("Device serial number: %s\n", m_devInfo.serialNumber);
	mexPrintf("Device device ID: %d\n", m_devInfo.productID);
    // Download the configuration file.
	if (okCFrontPanel::NoError != dev->ConfigureFPGA(filename)) {
		mexPrintf("FPGA configuration failed.\n");
        return false;
	}
    // Check for FrontPanel support in the FPGA configuration.
	if (dev->IsFrontPanelEnabled()) {
		mexPrintf("FrontPanel support is enabled.\n");
	}
	else {
		mexPrintf("FrontPanel support is not enabled.\n");
		return false;
	}
    //Initial Setting
    dev->SetWireInValue( (int)0x00, (unsigned int)0xA01900C8, (unsigned int)0xffffffff );
    dev->UpdateWireIns();
    
    return true;
}

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
    mexPrintf("Hello, mex!\n");
	
    //Matlab Input Matrix Size
    if(nrhs != 0)
        mexErrMsgTxt("Invalid number of input arguments");
    if(nlhs != 0)
        mexErrMsgTxt("Invalid number of outputs");
    
    //Opalkelly variable
	okCFrontPanel *dev = new okCFrontPanel;
    
	char *serial = "";//14230007CO
	char *filename = "top.bit";
    if (false == InitializeFPGA(dev, filename, serial)) {
		mexPrintf("FPGA could not be initialized.\n");
        dev->~okCFrontPanel();
		return;
	}
    
    //Á¾·á
	dev->~okCFrontPanel();    
    mexPrintf("Success, mex!\n");
}