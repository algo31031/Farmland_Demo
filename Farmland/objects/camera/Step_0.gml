/// @description

if(keyboard_check(ord("C"))) {
    x += (keyboard_check(vk_right) - keyboard_check(vk_left))*6;
    y += (keyboard_check(vk_down) - keyboard_check(vk_up))*6; 
}
else {
    x = clamp(x, following.x-border_h, following.x+border_h);
    y = clamp(y, following.y-border_v, following.y+border_v);
}
