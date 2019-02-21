/// @description Insert description here
// You can write your code in this editor

move_left = keyboard_check(vk_left);
move_right = keyboard_check(vk_right);
move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
is_runing = keyboard_check(vk_alt);
is_walking = keyboard_check(vk_shift);

// Setting speed
//if(keyboard_check(vk_shift)) 
//    spd = spd_walk;
//else if(keyboard_check(vk_alt)) 
//    spd = spd_run;
//else
//    spd = spd_normal;
spd = spd_normal - is_walking + is_runing;

// movement
moveX = 0;
moveY = 0;

moveY = (move_down - move_up)*spd;
if(moveY == 0){
    moveX = (move_right - move_left)*spd;
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


x += moveX;
y += moveY;

