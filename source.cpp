//**************************************************
//
// Arduino UNO Music Player
//
// Nick Shvelidze, 2013
//
// L. Shustek, 31 Jan 2011, initial release.
// L. Shustek, 27 Feb 2011, new score data
//
//**************************************************


#include <Playtune.h>

const !!MELODY!!

Playtune pt;

int val;

void setup() {
  // Enable pins
  pt.tune_initchan (5);
  pt.tune_initchan (6);
  //pt.tune_initchan (7);
  //pt.tune_initchan (8);
  //pt.tune_initchan (9);
  //pt.tune_initchan (10);
}

void loop () {
  pt.tune_playscore (score);  /* start playing */
  while (pt.tune_playing) ;   /* wait here until playing stops */
}
