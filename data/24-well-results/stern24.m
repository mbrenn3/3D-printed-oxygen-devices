clear
load Results120514.csv
Results = Results120514;
r = reshape(Results(:,3), rows(Results)/24, 24);
%save r.csv r
ss_mean = mean(r(1:10,:));
amb_mean = mean(r(15:18,:));
intensities = [ss_mean;zeros(1,columns(r));amb_mean;(ones(1,columns(r)))*21;r(11:rows(r),:)];

number_of_wells = columns (intensities); % finds the number of columns in the matrix
a = zeros (size (intensities)-4);
b=0;
i=1;
for i = 1:columns (intensities)
   b=b+1;
   well = intensities(:,i);
   calibration_intensity1 = well(1);
   calibration_intensity2 = well(3);
   calibration_measurment1 = well(2);
   calibration_measurment2 = well(4);

   kt = (calibration_intensity2-calibration_intensity1)/((calibration_measurment1*calibration_intensity1)-(calibration_measurment2*calibration_intensity2)); % calculation for Ktau

   I0 = (1+kt*calibration_measurment1)*calibration_intensity1; % intensity in absence of quencher(0% O2)

   %x1 = 0:1:100;              % makes x values for plot of stern-volmer
   %y1 = I0./(1+kt*x1);        % plots stern-volmer. Check to see if its fitting your calibration points.

%plot(y1,x1); % added
   int = well(5:rows(well),:);
   calculated_percent = ((I0./int-1))/kt;
   c1 = calculated_percent;

   for n = 1:1

     adjusted_tau = 0.0292*calculated_percent + 1.022 ; 
     adjusted_percent = ((I0./int)-1)/(kt*adjusted_tau(i));
     calculated_percent = adjusted_percent;
     n = n+1;

   endfor

a(:,i) = adjusted_percent;

endfor

%eval = a(5:rows(a),:);


save -ascii new.csv a