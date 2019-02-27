/// @description
input_camera = false;
input_debug = false;

randomize();
room_goto_next();

//spawn_room = -1;
spawn_player_x = 0;
spawn_player_y = 0;
spawn_player_facing_before_transation = -1;
spawn_player_facing_after_transation = -1;

gui_height = display_get_gui_height();
gui_width = display_get_gui_width();
do_transation = false;
black_alpha = 1;
