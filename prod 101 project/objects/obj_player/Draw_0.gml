/// @description Insert description here
// You can write your code in this editor
var anim_length = 9;
var frame_size = 64;
var anim_speed = 15;


if (moveX < 0) y_frame = 9;
else if (moveX > 0) y_frame = 11;
else if (moveY < 0) y_frame = 8;
else if (moveY > 0) y_frame = 10;
else x_frame = 0;

if(x_frame + (anim_speed/60) < anim_length - 1) {x_frame += anim_speed/60;}
else {x_frame = 1;}

draw_sprite_part(spr_player_test, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, x-x_offset, y-y_offset);

//FRAMES FOR ANIMATION

