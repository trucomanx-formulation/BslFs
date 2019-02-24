function [STD MEAN AVD STDF TIME h]=func_dir_std(DIRROOT,varargin)

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    h=get_fir_filter(40,0.5,'high');
    %[AH FREQN]=freqmod(h,40);
    %plot(FREQN,AH,'-o');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %H=DIRROOT
    STDF=zeros(1,11);
    STD=zeros(1,11);
    MEAN=zeros(1,11);
    AVD=zeros(1,11);
    TIME=[0:10];
    for II=0:10
        DIR=fullfile(DIRROOT,[num2str(II) 'min'],'ROI');

        %% To filenames: 'img1coffee.bmp', 'img2coffee,bmp', ..., 'img100coffee.bmp'
        DATA = datapack(DIR,'%d',1,512,'bmp');

        [DATAF DATA1] = firfilterbank(DATA,h,'MODE0');        

        if(nargin>1)
            NN=round(size(DATA,3)/varargin{1});
            ID=1+(0:(NN-1))*varargin{1};
            DATA=DATA(:,:,ID);

            DATAF=DATAF(:,:,ID);
        endif 
        [C D E]=stdcont(DATA,'off');
        [CF DF EF]=stdcont(DATAF,'off');
        GAVD=graphavd(DATA,'off');

        STD(II+1)=mean(mean(D));
        STDF(II+1)=mean(mean(DF));
        MEAN(II+1)=mean(mean(E));
        AVD(II+1)=mean(mean(GAVD));
    end
    
end
