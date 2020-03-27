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