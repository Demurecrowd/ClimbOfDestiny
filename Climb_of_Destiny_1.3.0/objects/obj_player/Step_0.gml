/// @description 

// Horizontal movement
moveX = inputX * moveSpeed;

// Jump
if (inputJump && place_meeting(x, y + 1, obj_platformParent)) {
	moveY = -jumpSpeed;
	audio_play_sound(snd_jump, 1, false);
}

// Final movement velocity
var _finalMoveX = moveX;
var _finalMoveY = moveY;

// Moving platform collision
var _movingPlatform = instance_place(x, y + max(1, _finalMoveY), obj_platformMov);
if (_movingPlatform && bbox_bottom <= _movingPlatform.bbox_top) {
	// Pixel-perfect collisions
	if (_finalMoveY > 0) {
		while (!place_meeting(x, y + sign(_finalMoveY), obj_platformMov)) {
			y += sign(_finalMoveY);
		}
	
		_finalMoveY = 0;
		moveY = 0; // So the gravity is reset too
	}
	
	// Add velocity
	_finalMoveX += _movingPlatform.moveX;
	_finalMoveY += _movingPlatform.moveY;
}

// Fast Moving platform collision
var _fastMovingPlatform = instance_place(x, y + max(1, _finalMoveY), obj_platformMovFast);
if (_fastMovingPlatform && bbox_bottom <= _fastMovingPlatform.bbox_top) {
	// Pixel-perfect collisions
	if (_finalMoveY > 0) {
		while (!place_meeting(x, y + sign(_finalMoveY), obj_platformMovFast)) {
			y += sign(_finalMoveY);
		}
	
		_finalMoveY = 0;
		moveY = 0; // So the gravity is reset too
	}
	
	// Add velocity
	_finalMoveX += _fastMovingPlatform.moveX;
	_finalMoveY += _fastMovingPlatform.moveY;
}

// Static platform collisions
var _statPlatform = instance_place(x, y + max(1, _finalMoveY), obj_platformStat);
if (_statPlatform && bbox_bottom <= _statPlatform.bbox_top) {
	// Pixel-perfect collisions
	if (_finalMoveY > 0) {
		while (!place_meeting(x, y + sign(_finalMoveY), obj_platformStat)) {
			y += sign(_finalMoveY);
		}
	
		_finalMoveY = 0;
		moveY = 0; // So the gravity is reset too
	}

}

/// Platform collisions
// X
if (place_meeting(x + _finalMoveX, y, obj_block)) {
	while (!place_meeting(x + sign(_finalMoveX), y, obj_block)) {
		x += sign(_finalMoveX);
	}
	
	_finalMoveX = 0;
}

// Y
if (place_meeting(x, y + _finalMoveY, obj_block)) {
	while (!place_meeting(x, y + sign(_finalMoveY), obj_block)) {
		y += sign(_finalMoveY);
	}
	
	_finalMoveY = 0;
	moveY = 0; // So the gravity is reset too
}

// Move
x += _finalMoveX;
y += _finalMoveY;

// Gravity
if (moveY < 15) {
	moveY += gravSpeed;
}