addpath('F:\Backup\Fahim\thesis\code\EnergyMinimization\code\2DPlane3D\')

clear
clc

p00 = [781, 496];
p01 = [816, 516];

p10 = [513, 528];  %[786, 495];
p11 = [497, 541];  %[825, 515];

[vp, vp_unnorm] = computeVP(p00, p01, p10, p11)
