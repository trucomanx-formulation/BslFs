function func_programa_plot3(   STD15,MEAN15,AVD15,STDF15,...
                                STD30,MEAN30,AVD30,STDF30,...
                                STD45,MEAN45,AVD45,STDF45,...
                                STD60,MEAN60,AVD60,STDF60,...
                                H,OUTPUT,PRENAME)

FONTSIZE=17;
mkdir(OUTPUT);

[AH FREQN]=freqmod(H,100);
plot(FREQN,AH,'-o');
xlabel('Normalizaed frequency')
ylabel('Filter')
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'STDF-H.eps']),'-deps',['-F:',int2str(FONTSIZE)])


MEANVAL=[MEAN15 MEAN30 MEAN45 MEAN60];
FREQ=[15 30 45 60];
plot(FREQ,MEANVAL,'-s'), grid
xlabel('Fs (Hertz)')
ylabel('MEAN')
ylim([0 1.1*max(MEANVAL)])
legend(['MEAN : ' num2str(MEAN60*100/MEAN15) '%']);
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'ALLMEAN.eps']),'-deps',['-F:',int2str(FONTSIZE)])


AVDVAL=[AVD15 AVD30 AVD45 AVD60];
STDVAL=[STD15 STD30 STD45 STD60];
STDFVAL=[STDF15 STDF30 STDF45 STDF60];
FREQ=[15 30 45 60];
plot(FREQ,STDVAL,'-s',FREQ,AVDVAL,'-o',FREQ,STDFVAL,'-*'), grid
xlabel('Fs (Hertz)')
ylabel('Index value')
legend(['STD  : ' num2str(STD60*100/STD15) '%'],['AVD  : ' num2str(AVD60*100/AVD15) '%'],['STDF : ' num2str(STDF60*100/STDF15) '%']);
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'ALL.eps']),'-deps',['-F:',int2str(FONTSIZE)])

%% 
%% plot(FREQ,STDVAL/max(STDVAL),'-s',FREQ,AVDVAL/max(AVDVAL),'-o',FREQ,STDFVAL/max(STDFVAL),'-*'), grid
%% xlabel('Fs (Hertz)')
%% ylabel('Normalized value')
%% legend('STD','AVD','STDF');
%% print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'ALLNORM.eps']),'-deps')
%% 

end
