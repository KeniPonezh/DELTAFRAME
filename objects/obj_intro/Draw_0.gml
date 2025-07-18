sinfactor= max(sinfactor - 0.05,0)
factor = max(factor - 0.1,0)

for (var i = 0; i < spr_height; i++){
    for(var j=0;j<3;j++){
        var xoff
        xoff =dsin((current_time/sinfactor)+((factor * 2)*j)*i)
        draw_sprite_part_ext( spr_logo, image_index, 0, i, spr_width, 2, x - spr_width / 2 + xoff, y + i - spr_height / 2, 1, 1, c_white, 0 + j*0.334)
    }
}

var static_width,static_height 
static_width = sprite_get_width(spr_static)
static_height = sprite_get_height(spr_static)

for(var k=0;k<static_height;k++){
    var xoff, alpha
    xoff =dsin((current_time/2-timer/600) + 128*k)
    alpha = -0.5 + timer / 150
    draw_sprite_part_ext( spr_static, image_index, 0, k, static_width, 2, 0 + xoff, 0 + k, 1, 1, c_white, alpha)
}

if(timer = 300) fade_to_room(rm_test,1,c_black)