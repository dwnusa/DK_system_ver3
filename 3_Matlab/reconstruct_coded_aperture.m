function IM_Recon = reconstruct_coded_aperture(IM_Sample, d, relabel_img, valid)
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
    pixel_map = pixel_map';
    iii=imresize(pixel_map,3,'bilinear');
    a=xcorr2(iii,d);
    aa=imresize(a,1.6,'bilinear');
%     IM_Recon = rot90(-aa,-1);
    IM_Recon = aa;
else
    maxIntensity = max(IM_Sample(:));
    line = (relabel_img == 0);
    IM_Recon = IM_Sample.*(~line) + line*maxIntensity;
end