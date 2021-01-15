%mducng/SoC/D2/G2touch
clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f0HF                =  190000;              % 0-Tip Digital HF             
f1HF                =  200000;              % 1-Tip Digital HF
Fs                  =  1000000;             % Sampling freq
sps                 =  400;                 % # samples per symbol
ns                  =  0:(sps/8-1);         % Vector of samples
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SymbolZero          =  sin(2*pi*ns*f0HF/Fs);
SymbolOne           =  sin(2*pi*ns*f1HF/Fs);
SymbolBlank         =  0*SymbolZero;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AllZerosSymbols     = SymbolZero;
AllOnesSymbols      = SymbolOne;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
receivedSignal      = [SymbolOne,SymbolZero,SymbolZero,SymbolOne,...
                                SymbolZero,SymbolOne,SymbolOne,SymbolZero];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tS                  = (0:length(SymbolZero)-1)*1/Fs;    % t symbol
tR                  = (0:length(receivedSignal)-1)*1/Fs;% t received frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Nfft                = 128;
dF                  = Fs/Nfft;
fVectors            = (0:(Nfft-1))*dF;
tVectors            = (0:(Nfft-1))*1/Fs;
FFTresult           = fft(receivedSignal,Nfft);
yAbs                = abs(FFTresult);
yPhase              = imag(FFTresult);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
subplot(3,1,1);
%stem(tR,receivedSignal,':diamondr')
plot(tR,receivedSignal)
xlabel("1 0 0 1 0 1 1 0: 1 symbol of Digital HF data");
axis([-20*1/Fs 500*1/Fs -2 2]);
%%%%%%%%%%%%%%

