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


