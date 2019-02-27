/// @description


if(do_transation){    
    if(black_alpha >= 0) {
        draw_set_alpha(black_alpha);    
        black_alpha -= 0.1
        draw_rectangle_color(0, 0, gui_width, gui_height, c_black, c_black, c_black, c_black, false);
    } else {
        do_transation = false; 
        black_alpha = 1;
        draw_set_alpha(1);
    }
}
