/*
	Fonction qui affiche un texte sur l'action à effectuer
	
	Argument0 : L'objet pour lequel afficher le texte
	
	Argument1 : Le texte à afficher
	
	Retourne : rien
*/

objet = argument0;
texte = argument1;

lentxt = string_length( texte );
texte_x = objet.x - ( lentxt / 2 ) * 10;
texte_y = objet.y;

draw_text( string(texte_x), string(texte_y - 80), texte);
draw_set_color(c_white);