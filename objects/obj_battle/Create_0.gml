depth = -20

x = camera_get_view_x(view_camera[view_current])
y = camera_get_view_y(view_camera[view_current])

obj_mainkoro.visible = false
obj_mainkoro.disable_input = true

//

turn = 3
attacktimer = 0
boxmade = false

//every turn stuff
enum buttons{
    fight,
    second,
    item,
    mercy,
    defend
}
selection = 0