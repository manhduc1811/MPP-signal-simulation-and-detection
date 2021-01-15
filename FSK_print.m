clc;
clear;
close all;
for i = 1:1:256
    formatSpec = "SymbolPressure%d     =  sin(2*pi*ns*(fP+%d*20)/Fs);\n";
    fprintf(formatSpec,i,i);
end