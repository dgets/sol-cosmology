//animation work constants and the sort
//DGets
//started: 21 Jun 18

#include "sol-system/sol-body-constants.inc"

//general macros
#macro Set_Transit_Camera(StartX, StartY, StartZ, DestX, DestY, DestZ)
 //we're going to assume 10 frames of transit for each accelerated interval, 
 //which will be leaving 10 frames for different celestial body views from
 //close distance out of the original 200 frames; this will have to be dynamic 
 //in the future
 //#local Trav_Dist = sqrt(pow(DestX - StartX, 2) + pow(DestY - StartY, 2) + \
 //			 pow(DestZ - StartZ, 2))
 //that shouldn't be necessary

 #local XDist = (DestX - StartX) / 10
 #local YDist = (DestY - StartY) / 10
 #local ZDist = (DestZ - StartZ) / 10

 #for (interval, 0, 9)
  //get our coordinates
  camera {
	location  <StartX + (XDist * interval), StartY + (YDist * interval), \
	 	   StartZ + (ZDist * interval)>
	look_at   <DestX, DestY, DestZ>	//panning from start to dest would be
					//nice but I'm not doing that nao
  }
 #end	
#end

//1 = Sol
//2-5 = Inner Planets
//6 = Main 'Roid Belt
#declare Inner_System_Bodies = 6;

//Sol-Mercury Sequence Stuff
//--coordinates
#declare Sol_Start_X = 0;
#declare Sol_Start_Y = (SOL_DIAMETER * 2);
#declare Sol_Start_Z = (SOL_DIAMETER * -3);
#declare Sol_StartV = <Sol_Start_X, Sol_Start_Y, Sol_Start_Z);
#declare Sol_LocationV = Sol_StartV

#declare Sol_End_X = (MERCURY_AVG_DIST / 2);
#declare Sol_End_Y = INNER_PLANETS_CAMERA_DISTANCE_ABOVE;
#declare Sol_End_Z = (INNER_PLANETS_CAMERA_DISTANCE_BEHIND / 2);
#declare Sol_EndV = <Sol_End_X, Sol_End_Y, Sol_End_Z>;

//--deltas
#declare Sol_Cam_Delta_X = ((Sol_End_X - Sol_Start_X) / 
			    (Inner_System_Bodies * 2));
#declare Sol_Cam_Delta_Y = ((Sol_End_Y - Sol_Start_Y) /
			    (Inner_System_Bodies * 2));
#declare Sol_Cam_Delta_Z = ((Sol_End_Z - Sol_Start_Z) /
			    (Inner_System_Bodies * 2));

//--coordinates
#declare Sol_Start_Look_At_X = (SOL_DIAMETER / 2);
#declare Sol_Start_Look_At_Y = (SOL_DIAMETER / 2);
#declare Sol_Start_Look_At_Z = (SOL_DIAMETER / -2);
#declare Sol_Start_Look_AtV = <Sol_Start_Look_At_X, Sol_Start_Look_At_Y,
                               Sol_Start_Look_At_Z>;

#declare Sol_End_Look_At_X = MERCURY_AVG_DIST;
#declare Sol_End_Look_At_Y = (MERCURY_DIAMETER / 2);
#declare Sol_End_Look_At_Z = (MERCURY_DIAMETER / -2);
#declare Sol_End_Look_AtV = <Sol_End_Look_At_X, Sol_End_Look_At_Y,
                             Sol_End_Look_At_Z>;

//--deltas
//NOTE: I think that, at this point, it may be easier to just have a scheme
//used for rolling the camera viewpoint roughly 180 degrees while it's
//travelling from Sol to the midpoint to Mercury; then we can just have a
//clock value modified amount to multiply by a rotate on the camera's look_at
//
//that's the theory, anyway, when I start working on this a bit more

//Mercury-Venus Sequence



//skipping the above right now for a different method being tested
//NOTE: This makes adjustments from the center to put it onto the surface of
//the sphere
#declare Pluto_Location_X = PLUTO_AVG_DIST - (PLUTO_DIAMETER / 2)
#declare Pluto_Location_Y = PLUTO_DIAMETER / -2
#declare Pluto_Location_Z = PLUTO_DIAMETER / -2
#declare Pluto_LocationV = <PLUTO_AVG_DIST - (PLUTO_DIAMETER / 2),
			    (PLUTO_DIAMETER / -2),
			    (PLUTO_DIAMETER / -2)>
