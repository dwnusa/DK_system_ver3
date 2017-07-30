function varargout = Controller(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Controller_OpeningFcn, ...
                   'gui_OutputFcn',  @Controller_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:}); 
end

% --- Executes just before Controller is made visible.
function Controller_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
global TEMP;
TEMP = uint32(2690187464);

% --- Outputs from this function are returned to the command line.
function varargout = Controller_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on button press in btn_Setup.
function btn_Setup_Callback(hObject, eventdata, handles)
mex -g Transfer_capture.cpp;
mex -g Transfer_extract.cpp;
mex -g helloMex.cpp;
mex -g Transfer_reset.cpp;
helloMex(); 
% mex -g Transfer_pulse.cpp;
% mex -g Transfer_realtime.cpp;

% --- Executes on button press in btn_Start.
function btn_Start_Callback(hObject, eventdata, handles)
% global IM handlesPlot;
close(figure(1));
clear global IM handlesPlot OUT;
clear function;
realVideo();

% --- Executes on button press in btn_Stop.
function btn_Stop_Callback(hObject, eventdata, handles)
close all;
clear function;

% --- Executes on button press in btn_Reset.
function btn_Reset_Callback(hObject, eventdata, handles)
global TEMP;
ep00wire_Callback(hObject, eventdata, handles) ;
ep00wire = TEMP;
Transfer_reset(ep00wire); %out = (Transfer_capture(numRows, numCols, ep00wire));

% --- Executes on button press in btn_Cap.
function btn_Cap_Callback(hObject, eventdata, handles)
global out TEMP Cap_SIZE PULSE_Size;
ep00wire = TEMP;
numRows = int32(4); numCols = int32(Cap_SIZE);
out = (Transfer_capture(numRows, numCols, ep00wire));
if size(out,2) ~= 1
    out = out(:,11:numCols-10);
