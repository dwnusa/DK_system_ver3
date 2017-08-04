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
global TEMP SIZX SIZY;
SIZX = 512;
SIZY = 512;
TEMP = uint32(2690187464); % FPGA initialization signals

% --- Outputs from this function are returned to the command line.
function varargout = Controller_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on button press in btn_Setup.
function btn_Setup_Callback(hObject, eventdata, handles)
global SIZX SIZY;
clc;
SIZX = 512; SIZY = 512;
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
global TEMP SIZX SIZY;
SIZX = 512; SIZY = 512;
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
    out = out(:,11:numCols-10); % removing padding values at front and back
end
pady = 500; 
minChannel = min(out(:)) - pady; 
maxChannel = max(out(:)) + pady; 
figure(1);
subplot(5,1,1), plot(out(1,:)','-o','MarkerSize',2); axis([0 numCols  minChannel maxChannel]);title('Channel A');ylabel('ADC Value');% xlabel('Samples');
subplot(5,1,2), plot(out(2,:)','-o','MarkerSize',2); axis([0 numCols minChannel maxChannel]);title('Channel B');ylabel('ADC Value');% xlabel('Samples');
subplot(5,1,3), plot(out(3,:)','-o','MarkerSize',2); axis([0 numCols minChannel maxChannel]);title('Channel C');ylabel('ADC Value');% xlabel('Samples');
subplot(5,1,4), plot(out(4,:)','-o','MarkerSize',2); axis([0 numCols minChannel maxChannel]);title('Channel D');ylabel('ADC Value');% xlabel('Samples');
subplot(5,1,5), plot(out(1:4,:)');axis([0 numCols minChannel maxChannel]);title('Channel ABCD');ylabel('ADC Value'); xlabel('Samples');

% --- Executes on button press in btn_capture2.
function btn_Capture2_Callback(hObject, eventdata, handles)
global out TEMP Cap_SIZE;
ep00wire = TEMP;
numRows = int32(4); numCols = int32(Cap_SIZE);
out = (Transfer_extract(numRows, numCols, ep00wire));
if size(out,2) ~= 1
    out = out(1:4,:);
end

pady = 500; miny = min(out(:)) - pady; maxy = max(out(:)) + pady;
figure(2),subplot(5,1,1), plot(out(1,:)','-o','MarkerSize',2); axis([0 numCols  miny maxy]);title('Channel A');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,2), plot(out(2,:)','-o','MarkerSize',2); axis([0 numCols miny maxy]);title('Channel B');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,3), plot(out(3,:)','-o','MarkerSize',2); axis([0 numCols miny maxy]);title('Channel C');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,4), plot(out(4,:)','-o','MarkerSize',2); axis([0 numCols miny maxy]);title('Channel D');ylabel('ADC Value');% xlabel('Samples');
figure(2),subplot(5,1,5), plot(out(1:4,:)');axis([0 numCols miny maxy]);title('Channel ABCD');ylabel('ADC Value'); xlabel('Samples');

% --- Executes on button press in btn_Sample.
function btn_Sample_Callback(hObject, eventdata, handles)
global TOTAL_COUNT TEMP Cap_SIZE MODE FILENAME SIZX SIZY RELABEL_IMG;
queue_size = 6;
if sum(RELABEL_IMG(:)) == 0
    error('pixel segmentation is required');
else
    relabel_img = RELABEL_IMG;
    line_img = (relabel_img == 0);
    Valid = true;
    queue = {};
    q_cnt = 0;
end
coded_mask=xlsread('19x19.xlsx');
% 1.0    1.1    1.2    1.3    1.4    1.5    
% 1.6 (60cm~70cm)   1.7    1.8    1.9    
% 2.0    2.1    2.2 (30cm)   2.3    2.4    2.5
% 2.6 (20cm)
d=imresize(coded_mask,2.2,'bilinear');
% À¥Ä·
Cam = webcam('USB2.0 PC Camera');
Cam.Resolution = '640x480';
%
Filename = FILENAME;
% h = waitbar(0,'1','Name', 'Sample extract...',...
%     'CreateCancelBtn',...
%     'setappdata(gcbf,''canceling'',1)');
try
% setappdata(h,'canceling',0);
sizx = SIZX; sizy = SIZY;
ep00wire = TEMP;
numRows = int32(4); 
numCols = int32(Cap_SIZE);
Sample = zeros(numRows,TOTAL_COUNT);
IM_Temp = zeros(sizx, sizy); IM_Sample = zeros(sizx, sizy); zeros_img = zeros(480, 640);
cnt = 0;
h = figure(3),
% subplot(2,2,1); handlesPlot{1} = imagesc(IM_Temp);      colormap(jet);  title('Temporary Flood Image');
% subplot(2,2,2); handlesPlot{2} = imagesc(line_img);    colormap(jet);  title('Cumulative Flood Image');
subplot(1,2,1); 
handlesPlot{3} = imagesc(IM_Sample);    colormap(jet);  title('Reconstruction Image');
subplot(1,2,2); 
handlesPlot{4} = imagesc(IM_Sample);    colormap(jet);  title('CCD merge');
    while (cnt < TOTAL_COUNT)
        if ~ishandle(h)
            break;
        end
        subplot(1,2,2);
        ccd_img = rot90(snapshot(Cam),2);
%         subplot(2,2,4), 
        imagesc(ccd_img);
%         set(handlesPlot{4},'CData',ccd_img);% imshow();
%         if getappdata(h,'canceling')
%             break
%         end
        Temp = double(Transfer_capture(numRows, numCols, ep00wire));
        if size(Temp,2) ~= 1
%             Temp1 = Temp0(:,1:numCols-1);
            length_Temp = length(Temp);
            if (MODE == false) % DPC
                Energy = sum(Temp); 
                X = min(sizx, max(1, round((Temp(1,:)+Temp(2,:))./Energy.*300+100)));
                Y = min(sizy, max(1, round((Temp(1,:)+Temp(3,:))./Energy.*300+100)));
            else  % SCD
                % Energy = sum(Temp); 
                Y = min(sizy, max(1, round((Temp(3,:)-Temp(4,:))./(Temp(4,:)+Temp(3,:)).*128*2+256))); %  xx = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data3[i] - data4[i]) / total  );
                X = min(sizx, max(1, round((Temp(2,:)-Temp(1,:))./(Temp(2,:)+Temp(1,:)).*128*2+256))); %  yy = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data1[i] - data2[i]) / total  );
            end
            
            dst_start_index = cnt+1; 
            dst_end_index   = cnt+length_Temp; 
            dst_end_index 	= min(TOTAL_COUNT, dst_end_index);
            dst_range       = dst_start_index:dst_end_index;
            
            src_start_index = 1;
            src_end_index   = min(length_Temp, TOTAL_COUNT-cnt);
            src_range       = src_start_index:src_end_index;
            
            Sample(:,dst_range) = Temp(:,src_range);
            cnt = cnt + src_end_index;% min(TOTAL_COUNT,size(Sample(1,:),2));
            IM_Temp = full(sparse(Y,X,1,sizx,sizy));% rot90(full(sparse(Y,X,1,sizx,sizy))',2);
            IM_Sample = IM_Sample + IM_Temp;
%             [relabel_img Valid] = pixel_segmentation(IM_Sample, sizx, sizy);

            IM_Recon = reconstruct_coded_aperture(IM_Temp, d, relabel_img, Valid);
            
            q_idx = mod(q_cnt,queue_size)+1;
            q_cnt = q_cnt + 1;
            queue{q_idx} = IM_Recon;
            if q_cnt < (queue_size)
                sum_relabel_img = IM_Recon;
            else
                try
%                         for i = 1:queue_size
%                             sum_relabel_img = queue{i} + queue{2} + queue{3};% + queue{4} + queue{5};
%                         end
                    sum_relabel_img = queue{1} + queue{2} + queue{3} + queue{4} + queue{5} + queue{6};
                catch e
                    disp('queue error occurred');
                end
            end
            
%             set(handlesPlot{1},'CData',IM_Temp);% imagesc(IM_Temp); title('Flood Image'); colormap(jet); % Display XYSUM
%             set(handlesPlot{2},'CData',IM_Sample + line_img.*max(IM_Sample(:)));% imagesc(IM_Sample); title('Flood Image'); colormap(jet); % Display XYSUM
%             set(handlesPlot{3},'CData',rot90(snapshot(Cam),2));% imshow();
            subplot(1,2,1); 
            set(handlesPlot{3},'CData',sum_relabel_img);% imshow(snapshot(Cam));
            subplot(1,2,2);
            
            % roi cutting process
            offsetX=66;%66;(30cm)%37;(3m) 
            offsetY=67;%67;(30cm);36;(3m)
            width = 58;%58(30cm)%56(3m)
            height = 53;%53(30cm)%56(3m)
            rangeX = offsetX + (1:width);
            rangeY = offsetY + (1:height);
            roi_img = sum_relabel_img(rangeY, rangeX);
            roi_img = (roi_img-min(roi_img(:)))./(max(roi_img(:))-min(roi_img(:))).*100;
            roi_img = (roi_img > 88).*roi_img;
            
            % overlay process
            offsetX = 236;% + q_cnt;%.*9;
            offsetY = 161;% + q_cnt;%.*9;
            roi_img=imresize(roi_img,3,'bilinear');
        end
        
        
        hold on;
        
        try
            handlesPlot{5} = imagesc(roi_img);
        catch
            roi_img = zeros(1);
            handlesPlot{5} = imagesc(roi_img);
        end;
        xpos = get(handlesPlot{5}, 'XData');
        ypos = get(handlesPlot{5}, 'YData');
        xpos = xpos + offsetX;
        ypos = ypos + offsetY;
        set(handlesPlot{5}, 'XData', xpos, 'YData', ypos, 'AlphaData', 0.3);
        
        hold off;
%         waitbar(cnt/TOTAL_COUNT,h,sprintf('%d / %d',cnt, TOTAL_COUNT));
%         pause(1/10);
        disp([num2str(src_end_index) '/' num2str(cnt) '/' num2str(TOTAL_COUNT)]);
    end
% delete(h);
delete(Cam);
catch e
%     delete(h);
    delete(Cam);
%     fprintf(1,'The identifier was:\n%s',e.identifier);
    fprintf(1,'There was an error! \nThe message was:\n%s\n',e.message);
%     disp('\n');
end
savefile(Filename, dst_end_index, TOTAL_COUNT, Sample);









% --- Executes on button press in btn_Pixel.
function btn_Pixel_Callback(hObject, eventdata, handles)
global TOTAL_COUNT TEMP Cap_SIZE MODE SIZX SIZY RELABEL_IMG;
h = waitbar(0,'1','Name', 'Sample extract...',...
    'CreateCancelBtn',...
    'setappdata(gcbf,''canceling'',1)');
try
setappdata(h,'canceling',0);
sizx = SIZX; sizy = SIZY;
ep00wire = TEMP;
numRows = int32(4); numCols = int32(Cap_SIZE);
IM_Sample = zeros(sizx, sizy);
cnt = 0;
figure(4), 
subplot(1,2,1), handlesPlot{1} = imagesc(IM_Sample); colormap(jet); title('Cumulative Flood Image');
subplot(1,2,2), handlesPlot{2} = imagesc(IM_Sample); colormap(jet); title('Cumulative Flood Image');
    while (cnt < TOTAL_COUNT)
        if getappdata(h,'canceling')
            break
        end
        Temp = double(Transfer_capture(numRows, numCols, ep00wire));
        if size(Temp,2) ~= 1
%             Temp = Temp(:,:numCols-1);
            length_Temp = length(Temp);
            if (MODE == false) % DPC
                Energy = sum(Temp); 
                X = min(sizx, max(1, round((Temp(1,:)+Temp(2,:))./Energy.*300+100)));
                Y = min(sizy, max(1, round((Temp(1,:)+Temp(3,:))./Energy.*300+100)));
            else  % SCD
                Y = min(sizy, max(1, round((Temp(3,:)-Temp(4,:))./(Temp(3,:)+Temp(4,:)).*128*2+256))); %  xx = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data3[i] - data4[i]) / total  );
                X = min(sizx, max(1, round((Temp(1,:)-Temp(2,:))./(Temp(1,:)+Temp(2,:)).*128*2+256))); %  yy = Math.Round(    image_size / 2 + (image_size / 2) * 3 * (data1[i] - data2[i]) / total  );
