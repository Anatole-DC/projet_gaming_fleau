/// @description Ecoute les evt dans le jeu
// Vous pouvez écrire votre code dans cet éditeur

fullscreen = window_get_fullscreen();
keypress_escape = keyboard_check( vk_escape );

if( keypress_escape && fullscreen) {
	window_set_fullscreen(false);
}