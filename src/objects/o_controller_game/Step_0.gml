/// @description Ecoute les evt dans le jeu
// Vous pouvez écrire votre code dans cet éditeur

keypress_escape = keyboard_check_released( vk_escape );


// Menu pause

if( keypress_escape ){
	if( global.pause == false ){
		global.pause = true;
	} else {
		global.pause = false;
	}
}