% rawdata(i,1)=
%         
% rawdata(i,1)=round((image_size/2)*(data(i,1)-data(i,2))/(data(i,2)+data(i,1))) + (image_size/2);   % x-coordinate
% rawdata(i,2)=round((image_size/2) - (round(image_size/2)*(data(i,3)-data(i,4))/(data(i,4)+data(i,3))));  % y-coordinate
% rawdata(i,4)=(rawdata(i,2))+(image_size*rawdata(i,1))-1;  % pixel number            
            
            end
            src_end_index   = min(length_Temp, TOTAL_COUNT-cnt);
            cnt = cnt + src_end_index;
            IM_Temp = full(sparse(Y,X,1,sizx,sizy));
            IM_Sample = IM_Sample + IM_Temp;
            % ÇÈ¼¿ºÐÇÒ
            [relabel_img Valid]  = pixel_segmentation(IM_Sample, sizx, sizy);
%             set(handlesPlot{1},'CData',IM_Temp);% imagesc(IM_Temp); title('Flood Image'); colormap(jet); % Display XYSUM
            set(handlesPlot{1},'CData',IM_Sample);% imagesc(IM_Sample); title('Flood Image'); colormap(jet); % Display XYSUM
            set(handlesPlot{2},'CData',relabel_img);% imshow(snapshot(Cam));
        end
        waitbar(cnt/TOTAL_COUNT,h,sprintf('%d / %d',cnt, TOTAL_COUNT));
        pause(1/50);
        disp([num2str(src_end_index) '/' num2str(cnt) '/' num2str(TOTAL_COUNT)]);
    end
