%mducng/SoC/D2/G2touch
clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f0HF                =  190000;                         % 0-Tip Digital HF 
f1HF                =  200000;                         % 1-Tip Digital HF
f0HFring            =  170000;                         % 0-Ring digital HF
f1HFring            =  180000;                         % 1-Ring digital HF
Fs                  =  1000000;
sps                 =  400;                            % samples per symbol
ns                  =  0:(sps/8-1);                    % numbers of symbol
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SymbolZero          =  sin(2*pi*ns*f0HF/Fs);
SymbolOne           =  sin(2*pi*ns*f1HF/Fs);
SymbolBlank         =  0*SymbolZero;
SymbolZeroRing      =  sin(2*pi*ns*f0HFring/Fs);
SymbolOneRing       =  sin(2*pi*ns*f1HFring/Fs);
SymbolBlankRing     =  0*SymbolZeroRing;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AllZerosSymbols     = SymbolZero;
AllOnesSymbols      = SymbolOne;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
receivedSignalTip   = [SymbolOne,SymbolZero,SymbolZero,SymbolOne,...
                                SymbolZero,SymbolOne,SymbolOne,SymbolZero];
receivedSignalRing  = [SymbolOneRing,SymbolZeroRing,SymbolOneRing,...
 SymbolOneRing,SymbolZeroRing,SymbolZeroRing,SymbolOneRing,SymbolZeroRing];
receivedSignalMixed = receivedSignalTip + receivedSignalRing;                            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tS                  = (0:length(SymbolZero)-1)*1/Fs;    % t symbol
tR                  = (0:length(receivedSignalTip)-1)*1/Fs;  % t received symbol
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
subplot(3,1,1);
stem(tR,receivedSignalTip,':diamondr')
%plot(tR,receivedSignalTip)
xlabel("1 0 0 1 0 1 1 0 from TIP");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,2);
stem(tR,receivedSignalRing,':diamondr')
%plot(tR,receivedSignalRing)
xlabel("1 0 1 1 0 0 1 0 from RING");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,3);
stem(tR,receivedSignalMixed,':diamondr')
%plot(tR,receivedSignalMixed)
xlabel("16'b. of FRONT");
axis([-20*1/Fs 500*1/Fs -4 4]);

figure(2)
subplot(3,1,1);
%stem(tR,receivedSignalTip,':diamondr')
plot(tR,receivedSignalTip)
xlabel("1 0 0 1 0 1 1 0 from TIP");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,2);
%stem(tR,receivedSignalRing,':diamondr')
plot(tR,receivedSignalRing)
xlabel("1 0 1 1 0 0 1 0 from RING");
axis([-20*1/Fs 500*1/Fs -4 4]);
%%%%%%%%%%%%%%%
subplot(3,1,3);
%stem(tR,receivedSignalMixed,':diamondr')
plot(tR,receivedSignalMixed)
xlabel("16'b. of FRONT");
axis([-20*1/Fs 500*1/Fs -4 4]);