clc;
clear all;
close all;
Pt=5; % Input transmitted power in dB
Gt=3; % Gain of the Transmitted antenna in dBi
Gr=2; % Gain of the Receiver antenna in dBi
f=2.4e9; % Transmitted signal frequency in Hertz
d0=1; % Let's assume the reference distance = 1Km
d=1:0.1:50; % Array of distances to simulate
L=2; % Other System Losses
sigma=15;% Standard deviation of log Normal distribution
n=3; % path loss exponent
lambda=3*10^8/f; % Wavelength in meters
Pr_d0=Pt+Gt+Gr+((20)*log10(lambda))-(20*log10(4*pi*d0))-L; % Received power at reference distance
PL_d0=Pt-Pr_d0; % Path loss at reference distance
X = sigma*randn(1,numel(d)); % Normal random variable
PL_d1=PL_d0+10*n*log10(d/d0);% Mean Path loss
PL_d2=PL_d0+10*n*log10(d/d0)+X;% Log Distance path loss model
plot(d,PL_d1,'r-o');
hold on;
xlabel("Distance between Transmitter and Receiver (d) in Km");
ylabel("Path loss in dB");
plot(d,PL_d2,'b-o');
grid on;
legend('Median Path loss','Path loss due to shadowing');
