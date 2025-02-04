load data/101514/intensities.csv %loads data into matrix named intensities must be comma delimited

%%%%%% divide matrix into column vectors according to wells

z1 = intensities(:,1);
z2 = intensities(:,2);
z3 = intensities(:,3);
z4 = intensities(:,4);
z5 = intensities(:,5);
z6 = intensities(:,6);

% make a matrix named "z" with calibration intensities and percents for
% the first 4 elements( I1, %1, I2, %2, exp intensities) 

I1 = z1(1);
I11 = z1(3);
X1 = z1(2);
X11 = z1(4);

kt1 = (I11-I1)/((X1*I1)-(X11*I11)); % calculation for Ktau
I01 = (1+kt1*X1)*I1;              % intensity in absence of quencher(0% O2)

percent1 = ((I01./z1)-1)/kt1;

%%%%%%%%%%%%%%%%%%%%%%%%% WELL 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%

I2 =  z2(1);
I22 = z2(3);
X2 =  z2(2);
X22 = z2(4);

kt2 = (I22-I2)/((X2*I2)-(X22*I22)); % calculation for Ktau
I02 = (1+kt2*X2)*I2;              % intensity in absence of quencher(0% O2)


percent2 = ((I02./z2)-1)/kt2;

%%%%%%%%%%%%%%%%%%%%%%%%% WELL 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%

I3 =  z3(1);
I33 = z3(3);
X3 =  z3(2);
X33 = z3(4);

kt3 = (I33-I3)/((X3*I3)-(X33*I33)); % calculation for Ktau
I03 = (1+kt3*X3)*I3;              % intensity in absence of quencher(0% O2)


percent3 = ((I03./z3)-1)/kt3;

%%%%%%%%%%%%%%%%%%%%%%%%% WELL 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%

I4 =  z4(1);
I44 = z4(3);
X4 =  z4(2);
X44 = z4(4);

kt4 = (I44-I4)/((X4*I4)-(X44*I44)); % calculation for Ktau
I04 = (1+kt4*X4)*I4;              % intensity in absence of quencher(0% O2)


percent4 = ((I04./z4)-1)/kt4;

%%%%%%%%%%%%%%%%%%%%%%%%% WELL 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%

I5 =  z5(1);
I55 = z5(3);
X5 =  z5(2);
X55 = z5(4);

kt5 = (I55-I5)/((X5*I5)-(X55*I55)); % calculation for Ktau
I05 = (1+kt5*X5)*I5;              % intensity in absence of quencher(0% O2)


percent5 = ((I05./z5)-1)/kt5;

%%%%%%%%%%%%%%%%%%%%%%%%% WELL 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%

I6 =  z6(1);
I66 = z6(3);
X6 =  z6(2);
X66 = z6(4);

kt6 = (I66-I6)/((X6*I6)-(X66*I66)); % calculation for Ktau
I06 = (1+kt6*X6)*I6;              % intensity in absence of quencher(0% O2)


percent6 = ((I06./z6)-1)/kt6;

%%% save analyzed data into new matrix stripping off first four elements that had calibration data

percents = [percent1(5:end), percent2(5:end), percent3(5:end), percent4(5:end),  percent5(5:end),  percent6(5:end)];

%%% print data to a file

save -ascii data/101514/analyzed.txt percents