delete(h);
catch e
    delete(h);
    fprintf(1,'There was an error! \nThe message was:\n%s\n',e.message);
end
% ÇÈ¼¿ºÐÇÒ
[relabel_img Valid]  = pixel_segmentation(IM_Sample, sizx, sizy);
RELABEL_IMG = relabel_img;
figure(5), imagesc(relabel_img);

% --- Executes on button press in btn_Extract.
% function btn_Extract_Callback(hObject, eventdata, handles)
% global FILENAME;
% FILENAME = get(handles.txt_filename,'String');
% realExtract();

% --- Executes on button press in ep00wire31.
function ep00wire_Callback(hObject, eventdata, handles) 
global TEMP Cap_SIZE TOTAL_COUNT FILENAME PULSE_Size MODE;
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
Cap_SIZE = max(64,min(1024,str2double(get(handles.txt_Csize,'String'))));
set(handles.txt_Csize,'String',num2str(Cap_SIZE));
TOTAL_COUNT = max(Cap_SIZE,str2double(get(handles.txt_TotalCnt,'String')));
set(handles.txt_TotalCnt,'String',num2str(TOTAL_COUNT));
PULSE_Size = numPS;
disp(['Capture Size : ' num2str(Cap_SIZE)]); 
disp(['Total Count : ' num2str(TOTAL_COUNT)]);
disp(['MODE : ' num2str(MODE)]);

