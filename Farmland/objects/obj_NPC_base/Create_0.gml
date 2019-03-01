/// @description 

spd_walk = 1;
spd_normal = 2;
spd_run = 3;
spd = spd_walk;

frame_x = 0;
frame_y = player_animation.move_down; 

spr_shadow = character_shadow;
spr_body = -1;
spr_feet = -1;
spr_legs = -1;
spr_torso = -1;
spr_hair = -1;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

moveX = 0;
moveY = 0;

alarm[0] = room_speed;