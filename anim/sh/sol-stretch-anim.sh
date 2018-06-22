#!/bin/sh
NICE=`which nice`
POV=`which povray`

$NICE $POV +KI0.0 +KF0.08334 cosmo-testing-anim.ini

