//test scene for cosmology POV project
//by: Damon Getsman
//started: 17 Jun 18

#include "colors.inc"
#include "shapes.inc"
#include "finish.inc"

#include "sol-system/sol-body-constants.inc"
#include "sol-system/heavenly_bodies.pov"
#include "anim/include/anim.inc"

#if (clock_on = 0)
  //camera angles
  //first is a camera angle above the solar system plane, looking down, towards
  //the eastern limb of sol, from 4m miles
  //--Sol Camera 1--
  //camera {
  //  location <0, 500000, -4000000>
  //  look_at <800000, 0, 0>
  //}

  //--Mercury Camera 1--
  //camera {
  //  location <(MERCURY_AVG_DIST * 1), INNER_PLANETS_CAMERA_DISTANCE_ABOVE, 
  //	    (INNER_PLANETS_CAMERA_DISTANCE_BEHIND / 2)>
  //  look_at <MERCURY_AVG_DIST, 0, (MERCURY_DIAMETER / 2)>
  //}

  //--Mercury Camera 2-- (looking downish)
  //camera {
  //  location <

  //--Venus Camera 1--
  //camera {
  //  location <(VENUS_AVG_DIST * 1), (INNER_PLANETS_CAMERA_DISTANCE_ABOVE * 2.75),
  //	    INNER_PLANETS_CAMERA_DISTANCE_BEHIND>
  //  look_at <VENUS_AVG_DIST, (VENUS_DIAMETER / 2), (VENUS_DIAMETER / 2)>
  //}

  //--Venus Camera 2-- (looking downish)
  //camera {
  //  location <VENUS_AVG_DIST, (INNER_PLANETS_CAMERA_DISTANCE_ABOVE +
  //	    (VENUS_DIAMETER / 2)), 0>
  //  look_at <VENUS_AVG_DIST, (VENUS_DIAMETER / 2), (VENUS_DIAMETER / 2)>
  //}

  //--Earth Cam 1--
  //camera {
  //  location <EARTH_AVG_DIST, (INNER_PLANETS_CAMERA_DISTANCE_ABOVE * 2.75),
  //	    INNER_PLANETS_CAMERA_DISTANCE_BEHIND>
  //  look_at <EARTH_AVG_DIST, (EARTH_DIAMETER / 2), (EARTH_DIAMETER / 2)>
  //}

  //--Mars Camera 1--
  //camera {
  //  location <MARS_AVG_DIST, (INNER_PLANETS_CAMERA_DISTANCE_ABOVE * 2),
  //	    INNER_PLANETS_CAMERA_DISTANCE_BEHIND>
  //  look_at <MARS_AVG_DIST, (MARS_DIAMETER / 2), (MARS_DIAMETER / 2)>
  //}

  //--Main 'Roidbelt Camera 1--
  camera {
    location <(MAIN_ASTEROID_BELT_MAJOR_RADIUS * 0.65), 
	    (MAIN_ASTEROID_BELT_MINOR_RADIUS * 2), 0>
    look_at <MAIN_ASTEROID_BELT_MAJOR_RADIUS,
	   MAIN_ASTEROID_BELT_MINOR_RADIUS,
	   0>
  }
#else
  //animation camera work
  #if (clock <= (1 / Inner_System_Bodies))
    //let's get some frames of Sol-Mercury sequence
      #if (clock <= (1 / (Inner_System_Bodies * 2)))
	//looking at Sol while moving away
	camera {
	  location <(Sol_Start_X + (Sol_Cam_Delta_X * frame_number)),
		    (Sol_Start_Y + (Sol_Cam_Delta_Y * frame_number)),
		    (Sol_Start_Z + (Sol_Cam_Delta_Z * frame_number))>
	  look_at <Sol_Start_Look_At_X,
		   Sol_Start_Look_At_Y,
		   Sol_Start_Look_At_Z>
	}
      #else
	//looking at Mercury while approaching
	//NOTE: I think that this is going to start WAAAAAY too early, as
	//we'll only be about 1/4th of the way from Sol to Mercury, amirite?
	camera {
	  location <(Sol_Start_X + (Sol_Cam_Delta_X * frame_number)),
		    (Sol_Start_Y + (Sol_Cam_Delta_Y * frame_number)),
		    (Sol_Start_Z + (Sol_Cam_Delta_Z * frame_number))>
	  look_at <Sol_End_Look_At_X,
		   Sol_End_Look_At_Y,
		   Sol_End_Look_At_Z>
	}
      #end

  #end

#end

//accessory light source
light_source {
  <(MAIN_ASTEROID_BELT_MAJOR_RADIUS * 0.94),
   (MAIN_ASTEROID_BELT_MINOR_RADIUS * 1.1), 0>, color White
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
  pigment { checker color DarkSlateGray color Black }
  rotate y*45
  //it might be nice to scale this up so that from long expanses the checker-
  //board can be used for reference somewhat
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
  <(MERCURY_AVG_DIST / 2) + SOL_DIAMETER, 0, 0>, color White
}

//between mercury & venus
light_source {
  <((VENUS_AVG_DIST - MERCURY_AVG_DIST) / 2) + MERCURY_AVG_DIST, 0, 0>,
    color White
}

//between venus & earth
light_source {
  <((EARTH_AVG_DIST - VENUS_AVG_DIST) / 2) + VENUS_AVG_DIST, 0, 0>,
    color White
}

//between earth & mars
light_source {
  <((MARS_AVG_DIST - EARTH_AVG_DIST) / 2) + EARTH_AVG_DIST, 0, 0>,
    color White
}

//between mars & main asteroid belt
light_source {
  <((MAIN_ASTEROID_BELT_MAJOR_RADIUS - MARS_AVG_DIST) / 2) + MARS_AVG_DIST,
   0, 0>,
    color White
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

//inner/rocky planets
object {
  Mercury
  //the following was for testing, obviously
  //scale <10, 10, 10>
  translate <MERCURY_AVG_DIST, 0, 0>
}

object {
  Venus
  //scale <10, 10, 10>
  translate <VENUS_AVG_DIST, 0, 0>
}

object {
  Earth
  translate <EARTH_AVG_DIST, 0, 0>
}

object {
  Mars
  translate <MARS_AVG_DIST, 0, 0>
}

//asteroid belt
object {
  Main_Asteroid_Belt
  //should not need to be translated due to proper creation about the origin
}


