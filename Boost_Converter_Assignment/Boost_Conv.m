P = input('Enter the desired Output Power (watt) : ');
Vin = input('Enter the Input Voltage (V) : ');
fs = input('Enter the Switching frequency (Hz) : ');
Vout = input('Enter the desired Output Voltage (V) : ');
%Calculations
Ioutmax = P/Vout;
delIL = 0.01*Ioutmax*(Vout/Vin);
delVout = 0.01*Vout;
L = (Vin*(Vout - Vin))/(delIL*fs*Vout);
C = (Ioutmax*(1-(Vin/Vout)))/(fs*delVout);
R = Vout/Ioutmax;
d = (Vout - Vin)/Vout;
%Displaying the Results
disp(['Inductor Value (L) : ',num2str(L),'H']);
disp(['Capacitor Value (C) : ',num2str(C),'F']);
disp(['Load Resistor Value (R) : ',num2str(R),'Ohms']);
disp(['Duty Cycle Value (d) : ',num2str(d)]);