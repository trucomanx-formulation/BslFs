%

pkg load bsltl

OUTPUT='/home/fernando/Downloads/ROLANDO/FPS_f11';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DIRSRC=fullfile(OUTPUT,filesep,'15fps');
[STD15 MEAN15 AVD15 STDF15 TIME H]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'30fps');
[STD30 MEAN30 AVD30 STDF30 TIME H]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'45fps');
[STD45 MEAN45 AVD45 STDF45 TIME H]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'60fps');
[STD60 MEAN60 AVD60 STDF60 TIME H]=func_dir_std(DIRSRC);

func_programa_plot2(   STD15,MEAN15,AVD15,STDF15,...
                       STD30,MEAN30,AVD30,STDF30,...
                       STD45,MEAN45,AVD45,STDF45,...
                       STD60,MEAN60,AVD60,STDF60,...
                       H,TIME,'dir_FPS_f11_raw','FPS_f11_raw','');

func_programa_plot2(   STD15/max(STD15),MEAN15,AVD15/max(AVD15),STDF15/max(STDF15),...
                       STD30/max(STD30),MEAN30,AVD30/max(AVD30),STDF30/max(STDF30),...
                       STD45/max(STD45),MEAN45,AVD45/max(AVD45),STDF45/max(STDF45),...
                       STD60/max(STD60),MEAN60,AVD60/max(AVD60),STDF60/max(STDF60),...
                       H,TIME,'dir_FPS_f11_norm1','FPS_f11_norm1','Normalized ');


