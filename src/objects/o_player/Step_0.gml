/// @description Code du joueur
// Vous pouvez écrire votre code dans cet éditeur

// Gestion du clavier


press_right = keyboard_check(global.right);
press_left = keyboard_check(global.left);
press_jump = keyboard_check(global.jump);


// reset des variables


if( !press_right && !press_left) {
	playerSpeed = walkSpeed;
}


// Gestion vitesse


if( double_tap( global.right ) ) {
	playerSpeed = sprintSpeed;
}

if( double_tap( global.left ) ) {
	playerSpeed = sprintSpeed;
}


// Mouvements du personnage


var directionMove = press_right - press_left; // Soit 0, soit 1, soit -1
horizontalSpeed = directionMove * playerSpeed;
verticalSpeed += playerGravity;


// Collision horizontale


if( place_meeting( x + horizontalSpeed, y, o_solid) ) {
	while( !place_meeting( x + sign( horizontalSpeed), y, o_solid ) ) {
		x += sign( horizontalSpeed );
	}
	horizontalSpeed = 0;
}
x += horizontalSpeed;


// Collision verticale


if( place_meeting( x, y + verticalSpeed, o_solid) ) {
	while( !place_meeting( x, y + sign( verticalSpeed), o_solid )) {
		y += sign( verticalSpeed );
	}
	verticalSpeed = 0;
}
y += verticalSpeed;


// Saut


if( press_jump && place_meeting( x, y + 1, o_solid ) ) {
	verticalSpeed = jumpingHight;	
}


// Gestion des sprites


if( !place_meeting( x, y + 1, o_solid ) ) { // Animation de saut
	// sprite_index = s_player_jump;
}
else {
	if( horizontalSpeed == 0 ) {
		sprite_index = s_player_idle;
	}
	if( press_right or press_left ) {
		sprite_index = s_player_walk;
	}
}

if( horizontalSpeed != 0 ) {
	image_xscale = sign( horizontalSpeed );	
}