clear;
clc;
close all;

f0                     =  76500;
f1                     =  85400;
fS                     =  4000000;
sps                    =  100;                          %Samples Per Symbol    
n                      =  0:(sps-1);
t                      =  n*1/fS;
SymbolZero             =  1 + sin(2*pi*f0*t);
SymbolZero_mean(1:sps) =  mean(SymbolZero(1:sps));
SymbolZero_delta       =  SymbolZero - SymbolZero_mean;

subplot(3,1,1);
stem(t, SymbolZero);
axis([-5*1/fS 105*1/fS -3 3]);
xlabel('Symbol of bit zero.');

subplot(3,1,2);
stem(t, SymbolZero_mean);
axis([-5*1/fS 105*1/fS -3 3]);
xlabel('Symbol_mean of bit zero.');

subplot(3,1,3);
stem(t, SymbolZero_delta);
axis([-5*1/fS 105*1/fS -3 3]);
xlabel('Symbol_delta of bit zero.');