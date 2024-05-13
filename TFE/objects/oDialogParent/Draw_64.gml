if(showing_dialog == true){
	var text_x = 50;
	var text_y = 35;
	var height = 32;
	var border = 5;
	var padding = 16;
	draw_set_font(font_dial)
	height = string_height(current_dialog.mesage)
	
	if(sprite_get_height(current_dialog.spite) > height){
		height =  sprite_get_height(current_dialog.spite);
	}
	
	height += padding * 2;
	
	
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2),(border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);
	
	if(current_dialog.spite != 1){
		draw_sprite(current_dialog.spite, 0, border * 3, border * 3)
	}
	draw_set_color (c_white);
	draw_text_ext (text_x * 6, text_y, current_dialog.mesage, 8, display_get_gui_width() - 192);
	
	alpha = lerp(alpha, 1, 0.06)
	
	
}

draw_set_alpha(1);








