function IM_Recon = reconstruct_coded_aperture(IM_Sample, coded_mask, relabel_img, valid)
if valid
pixel_map = zeros(12,12);
    for i = 1:12
        for j = 1:12
            label = (j-1)*12+i;
            mask = (relabel_img == label);
            pix_img = IM_Sample .* mask;
            pixel_map(j,i) = sum(pix_img(:));
        end
    end
    pixel_map = (pixel_map-min(pixel_map(:)))./(max(pixel_map(:))-min(pixel_map(:)))*255;
    pixel_map = rot90(pixel_map,2);
    d=imresize(coded_mask,1.7,'bilinear');
% 1.0    1.1    1.2    1.3    1.4    1.5    1.6    1.7    1.8    1.9    2.0    2.1    2.2    2.3    2.4    2.5
    iii=imresize(pixel_map,3,'bilinear');
    a=xcorr2(iii,d);
    aa=imresize(a,2,'bilinear');
    IM_Recon = rot90(aa,-1);
else
    maxIntensity = max(IM_Sample(:));
    line = (relabel_img == 0);
    IM_Recon = IM_Sample.*(~line) + line*maxIntensity;
end