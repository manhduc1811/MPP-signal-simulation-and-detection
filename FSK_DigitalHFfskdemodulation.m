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
receivedSignal      = [SymbolOne,SymbolZero,SymbolZero,SymbolOne,...
                                SymbolZero,SymbolOne,SymbolOne,SymbolZero];
receivedAllZeros    = [SymbolZero,SymbolZero,SymbolZero,SymbolZero,...
                                SymbolZero,SymbolZero,SymbolZero,SymbolZero];
receivedAllOnes    = [SymbolOne,SymbolOne,SymbolOne,SymbolOne,...
                                SymbolOne,SymbolOne,SymbolOne,SymbolOne];                            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tS                  = (0:length(SymbolZero)-1)*1/Fs;    % t symbol
tR                  = (0:length(receivedSignal)-1)*1/Fs;% t received frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DecodingZero     = receivedSignal .* receivedAllZeros;
DecodingOne      = receivedSignal .* receivedAllOnes;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for k=1:(length(DecodingZero)/(sps/8))
    SymbolOffsets_Zero(((k-1)*(sps/8))+1:k*((sps/8)))...
        = mean(DecodingZero(((k-1)*(sps/8))+1:k*((sps/8))));
end
for k=1:(length(DecodingOne)/(sps/8))
    SymbolOffsets_One(((k-1)*(sps/8))+1:k*((sps/8)))...
        = mean(DecodingOne(((k-1)*(sps/8))+1:k*((sps/8))));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tRx            = (0:length(receivedSignal)-1)*1/Fs;

subplot(4,2,1);
plot(tRx,receivedSignal)
xlabel("Received signal: 1 0 0 1 0 1 1 0.");
axis([0*1/Fs 300*1/Fs -2 2]);

subplot(4,2,2);
plot(tRx,receivedSignal)
xlabel("Received signal: 1 0 0 1 0 1 1 0.");
axis([0*1/Fs 300*1/Fs -2 2]);

subplot(4,2,3);
plot(tRx,receivedAllZeros)
xlabel("All frequency Zeros symbols: 0 0 0 0 0 0 0 0.");
axis([0*1/Fs 300*1/Fs -2 2]);

subplot(4,2,4);
plot(tRx,receivedAllOnes)
xlabel("All frequency Ones symbols: 1 1 1 1 1 1 1 1.");
axis([0*1/Fs 300*1/Fs -2 2]);

subplot(4,2,5);
plot(tRx,DecodingZero)
xlabel("Decoding Zero symbols.");
axis([0*1/Fs 300*1/Fs -2 2]);

subplot(4,2,6);
plot(tRx,DecodingOne)
xlabel("Decoding One symbols.");
axis([0*1/Fs 300*1/Fs -2 2]);

subplot(4,2,7);
plot(tRx,SymbolOffsets_Zero)
xlabel("Each symbol mean calculation: decoding zeros symbols.");
axis([0*1/Fs 300*1/Fs -2 2]);

subplot(4,2,8);
plot(tRx,SymbolOffsets_One)
xlabel("Each symbol mean calculation: decoding ones symbols.");
axis([0*1/Fs 300*1/Fs -2 2]);
