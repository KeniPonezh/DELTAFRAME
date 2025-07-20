var left, right, up, down
left = keyboard_check_pressed(vk_left)
right = keyboard_check_pressed(vk_right)
up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)

var fuckoffdude
fuckoffdude = right - left

draw_sprite(spr_frisk_right,0,x+64,y+120)

//placehodler
switch (turn) {
	case 0 :
        draw_sprite(spr_battle,0,x,y)
    
        draw_set_font(font_textbox_def)
        draw_set_color(c_white)
        draw_text(16,16,"Incredible! You slippery slut!")
        draw_text(64,16,$"{mouse_x}, {mouse_y}")
    
        if(fuckoffdude!=0){
            show_debug_message(selection)
            selection+=fuckoffdude
            if (selection<0) selection = 4
            if (selection>4) selection = 0
        }
        
        
    break
    case 1 :
        
    break
    case 2 :
        
    break
    case 3:
        var spawn_x, spawn_y
        spawn_x = camera_get_view_x(view_camera[view_current]) + game.game_width / 2
        spawn_y = camera_get_view_y(view_camera[view_current]) + game.game_height / 2
        if(!boxmade){
            boxmade=true
            instance_create_depth(x,y,-25,obj_battlebox)
            instance_create_depth(spawn_x,spawn_y,-26,obj_battlesoul)
        }
    break
}
