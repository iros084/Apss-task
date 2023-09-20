% Collecting necessary data for calculating the equilibrium temperature.
mass = 1.33;
cross_section_area = 0.060;
area_surface = 0.010;
emissivity = 0.9;
Albedo = 0.35;
absorbitivity = 0.52;
internal_heat = 6.9684;

% Constants
Stefan_Boltzmann = 5.67e-8;
constant_solar_flux = 1354;
earth_IR_temp = 255;

% Distances between the Earth and satellite.
earth_rad = 6378000;  % Earth's radius in meters
alt = 500000;  % Altitude in meters

R = 6378000;  % Radius of the sphere
d = 6378000+5000;  % Distance from the flat surface to the sphere center

% Calculate the view factor
view_factor = 1 - sqrt(1 - (R / (R + d))^2);

% Calculating the amount of direct heat absorbed by the satellite.
qsolar_flux = absorbitivity * constant_solar_flux * area_surface*3;

% Calculating the energy absorbed by the Earth and reflected back at the satellite.
qalbedo = absorbitivity * area_surface * constant_solar_flux * Albedo * view_factor;

% Calculating the energy radiated by the Earth.
qIR = Stefan_Boltzmann * emissivity * area_surface * view_factor * earth_IR_temp;


disp(qsolar_flux);
disp(qalbedo);
disp(qIR);

% Calculating the equilibrium temperature.
equilibrium_temperature = ((qsolar_flux + qalbedo + qIR) / (emissivity * cross_section_area * Stefan_Boltzmann))^(1/4);

disp(equilibrium_temperature);