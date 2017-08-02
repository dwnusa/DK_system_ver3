% Calculator for flood map, energy spectrum, and energy resolution
% Date: 2016-02-19
% Editor: Donghyun Jang
% e-mail: jangdh0929@gmail.com

close all;
%% Parameter setting
% 
% clear all; close all;
% tic;
% filename = ['peak_data_07312222' '.txt'];
% 
% fid1=fopen(filename);
% while ~feof(fid1)
%     data=textscan(fid1,'%f %f %f %f','CollectOutput',1);
% end
% fclose(fid1);
% data = data{1};
% 
% toc;

%%
clear all; close all;
tic;
filename = ['Sample9_30cm' '.mat'];

load(filename);
data=[Sample(1,:); Sample(2,:); Sample(3,:); Sample(4,:)]';
% data = data(1:3000,:);
toc;

%%
LUT_generator = 0;          % LUT_generator mode 1, mappping mode 0
if(LUT_generator == 0)
    load('peak_data_07121646_LUT.mat');
end
multiplexing_type = 1;      % SCD 1, DPC 2

num_pixel = 16;             % The number of pixels per sensor. It must be a square number.
% (eg., In an array of 4x4 crystals on an array of 4x4 MPPCs , the num_crystal is 16)
num_sensor = 9;             % The number of arrays of SiPMs or MPPCs. It must be a square number.

energy_lld = 0000;           % 15pF_900, 30pF_900, 51pF_900
energy_uld = max(max(data)); %sum(max(data))         % It's equal to a maximum bin of energy spectrum
energy_count_max = 500;     % Y-axis limit in energy spectrum

fitting_lld = round(0.25*max(max(data)),-2);             % Starting point for searching maximum peak in photopeak region, % 15pF_1200, 30pF_1600, 51pF_1900
fitting_uld = round(1*max(max(data)),-2);; %0.8*energy_uld;   % Ending point for searching maximum peak in photopeak region

clims = [10 30];            % Range of energy resolution in energy resolution histogram
cticks = 5;

denoising_factor = 25;
image_size = 1000;          % Image size of the flood histogram, image_size x image_size
bin_size = 25;


%                 Sensor number & (X pos,Y pos)
%
% Sensor number :    1   2   3   4 ...
% hist_plot_pos = [  0   0   1   1 ...;        % [ X pos;
%                    0   1   0   1 ...];      %   Y pos ]
%
%             Sensor number             (X pos,Y pos)
%           |   1   |   3   |         | (0,0) | (1,0) |
%           |   2   |   4   |         | (0,1) | (1,1) |

% Examle of crystal pixel number in four arrays of 4x4 crystals
%
%           | 1 . . . | * |33 . . . |
%           | 2 . . . | * |34 . . . |
%           | 3 . . . | * |35 . . . |
%           | 4 . . . | * |36 . . . |
%           * * * * * * * * * * * * *
%           | 5 . . . | * |37 . . . |
%           | 6 . . . | * |38 . . . |
%           | 7 . . . | * |39 . . . |
%           | 8 . . . | * |40 . . . | -
% Raw flood histogram

[num, ch]=size(data);
rawdata = zeros(num,6);
num_sensor_row = sqrt(num_sensor);
num_row_pixel_sensor = sqrt(num_pixel);
num_row_pixel_total = num_row_pixel_sensor * num_sensor_row;
num_pixel_total = num_row_pixel_total^2;

rawdata(:,3) = (data(:,1)+data(:,2)+data(:,3)+data(:,4));
% rawdata(:,3) = data(:,1);

figure(1); % Plot of total summed energy spectrum
hist(rawdata(:,3),min(rawdata(:,3)):bin_size:max(rawdata(:,3))); xlim([energy_lld energy_uld]); ylim([0 800]);
title('Summed energy spectrum', 'FontSize',24, 'FontWeight','Bold')

%%
%     Relation between Anger positions and ADC values.
%
%              A                      D
%
%                  | Anger network |
%
%              B                      C
%
%  A = ADC 1 = data(:,1)
%  B = ADC 2 = data(:,2)
%  C = ADC 3 = data(:,3)
%  D = ADC 4 = data(:,4)


