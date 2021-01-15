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
figure(1)
subplot(3,1,1);
stem(tS,receivedSignalTip,':diamondr')
xlabel("Symbol of beacon tip.");
axis([-20*1/Fs 500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(3,1,2);
stem(tS,receivedSignalRing,':diamondr')
xlabel("Symbol of beacon ring.");
axis([-20*1/Fs 500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(3,1,3);
stem(tS,receivedSignalFront,':diamondr')
xlabel("Symbol of beacon FRONT.");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
figure(2)
subplot(3,1,1);
plot(tS,receivedSignalTip)
xlabel("Symbol of beacon tip.");
axis([-20*1/Fs 500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(3,1,2);
plot(tS,receivedSignalRing)
xlabel("Symbol of beacon ring.");
axis([-20*1/Fs 500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(3,1,3);
plot(tS,receivedSignalFront)
xlabel("Symbol of beacon FRONT.");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%