end
pady = 500; 
minChannel = min(min(out(1:numRows,:)')) - pady; 
maxChannel = max(max(out(1:numRows,:)')) + pady; 
figure(1),subplot(5,1,1), plot(out(1,:)'); axis([0 numCols  minChannel maxChannel]);title('Channel A');ylabel('ADC Value');% xlabel('Samples');
figure(1),subplot(5,1,2), plot(out(2,:)'); axis([0 numCols minChannel maxChannel]);title('Channel B');ylabel('ADC Value');% xlabel('Samples');
figure(1),subplot(5,1,3), plot(out(3,:)'); axis([0 numCols minChannel maxChannel]);title('Channel C');ylabel('ADC Value');% xlabel('Samples');
figure(1),subplot(5,1,4), plot(out(4,:)'); axis([0 numCols minChannel maxChannel]);title('Channel D');ylabel('ADC Value');% xlabel('Samples');
figure(1),subplot(5,1,5), plot(out(1:4,:)');axis([0 numCols minChannel maxChannel]);title('Channel ABCD');ylabel('ADC Value'); xlabel('Samples');

% --- Executes on button press in btn_capture2.
function btn_Capture2_Callback(hObject, eventdata, handles)
global out TEMP Cap_SIZE;
ep00wire = TEMP;
numRows = int32(4); numCols = int32(Cap_SIZE);
out = (Transfer_extract(numRows, numCols, ep00wire));
if size(out,2) ~= 1
    out = out(1:4,11:numCols-10);
end

pady = 500; miny = min(out(:)) - pady; maxy = max(out(:)) + pady;
figure(2),subplot(5,1,1), plot(out(1,:)'); axis([0 numCols  miny maxy]);title('Channel A');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,2), plot(out(2,:)'); axis([0 numCols miny maxy]);title('Channel B');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,3), plot(out(3,:)'); axis([0 numCols miny maxy]);title('Channel C');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,4), plot(out(4,:)'); axis([0 numCols miny maxy]);title('Channel D');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,5), plot(out(1:4,:)');axis([0 numCols miny maxy]);title('Channel ABCD');ylabel('ADC Value'); xlabel('Samples');

% --- Executes on button press in btn_Sample.
function btn_Sample_Callback(hObject, eventdata, handles)
global Stream_SIZE TEMP Cap_SIZE MODE FILENAME FEATURE;
% À¥Ä·
% Cam = webcam('USB2.0 PC Camera');
% Cam.Resolution = '640x480';
%
Filename = FILENAME;
h = waitbar(0,'1','Name', 'Sample extract...',...
    'CreateCancelBtn',...
    'setappdata(gcbf,''canceling'',1)');
try
setappdata(h,'canceling',0);
sizx = 512; sizy = 512;
ep00wire = TEMP;
numRows = int32(4); numCols = int32(Cap_SIZE);
Sample = []; XY = [];
IM_Temp = zeros(sizx, sizy); IM_Sample = zeros(sizx, sizy);
cnt = 0;
figure(3), subplot(2,2,1); handlesPlot{1} = imagesc(IM_Temp); colormap(jet);title('Flood Image');
figure(3), subplot(2,2,2); handlesPlot{2} = imagesc(IM_Sample); colormap(jet);title('Flood Image');
figure(3), subplot(2,2,3); handlesPlot{3} = imagesc(IM_Sample); colormap(jet);title('Flood Image');
    while (cnt < Stream_SIZE)
        if getappdata(h,'canceling')
            break
        end
        Temp = double(Transfer_capture(numRows, numCols, ep00wire));
        if size(Temp,2) ~= 1
            Temp = Temp(:,11:numCols-10);
            if (MODE == false) % DPC
                Energy = sum(Temp); 
                X = min(512, max(1, round((Temp(1,:)+Temp(2,:))./Energy.*300+100)));
                Y = min(512, max(1, round((Temp(1,:)+Temp(3,:))./Energy.*300+100)));
            else  % SCD
                Energy = sum(Temp); 
                X = min(512, max(1, round((Temp(4,:)-Temp(3,:))./Energy.*128*2+256))); %  xx = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data3[i] - data4[i]) / total  );
                Y = min(512, max(1, round((Temp(2,:)-Temp(1,:))./Energy.*128*2+256))); %  yy = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data1[i] - data2[i]) / total  );
            end
            % XY = [XY [X; Y]];
            Sample = [Sample Temp];
            cnt = min(Stream_SIZE,size(Sample(1,:),2));
            IM_Temp = rot90(full(sparse(Y,X,1,sizx,sizy))',2);
            IM_Sample = IM_Sample + IM_Temp;
            set(handlesPlot{1},'CData',IM_Temp);% imagesc(IM_Temp); title('Flood Image'); colormap(jet); % Display XYSUM
            set(handlesPlot{2},'CData',IM_Sample);% imagesc(IM_Sample); title('Flood Image'); colormap(jet); % Display XYSUM
%             set(handlesPlot{3},'CData',snapshot(Cam));% imshow(snapshot(Cam));
        end
        waitbar(cnt/Stream_SIZE,h,sprintf('%d / %d',cnt, Stream_SIZE));
        pause(1/50);
        disp([num2str(size(Temp,2)) ', ' num2str(size(Sample,2))]);
    end
delete(h);
% delete(Cam);
catch
    delete(h);
%     delete(Cam);
end

filename = sprintf('%s',Filename);
if cnt/Stream_SIZE == 1 % (cnt <= Stream_SIZE)
    i = 1;
    while true
        if exist([filename '.mat'],'file') == 2
            filename = sprintf('%s (%d)',Filename,i);
            i = i + 1;
        else
            save([filename '.mat'],'Sample');
            disp('File saved!!');
            msgbox({'File saved!!' [filename '.mat']});
            break;
        end;
    end;
else
    disp('Canceled, Not saved!!');
    msgbox({'Canceled, Not saved!!' [filename '.mat']});
end;

% --- Executes on button press in btn_Pixel.
function btn_Pixel_Callback(hObject, eventdata, handles)
global Stream_SIZE TEMP Cap_SIZE MODE;
h = waitbar(0,'1','Name', 'Sample extract...',...
    'CreateCancelBtn',...
    'setappdata(gcbf,''canceling'',1)');
try
setappdata(h,'canceling',0);
sizx = 512; sizy = 512;
ep00wire = TEMP;
numRows = int32(4); numCols = int32(Cap_SIZE);
IM_Temp = zeros(sizx, sizy); IM_Sample = zeros(sizx, sizy);
cnt = 0;
figure(4), handlesPlot{1} = imagesc(IM_Sample); colormap(jet);title('Flood Image');
    while (cnt < Stream_SIZE)
        if getappdata(h,'canceling')
            break
        end
        Temp = double(Transfer_capture(numRows, numCols, ep00wire));
        if size(Temp,2) ~= 1
            Temp = Temp(:,11:numCols-10);
            if (MODE == false) % DPC
                Energy = sum(Temp); 
                X = min(512, max(1, round((Temp(1,:)+Temp(2,:))./Energy.*300+100)));
                Y = min(512, max(1, round((Temp(1,:)+Temp(3,:))./Energy.*300+100)));
            else  % SCD
                Energy = sum(Temp); 
                X = min(512, max(1, round((Temp(4,:)-Temp(3,:))./Energy.*128*2+256))); %  xx = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data3[i] - data4[i]) / total  );
                Y = min(512, max(1, round((Temp(2,:)-Temp(1,:))./Energy.*128*2+256))); %  yy = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data1[i] - data2[i]) / total  );
            end
            IM_Temp = rot90(full(sparse(Y,X,1,sizx,sizy))',2);
            IM_Sample = IM_Sample + IM_Temp;
            set(handlesPlot{1},'CData',IM_Sample);
        end
        waitbar(cnt/Stream_SIZE,h,sprintf('%d / %d',cnt, Stream_SIZE));
        pause(1/50);
        disp([num2str(size(Temp,2)) ', ' num2str(size(Sample,2))]);
    end
delete(h);
catch
    delete(h);
end
% ÇÈ¼¿ºÐÇÒ
figure(5),
img1 = IM_Sample;
se1 = strel('disk',5);
masksize1 = 5;
temp_img1 = imgaussfilt(img1, 8);
img1 = max(0,img1 - temp_img1);
img1 = imopen(img1,se1);                % figure(5),subplot(2,2,1), imagesc(img1');
img1 = imgaussfilt(img1, 1);
img1 = imgaussfilt(img1, masksize1);    % figure(5),subplot(2,2,2), imagesc(img1');
img1 = imregionalmax(img1);
peak_img1 = img1;
img1 = bwdist(img1);
img1 = watershed(img1);
peak_img1 = double(img1) .* double(peak_img1);
label_img1 = img1;
subplot(2,2,1), imagesc(peak_img1'); title('peak img1');
subplot(2,2,2), imagesc(label_img1'); title('label img1');
subplot(2,2,3), imagesc(img1'); title('img1 (label)');
img1 = im .* (img1 ~= 0) + (img1 == 0) .* max(im(:));
subplot(2,2,4), imagesc(img1'); title('img1 (fusion)');

% --- Executes on button press in btn_Extract.
function btn_Extract_Callback(hObject, eventdata, handles)
global FILENAME;
FILENAME = get(handles.txt_filename,'String');
realExtract();

% --- Executes on button press in ep00wire31.
function ep00wire_Callback(hObject, eventdata, handles) 
global TEMP Cap_SIZE Stream_SIZE FILENAME PULSE_Size MODE;
temp = uint32(0);
debug_temp = dec2bin(temp);
if (get(handles.ep00wire31,'Value')), temp = bitset(temp, 32); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire30,'Value')), temp = bitset(temp, 31); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire29,'Value')), temp = bitset(temp, 30); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire28,'Value')), temp = bitset(temp, 29); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire27,'Value')), temp = bitset(temp, 28); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire26,'Value')), temp = bitset(temp, 27); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire25,'Value')), temp = bitset(temp, 26); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire24,'Value')), MODE = true; else MODE = false; end; % temp = bitset(temp, 25); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire23,'Value')), end; % temp = bitset(temp, 24); debug_temp = dec2bin(temp); end;
if (get(handles.ep00wire22,'Value')), temp = bitset(temp, 23); debug_temp = dec2bin(temp); end;
if (get(handles.txt_PSt,'Value')), numPS = max(1,min(255,str2double(get(handles.txt_PSt,'String')))); end;
if (get(handles.txt_Thr,'Value')), numThr= max(-8192,min(8191,str2double(get(handles.txt_Thr,'String')))); end;
% if (get(handles.txt_LLD,'Value')), TotalCNT= max(16384,min(134217728,str2double(get(handles.txt_LLD,'String')))); end;
FILENAME = get(handles.txt_filename,'String');
if exist([FILENAME '.mat'],'file') == 2
    msgbox({'File exists already!!' [FILENAME '.mat']});
