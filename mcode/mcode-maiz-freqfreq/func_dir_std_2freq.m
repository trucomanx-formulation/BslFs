function [STD MEAN AVD STDF h]=func_dir_std_2freq(DIRROOT,NUM,OUTPUT,FACTOR)
    REGION='REGION';
    N=2*FACTOR;
    H=cell(1,N);
    Fs=cell(1,N);

    mkdir(fullfile(OUTPUT,[num2str(NUM) 'fps']));

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for II=1:N    
        H{II}=get_fir_filter(40,(II-1)/N+[0.0 1.0]/N,'bandpass');   
        F{II}=((II-1)/N+[0.0 1.0]/N)*NUM/2;
        % [AH FREQN]=freqmod(H{II},400);
        % plot(FREQN,AH,'-o');
    endfor
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %DIR=fullfile(DIRROOT,[num2str(NUM) 'fps'],REGION);
    DIR=fullfile(DIRROOT,[num2str(NUM) 'fps'],REGION);
    %% To filenames: 'img1coffee.bmp', 'img2coffee,bmp', ..., 'img100coffee.bmp'
    DATA = datapack(DIR,'%d',1,512,'bmp');
    %DATA=DATA(180:(end-100),150:(end-150),:);
    
    %% pkg load image
    %% FF = fspecial("average", 3);

    [C D E]=stdcont(DATA,'off');
    %% D = imfilter(D, FF);
    %% E = imfilter(E, FF);

    imagesc(E); title('MEAN')  
    colormap(jet);
    colorbar;
    FileName=fullfile(OUTPUT,[num2str(NUM) 'fps'],'MEAN.eps');
    print(gcf,FileName,'-depsc')

    imagesc(D); title('STD')  
    colormap(jet);
    colorbar;
    FileName=fullfile(OUTPUT,[num2str(NUM) 'fps'],'STD.eps');
    print(gcf,FileName,'-depsc')

    DMAX=0;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for II=1:N   
        [DATAF DATA1] = firfilterbank(DATA,H{II},'MODE0');


        [C D E]=stdcont(DATAF,'off');

        %D = imfilter(D, FF);

        imagesc(D);  
        colormap(jet);
        if II==1
            DMAX=max(max(D));
        endif

        NCOLORS=256;
        Dind = gray2ind(D/DMAX, NCOLORS);
        Drgb = ind2rgb(Dind, jet(NCOLORS));

        if(max(max(D/DMAX))>1.0)
            error('DMAX is too large');
        else
            disp(['DMAX is ' num2str(max(max(D/DMAX)))]);
        end

        mkdir(fullfile(OUTPUT,[num2str(NUM) 'fps']));
        FileName=fullfile(OUTPUT,[num2str(NUM) 'fps'],[num2str(NUM) 'STD_BAND-' num2str(F{II}(1)) '-' num2str(F{II}(2)) '.eps' ]);
        imwrite(Drgb,FileName);

    endfor 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        

     
end
