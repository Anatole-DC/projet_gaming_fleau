/// @description Ecoute les interactions
// Vous pouvez écrire votre code dans cet éditeur

if( interact( o_player, 10 ) ) {
	show_debug_message( "Interagir avec la poubelle ?" );
	key_popup("E");
}