//the 'sol' system's size/distance constants
//by: Damon Getsman
//started: 17 Jun 18

//data has been taken from https://www.bobthealien.co.uk/solarsystem/table.htm

//NOTE: I am doing the original constant data in miles due to the postulated
//(but not yet verified) relationship of the imperial system of measurement to
//the original sumerian counting system, where the ratios of all of this data
//are allegedly to break down into the 'significant number' ratios
//
//time values are expressed in earth days, except where otherwise noted

//other necessary constants
//earth
#declare EARTH_DAY_IN_HOURS = 23 + (56 / 60);
#declare EARTH_DAY_IN_MINUTES = EARTH_DAY_IN_HOURS * 60;
#declare EARTH_YEAR_IN_DAYS = 365.25;

//misc constants
#declare AU = 92960000;
#declare INNER_PLANETS_CAMERA_DISTANCE_ABOVE = 4000;
#declare INNER_PLANETS_CAMERA_DISTANCE_BEHIND = -20000;

//sol
#declare SOL_DIAMETER = 864938;

//inner/rocky planetary bodies
//mercury
#declare MERCURY_AVG_DIST = 36000000;
#declare MERCURY_DIAMETER = 3031;
#declare MERCURY_DAY = 59;
#declare MERCURY_YEAR = 88;

//venus
#declare VENUS_AVG_DIST = 67000000;
#declare VENUS_DIAMETER = 7521;
#declare VENUS_DAY = 243;
#declare VENUS_YEAR = 224;

//earth
#declare EARTH_AVG_DIST = AU;	//92960000;
#declare EARTH_DIAMETER = 7926;
#declare EARTH_DAY = 0.9333;
#declare EARTH_YEAR = 365.25;
//earth's moon
#declare EARTH_MOON_ORBIT = 27.3;
#declare EARTH_MOON_AVG_DISTANCE_FROM_EARTH = 238855;
#declare EARTH_MOON_DIAMETER = 2159;
#declare EARTH_MOON_CIRCUMFERENCE = 6783;

//mars
#declare MARS_AVG_DIST = 141700000;
#declare MARS_DIAMETER = 4222;
#declare MARS_DAY = 1.6167;
#declare MARS_YEAR = 687;

//NOTE: don't forget to add the asteroid belt data here
//Also, I hate to throw in a discontinuity, but I believe I'm going to switch
//to doing the day/year computation in here so that others can feel free to
//check for errors in my calculations (unlike just adding the decimals that
//I'm pulling out of the calculator here, as I was doing above)

//main asteroid belt
//NOTE: I noticed some conflicting facts from various sources regarding the
//different dimensions of the main asteroid belt; this should probably be
//researched a bit further at some point in the future
//NOTE: C/S/M-type asteroids reside at different minor radii within the main
//belt, as well
#declare MAIN_ASTEROID_BELT_INNER_RADIUS = AU * 2.2;
#declare MAIN_ASTEROID_BELT_OUTER_RADIUS = AU * 3.2;
#declare MAIN_ASTEROID_BELT_MINOR_RADIUS = 
  ((MAIN_ASTEROID_BELT_OUTER_RADIUS - MAIN_ASTEROID_BELT_INNER_RADIUS) / 2);
#declare MAIN_ASTEROID_BELT_MAJOR_RADIUS = MAIN_ASTEROID_BELT_INNER_RADIUS +
  MAIN_ASTEROID_BELT_MINOR_RADIUS;
//NOTE: this would leave the torus width @ 1 AU, obviously; however, space.com
//insists that the belt is 140,000,000mi across :P
//NOTE: [final] it may be worth researching the 'Kirkwood Gaps' caused by the
//orbital resonances with Jupiter, if plotting this in more existing detail

//outer/gaseous 'giant' planetary bodies
//jupiter
#declare JUPITER_AVG_DIST = 483500000;
#declare JUPITER_DIAMETER = 88846;
#declare JUPITER_DAY = ((9 * 60) + 55) / (EARTH_DAY_IN_HOURS * 60);
#declare JUPITER_YEAR = 11.86;	//decimal taken from the source listed

//saturn
#declare SATURN_AVG_DIST = 888750000;
#declare SATURN_DIAMETER = 74900;
#declare SATURN_DAY = ((10 * 60) + 39) / EARTH_DAY_IN_MINUTES;
#declare SATURN_YEAR = 29;

//uranus
#declare URANUS_AVG_DIST = 1783744300;
#declare URANUS_DIAMETER = 31763;
#declare URANUS_DAY = ((17 * 60) + 14) / EARTH_DAY_IN_MINUTES;
#declare URANUS_YEAR = 84;

//neptune
#declare NEPTUNE_AVG_DIST = 2797770000;
#declare NEPTUNE_DIAMETER = 30779;
#declare NEPTUNE_DAY = ((16 * 60) + 7) / EARTH_DAY_IN_MINUTES;
#declare NEPTUNE_YEAR = 164.8;

//'dwarf' planetary bodies
//pluto
//NOTE: eccentric orbit changes the AVG_DIST data format & constant names
//at some point it would be very helpful to obtain the full ellipse data
#declare PLUTO_MIN_DIST = 275690200;
#declare PLUTO_MAX_DIST = 4583190000;
#declare PLUTO_DIAMETER = 1473;
#declare PLUTO_DAY = ((6 * 3600) + (9 * 60)) / EARTH_DAY_IN_MINUTES;
#declare PLUTO_YEAR = 248;

//ceres
#declare CERES_AVG_DIST = 257031000;
#declare CERES_DIAMETER = 590;
#declare CERES_DAY = ((9 * 60) + 5) / EARTH_DAY_IN_MINUTES;
#declare CERES_YEAR = 4 + (220 / EARTH_YEAR);



