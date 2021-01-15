%mducng/SoC/D2/G2touch
clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fB                  =  25000;             % Beacon LF frequency
fBring              =  160000;            % Beacon HF frequency
Fs                  =  1000000;           % Sampling freq  
sps                 =  400;               % # samples per symbol
ns                  =  0:(sps-1);         % Samples vectors
nsRing              =  0:(sps/4-1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SymbolBeacon        =    sin(2*pi*ns*fB/Fs);
SymbolBeaconRing    =    sin(2*pi*nsRing*fBring/Fs);
SymbolBeaconRingBlak=    0*sin(2*pi*nsRing*fBring/Fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
receivedSignalTip   = SymbolBeacon;
receivedSignalRing  = [SymbolBeaconRing,SymbolBeaconRingBlak,...
                                SymbolBeaconRingBlak,SymbolBeaconRingBlak];
receivedSignalFront = receivedSignalTip + receivedSignalRing;
tS                  = (0:length(SymbolBeacon)-1)*1/Fs;     %t symbol
tR                  = (0:length(receivedSignalFront)-1)*1/Fs; %t received frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Nfft                = 128;
dF                  = Fs/Nfft;
fVectors            = (0:(Nfft-1))*dF;
tVectors            = (0:(Nfft-1))*1/Fs;
FFTresult           = fft(receivedSignalFront,Nfft);
yAbs                = abs(FFTresult);
yPhase              = imag(FFTresult);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,1,1);
plot(tVectors,receivedSignalFront(1:Nfft));
title('Beacon LF mixed signal: Tip + Ring = Front'); 
%axis([0 1*10^6 0 Nfft]);
subplot(3,1,2);
stem(fVectors,yAbs,'filled');
title('Fourier transform. Abs.'); 
axis([0 Fs 0 Nfft]);
subplot(3,1,3);
stem(fVectors,yPhase,'filled');
title('Fourier transform. Abs.'); 
axis([0 Fs -Nfft Nfft]);