switch(multiplexing_type)
    case 1
        % x, y coordination calculation for row/column sum
        for i=1:num
            rawdata(i,1)=round((image_size/2)*(data(i,4)-data(i,3))/(data(i,3)+data(i,4))) + (image_size/2);   % x-coordinate
            rawdata(i,2)=round((image_size/2) - (round(image_size/2)*(data(i,2)-data(i,1))/(data(i,1)+data(i,2))));  % y-coordinate
            rawdata(i,4)=(rawdata(i,2))+(image_size*rawdata(i,1))-1;                                                                  % pixel number
        end
    case 2
        % x, y coordination calculation for anger
        for i=1:num
            rawdata(i,1)=round((image_size/2)*(data(i,2)+data(i,4)-data(i,1)-data(i,3))/rawdata(i,3)) + (image_size/2);   % x-coordinate
            rawdata(i,2)=image_size - (round((image_size/2)*(data(i,1)+data(i,2)-data(i,3)-data(i,4))/rawdata(i,3))+(image_size/2));  % y-coordinate
            rawdata(i,4)=(rawdata(i,2))+(image_size*rawdata(i,1))-1;                                                                  % pixel number
        end
    case 3
        for i=1:num
            rawdata(i,1)=round((image_size/2)*(data(i,2)+data(i,1)-data(i,4)-data(i,3))/rawdata(i,3)) + (image_size/2);   % x-coordinate
            rawdata(i,2)=image_size - (round((image_size/2)*(data(i,3)+data(i,2)-data(i,4)-data(i,1))/rawdata(i,3))+(image_size/2));  % y-coordinate
            rawdata(i,4)=(rawdata(i,2))+(image_size*rawdata(i,1))-1;                                                                  % pixel number
        end
end

% accumulating the counts at each point
% x,y coordinates are in between 0 and 1000, energy is in between lld, uld
count = zeros(image_size);
for i = 1:num
    if rawdata(i,1)<image_size && rawdata(i,2)<image_size && rawdata(i,1)>0 && rawdata(i,2)>0 && rawdata(i,3) > energy_lld && rawdata(i,3) < energy_uld
        count(rawdata(i,2), rawdata(i,1)) = count(rawdata(i,2), rawdata(i,1)) + 1;
    end
end

figure(2)
imshow(count,[]);
colormap('jet');
title('Raw flood histogram','FontSize',24, 'FontWeight','Bold')
% truesize([image_size image_size]);
%saveas(gcf,[filename '.png']);
%% gray image converting & denoising
max_count = max(max(count));
gray_image = (count/max_count)*256;

for i=1:image_size
    for j=1:image_size
        if gray_image(i,j) < denoising_factor
            gray_image(i,j) = 0;
            %         end
            %         if gray_image(i,j) > 3
            %             gray_image(i,j) = 0;
        end
    end
end

