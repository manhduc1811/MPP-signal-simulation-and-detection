clc;
clear;
close all;
for i = 1:1:256
    formatSpec = "fVectors,yPhase%d,...\n";
    fprintf(formatSpec,i);
end