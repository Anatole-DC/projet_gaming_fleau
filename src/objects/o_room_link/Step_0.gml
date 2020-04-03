/// @description Interactions avec le joueur
// Vous pouvez écrire votre code dans cet éditeur

/// @description Ecoute les interactions avec le joueur
// Vous pouvez écrire votre code dans cet éditeur

if( interact( o_player, 1) ){
	showtext = true;
	if( keyboard_check( global.interaction ) ) {
		if( room_exists( roomLink ) ) {
			room_goto( roomLink );
		}
	}
} else {
	showtext = false;
}