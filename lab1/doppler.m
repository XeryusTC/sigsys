v = 50; # ambulance speed in m/s
Fs = 8000;
dt = 1/Fs;
f = 400;

signal = zeros(Fs, 1);

df = 343.2 / (343.2 - v) * f;
signal(1:2.5*Fs) = gensinusoid(10, df, 0, 0, 2.5-dt, Fs);


df = 343.2 / (343.2 + v) * f;
signal(2.5*Fs:5*Fs) = gensinusoid(10, df, 0, 2.5, 5, Fs);
