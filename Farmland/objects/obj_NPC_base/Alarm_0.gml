/// @description
moveX = 0;
moveY = 0;

if(choose(true, false)){
    moveX = choose(-1, 1)*spd;
} else {
    moveY = choose(-1, 1)*spd
}

alarm[0] = irandom_range(2, 4)*room_speed;