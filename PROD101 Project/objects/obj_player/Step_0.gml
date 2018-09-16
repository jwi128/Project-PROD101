/// @description Insert description here
// You can write your code in this editor

//KEYBORAD CHECKS
input_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
input_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
input_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
input_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

// RESETING MOVEMENT
moveX = 0;
moveY = 0;

// PLAYER MOVEMENT
moveX = (input_right - input_left) * movement;

if (moveX == 0) 
{
	moveY = (input_down - input_up) * movement;
}

// COLLISION CHECKS

//Horizontal
if (moveX!= 0){
	if (place_meeting(x + moveX, y, obj_collision)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collision)) {x += sign(moveX);}
			else {break;}
		}
		moveX = 0;
	}
}

//Vertical
if (moveY!= 0){
	if (place_meeting(x, y + moveY, obj_collision)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)) {y += sign(moveY);}
			else {break;}
		}
		moveY = 0;
	}
}

var trans_id = instance_place(x, y, obj_transistion);
if(trans_id != noone) {
	room_goto(trans_id.room_id)
}
//APPLYING MOVEMENT

x += moveX;
y += moveY;