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
#declare EARTH_DAY_IN_HOURS = 23 + (56 / 60);
#declare EARTH_YEAR_IN_DAYS = 365.25;

//planetary bodies
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
#declare EARTH_AVG_DIST = 92960000;
#declare EARTH_DIAMETER = 7926;
#declare EARTH_DAY = 0.9333;
#declare EARTH_YEAR = 365.25;

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

//jupiter
#declare JUPITER_AVG_DIST = 483500000;
#declare JUPITER_DIAMETER = 88846;
#declare JUPITER_DAY = ((9 * 60) + 55) / (EARTH_DAY_IN_HOURS * 60);
#declare JUPITER_YEAR = 11.86;	//decimal taken from the source listed


