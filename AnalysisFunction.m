function [Resistance, AverageVoltage, AverageRPM, Power]= AnalysisFunction(R,V,RPM)
count = 1;
for i=1:5:length(R)
  Resistance(count) = R(i);
  AverageVoltage(count) = (V(i)+V(i+1)+V(i+(2)+V(i+3)+V(i+4))/5;
  AverageRPM(count) = (RPM(i)+RPM(i+1)+RPM(i+2)+RPM(i+3)+RPM(i+4)/5);
  count = count+1;
end
Power=AverageVoltage.*AverageVoltage./Resistance;
