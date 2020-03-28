/*
	Fonction qui permet de savoir si l'objet est en contact avec un autre objet
	
	Argument0 : L'objet à vérifier
	
	( Argument1 = 1 : la range de contact )
	
	Retourne : True si l'objet est bien en contact
*/

objet = argument0;
range = argument1;

if( detection( objet, range ) ) {
	return true;
}
else {
	return false;
}