%mducng/SoC/D2/G2touch
clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fB                  =  25000;             % Beacon LF frequency
f0                  =  40000;             % 0-Tip Digital LF 
f1                  =  45000;             % 1-Tip Digital LF 
fP                  =  20000;             % pressure LF 
Fs                  =  1000000;           % Sampling freq  
sps                 =  400;               % # samples per symbol
ns                  =  0:(sps-1);         % Samples vectors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SymbolZero          =    sin(2*pi*ns*f0/Fs);
SymbolOne           =    sin(2*pi*ns*f1/Fs);
SymbolBeacon        =    sin(2*pi*ns*fB/Fs);
SymbolPressure      =    sin(2*pi*ns*fP/Fs);
SymbolBlank         =  0*SymbolZero;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
receivedSignal      = [ SymbolBeacon,...
                        SymbolBlank,...
                        SymbolOne,...
                        SymbolBlank,...
                        SymbolPressure,...
                        SymbolBlank,...
                        SymbolBlank,...
                        SymbolBlank];
tS                  = (0:length(SymbolZero)-1)*1/Fs;     %t symbol
tR                  = (0:length(receivedSignal)-1)*1/Fs; %t received frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
subplot(4,1,1);
stem(tS,SymbolBeacon,':diamondr')
xlabel("Symbol of beacon.");
%axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(4,1,2);
stem(tS,SymbolZero,':diamondr')
xlabel("Symbol of bit 0-LF.");
%axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(4,1,3);
stem(tS,SymbolOne,':diamondr')
xlabel("Symbol of bit 1-LF.");
%axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(4,1,4);
stem(tS,SymbolPressure,':diamondr')
xlabel("Symbol of PRESSURE.");
%axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
figure(2)
subplot(5,1,1);
stem(tS,SymbolBeacon,':diamondr')
xlabel("Symbol of beacon.");
axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(5,1,2);
stem(tS,SymbolZero,':diamondr')
xlabel("Symbol of bit 0-LF.");
axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(5,1,3);
stem(tS,SymbolOne,':diamondr')
xlabel("Symbol of bit 1-LF.");
axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(5,1,4);
stem(tS,SymbolPressure,':diamondr')
xlabel("Symbol of PRESSURE.");
axis([-20*1/Fs 3500*1/Fs -2 2]);
%%%%%%%%%%%%%%%
subplot(5,1,5);
stem(tR,receivedSignal,':diamondr')
xlabel("A frame with Beacon-blank-One-blank-pressure-blank-blank-blank.");
axis([-20*1/Fs 3500*1/Fs -2 2]);