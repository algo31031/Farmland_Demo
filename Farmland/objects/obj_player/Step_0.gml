/// @description 

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_run = keyboard_check(vk_alt);
input_walk = keyboard_check(vk_shift);
input_camera = keyboard_check(ord("C"));

// Setting speed
//if(keyboard_check(vk_shift)) 
//    spd = spd_walk;
//else if(keyboard_check(vk_alt)) 
//    spd = spd_run;
//else
//    spd = spd_normal;
spd = spd_normal - input_walk + input_run;

// movement
moveX = 0;
moveY = 0;

if(!input_camera){
    moveY = (input_down - input_up)*spd;
    if(moveY == 0) 
    moveX = (input_right - input_left)*spd;
}

// player facing
if(moveX != 0){
    switch(sign(moveX)){
        case -1: facing = dir.left;  break;
        case 1:  facing = dir.right; break;
    }
} else if(moveY != 0) {
    switch(sign(moveY)){
        case -1: facing = dir.up;   break;
        case 1:  facing = dir.down; break;
    }
} else {
    facing = -1;
}


// collission
if(moveX != 0){
    if(place_meeting(x+moveX, y ,obj_block)){
        repeat(abs(moveX)){
            if(!place_meeting(x+sign(moveX), y, obj_block))
                x += sign(moveX); 
            else {
                moveX = 0;    
                break;
            }
        }
    }
}

if(moveY != 0){
    if(place_meeting(x, y+moveY ,obj_block)){
        repeat(abs(moveY)){
            if(!place_meeting(x, y+sign(moveY), obj_block))
                y += sign(moveY);
            else {
                moveY = 0;
                break;
            }
        }
    }
}


// transation
var inst = instance_place(x, y, transation);
if(inst != noone and facing == inst.player_facing_before_transation){
    with(game){
        if(!do_transation){
            do_transation = true;
            spawn_room = inst.target_room;
            spawn_facing = inst.player_facing_after_transation;
            spawn_player_x = inst.player_x;
            spawn_player_y = inst.player_y;
        }
    }
}


x += moveX;
y += moveY;

