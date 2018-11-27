%

pkg load bsltl

OUTPUT='/home/fernando/Downloads/ROLANDO/FPS_f11';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DIRSRC=fullfile(OUTPUT,filesep,'15fps');
[STD15 MEAN15 AVD15 TIME]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'30fps');
[STD30 MEAN30 AVD30 TIME]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'45fps');
[STD45 MEAN45 AVD45 TIME]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'60fps');
[STD60 MEAN60 AVD60 TIME]=func_dir_std(DIRSRC);

func_programa_plot2(   STD15/max(STD15),MEAN15,AVD15/max(AVD15),...
                       STD30/max(STD30),MEAN30,AVD30/max(AVD30),...
                       STD45/max(STD45),MEAN45,AVD45/max(AVD45),...
                       STD60/max(STD60),MEAN60,AVD60/max(AVD60),...
                       TIME,'FPS_f11','FPS_f11');

