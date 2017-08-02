% 픽셀분할 영상처리
function [relabel_img] = pixel_segmentation(IM_Sample)
global SIZX SIZY
sizx = SIZX; sizy = SIZY;
% 임시 영상 생성
clear all; close all;
filename = ['Sample5' '.mat'];
load(filename);
Y = min(sizy, max(1, round((Sample(3,:)-Sample(4,:))./(Sample(4,:)+Sample(3,:)).*128*2+256)));
X = min(sizx, max(1, round((Sample(2,:)-Sample(1,:))./(Sample(2,:)+Sample(1,:)).*128*2+256)));
% i = 1;
% 영상생성
IM_Sample = full(sparse(Y,X,1,sizy,sizx));            % figure(i), imagesc(IM_Sample); title('full'); i=i+1;
% 가우스 블러링
IM_Sample = imgaussfilt(IM_Sample, 2);              % figure(i), imagesc(IM_Sample); title('imgaussfilt'); i=i+1;
% 영상 밝기 정규화 0~255
IM_Sample = IM_Sample./max(IM_Sample(:))*255;       % figure(i), imagesc(IM_Sample); title('IM_Sample./max(IM_Sample(:))*255'); i=i+1;
% 배경잡음 제거 (임계치)
IM_threshold = (IM_Sample > 30);                  % figure(i), imagesc(IM_threshold); title('im2bw'); i=i+1;
IM_Sample = IM_threshold .* IM_Sample;                  % figure(i), imagesc(IM_Sample); title('.*'); i=i+1;
% 가우스 블러링
img1 = imgaussfilt(IM_Sample, 7);                   % figure(i), imagesc(img1); title('imgaussfilt'); i=i+1;
% 지역 최대값 추출
img1_maxregion = imregionalmax(img1);      % figure(i), imagesc(img1_maxregion); title('imregionalmax'); i=i+1;
% 거리계산
img1_blob = bwdist(img1_maxregion);                 % figure(i), imagesc(img1_blob); title('bwdist'); i=i+1;
% 워터쉐드
img1_watershed = watershed(img1_blob);              % figure(i), imagesc(img1_watershed); title('watershed'); i=i+1;
% 픽셀별 라벨링 한점씩 수집
img1_labels = img1_maxregion .* single(img1_watershed);   % figure(i), imagesc(img1_labels); title('.*'); i=i+1;

[x, y, v] = find(img1_labels); % 요소추출
temp_rows = sortrows([y x v]); % y값 기준 오름차순
temp_rows = reshape(temp_rows(:,3), [12, 12]); % 12x12 재배열
temp_cols = sortrows([x y v]); % x값 기준 오름차순
temp_cols = reshape(temp_cols(:,3), [12, 12]); % 12x12 재배열
% 순서정렬
relabel_img = zeros(sizy,sizx); 
relabel = 0;
for ii = 1:12
    rows = temp_rows(:,ii);
    for jj = 1:12
        relabel = relabel + 1;
        cols = temp_cols(:,jj);
        temp0 = ismember(rows, cols);
        [~, ~, temp_label] = find(temp0 .* rows);
        temp2 = (img1_watershed == temp_label);
        relabel_img = relabel_img + temp2 .* relabel;
    end
end
% figure(5), imagesc(relabel_img); title('reorder');