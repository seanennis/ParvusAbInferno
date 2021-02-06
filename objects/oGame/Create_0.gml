/// @desc Initialise global variables
randomize(); // changes random seed each game

global.gamePaused = false;
global.textSpeed = 0.75;

global.iCamera = instance_create_layer(0,0,layer,oCamera);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);

depth = -MAX_DEPTH;