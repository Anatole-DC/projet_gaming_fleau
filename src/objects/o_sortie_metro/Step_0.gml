/// @description Ecoute les interactions avec le joueur
// Vous pouvez écrire votre code dans cet éditeur

if( interact( o_player, 50) ){
	if( keyboard_check( global.interaction ) ) {
		if( room_exists( metro ) ) {
			room_goto( metro );
		}
	}
}