clc;
clear;
close all;
for i = 1:1:256
    formatSpec = "FFTresult%d           = fft(SymbolPressure%d,Nfft);\n yAbs%d                = abs(FFTresult%d);\n yPhase%d              = imag(FFTresult%d);\n";
    fprintf(formatSpec,i,i,i,i,i,i);
end