if(place_meeting(x,y,obj_mainkoro)){
    fade_to_room(getroom ,1,c_black)
    obj_mainkoro.disable_input = true
    global.waypoint = waypoint
}