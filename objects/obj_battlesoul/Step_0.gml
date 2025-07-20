//we want a PROPER deltarune experience.
var left, right, up, down, run
left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)

var hinput, vinput
    hinput = right - left
    vinput = down - up

if (hinput != 0 || vinput != 0){
    hsp = getspd * hinput
    vsp = getspd * vinput
} 
else{
    hsp = 0
    vsp = 0
}

repeat (abs(hsp)){
    x += sign(hsp)
}

repeat(abs(vsp) ){
    y += sign(vsp)
}

if(!collision_rectangle(bbox_left + 2,bbox_top + 2,bbox_right - 2,bbox_bottom - 2,obj_battlebox,false,true)) show_debug_message($"OUTSIDE : {current_time}")