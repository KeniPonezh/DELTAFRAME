switch (step) {
    case 0:
        creationtime++
        if(creationtime<36){
            with instance_create_depth(x,y,depth-1,obj_battlebox_effect){
                xscale = obj_battlebox.xscale
                yscale = obj_battlebox.yscale
                angle = obj_battlebox.angle
            }
        }
        xscale = approach(xscale,37,1)
        yscale = approach(xscale,37,1)
        angle = approach(angle,0,10)
    break
}