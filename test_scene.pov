//test scene for cosmology POV project
//by: Damon Getsman
//started: 17 Jun 18

#include "colors.inc"
#include "shapes.inc"
#include "finish.inc"

#include "sol-system/sol-body-constants.inc"
#include "sol-system/heavenly_bodies.pov"

//camera angles
//first is a camera angle above the solar system plane, looking down, towards
//the eastern limb of sol, from 4m miles
camera {
  location <0, 500000, -4000000>
  look_at <800000, 0, 0>
}

//aaand since that camera isn't doing SHIT, let's try another one
//camera {
//  location <0, 90000, 200000>
//  look_at <MERCURY_AVG_DIST, 0, 0>
//}

//another sol test
//camera {
//  location <0, 500000, -2000000>
//  look_at <0, 0, 0>
//}

//doing a plane in the system's equatorial for testing purposes
//there must be a way to make it a certain percentage transparent...
plane {
  <0, 1, 0>, -1
  pigment { checker color White color Black }
  rotate y*45
  finish { Dull }
}

//lighting
//sol as light_source
//BUG: not working for whatever reason currently, so downgrading to a normal
//object with a standard light source
//light_source {
//  <0, 0, 0>, color Yellow 
//  looks_like {
//    sphere {
//  	<0, 0, 0>, SOL_DIAMETER
//	pigment { color Yellow }	//not sure about this...
//    }
//  }
//}

//above sol
light_source {
  <0, SOL_DIAMETER * 2, 0>, color White
}

//between sol & mercury
light_source {
  <MERCURY_AVG_DIST / 2, 0, 0>, color White
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
//sol
//NOTE: this is only until we get the light_source/looks_like working properly
object {
  Sol
  //(no translate necessary @ center of the system)_
}

//mercury
object {
  Mercury
  //the following was for testing, obviously
  //scale <10, 10, 10>
  translate <MERCURY_AVG_DIST / 50, 0, 0>
}

