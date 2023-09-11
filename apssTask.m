%collecting nessesacy data for calculating the equlibrium temperature.
mass = 1.33;
cross_section_area = 0.060;
area_surface = 0.010;
emissivity = 0.9;
Albedo = 0.35;
absorbitivity = 0.52;
internal_heat = 6.9684;

%constants
Stefan_Boltzmann = 5.67e-8;
constant_solar_flux = 1354;
earth_IR_temp = 255;

%distances between the earth and salalite.
earth_rad = 6378;
alt = 500;
dist = (earth_rad + alt)*1000;
dist_to_sun = 149.6e6 * 1000;


%calculating the amount of direct heat absorved by the sun.
qsolar_flux = absorbitivity*constant_solar_flux*cross_section_area;

%calculating the amount of energy absorbed by the sun on earth
qsolar_earth = constant_solar_flux * pi * (earth_rad * 1000)^2;

%calculating the energy absorbed by the earth reflected back at the salalite.
qalbedo = Albedo*qsolar_earth;




equilibrium_temperature = ((qsolar_flux * (1 - Albedo) * cross_section_area) + internal_heat) / (emissivity * cross_section_area * 4 * pi * dist^2 * Stefan_Boltzmann)^(1/4);

disp(equilibrium_temperature);


