/// @description Ecoute les evt dans le jeu
// Vous pouvez écrire votre code dans cet éditeur

fullscreen = window_get_fullscreen();
keypress_escape = keyboard_check( vk_escape );
keypress_p = keyboard_check( ord( "P" ) );

if( keypress_escape && fullscreen) {
	window_set_fullscreen( false );
}

else if( keypress_p && !fullscreen ) {
	window_set_fullscreen( true );
}