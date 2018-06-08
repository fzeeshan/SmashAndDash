
if global.paused == 1{exit;}
var fric;
fric = 1
if hspeed > 0
    {if hspeed -fric > 0 {hspeed -=fric} else {hspeed = 0}}
 
if hspeed < 0
    {if hspeed +fric < 0 {hspeed +=fric} else {hspeed = 0}}
