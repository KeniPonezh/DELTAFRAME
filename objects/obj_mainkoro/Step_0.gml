/// @description Player inputs (need a remake cause this is ass) - MM
//There's a better way to do all this consisting in 15 lines of code
//And can be done with tiled collissions that are less taxating on the device

//Input Keys
var left, right, up, down, run
left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)
run = keyboard_check(vk_lshift)

walkspd = 3

if(run){
    runtimer++
    
    getspd = walkspd + 1
    
    if (runtimer > 10 * DELTA) getspd = walkspd + 2
        
    if (runtimer > 60 * DELTA) getspd = walkspd + 3
}
else{
    getspd = walkspd
    runtimer = 0
}

var hinput, vinput
if(!disable_input){
    hinput = right - left
    vinput = down - up
}
else{
    hinput = 0
    vinput = 0
}

if (hinput != 0 || vinput != 0){
    if (movement_accuracy = accuracy.Modern){
        var dir, gethsp, getvsp
        dir = point_direction(0, 0, hinput, vinput)
        gethsp = lengthdir_x(getspd, dir)
        getvsp = lengthdir_y(getspd, dir)
    
        hsp = gethsp 
        vsp = getvsp
    }
    else if (movement_accuracy = accuracy.Undertale){
        hsp = getspd * hinput
        vsp = getspd * vinput
    }
} 
else{
    hsp = 0
    vsp = 0
}

repeat (abs(hsp) * DELTA){
    x += sign(hsp)
    if (place_meeting(x+sign(hsp),y,obj_solid)){
        x-=sign(hsp)
        hsp = 0
        break
    }
}

repeat(abs(vsp) * DELTA){
    y += sign(vsp)
    if (place_meeting(x,y+sign(vsp),obj_solid)){
        y-=sign(vsp)
        vsp = 0
        break
    }
}


// animations!
if(!disable_input){
    if(up) animdir = 3
    if(left) animdir = 2
    if(down) animdir = 1
    if(right) animdir = 0
}
    
switch (animdir){
    case 0:
        animation = spr_frisk_right
    break
    case 1:
        animation = spr_frisk_down
    break
    case 2:
        animation = spr_frisk_left
    break
    case 3:
        animation = spr_frisk_up
    break
}

if(keyboard_check_pressed(ord("F"))) instance_create_depth(x,y,depth,obj_battle)


//Example of better character movement handling and inputs that can be scaled

// keyLeft = keyboard_check(vk_left)
// keyRight = keyboard_check(vk_right)
// keyUp = keyboard_check(vk_up)
// keyDown = keyboard_check(vk_down)
// keyInteract = keyboard_check_pressed(ord("Z"))
// keyItem = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(mb_left);

//Character Movement Handling
// inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
// inputMagnitude = (keyRight-keyLeft != 0) || (keyDown-keyUp != 0);

// if (!global.gamePaused) script_execute(state); //this is an example of screen pause don't mind it
