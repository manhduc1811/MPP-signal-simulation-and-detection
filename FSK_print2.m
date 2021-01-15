clc;
clear;
close all;
for i = 1:1:256
    formatSpec = "tS,SymbolPressure%d,...\n";
    fprintf(formatSpec,i);
end