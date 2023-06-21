clc;
clear all;
close all;
%-----------Input section------------------------
Pt=5; % Input - Transmitted power in dB
Gt=2; % Gain of the Transmitted antenna in dBi
Gr=3; % Gain of the Receiver antenna in dBi
d =1:1:100; % Array of input distances in meters
L=1; % Other System Losses
f=2.4e9; % Transmitted signal frequency in Hertz (2.4G WiFi)
lambda=(3*10^8)/f; % Wavelength in meters
Pr1=Pt+Gt+Gr+(20)*log10(lambda)-(20)*log10(4*pi*d)-L;
PL1=Pt-Pr1;
plot(d,PL1,'b-*','LineWidth',2);
xlabel("Distance between Transmitter and Receiver (d) in meters");
ylabel("Path loss in dB");
grid on;