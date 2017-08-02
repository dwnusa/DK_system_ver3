% 파일 저장
function savefile(Filename, cnt, TOTAL_COUNT, Sample)
% global TOTAL_COUNT
filename = sprintf('%s',Filename);
if cnt/TOTAL_COUNT == 1 % (cnt <= TOTAL_COUNT)
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