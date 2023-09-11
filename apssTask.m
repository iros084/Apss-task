mass = 1.33;
corss_section_area = 0.060;
area_surface = 0.010;
emissivity = 0.9;
Albedo = 0.35;
temerature = -18.15;
absorbitivity = 0.52;


Stefan_Boltzmann = 5.67e-8;
constant_solar_flux = 1354;

earth_rad = 6378;
alt = 500;

solar_heat_flux = constant_solar_flux*absorbitivity*area_surface;
disp(solar_heat_flux);


