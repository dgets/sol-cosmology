//animation work constants and the sort
//DGets
//started: 21 Jun 18

#include "sol-system/sol-body-constants.inc"

//1 = Sol
//2-5 = Inner Planets
//6 = Main 'Roid Belt
#declare Inner_System_Bodies = 6;

//Sol-Mercury Sequence Stuff
//--coordinates
#declare Sol_Start_X = 0;
#declare Sol_Start_Y = (SOL_DIAMETER * 2);
#declare Sol_Start_Z = (SOL_DIAMETER * -3);

#declare Sol_End_X = (MERCURY_AVG_DIST / 2);
#declare Sol_End_Y = INNER_PLANETS_CAMERA_DISTANCE_ABOVE;
#declare Sol_End_Z = (INNER_PLANETS_CAMERA_DISTANCE_BEHIND / 2);

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

#declare Sol_End_Look_At_X = MERCURY_AVG_DIST;
#declare Sol_End_Look_At_Y = (MERCURY_DIAMETER / 2);
#declare Sol_End_Look_At_Z = (MERCURY_DIAMETER / -2);

//--deltas
//NOTE: I think that, at this point, it may be easier to just have a scheme
//used for rolling the camera viewpoint roughly 180 degrees while it's
//travelling from Sol to the midpoint to Mercury; then we can just have a
//clock value modified amount to multiply by a rotate on the camera's look_at
//
//that's the theory, anyway, when I start working on this a bit more

//Mercury-Venus Sequence