end
A = uint32(temp);
B = uint32(numPS); shiftB = bitshift(B, 14); set(handles.txt_PSt,'String',num2str(numPS));
C = int32(numThr); C = bitand(int32(16383), C); shiftC = uint32(bitshift(C,0)); set(handles.txt_Thr,'String',num2str(numThr));
D = bitor(A,shiftB);
E = bitor(D,shiftC);
TEMP = E;
debug_temp = dec2bin(TEMP,32);
disp(num2str(['debug_temp : ' num2str(debug_temp) '(32) (' num2str(dec2bin(bitshift(A,-22)),10) ')(10) (' num2str(dec2bin(B,8)) ')(8) (' num2str(dec2bin(C,14)) ')(14)']));
Cap_SIZE = max(128,min(16384,str2double(get(handles.txt_Csize,'String'))));
Stream_SIZE = max(128,str2double(get(handles.txt_TotalCnt,'String')));
PULSE_Size = numPS;
disp(['Capture Size : ' num2str(Cap_SIZE)]); 
disp(['Total Count : ' num2str(Stream_SIZE)]);
disp(['MODE : ' num2str(MODE)]);

function realExtract()
global TEMP ELAPSE_TIME FEATURE CNT TotalCNT FILENAME;
ELAPSE_TIME = [];
FEATURE = [];
CNT = 0;
% Define frame rate  
ExtractFeaturesPerSecond=50;

