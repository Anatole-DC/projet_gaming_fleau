/// @description Code du joueur
// Vous pouvez écrire votre code dans cet éditeur

// Gestion du clavier

keypress_right = keyboard_check(global.right);
keypress_left = keyboard_check(global.left);
keypress_jump = keyboard_check(global.jump);

// Mouvements

var directionMove = press_right - press_left; // Soit 0, soit 1, soit -1
horizontalSpeed = directionMove * walkSpeed;
verticalSpeed += playerGravity;

//			Droite

if( keypress_right ){
}

//			Gauche


//			Saut