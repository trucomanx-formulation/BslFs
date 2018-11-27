function func_programa_plot2(   STD15,MEAN15,AVD15,...
                                STD30,MEAN30,AVD30,...
                                STD45,MEAN45,AVD45,...
                                STD60,MEAN60,AVD60,...
                                TIME,OUTPUT,PRENAME)

mkdir(OUTPUT);

MAXY=max([max(STD15) max(STD30) max(STD45) max(STD60)]);
plot(TIME,STD15,'-o',TIME,STD30,'-s',TIME,STD45,'-<',TIME,STD60,'-*'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel('STD')
legend('15 fps','30 fps','45 fps','60 fps');
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'STD.png']),'-dpng')

MAXY=max([max(MEAN15) max(MEAN30) max(MEAN45) max(MEAN60)]);
plot(TIME,MEAN15,'-o',TIME,MEAN30,'-s',TIME,MEAN45,'-<',TIME,MEAN60,'-*'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel('MEAN')
legend('15 fps','30 fps','45 fps','60 fps');
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'MEAN.png']),'-dpng')

MAXY=max([max(AVD15) max(AVD30) max(AVD45) max(AVD60)]);
plot(TIME,AVD15,'-o',TIME,AVD30,'-s',TIME,AVD45,'-<',TIME,AVD60,'-*'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel('AVD')
legend('15 fps','30 fps','45 fps','60 fps');
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'AVD.png']),'-dpng')
end
