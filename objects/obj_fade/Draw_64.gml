var alpha, fade_color
alpha = fadetimer / 30
fade_color = make_color_rgb(fadecolor,fadecolor,fadecolor )

draw_set_alpha(1 - alpha);
draw_set_color(fade_color)
draw_rectangle(0, 0, game.screen_width, game.screen_height, false);	
draw_reset()