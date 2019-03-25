function [STD MEAN AVD STDF h]=func_dir_std_1time(DIRROOT,varargin)
    REGION='REGION'
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    h=get_fir_filter(40,0.5,'high');
    %[AH FREQN]=freqmod(h,40);
    %plot(FREQN,AH,'-o');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %H=DIRROOT
    STDF=0;    STD=0;
    MEAN=0;    AVD=0;

        DIR=fullfile(DIRROOT,REGION);
        %% To filenames: 'img1coffee.bmp', 'img2coffee,bmp', ..., 'img100coffee.bmp'
        DATA = datapack(DIR,'%d',1,512,'bmp');
        
        [DATAF DATA1] = firfilterbank(DATA,h,'MODE0');
        
        %% if(nargin>1)
        %%     NN=round(size(DATA,3)/varargin{1});
        %%     ID=1+(0:(NN-1))*varargin{1};
        %%     DATA=DATA(:,:,ID);
        %%     
        %%     DATAF=DATAF(:,:,ID);
        %% endif 
        
        
        [C D E]=stdcont(DATA,'off');        
        [CF DF EF]=stdcont(DATAF,'off');
        GAVD=graphavd(DATA,'off');
        
        STD=mean(mean(D));
        STDF=mean(mean(DF));
        MEAN=mean(mean(E));
        AVD=mean(mean(GAVD));


        %% [C D E]=stdcont(DATA,'off'); 
        %% imagesc(D);  
        %% colormap(jet);
        %% M=200;Sigma=2;
        %% [Y POINTS]= thsp_gaussian(DATA,M,Sigma,gcf,'on');
        %% [YF ]= thsp_points(DATAF, POINTS); 
        
        %% AVD= avd(coom(Y));
        %% STD= mean(std(Y'));
        %% MEAN= mean(mean(Y'));

        %% STDF= mean(std(YF'));
end
