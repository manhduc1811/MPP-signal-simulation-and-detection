%mducng/SoC/D2/G2touch
clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f0                  =  40000;             % 0-Tip Digital LF 
f1                  =  45000;             % 1-Tip Digital LF 
Fs                  =  1000000;           % Sampling freq  
sps                 =  400;               % # samples per symbol
ns                  =  0:(sps-1);         % Samples vectors
nsRing              =  0:(sps/4-1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SymbolZero          =    sin(2*pi*ns*f0/Fs);
SymbolOne           =    sin(2*pi*ns*f1/Fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t0                  = (0:length(SymbolZero)-1)*1/Fs;     %t symbol
t1                  = (0:length(SymbolOne)-1)*1/Fs; %t received frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Nfft                = 256;
dF                  = Fs/Nfft;
fVectors            = (0:(Nfft-1))*dF;
tVectors            = (0:(Nfft-1))*1/Fs;
FFTresult0          = fft(SymbolZero,Nfft);
FFTresult1          = fft(SymbolOne,Nfft);
yAbs0                = abs(FFTresult0);
yAbs1                = abs(FFTresult1);
yPhase0              = imag(FFTresult0);
yPhase1              = imag(FFTresult1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);
subplot(3,1,1);
plot(tVectors,SymbolZero(1:Nfft));
title('Digital LF: bit 0'); 
%axis([0 1*10^6 0 Nfft]);
subplot(3,1,2);
stem(fVectors,yAbs0,'filled');
title('Fourier transform. Abs.'); 
axis([0 Fs 0 Nfft]);
subplot(3,1,3);
stem(fVectors,yPhase0,'filled');
title('Fourier transform. Abs.'); 
axis([0 Fs -Nfft Nfft]);

figure(2);
subplot(3,1,1);
plot(tVectors,SymbolOne(1:Nfft));
title('Digital LF: bit 1'); 
%axis([0 1*10^6 0 Nfft]);
subplot(3,1,2);
stem(fVectors,yAbs1,'filled');
title('Fourier transform. Abs.'); 
axis([0 Fs 0 Nfft]);
subplot(3,1,3);
stem(fVectors,yPhase1,'filled');
title('Fourier transform. Abs.'); 
axis([0 Fs -Nfft Nfft]);