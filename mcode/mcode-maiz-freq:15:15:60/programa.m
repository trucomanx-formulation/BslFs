%

pkg load bsltl

OUTPUT='/home/fernando/Downloads/ROLANDO/Semilla 3_3dias/3dias';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DIRSRC=fullfile(OUTPUT,filesep,'15fps');
[STD15 MEAN15 AVD15 STDF15 H]=func_dir_std_1time(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'30fps');
[STD30 MEAN30 AVD30 STDF30 H]=func_dir_std_1time(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'45fps');
[STD45 MEAN45 AVD45 STDF45 H]=func_dir_std_1time(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'60fps');
[STD60 MEAN60 AVD60 STDF60 H]=func_dir_std_1time(DIRSRC);

func_programa_plot3(   STD15,MEAN15,AVD15,STDF15,...
                       STD30,MEAN30,AVD30,STDF30,...
                       STD45,MEAN45,AVD45,STDF45,...
                       STD60,MEAN60,AVD60,STDF60,...
                       H,'dir_Semilla_3_3dias','FPS_Semilla_3_3dias');

