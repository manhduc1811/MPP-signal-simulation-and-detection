%mducng/SoC/D2/G2touch
clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fs                  =  1000000;
fP                  =  20000;
f0PreRing           =  100000;
f1PreRing           =  90000;
sps                 =  400;              % samples per symbol
ns                  =  0:(sps-1);        % numbers of samples
nsRing              =  0:(sps/8-1);      % 1-LF-sps = 8*1-HF-sps  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SymbolPressureX     =  sin(2*pi*ns*(fP+5*20)/Fs);
SymbolPRing0        =  sin(2*pi*nsRing*f0PreRing/Fs);
SymbolPRing1        =  sin(2*pi*nsRing*f1PreRing/Fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tS                  = (0:length(SymbolPressureX)-1)*1/Fs;%t received symbol
receivedPreTip      = SymbolPressureX;
receivedPreRing     = [SymbolPRing0,SymbolPRing1,SymbolPRing1,...
         SymbolPRing0,SymbolPRing1,SymbolPRing0,SymbolPRing0,SymbolPRing1];
receivePreFront     = receivedPreTip + receivedPreRing;           
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
subplot(3,1,1);
plot(tS,receivedPreTip)
xlabel("1 0 0 1 0 1 1 0 from TIP");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,2);
plot(tS,receivedPreRing)
xlabel("1 0 1 1 0 0 1 0 from RING");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,3);
plot(tS,receivePreFront)
xlabel("16'b. of FRONT");
axis([-20*1/Fs 500*1/Fs -4 4]);

figure(2)
subplot(3,1,1);
stem(tS,receivedPreTip,':diamondr')
xlabel("1 0 0 1 0 1 1 0 from TIP");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,2);
stem(tS,receivedPreRing,':diamondr')
xlabel("1 0 1 1 0 0 1 0 from RING");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,3);
stem(tS,receivePreFront,':diamondr')
xlabel("16'b. of FRONT");
axis([-20*1/Fs 500*1/Fs -4 4]);