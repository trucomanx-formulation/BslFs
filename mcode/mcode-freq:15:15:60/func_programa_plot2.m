function func_programa_plot2(   STD15,MEAN15,AVD15,STDF15,...
                                STD30,MEAN30,AVD30,STDF30,...
                                STD45,MEAN45,AVD45,STDF45,...
                                STD60,MEAN60,AVD60,STDF60,...
                                H,TIME,OUTPUT,PRENAME,YLABELPLUS)

FONTSIZE=17;
mkdir(OUTPUT);

set(0, "defaultlinemarkersize", 15);

[AH FREQN]=freqmod(H,100);
plot(FREQN,AH,'-o');
xlabel('Normalizaed frequency')
ylabel('Filter')
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'STDF-H.eps']),'-deps',['-F:',int2str(FONTSIZE)])


MAXY=max([max(STD15) max(STD30) max(STD45) max(STD60)]);
plot(TIME,STD15,'-o',TIME,STD30,'-s',TIME,STD45,'-<',TIME,STD60,'-*'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel([YLABELPLUS 'STD'])
hl=legend('15 fps','30 fps','45 fps','60 fps');
set(hl,'location','southeast');
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'STD.eps']),'-deps',['-F:',int2str(FONTSIZE)])

MAXY=max([max(MEAN15) max(MEAN30) max(MEAN45) max(MEAN60)]);
plot(TIME,MEAN15,'-o',TIME,MEAN30,'-s',TIME,MEAN45,'-<',TIME,MEAN60,'-*'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel('MEAN')
legend('15 fps','30 fps','45 fps','60 fps');
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'MEAN.eps']),'-deps',['-F:',int2str(FONTSIZE)])

MAXY=max([max(AVD15) max(AVD30) max(AVD45) max(AVD60)]);
plot(TIME,AVD15,'-o',TIME,AVD30,'-s',TIME,AVD45,'-<',TIME,AVD60,'-*'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel([YLABELPLUS 'AVD'])
hl=legend('15 fps','30 fps','45 fps','60 fps');
set(hl,'location','southeast');
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'AVD.eps']),'-deps',['-F:',int2str(FONTSIZE)])

MAXY=max([max(STDF15) max(STDF30) max(STDF45) max(STDF60)]);
plot(TIME,STDF15,'-o',TIME,STDF30,'-s',TIME,STDF45,'-<',TIME,STDF60,'-*'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel([YLABELPLUS 'STDF'])
hl=legend('15 fps','30 fps','45 fps','60 fps');
set(hl,'location','southeast');
set(gca(), 'fontsize', FONTSIZE);
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'STDF.eps']),'-deps',['-F:',int2str(FONTSIZE)])

end
