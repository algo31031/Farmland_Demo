/// @description
if(spawn_player_x == 0) exit;

obj_player.x = spawn_player_x;
obj_player.y = spawn_player_y;
obj_player.facing = spawn_facing;

// choose player direction
with(obj_player){
    switch(facing) {
        case dir.right: frame_y = player_animation.move_right; break;
        case dir.left:  frame_y = player_animation.move_left;  break;
        case dir.down:  frame_y = player_animation.move_down;  break;
        case dir.up:    frame_y = player_animation.move_up;    break;
        case -1:        frame_x = 0;                           break; 
    }
}