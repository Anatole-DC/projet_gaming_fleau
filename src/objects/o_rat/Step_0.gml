/// @description Gère le comportement du rat
// Vous pouvez écrire votre code dans cet éditeur

// Gère la gravité

verticalSpeed += ratGravity;

if( place_meeting( x, y + verticalSpeed, o_solid) ) {
	while( !place_meeting( x, y + sign( verticalSpeed), o_solid ) ) {
		y += sign( verticalSpeed );
	}
	verticalSpeed = 0;
}
y += verticalSpeed;

// Gère la détection du joueur

detect = detection(o_player,detectionRange);
aggressif = detection(o_player,triggeredRange);

if( detect ) {
	show_debug_message( "Le rat a détecté qqch..." );
}

if( aggressif ) {
	show_debug_message( "Le rat a poursuit le joueur..." );
}

if( !detect ) {
	show_debug_message( "Le rat est passif..." );
}