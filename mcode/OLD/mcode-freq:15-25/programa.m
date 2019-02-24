%

pkg load bsltl

OUTPUT='/home/fernando/Downloads/ROLANDO';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DIRSRC=fullfile(OUTPUT,filesep,'15fps_exp1');
[STD15E1 MEAN15E1 AVD15E1 TIME]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'25fps_exp1');
[STD25E1 MEAN25E1 AVD25E1 TIME]=func_dir_std(DIRSRC);

func_programa_plot(STD15E1,MEAN15E1,AVD15E1,STD25E1,MEAN25E1,AVD25E1,TIME,'output','E1');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DIRSRC=fullfile(OUTPUT,filesep,'15fps_exp2');
[STD15E2 MEAN15E2 AVD15E2 TIME]=func_dir_std(DIRSRC);

DIRSRC=fullfile(OUTPUT,filesep,'25fps_exp2');
[STD25E2 MEAN25E2 AVD25E2 TIME]=func_dir_std(DIRSRC);

func_programa_plot(STD15E2,MEAN15E2,AVD15E2,STD25E2,MEAN25E2,AVD25E2,TIME,'output','E2');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DIRSRC=fullfile(OUTPUT,filesep,'25fps_exp2');
[STD75E4 MEAN75E4 AVD75E4 TIME]=func_dir_std(DIRSRC,2);


func_programa_plot(STD15E2,MEAN15E2,AVD15E2,STD75E4,MEAN75E4,AVD75E4,TIME,'output','E4');

