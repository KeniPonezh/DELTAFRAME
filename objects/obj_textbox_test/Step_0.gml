if(place_meeting(x,y,obj_mainkoro) && !instance_exists(obj_overworld_dialogue) && button && cooldown = 0){
    with instance_create_depth(x,y,0,obj_overworld_dialogue){
        obj_textbox_another_test.talked_to_other_guy=true
        text_sound = snd_z
        text[0] = "spongebob."
        text[1] = "patrick."
        text[2] = "...sandy?"
        text[3] = "...squidward!"
        text[4] = "So. Imagine.\nYou wake up at your home.\nBut the home isn't actually\nYOURS.\nIt's Sans' home.\nHe slept with your mother.\nYeah?\nThat happened to NOBODY.\nBut Sans' slept with Toriel.\nToriel had SEX\nwith a REAL BONER.\nThis is concerning.\nVery. Very. Very. Very.\nConcerning............................"
    }
}

