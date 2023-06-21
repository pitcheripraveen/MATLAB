clc;
clear all;
close all;
ht=30; % Height of the transmitter
hr=3; % Height of the receiver
d=1:5:100; % Distance in Km
%---------------------------For small and medium city--------------------%
f1=100; % Frequency in MHz
cf_medium=((1.1)*log(f1)-0.7)*hr-((1.566)*log(f1)-0.8); % Correction factor
PL_medium=69.55+((26.26)*log(f1))-((13.82)*log(ht))-(cf_medium)+(44.9-6.55*log(ht))*log(d); % Path loss
figure(1);
plot(d,PL_medium,'b-*','LineWidth',1)
xlabel("Distance between Trandmitter and Receiver (d) in Km");
ylabel("Path loss in dB");
title("Path loss with Hata model for small or Medium city");
grid on;
%----------- For Large city with Frequency<=300Mhz--------------------------------------------------------------------%
f2=200; % Frequency in MHz
cf_large1=(8.29*(log(1.54)*hr).^2-1.1);  % Correction factor
PL_large1=69.55+(26.26)*log(f2)-(13.82)*log(ht)-cf_large1+((44.9-(6.55)*log(ht)))*log(d); % Path loss 
figure(2);
plot(d,PL_large1,'r-o','LineWidth',1)
xlabel("Distance between Trandmitter and Receiver (d) in Km");
ylabel("Path loss in dB");
title("Path loss with Hata model in Large city for frequency <=300MHz");
grid on;
%--------------------For Large city with Frequency >=300MHz
f3=350; % Frequency in MHz
cf_large2=(3.2*(log(11.75)*hr).^2-4.97); % Correction factor
PL_large2=69.55+(26.26)*log(f3)-(13.82)*log(ht)-cf_large2+((44.9-(6.55)*log(ht)))*log(d); % Path loss
figure(3);
plot(d,PL_large2,'m-+','LineWidth',1)
xlabel("Distance between Trandmitter and Receiver (d) in Km");
ylabel("Path loss in dB");
title("Path loss with Hata model in Large city for frequency >=300MHz");
grid on;