% set up timer object
TimerData=timer('TimerFcn', {@ExtractFeatures,TEMP},'Period',1/ExtractFeaturesPerSecond,'ExecutionMode','fixedRate','BusyMode','drop');

start(TimerData); 
 % Open figure
h = waitbar(0,'1','Name', 'feature extracting...',...
    'CreateCancelBtn',...
    'setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
try
    while (CNT/TotalCNT < 1)
        if getappdata(h,'canceling')
            break
        end
        waitbar(CNT/TotalCNT,h,sprintf('%d / %d',CNT, TotalCNT));
        pause(1/ExtractFeaturesPerSecond);
    end
    delete(h);
    % Clean up everything
    stop(TimerData);
    delete(TimerData); 
    disp('Properly terminated');
catch
    % Clean up everything
    stop(TimerData);
    delete(TimerData);
    disp('Not properly terminated');
end
clear ExtractFeatures;

xysum = double([(FEATURE(1,:) + FEATURE(2,:)); (FEATURE(1,:) + FEATURE(3,:)); (sum(FEATURE))]);
x = min(512,max(1,round(xysum(1,:)./xysum(3,:)*511)));
y = min(512,max(1,round(xysum(2,:)./xysum(3,:)*511)));
sp = sparse(y, x, 1, 512, 512);
im = full(sp);
figure(6), subplot(1,2,1), imagesc(im');
figure(6), subplot(1,2,2), mesh(sp);

filename = sprintf('%s',FILENAME);
if CNT/TotalCNT == 1
    i = 1;
    while true
        if exist([filename '.mat'],'file') == 2
            filename = sprintf('%s (%d)',FILENAME,i);
            i = i + 1;
        else
            save([filename '.mat'],'FEATURE');
            disp('File saved!!');
            msgbox({'File saved!!' [filename '.mat']});
            break;
        end;
    end;
else
    disp('Canceled, Not saved!!');
    msgbox({'Canceled, Not saved!!' [filename '.mat']});
end;

% This function is called by the timer to display one frame of the figure
function ExtractFeatures(obj, event,ep00wire)
global FEATURE ELAPSE_TIME Stream_SIZE CNT TotalCNT;
tic;
% FPGA DAQ
numRows = int32(4); numCols = int32(Stream_SIZE);
% out = (Transfer_extract(numRows, numCols, ep00wire));
out = (Transfer_capture(numRows, numCols, ep00wire));
len = size(out,2);
if len ~= 1
    CNT = CNT + len;
    CNT = min(TotalCNT, CNT);
    out = out(:,11:numCols-10);
    FEATURE = [FEATURE out]; % 11:numCols-10);
    disp(size(FEATURE));
else
    disp('fifo empty');
end
ELAPSE_TIME(end+1) = toc;

% --- Executes during object creation, after setting all properties.
function txt_PSt_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function txt_Thr_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function txt_Csize_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function txt_TotalCnt_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txt_filename_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function txt_LLD_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function txt_ULD_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