function realExtract()
%% ¹Ì»ç¿ë
% global TEMP ELAPSE_TIME FEATURE CNT TotalCNT FILENAME;
% ELAPSE_TIME = [];
% FEATURE = [];
% CNT = 0;
% % Define frame rate  
% ExtractFeaturesPerSecond=50;
% 
% % set up timer object
% TimerData=timer('TimerFcn', {@ExtractFeatures,TEMP},'Period',1/ExtractFeaturesPerSecond,'ExecutionMode','fixedRate','BusyMode','drop');
% 
% start(TimerData); 
%  % Open figure
% h = waitbar(0,'1','Name', 'feature extracting...',...
%     'CreateCancelBtn',...
%     'setappdata(gcbf,''canceling'',1)');
% setappdata(h,'canceling',0);
% try
%     while (CNT/TotalCNT < 1)
%         if getappdata(h,'canceling')
%             break
%         end
%         waitbar(CNT/TotalCNT,h,sprintf('%d / %d',CNT, TotalCNT));
%         pause(1/ExtractFeaturesPerSecond);
%     end
%     delete(h);
%     % Clean up everything
%     stop(TimerData);
%     delete(TimerData); 
%     disp('Properly terminated');
% catch
%     % Clean up everything
%     stop(TimerData);
%     delete(TimerData);
%     disp('Not properly terminated');
% end
% clear ExtractFeatures;
% 
% xysum = double([(FEATURE(1,:) + FEATURE(2,:)); (FEATURE(1,:) + FEATURE(3,:)); (sum(FEATURE))]);
% x = min(512,max(1,round(xysum(1,:)./xysum(3,:)*511)));
% y = min(512,max(1,round(xysum(2,:)./xysum(3,:)*511)));
% sp = sparse(y, x, 1, 512, 512);
% im = full(sp);
% figure(6), subplot(1,2,1), imagesc(im');
% figure(6), subplot(1,2,2), mesh(sp);

% This function is called by the timer to display one frame of the figure
function ExtractFeatures(obj, event,ep00wire)
%% ¹Ì»ç¿ë
% global FEATURE ELAPSE_TIME TOTAL_COUNT CNT TotalCNT;
% tic;
% % FPGA DAQ
% numRows = int32(4); numCols = int32(TOTAL_COUNT);
% % out = (Transfer_extract(numRows, numCols, ep00wire));
% out = (Transfer_capture(numRows, numCols, ep00wire));
% len = size(out,2);
% if len ~= 1
%     CNT = CNT + len;
%     CNT = min(TotalCNT, CNT);
%     out = out(:,11:numCols-10);
%     FEATURE = [FEATURE out]; % 11:numCols-10);
%     disp(size(FEATURE));
% else
%     disp('fifo empty');
% end
% ELAPSE_TIME(end+1) = toc;

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