figure(3)
imshow(gray_image,[]);
colormap('jet');
title('Denoised flood histogram (gray scale)','FontSize',24, 'FontWeight','Bold')
% truesize([image_size image_size]);
image_name = [filename '.png'];
% saveas(gcf,image_name);
if(LUT_generator == 1)
    %% Read in the Color Image and Convert it to Grayscale
    I= gray_image;
    
    %% Use the Gradient Magnitude as the Segmentation Function
    % hy = 1*fspecial('prewitt');
    hy = 1*fspecial('average', [5 5]);
    hx = hy';
    Iy = imfilter(double(I), hy, 'circular');
    Ix = imfilter(double(I), hx, 'circular');
    gradmag = sqrt(Ix.^2 + Iy.^2);
   % figure(4), imshow(gradmag,[]), title('Gradient magnitude (gradmag)')
    
    %% Mark the Foreground Objects
    % Compute the opening-by-reconstruction using |imerode| and |imreconstruct|.
    se = strel('disk',5);
    Ie = imerode(gradmag, se);
    Iobr = imreconstruct(Ie, gradmag);
    % Now use |imdilate| followed by |imreconstruct|.  Notice you must complement the image inputs and output of |imreconstruct|.
    % Calculate the regional maxima of |Iobrcbr| to obtain good foreground markers.
    Iobrd = imdilate(Iobr, se);
    Iobrcbr = imreconstruct(imcomplement(Iobrd), imcomplement(Iobr));
    Iobrcbr = imcomplement(Iobrcbr);
    %the results of Iobr and Iobrcbr look the same
    fgm = imregionalmax(Iobrcbr);
    %figure(5), imshow(fgm), title('Regional maxima of opening-closing by reconstruction (fgm)')
    %
    % [y,x]=ginput;
    % x=round(x);
    % y=round(y);
    % for i=1:length(x)
    %     fgm(x(i),y(i)) = fgm(x(i),y(i)) +1;
    % end
    % figure(5), imshow(fgm), title('Regional maxima of opening-closing by reconstruction (fgm)')
    %% Compute Background Markers
    %figure();
    D = bwdist(fgm,'quasi-euclidean');
    DL = watershed(D);
    bgm = DL == 0;
    
    LL=(bgm-1)*(-1); % same as LL=imcomplement(bgm);
    L = bwlabel(LL,8);
   % figure(6)
    imshow(bgm*max(max(count))+count,[]); colormap('jet');
    title('Watershed ridge lines (bgm)','FontSize',24, 'FontWeight','Bold')
    % truesize([image_size image_size]);
    
    
    marker = zeros(num_pixel_total,4);
    
    for i=1:num_pixel_total
        marker(i,3) = i;
        [r, c] = find(L==i);
        marker(i,1:2) = [mean(r) mean(c)];
    end
    
    marker_sort_x = sortrows(marker,2);
    marker_sort_xy = zeros(num_pixel_total,4);
    
    for i=1:num_row_pixel_total
        marker_sort_xy(num_row_pixel_total*(i-1)+1:num_row_pixel_total*i,:) ...
            = sortrows(marker_sort_x(num_row_pixel_total*(i-1)+1:num_row_pixel_total*i,:),1);
    end
    
    for i=1:num_pixel_total
        marker_sort_xy(i,4) = i;
    end
    
    marker_LUT = sortrows(marker_sort_xy(:,3:4),1);
    L_LUT = marker_LUT(:,2);
    L_new = zeros(image_size);  % Sorted watershed ridge lines
    
    for i=1:image_size
        for j=1:image_size
            if L(i,j) > 0 && L(i,j)<= num_pixel_total
                L_new(i,j) = L_LUT(L(i,j));
            end
        end
    end
end

%% Energy spectrum & Gaussian fitting
hist_bin = 0:bin_size:energy_uld;

e_resolution = zeros(num_pixel_total,1);
e_histogram = zeros(num_row_pixel_total);

init_col = zeros(num_sensor_row, num_row_pixel_total);
for i = 1:num_sensor_row
    init_col(i,:) = (1:num_row_pixel_total) + num_pixel*num_sensor_row*(i-1);
