%
pkg load bsltl


DIRROOT='/home/fernando/Downloads/ROLANDO/15fps_exp1';
[GRAPH L N]=function_fftanalisis(DIRROOT);
function_fftanalisis_plot('output_15fps_exp1',GRAPH,L,N);

DIRROOT='/home/fernando/Downloads/ROLANDO/25fps_exp1';
[GRAPH L N]=function_fftanalisis(DIRROOT);
function_fftanalisis_plot('output_25fps_exp1',GRAPH,L,N);

DIRROOT='/home/fernando/Downloads/ROLANDO/15fps_exp2';
[GRAPH L N]=function_fftanalisis(DIRROOT);
function_fftanalisis_plot('output_15fps_exp2',GRAPH,L,N);

DIRROOT='/home/fernando/Downloads/ROLANDO/25fps_exp2';
[GRAPH L N]=function_fftanalisis(DIRROOT);
function_fftanalisis_plot('output_25fps_exp2',GRAPH,L,N);
