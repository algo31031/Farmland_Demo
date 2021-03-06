/// @description 
var frame_size = 64;
var anim_speed = 12;
var xx = x - x_offset;
var yy = y - y_offset;


// choose player direction
switch(facing) {
    case dir.right: frame_y = player_animation.move_right; break;
    case dir.left:  frame_y = player_animation.move_left;  break;
    case dir.down:  frame_y = player_animation.move_down;  break;
    case dir.up:    frame_y = player_animation.move_up;    break;
    case -1:        frame_x = 0;
}

draw_sprite_part(character_shadow, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_body, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_feet, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_legs, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_torso, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_hair, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);

// animation
if(floor(frame_x)+1 < player_animation_length.move) { frame_x += anim_speed/60; } 
else                                                { frame_x = 0; }

