/// @desc Set up camera
cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) / 2;
viewHeightHalf = camera_get_view_height(cam) / 2;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
