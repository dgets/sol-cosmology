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
camera {
  location <0, EARTH_AVG_DIST, 1>
  look_at <100000, 0, 0>
}

//doing a plane in the system's equatorial for testing purposes
plane {
  <0, 1, 0>, -1
  pigment { checker color White color Black }
  rotate y*45
  finish { Dull }
}

//lighting
//sol
light_source {
  <0, 0, 0>, Yellow
  //looks_like {
  //  sphere {
  //	<0, 0, 0>, SOL_DIAMETER
  //  }
  //}
}

//misc for testing
light_source {
  <10000, 1000000, -10000>, White
}

//heavenly bodies
//mercury
object {
  Mercury
  translate <MERCURY_AVG_DIST, 0, 0>
}

