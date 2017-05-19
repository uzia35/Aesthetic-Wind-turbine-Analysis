clear; clc;
keep = 'y';
count = 1;
density = 1.225; %airdensity
area = input('Enter the swept area of the wind turbine: '); %enter the sewpt area
windspeed = 2.2:0.2:3.6;

power = .5*1.225*windspeed. ^3*.05*area;
plot(windspeed, power, 'DisplayName', 'cp=5%'); %graph with efficiency 5%
hold on

power = .5*1.225*windspeed. ^3*.1*area;
plot(windspeed, power, 'DisplayName', 'cp=10%'); %graph with effieciency 10%
hold on


power = .5*1.225*windspeed. ^3*.0.2*area;
lot(windspeed, power, 'DisplayName', 'cp=10%'); %graph with effieciency 20%

xlabel('wind speed m/s');
ylabel('power p');
legend('show');
legned('location', 'northwest');
title('Expected Power for a Wind Turbine');
hold off

effieciency = input('Enter the efficiency of the turbine: ');% input effieciency
windpseed = input('Enter the wind speed: ') %input wind speed
power = .5*density*area*windspeed^*efficiency;
fprintf('The power is %.4f',power ); %display the power
