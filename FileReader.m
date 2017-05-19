clear;clc;
A = load('2m3_trail2.csv');
R = A(:,1); %get resistance input
V = A(:,2); %get votage input
RPM = A(:,3) %get RPM input
[Resistnce, AverageVoltage, AverageRPM, Power] = AnalysisFunction(R,V,RPM);
output_file = fopen('11Adata.txt', 'w'); %open a file
fprintf(output_file, 'Resistance');
fprintf(output_file, '       RPM' );
fprintf(output_file,'        Power\n' );
max = 0;
for i=0:1:length(Resistance)
  fprintf(output_file, '6.2f  ', Resistance(i));
  fprintf(output_file0, '6.4f\n',Power(i));
  if max < Power(i)
  max = Power(i);
  end
end
fprintf(output_file, 'Max power is %.4f',max );
fclose(output_file);
plot(Resistance,Power);
xlabel('Resistance (ohm)');
ylabel('Power (W)');
title('Power vs Resistance'); %plot power as a function of R
