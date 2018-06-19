//heavenly bodies
//by: Damon Getsman
//started: 17 Jun 18

#include "colors.inc"
#include "sol-system/sol-body-constants.inc"

//sol
#declare Sol = object {
  sphere {
    <0, 0, 0>, SOL_DIAMETER
    pigment {
	color Yellow
    }
  }
}

//mercury
#declare Mercury = object {
  sphere {
    <0, 0, 0>, MERCURY_DIAMETER
    pigment {
	color OrangeRed
    }
  }
}

//venus
#declare Venus = object {
  sphere {
    <0, 0, 0>, VENUS_DIAMETER
    pigment {
	color ForestGreen
    }
  }
}

//earth
#declare Earth = object {
  sphere {
    <0, 0, 0>, EARTH_DIAMETER
    pigment {
	color DarkTurquoise
    }
  }
}

//mars
#declare Mars = object {
  sphere {
    <0, 0, 0>, MARS_DIAMETER
    pigment {
	color Scarlet
    }
  }
}

//asteroid belt
#declare Main_Asteroid_Belt = object {
  torus {
    MAIN_ASTEROID_BELT_MAJOR_RADIUS, MAIN_ASTEROID_BELT_MINOR_RADIUS
    rotate -90*x
    pigment {
	color Brown
    }
  }
}

