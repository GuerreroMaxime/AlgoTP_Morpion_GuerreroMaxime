{Program algouithme;
But: Avoir une ligne une colone ou une diagonal;
Entrer: Les x et o dans les cases;
Souti: Si la partie est gagner ou perdu;


Fonction Choixpiont (var PiontJ1, PiontJ2 :entier):boolean;

var 
	Choix 	:entier;

Debut
	Si (choix=1) alors
	Debut
	 Choixpiont<-Vrai;
	Finsi;


	Si (choix=2) alors
	Debut
	 Choixpiont<-Faux;
	Finsi;
Fin;

Procedure Choix_piont (var PiontJ1, PiontJ2 :entier);

var 
	Choix 	:entier;

Debut
	Ecrire('Oh bonjour, et bienvue dans le moupion');
	Ecrire('Le joueur 1 doit choisir (1 pour les x et 2 pour les o)');
	Lire(Choix);

	Si (choix>2) ou (choix<1) alors
	Repeter 
	 Ecrire('Valeur incouecte veuillez rentrer 1 pour les x et 2 pour les o');
	 Lire(Choix);
	Jusqu'a (Choix=1) ou (Choix=2);

	Choixpiont(PiontJ1, PiontJ2);
Fin;

Procedure Affichage_jeu (var PiontJ1, PiontJ2 :entier);

Debut
	Gotoxy(2,20);
	Ecrire('1');
	Gotoxy(2,22);
	Ecrire('2');
	Gotoxy(2,24);
	Ecrire('3');
	Gotoxy(4,20);
	Ecrire('4');
	Gotoxy(4,22);
	Ecrire('5');
	Gotoxy(4,24);
	Ecrire('6');
	Gotoxy(6,20);
	Ecrire('7');
	Gotoxy(6,22);
	Ecrire('8');
	Gotoxy(6,24);
	Ecrire('9');
	Gotoxy(1,1);
Fin;


Fonction Ligne_Gagnante (var PiontJ1, PiontJ2 :entier):boolean;

Debut
	Si Gotoxy(2,20) = Gotoxy(2,22) = Gotoxy(2,24) ou Gotoxy(4,20) = Gotoxy(4,22) = Gotoxy(4,24) ou Gotoxy(6,20) = Gotoxy(6,22) = Gotoxy(6,24) alors
	Debut
		Ecrire('Victoire en colone');
		Ligne_Gagnante(PiontJ1, PiontJ2)<- Vrai;
	Fin;

	Si Gotoxy(2,20) = Gotoxy(4,20) = Gotoxy(6,20) ou Gotoxy(2,22) = Gotoxy(4,22) = Gotoxy(6,22) ou Gotoxy(2,24) and Gotoxy(4,24) and Gotoxy(6,24) alors
	Debut
		Ecrire('Victoire en ligne');
		Ligne_Gagnante(PiontJ1, PiontJ2)<- Vrai;
	Fin;

	Si Gotoxy(2,20) = Gotoxy(4,22) = Gotoxy (6,24) ou Gotoxy(2,24) = Gotoxy(4,22) = Gotoxy (6,20) alors
	Debut
		Ecrire('Victoire en colone');
		Ligne_Gagnante(PiontJ1, PiontJ2)<- Vrai;
	Fin;
Fin;


Fonction Victoire (tour :entier; PiontJ1, PiontJ2: entier): boolean; 

Debut
	Si Ligne_Gagnante(PiontJ1, PiontJ2) = Vrai  and Tour = 1 alors
	 Debut
		Ecrire('Le joueur 1 a un gagner');
		Victoire<-Vrai;
		Lire;
	 Fin;

	Si {Ligne_Gagnante(PiontJ1, PiontJ2) = Vrai and Tour = 2 alors
	 Debut
		Ecrire('Le joueur 2 a un gagner');
		Victoire<-Vrai;
		Lire;
	 Fin;

Fin;




Procedure Placement_piont (var PiontJ1, PiontJ2 :entier; Tour :entier);

Var
    choix :entier;
	Piont :entier;

Debut
	Tour<-1;
	Repeter
		Si Tour=1 alors
		 Debut 
			Ecrire('Tour du joueur 1, choisisser un emplacement');

			Si Choixpiont(PiontJ1, PiontJ2)=Vrai alors
			Debut
				Piont<-'O';
			Fin;

			Si Choixpiont(PiontJ1, PiontJ2)=Faux alors
			Debut
				Piont<-'X';
			Fin;
		 Fin;

		Si Tour=2 alors
		 Debut 
			Ecrire('Tour du joueur 2 choisisser un emplacement');

			Si Choixpiont(PiontJ1, PiontJ2)=Vrai alors
			Debut
				Piont<-'X';
			Fin;

			Si Choixpiont(PiontJ1, PiontJ2)=Faux alors
			Debut
				Piont<-'O';
			Fin;
		 Fin;
	
		Lire(Choix);
		Si (choix<1) ou (choix>9) alors
		Debut	
		 Lire(Choix);
		Fin;

		Si Choix=1 alors
		 Debut
			Gotoxy(2,20);
			Ecrire(Piont);
		 Fin;

		 Si Choix=2 alors
		 Debut
			Gotoxy(2,22);
			Ecrire(Piont);
		 Fin;
		
		 Si Choix=3 alors
		 Debut
			Gotoxy(2,24);
			Ecrire(Piont);
		 Fin;

		Si Choix=4 alors
		 Debut
			Gotoxy(4,20);
			Ecrire(Piont);
		 Fin;

		 Si Choix=5 alors
		 Debut
			Gotoxy(4,22);
			Ecrire(Piont);
		 Fin;
		
		 Si Choix=6 alors
		 Debut
			Gotoxy(4,24);
			Ecrire(Piont);
		 Fin;

		Si Choix=7 alors
		 Debut
			Gotoxy(6,20);
			Ecrire(Piont);
		 Fin;

		 Si Choix=8 alors
		 Debut
			Gotoxy(6,22);
			Ecrire(Piont);
		 Fin;
		
		 Si Choix=9 alors
		 Debut
			Gotoxy(6,24);
			Ecrire(Piont);
		 Fin;

	Gotoxy(1,1);
//    Ligne_Gagnante(PiontJ1, PiontJ2); 

	Si (tour=1) alors
	Debut
		tour<-tour+1;
	Fin;

	Sinon
	Debut
		tour<-tour-1;
	Fin;

	Jusqu'a Victoire(tour, PiontJ1, PiontJ2)=Vrai and (choix=10);
Fin;

//Program principal

Var 
	PiontJ1, PiontJ2 :entier;
	Tour :entier;

Debut
	Clrscr;
	Choix_piont(PiontJ1, PiontJ2);
	Clrscr;
	Affichage_jeu (PiontJ1, PiontJ2);
	Placement_piont (PiontJ1, PiontJ2, Tour);
	Lire;
Fin.

