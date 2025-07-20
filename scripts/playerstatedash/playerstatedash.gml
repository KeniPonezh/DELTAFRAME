//Player State Dash - this is a SHORT BURST OF SPEED can be converted to running if you want 
// function PlayerStateDash(){
//Movement of Dash
// 	hSpeed = lengthdir_x(speedDash, direction);
// 	vSpeed = lengthdir_y(speedDash, direction);
	
// 	moveDistanceRemaining = max(0, moveDistanceRemaining-speedDash);
// 	var _collided = PlayerCollision();
	
//Update Sprite
// 	sprite_index = spriteDash;
// 	var _totalFrames = sprite_get_number(sprite_index)/4;
// 	image_index = (CARDINAL_DIR * _totalFrames) + min(((1 -(moveDistanceRemaining/distanceDash)) * _totalFrames), _totalFrames-1);

//Change State
// 	if (moveDistanceRemaining <= 0)
// 	{
// 		state = PlayerStateFree;
// 	}
// }
