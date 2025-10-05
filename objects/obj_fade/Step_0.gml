fadetimer+= fadespd * fadetransition

if (fadetransition = fade_out && faderoom!=noone) if (fadetimer = 0) room_goto(faderoom)
    
fadetimer = clamp(fadetimer,0,30)