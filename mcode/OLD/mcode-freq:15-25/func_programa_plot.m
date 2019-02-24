function func_programa_plot(STD15,MEAN15,AVD15,STD25,MEAN25,AVD25,TIME,OUTPUT,PRENAME)

mkdir(OUTPUT);

MAXY=max([max(STD15) max(STD25)]);
plot(TIME,STD15,'-o',TIME,STD25,'-s'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel('STD')
legend('15 fps','25 fps');
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'STD.eps']),'-deps')

MAXY=max([max(MEAN15) max(MEAN25)]);
plot(TIME,MEAN15,'-o',TIME,MEAN25,'-s'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel('MEAN')
legend('15 fps','25 fps');
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'MEAN.eps']),'-deps')

MAXY=max([max(AVD15) max(AVD25)]);
plot(TIME,AVD15,'-o',TIME,AVD25,'-s'), grid
ylim([0 MAXY*1.1])
xlabel('Time (min)')
ylabel('AVD')
legend('15 fps','25 fps');
print(gcf,fullfile(OUTPUT,filesep,[PRENAME 'AVD.eps']),'-deps')
end
