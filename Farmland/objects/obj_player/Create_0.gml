/// @description 

spd_walk = 1;
spd_normal = 2;
spd_run = 3;

enum player_animation {
    move_up    = 8,
    move_left  = 9,
    move_down  = 10,
    move_right = 11
}

enum player_animation_length {
    move = 9
}

frame_x = 0;
frame_y = player_animation.move_down; 

spr_body = spr_body_male_dark;
spr_feet = spr_feet_male_black_shoes;
spr_legs = spr_legs_male_magenta_pants;
spr_torso = spr_torso_male_brown_longsleeve;
spr_hair = spr_hari_male_page;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

facing = -1;