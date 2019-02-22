/// @description 

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_run = keyboard_check(vk_alt);
input_walk = keyboard_check(vk_shift);

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

moveY = (input_down - input_up)*spd;
if(moveY == 0){
    moveX = (input_right - input_left)*spd;
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

