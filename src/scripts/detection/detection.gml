/// detection(object,range)

/*
	Fonction qui permet de savoir si un objet est dans la zone de détection d'un autre objet
	
	ArgumentO : l'objet à détecter
	
	Argument1 : la range de détection
	
	Retourne : True si l'objet est dans la zone de détection
*/

// Stockage des paramètres dans une variable

objet = argument0;
range = argument1;

// Gestion de la détection (fonctionnel)

if( distance_to_object( objet ) < range ) {
	// show_debug_message( string(objet) + " est dans la zone de détection..." );
	return true;
}
else {
	// show_debug_message( string(objet) + " n'est pas dans la zone de détection..." );
	return false;
}