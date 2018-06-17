//test scene for cosmology POV project
//by: Damon Getsman
//started: 17 Jun 18

#include "colors.inc"
#include "shapes.inc"
#include "finish.inc"

#include "sol-system/sol-body-constants.inc"
#include "sol-system/heavenly_bodies.pov"

//camera angles
//first is a camera angle above the solar system plane, looking down, from
//about earth's distance
//camera {
//  location <0, EARTH_AVG_DIST, 1>
//  look_at <100000, 0, 0>
//}

//aaand since that camera isn't doing SHIT, let's try another one
camera {
  location <0, 90000, 200000>
  look_at <MERCURY_AVG_DIST, 0, 0>
}

//doing a plane in the system's equatorial for testing purposes
//there must be a way to make it a certain percentage transparent...
plane {
  <0, 1, 0>, -1
  pigment { checker color White color Black }
  rotate y*45
  finish { Dull }
}

//lighting
//sol
light_source {
  <0, 0, 0>, color Yellow 
  looks_like {
    sphere {
  	<0, 0, 0>, SOL_DIAMETER
    }
  }
}

//lighting for mercury testing
//light_source {
//  <0, MERCURY_DIAMETER * 2, 0>, 
//  color White
//}

//misc for testing
light_source {
  <10000, 1000000, -10000>, color White 
}

//heavenly bodies
//mercury
object {
  Mercury
  scale <10, 10, 10>
  translate <MERCURY_AVG_DIST / 50, 0, 0>
}

