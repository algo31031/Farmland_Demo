/// @description

if(do_transation){
    if(room != spawn_room){
        black_alpha += 0.1;
        if(black_alpha >= 1) { room_goto(spawn_room); }
    } else { 
        black_alpha -= 0.1 ;
        if(black_alpha <= 0) { do_transation = false; }
    }
    
    draw_set_alpha(black_alpha);    
    draw_rectangle_color(0, 0, gui_width, gui_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1); 
}
