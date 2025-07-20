/// @description Player Create

hsp = 0;
vsp = 0;
getspd = 3;
walkspd = 3
runtimer = 0;

animdir = 0 
animation = spr_horse
frame = 0

cam_x = x
cam_y = y

sprite_index = spr_frisk_hitbox //this is to set FRISK'S HITBOX!!!

//I forgot what this is whatever - MM
enum accuracy{
    Undertale,
    Modern
}
movement_accuracy = accuracy.Modern

disable_input = false

depth = 0


//Collision Handler
// collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

//Character Handler
// image_speed = 0;
// state = PlayerStateFree;
// hSpeed = 0;
// vSpeed = 0;
// speedWalk = 1.3;
// speedDash = 3.0; // Can be used for running

//Sprite Handling List and Assign - way easier thanks to silly math inside scripts
// spriteWalk = spr_playerWalk;
// spriteIdle = spr_playerIdle;
// spriteDash = spr_playerDash; // Can be used for you to make running sprites UT Yellow brrr
// localFrame = 0;
