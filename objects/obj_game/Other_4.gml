#macro GAME_CAMERA camera_set_view_size(view_camera[view_current],game_width,game_height) 
#macro REAL_CAMERA camera_set_view_size(view_camera[view_current],screen_width,screen_height)

surface_resize(application_surface, screen_width, screen_height)

GAME_CAMERA

window_set_size(screen_width,screen_height)
window_center()
