clc;
clear;
close all;
for i = 1:1:256
    formatSpec = "tVectors,SymbolPressure%d(1:Nfft),...\n";
    fprintf(formatSpec,i);
end