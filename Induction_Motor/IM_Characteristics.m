clear all;
close all;
clc
V = 400/sqrt(3); %Applied Voltage
Ph = 3; %No.of Phases
P = 4; %No.of Poles
R1 = 0.2; %Stator Resistance in Ohms
R2 = 0.2; %Rotor Resistance in Ohms
X1 = 0.1; %Stator Resistance in Ohms
X2 = 0.1; %Rotor Resistance in Ohms
f = [50:10:150]; %Frequency Range From 50Hz to 150Hz in the interval of 25Hz
i = length(f);
for x=1:i
    Ws = 4*pi*f(x)/P;
    Ns = 120*f(x)/P;
    for n = 1:200
        s = n/200;
        N(n) = Ns*(1-s);
        Zeq = (R1+R2*(1-s)/s)+(X1+X2);
        T(n) = 3*((V^2)*(R2/s))/(Ws*((R1+(R2/s)^2))+((X1+X2)^2));
    end
    plot(N,T);
    hold on;
    grid on;
    title('Torque vs Speed Characteristic of Induction Motor');
    xlabel('RPM');
    ylabel('Torque(N-M)');
    legend('50Hz', '60Hz', '70Hz', '80Hz', '90Hz', '100Hz', '110Hz', '1200Hz', '130Hz', '140Hz', '150Hz');
end