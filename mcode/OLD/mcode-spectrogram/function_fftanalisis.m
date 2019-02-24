function [GRAPH L N]=function_fftanalisis(DIRROOT)
    L=512;
    N=11;
    TIME=[0:(N-1)];

    GRAPH=zeros(N,L);

    for II=0:(N-1)

        DIR=fullfile(DIRROOT,[num2str(II) 'min'],'ROI');

        %% To filenames: 'img1coffee.bmp', 'img2coffee,bmp', ..., 'img100coffee.bmp'
        DATA = datapack(DIR,'%d',1,L,'bmp');

        %DATA=DATA-mean(DATA,3);

        M=size(DATA,1);
        N=size(DATA,2);    
        FFTM=abs(fft(DATA,L,3));

        FFTV=sum(sum (FFTM,1),2)/(M*N);
        GRAPH(II+1,:)=reshape(FFTV,1,L);

    end

endfunction
