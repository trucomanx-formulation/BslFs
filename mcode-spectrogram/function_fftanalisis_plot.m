function function_fftanalisis_plot(OUTPUT,GRAPH,L,N)

    mkdir(OUTPUT);

    MAT1=20*log10(GRAPH(:,1:(L/2)));
    MAT1(:,1)=0*MAT1(:,1);

    figure(1)
    plot(([1:(L/2)]-1)/L,MAT1)
    xlabel('Normalized frequency');
    ylabel('Amplitude');
    print(figure(1),fullfile(OUTPUT,filesep,'spectrogram1.png'),'-dpng')


    figure(2)
    colormap(jet)
    imagesc(MAT1,[0 max(max(MAT1))]);
    ylabel('(Time+1) min');
    xlabel('frequency Hz');
    colorbar();
    Fs=15;
    xticklabels = ([1:32:(L/2)]-1)*Fs/L;
    xticks =[1:32:(L/2)];
    set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)
    print(figure(2),fullfile(OUTPUT,filesep,'spectrogram2.png'),'-dpng')

endfunction
