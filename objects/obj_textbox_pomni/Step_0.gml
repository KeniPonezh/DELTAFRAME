if(place_meeting(x,y,obj_mainkoro) && !instance_exists(obj_overworld_dialogue) && button && cooldown = 0){
    talked_to_much++
    with instance_create_depth(x,y,0,obj_overworld_dialogue){
        text_sound = snd_text
        text[0] = "bendy and the ink machine"
    }
}