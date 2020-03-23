///double_tap(touche)

/*
	Fonction qui permet de savoir si un joueur a double tap sur une touche du clavier
	
	A l'appel : double_tap(touche)
	
	Argument0 : touche du clavier à écouter
	
	Retourne : True si le joueur a bien effectuer le double tap
*/


// Stockage des paramètres de la fonction dans les variables

touche = argument0;

// Gestion timeline

timeline_index = tmln_double_tap;
tSize = timeline_max_moment(tmln_double_tap);

// Si la touche est pressée (non maintenue)

if( keyboard_check_released( touche ) ) {
	// lance la timeline
	
	timeline_running = true;
	timeline_position = 0;
	
	show_debug_message( "Timeline lancée..." );
}

if( timeline_running && keyboard_check_pressed( touche ) ) {
		show_debug_message( "Double tap !!!" );
		return true;
	}

//show_debug_message( timeline_position );

// Gestion de l'arrêt de la timeline

if( timeline_position > tSize ) {
	timeline_running = false; // arrêt de la timeline
	timeline_position = 0; // reset de la timeline
	show_debug_message( "Arrêt timeline." );
	return false;
}