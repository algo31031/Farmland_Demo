/// @description
moveX = 0;
moveY = 0;

var moving = choose(true, false);

if(moving){
    var moving_h = choose(true, false);
    if(moving_h){
        moveX = choose(-1, 1)*spd;
    } else {
        moveY = choose(-1, 1)*spd
    }
}

alarm[0] = irandom_range(2, 4)*room_speed;