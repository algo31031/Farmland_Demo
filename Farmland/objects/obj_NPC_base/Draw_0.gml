/// @description 
var frame_size = 64;
var anim_speed = 12;
var xx = x - x_offset;
var yy = y - y_offset;


// choose player direction
if      (moveX > 0) { frame_y = player_animation.move_right; }
else if (moveX < 0) { frame_y = player_animation.move_left; }
else if (moveY > 0) { frame_y = player_animation.move_down; }
else if (moveY < 0) { frame_y = player_animation.move_up; }
else                { frame_x = 0; }

if(spr_shadow)
    draw_sprite_part(spr_shadow, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
if(spr_body)
    draw_sprite_part(spr_body, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
if(spr_feet)
    draw_sprite_part(spr_feet, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
if(spr_legs)
    draw_sprite_part(spr_legs, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
if(spr_torso)
    draw_sprite_part(spr_torso, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);
if(spr_hair)
    draw_sprite_part(spr_hair, 0, floor(frame_x)*frame_size, frame_y*frame_size, frame_size, frame_size, xx, yy);

// animation
if(floor(frame_x)+1 < player_animation_length.move) { frame_x += anim_speed/60; } 
else                                                { frame_x = 0; }