end
init_pixel_pos = reshape(init_col', [num_row_pixel_sensor, num_sensor])';

hist_plot_pos = zeros(2,num_sensor);

for i = 1:num_sensor
    hist_plot_pos(1,i) = floor((i-1)/num_sensor_row);       % [X pos;
    hist_plot_pos(2,i) = mod(i-1,num_sensor_row);           %  Y pos]
end

Top = zeros(size(hist_bin,2),num_pixel_total);
for i=1:num_pixel_total
    T_ch = find((L_new == i));
    Top(:,i) = (hist(rawdata((ismember(rawdata(:,4), T_ch)),3), hist_bin));
end
Top_peak = zeros(num_pixel_total,2);
%%
fit_lld = find(hist_bin==max(energy_lld,fitting_lld));
fit_uld = find(hist_bin==fitting_uld);
valid_count = zeros(num_row_pixel_total);

for det=1:num_sensor
 % figure;
    suptitle(['Sensor ' num2str(det)]);
    set(gcf,'position',[100 100 1200 800]);
    
    for i=1:num_row_pixel_sensor        % row
        for j=1:num_row_pixel_sensor    % column
            subplot(num_row_pixel_sensor, num_row_pixel_sensor, num_row_pixel_sensor*(i-1)+j)
            e_num = num_row_pixel_total*(j-1) + init_pixel_pos(det,i);
            plot(hist_bin,Top(:,e_num)); hold on;
            %            plot(1:hist_size(1),fg_Top(:,e_num)); hold on;
            title(e_num,'FontSize',12)
            
            if(LUT_generator == 1)
                % Gaussian fitting
                [M, M_index]=max(Top(fit_lld:fit_uld, e_num));
                fit_range = round((fit_lld + M_index - 1)*0.9):round((fit_lld + M_index - 1)*1.1);
                f1 = fit(hist_bin(fit_range)', Top(fit_range, e_num), 'gauss1');
                %             f1 = fit(fit_range', Top(fit_range, e_num), 'gauss1'); %histogram channel number is used as xaxis index
                plot(f1); legend('off');
                xlabel('Energy (histogram channel)','FontSize',10);
                ylabel('Counts','FontSize',10);
                e_resolution(e_num) = f1.c1*sqrt(4*log(2))/f1.b1*100; % energy resolution (FWHM (%))
                
                
                % Energy_resolution histogram
                e_histogram(i+hist_plot_pos(2,det)*num_row_pixel_sensor, j+hist_plot_pos(1,det)*num_row_pixel_sensor)...
                    = e_resolution(e_num);
                Top_peak(e_num, :)=[M, fit_lld+M_index-1];
            else
                %window plot
                plot([peak_lld(e_num,1) peak_lld(e_num,1)],ylim,':k'); hold on;
                plot([peak_uld(e_num,1) peak_uld(e_num,1)],ylim,':k');
                valid_count(i+hist_plot_pos(2,det)*num_row_pixel_sensor, j+hist_plot_pos(1,det)*num_row_pixel_sensor)...                   
=sum(Top(:, e_num));
%  =sum(Top(round(peak_lld(e_num,1)/bin_size):round(peak_uld(e_num,1)/bin_size), e_num));
%                 =sum(Top(:, e_num));
                
            end
            
            ax=handle(gca); %axes setting
            %             ax.YLim=[0 energy_count_max];
            ax.YLimMode='auto';
            ax.XLim=[0 30000];
            %             ax.XLimMode='auto';
            
        end
    end    
end

%%
%lld, uld and peak location by histogram channel
if(LUT_generator == 1)
    disp(['energy resolution of ' filename]);
    disp(mean(e_resolution(1:num_sensor*16,1)));
    
    xvalue_peak=Top_peak(:,2)*bin_size;
    peak_uld=round(xvalue_peak*1.1);
    peak_lld=round(xvalue_peak*0.9);
    save([filename(1:18) '_LUT.mat'], 'L_new', 'peak_lld', 'peak_uld', '-mat');
else
   I=(valid_count(:,:)-min(min(valid_count)))/(max(max(valid_count))-min(min(valid_count)))*512;
 %  I = valid_count;
   figure;
      Ir=imresize(I,20,'bilinear');
    imshow(Ir,[]);
    
 %   imagesc(I,[0 256])
     %Ir=imresize(I,20);
   
%     saveas(gcf,[filename '_recon.png']);
end
i=flipud(I);
ii=fliplr(i);

%%
close all;
c=xlsread('19x19_anti.xlsx');
counts=1;
aaa = zeros(66,66);
figure(5+counts);
for i=1.:0.1:2.5;% i=1.:0.1:2.5;
d=imresize(c,i,'bilinear');
 iii=imresize(ii,3,'bilinear');
    a=xcorr2(iii,d);
% figure(5+counts);
subplot(4,5,counts),
aa=imresize(a,2,'bilinear');
aa = rot90(aa);
if counts >= 8
    if counts <= 10
        disp(size(aa));
        aaa = aaa + aa(65:130,65:130);
    end
end
imshow(aa,[],'Colormap',jet(255)); title(counts);
counts=counts+1;
end
imshow(aaa,[],'Colormap',jet(255)); title(counts);
figure(5+counts);
imshow(iii,[]);

return;
%% 영상처리
close all;
c=xlsread('19x19_anti.xlsx');
counts=1;
kernel1 = -1 * ones(3)/9; kernel1(2,2) = 8/9;
kernel2 = [-1 -2 -1; -2 12 -2; -1 -2 -1]/16;
aaa = zeros(66,66);
figure(5+counts);
for i=1.:0.1:2.5;% i=1.:0.1:2.5;
d=imresize(c,i,'bilinear');
 iii=imresize(ii,3,'bilinear');
    a=xcorr2(iii,d);
% figure(5+counts);
subplot(4,5,counts),
aa=imresize(a,2,'bilinear');
aa = rot90(aa);
aa = imfilter(single(aa), kernel2);
if counts >= 8
    if counts <= 10
        disp(size(aa));
        aaa = aaa + aa(65:130,65:130);
    end
end
imshow(aa,[],'Colormap',jet(255)); title(counts);
counts=counts+1;
end
imshow(aaa,[],'Colormap',jet(255)); title(counts);
figure(5+counts);
imshow(iii,[]);
