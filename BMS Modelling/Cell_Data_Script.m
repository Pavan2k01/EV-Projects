Current = xlsread("Current.xlsx");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%KOKAM SLPB70205130P CELL DATA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
T_amb           = 20;                                    % Ambient Temperature in degree celcius
Q_init          = 12000;                                 % Charge Capacity in mAh
cell_length     = 0.130;                                 % height of cell
cell_width      = 0.206;                                 % width of the cell
cell_thickness  = 0.0070;                                % thickness of cell 
cell_area       = cell_length*cell_width;                % area of the cell
cell_volume     = cell_length*cell_width*cell_thickness; % volume of the cell
cell_mass       = 0.354;                                 % Mass of Cell in Kg
cell_cp_heat    = 830;                                   % Specific Heat in J/Kg.K
h_conv          = 10;                                    % Convective Heat Transfer Coeff in W/m^2.K
T_init          = 293.15;                                % Ambient Temp in Kelvin

%%%%%%%%%%%%%%%%%%%%%%
%LOOKUP TABLE DATA
%%%%%%%%%%%%%%%%%%%%%%
SOC_LUT         = [0;0.1;0.25;0.5;0.75;0.9;1.0];
Temperature_LUT = [278.15,293.15,313.15];
Capacity_LUT    = [28.01,27.63,27.64];
R0_LUT          = [0.0117,0.0085,0.0090;0.0110,0.0085,0.0090;
                   0.0114,0.0087,0.0092;0.0107,0.0082,0.0088;
                   0.0107,0.0083,0.0091;0.0113,0.0085,0.0089;
                   0.0116,0.0085,0.0089];  
C1_LUT          = [1913.6,12447,30609;
                   4625.7,18872,32995;
                   23306,40764,47535;
                   10736,18721,26325;
                   18036,33630,48274;
                   12251,18360,26839;
                   9022.9,23394,30606];
R1_LUT          = [0.0109,0.0029,0.0013;0.0069,0.0024,0.0012;
                   0.0047,0.0026,0.0013;0.0034,0.0016,0.0010;
                   0.0033,0.0023,0.0014;0.0033,0.0018,0.0011;
                   0.0028,0.0017,0.0011];
Em_LUT          = [3.49,3.51,3.52;3.55,3.56,3.56;
                   3.62,3.64,3.64;3.71,3.71,3.72;
                   3.91,3.93,3.94;4.07,4.08,4.08;
                   4.19,4.19,4.19];