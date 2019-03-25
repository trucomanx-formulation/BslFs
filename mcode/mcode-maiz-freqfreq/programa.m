%

pkg load bsltl

INPUT='/home/fernando/Downloads/ROLANDO/Semilla 3_3dias/3dias';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OUTPUT='output'
mkdir(OUTPUT);
DMAX=44;

func_dir_std_1freq(INPUT,15,OUTPUT,DMAX,1);
func_dir_std_1freq(INPUT,30,OUTPUT,DMAX,2);
func_dir_std_1freq(INPUT,45,OUTPUT,DMAX,3);
func_dir_std_1freq(INPUT,60,OUTPUT,DMAX,4);

close all
ax = axes;
colormap ("jet");
h=colorbar(ax,"northoutside");
caxis([0 DMAX]);
set(ax,'visible','off');
print(fullfile(OUTPUT,'colorbar.eps'),'-depsc','-tight');




OUTPUT='output-norm'
mkdir(OUTPUT);

func_dir_std_2freq(INPUT,15,OUTPUT,1);
func_dir_std_2freq(INPUT,30,OUTPUT,2);
func_dir_std_2freq(INPUT,45,OUTPUT,3);
func_dir_std_2freq(INPUT,60,OUTPUT,4);






