//linear-n-stead-test.pov
//by: Damon Getsman
//started: 14 Dec 18
//
//
//Just a path through the solar system for the cameras, with the different
//bodies placed at scale accurate distances.

#include "sol-system/sol-body-constants.inc"
#include "anim/include/anim.inc"

#declare JourneyStartV = Sol_LocationV
#declare JourneyEndV = Pluto_LocationV

//lighting
//above Sol
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

//misc for testing
//light_source {
//  <10000, 1000000, -10000>, color White
//}

//just a few things to set up (move these to the right location later)
#declare X_Journey_Interval = (Pluto_Location_X - Sol_Start_X) * frame_number
#declare Y_Journey_Interval = (Pluto_Location_Y - Sol_Start_Y) * frame_number
#declare Z_Journey_Interval = (Pluto_Location_Z - Sol_Start_Z) * frame_number

//here's where we're going to try the new functionality with the camera
//viewpoint animation macro and the like...
#declare ViewOrTransit = 1	//1 for view, -1 for transit
#declare tmpFromMod = mod(frame_number, 20)
#if (tmpFromMod = 0)
  #declare ViewOrTransit = ViewOrTransit * -1
#end

#if (ViewOrTransit = -1)
  //we're in transit
  Set_Transit_Camera(Sol_Start_X, Sol_Start_Y, Sol_Start_Z, 
		     Pluto_Location_X, Pluto_Location_Y, Pluto_Location_Z)
#else
  //we're looking at one of the bodies
  //stub code for now
  camera {
	location <Sol_Start_X + (X_Journey_Interval), 
		  Sol_Start_Y + (Y_Journey_Interval),
		  Sol_Start_Z + (Z_Journey_Interval)>
	look_at <Sol_Start_X>	//simple enough for testing purposes
  }
#end

//Sol
object {
	Sol
	//we're at the center, no translate needed
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

