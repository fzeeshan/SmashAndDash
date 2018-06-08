///scr_room_cfade(room, steps, colour);

// Changes the current room to the given room over given amount of steps.
// Does this by drawing a rectangle across the screen and changing it's alpha.
// This causes a fade-effect in the given colour.

// room             = Desired room to goto.
// steps            = Total number of steps it take for the fade to complete.
// colour           = Desired drawing colour of the fade effect.

// Dependencies: eng_room_cfade

//Creats variables.
var new_room = argument0;
var steps = argument1;
var spd = 1 / steps;
var colour = argument2;

//Creates fade object.
var obj = instance_create(x, y, eng_room_cfade);

//Sends over variables.
with obj
{
    self.new_room = new_room;
    self.colour = colour;
    self.spd = spd;
}
