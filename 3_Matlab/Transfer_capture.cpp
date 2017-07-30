#include "mex.h"
#include "okFrontPanelDLL.h"
#include <string.h>
#include <stdio.h>

bool Transfer_capture(int* dst, okCFrontPanel *dev, int numRows, int numCols)
{
    //DAQ
    unsigned char *freebuffer1 = new unsigned char[numCols * sizeof(int)];
    unsigned char *freebuffer2 = new unsigned char[numCols * sizeof(int)];
    long ret1, ret2;
    bool verify = true;
    
    //rawABCD 데이터 획득
    dev->UpdateWireOuts();
    int tempWireOuts = (int)(dev->GetWireOutValue(0x20));
    int n2 = (int)((tempWireOuts & 0x00000004) >> 2);
    int n3 = (int)((tempWireOuts & 0x00000008) >> 3);
    if (n2 == 1)
        ret1 = dev->ReadFromBlockPipeOut(0xA2, numCols, numCols * sizeof(int), freebuffer1); //rawABCD 데이터 획득
    else
        return false;
    if (n3 == 1)
        ret2 = dev->ReadFromBlockPipeOut(0xA3, numCols, numCols * sizeof(int), freebuffer2); //rawABCD 데이터 획득
    else
        return false;
    
    int current_idx = 0;
    int last_idx = -1;
    int idx = 0;
    for (int i = 0; i < (numCols) * sizeof(int); i += sizeof(int))
    { 
        int x = i / sizeof(int);
        
        //파형 디코딩 (채널 : A,B) from freebuffer1
        int temp_A = (short)(((freebuffer1[3 + i] << 8) | (freebuffer1[2 + i])));// >> 2);
        int temp_B = (short)(((freebuffer1[1 + i] << 8) | (freebuffer1[0 + i])));// >> 2);
        
        //파형 디코딩 (채널 : C,D) from freebuffer2
        int temp_C = (short)(((freebuffer2[3 + i] << 8) | (freebuffer2[2 + i])));// >> 2);
        int temp_D = (short)(((freebuffer2[1 + i] << 8) | (freebuffer2[0 + i])));// >> 2);
        
        int idxA = 1;//temp_A & 0x00000003;
        int idxB = 1;//temp_B & 0x00000003;
        int idxC = 1;//temp_C & 0x00000003;
        int idxD = 1;//temp_D & 0x00000003;
        if ((idxA == idxB) && (idxB == idxC) && (idxC == idxD))
        {
            dst[x*numRows + 0] = (int)((int)temp_A);
            dst[x*numRows + 1] = (int)((int)temp_B);
            dst[x*numRows + 2] = (int)((int)temp_C);
            dst[x*numRows + 3] = (int)((int)temp_D);
        }
        else
        {
            dst[x*numRows + 0] = (int)0;
            dst[x*numRows + 1] = (int)0;
            dst[x*numRows + 2] = (int)0;
            dst[x*numRows + 3] = (int)0;
            verify = false;
        }
    }
    //메모리 해제
    delete [] freebuffer1;
    delete [] freebuffer2;
    
    return verify;
}
bool Reset(okCFrontPanel *dev, unsigned int* ep00wire)
{
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
    return true;
}


void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
    //Matlab Input Matrix Size
    if(nrhs != 3)
        mexErrMsgTxt("Invalid number of input arguments");
    if((nlhs != 1) && (nlhs != 5))
        mexErrMsgTxt("Invalid number of outputs");
    if(!mxIsInt32(prhs[0]))
        mexErrMsgTxt("input buffer type must be single");
    if(!mxIsInt32(prhs[1]))
        mexErrMsgTxt("input buffer type must be single");
    if(!mxIsUint32(prhs[2]))
        mexErrMsgTxt("input ep00wire type must be uint32");
    
    int* numRows = (int*)mxGetData(prhs[0]);
    int* numCols = (int*)mxGetData(prhs[1]);
    
    unsigned int* ep00wire = (unsigned int*)mxGetData(prhs[2]);

    if(numRows[0] != 4)
		mexErrMsgTxt("Invalid buffer size. It must be 4x(buffer)");
    
    plhs[0] = mxCreateNumericMatrix(numRows[0], numCols[0], mxINT32_CLASS, mxREAL);
    int* out = (int*)mxGetData(plhs[0]);
    //Opalkelly variable
	okCFrontPanel *dev = new okCFrontPanel;
    
    dev->OpenBySerial("");//14230007CO
    
    if (dev->IsOpen()) {} //mexPrintf("IsOpen Pass\n");
    else{
        mexPrintf("IsOpen Fail\n");
        dev->~okCFrontPanel();
        return;}
    if (dev->IsFrontPanelEnabled()) {}//mexPrintf("FrontPanel support is enabled.\n");
    else{
        mexPrintf("FrontPanel support is not enabled.\n");
        dev->~okCFrontPanel();
        return;}
    
    //featureABCD 상태확인
    dev->UpdateWireOuts();
    int tempWireOuts = (int)(dev->GetWireOutValue(0x20));
    
    //(featureA) 상태확인
    int n0 = (int)((tempWireOuts & 0x00000001) >> 0);
    //(featureB) 상태확인
    int n1 = (int)((tempWireOuts & 0x00000002) >> 1);
    //(featureC) 상태확인
    int n2 = (int)((tempWireOuts & 0x00000004) >> 2);
    //(featureD) 상태확인
    int n3 = (int)((tempWireOuts & 0x00000008) >> 3);
    
    if ((n2 == 1) && (n3 == 1))
    {
        unsigned int temp = ep00wire[0] & 0xFFBFFFFF; //wren을 해제한다. bit22(0)
        dev->SetWireInValue( (int)0x00, (unsigned int)temp, (unsigned int)0xffffffff );
        dev->UpdateWireIns();

        bool result = Transfer_capture(out, dev, numRows[0], numCols[0]);

        temp = ep00wire[0] | 0x00400000; //wren을 설정한다. bit22(1)
        dev->SetWireInValue( (int)0x00, (unsigned int)temp, (unsigned int)0xffffffff );
        dev->UpdateWireIns();

        if (result == false) //결과에 에러 있는 경우 (4x1) 0 데이터 반환
        {
            plhs[0] = mxCreateNumericMatrix(numRows[0], 1, mxINT32_CLASS, mxREAL);
            out = (int*)mxGetData(plhs[0]);
            Reset(dev, ep00wire);
            mexPrintf("Transfer_capture : Found stamp mismatched, Not synchronized among FIFOs\n");
        }
    }
    else
    {
        plhs[0] = mxCreateNumericMatrix(numRows[0], 1, mxINT32_CLASS, mxREAL);
        int* out = (int*)mxGetData(plhs[0]);
    }
    
    //종료
    dev->~okCFrontPanel();
}
