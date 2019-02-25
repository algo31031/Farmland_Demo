/// @description 

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

