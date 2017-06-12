Program morpion;

Uses crt;

Function Choixpiont (var PiontJ1, PiontJ2 :char):boolean;					//Permet de retourner la procedure choix_piont

var 
	Choix 	:integer;

Begin
	If (choix=1) then
	Begin
	 Choixpiont:=True;
	End;


	If (choix=2) then
	Begin
	 Choixpiont:=False;
	End;
End;

Procedure Choix_piont (var PiontJ1, PiontJ2 :char);							//Permet de choisir son pion au debut d'une partie

var 
	Choix 	:integer;

Begin
	Writeln('Oh bonjour, et bienvue dans le morpion');
	Writeln('Le joueur 1 doit choisir (1 pour les x et 2 pour les o)');
	Readln(Choix);

	If (choix>2) or (choix<1) then
	Repeat 
	 Writeln('Valeur incorecte veuillez rentrer 1 pour les x et 2 pour les o');
	 Readln(Choix);
	Until (Choix=1) or (Choix=2);

	Choixpiont(PiontJ1, PiontJ2);
End;

Procedure Affichage_jeu (var PiontJ1, PiontJ2 :char);									//place les cases

Begin
	Gotoxy(2,20);
	Writeln('1');
	Gotoxy(2,22);
	Writeln('2');
	Gotoxy(2,24);
	Writeln('3');
	Gotoxy(4,20);
	Writeln('4');
	Gotoxy(4,22);
	Writeln('5');
	Gotoxy(4,24);
	Writeln('6');
	Gotoxy(6,20);
	Writeln('7');
	Gotoxy(6,22);
	Writeln('8');
	Gotoxy(6,24);
	Writeln('9');
	Gotoxy(1,1);
End;


Function Ligne_Gagnante (var PiontJ1, PiontJ2 :char; c1, c2, c3, c4, c5, c6, c7, c8, c9:integer):boolean;	 //Verifier la victoire	

Begin

	If (c1=1) and (c2=1) and (c3=1) or (c4=1) and (c5=1) and (c6=1) or (c7=1) and (c8=1) and (c9=1) then	//Verifier la victoire en ligne
	Begin
		Ligne_Gagnante:= False;
	End;

	If (c1=1) and (c4=1) and (c7=1) or (c2=1)and (c5=1) and (c8=1) or (c3=1) and (c6=1) and (c9=1) then    //Verifier la victoire en cologne
	Begin
		Ligne_Gagnante:= False;
	End;

	If (c1=1) and (c5=1) and (c9=1) or (c3=1) and (c5=1) and (c7=1) then									//Verifier la victoire en diagonal
	Begin
		Ligne_Gagnante:= False;
	End;
End;


Function Victoire (PiontJ1, PiontJ2: char; tour, c1, c2, c3, c4, c5, c6, c7, c8, c9:integer): boolean;  //Fonction qui retourne ligne_gagnante

Begin
	If Ligne_Gagnante(PiontJ1, PiontJ2, c1, c2, c3, c4, c5, c6, c7, c8, c9) = True  and (Tour = 1) then
	 Begin
		Writeln('Le joueur 1 a un gagner');
		Victoire:=True;
		Readln;
	 End;

	If Ligne_Gagnante(PiontJ1, PiontJ2, c1, c2, c3, c4, c5, c6, c7, c8, c9) = True and (Tour = 2) then //Marche en fonction du tour
	 Begin
		Writeln('Le joueur 2 a un gagner');
		Victoire:=True;
		Readln;
	 End;

End;




Procedure Placement_piont (var PiontJ1, PiontJ2 :char; Tour, c1, c2, c3, c4, c5, c6, c7, c8, c9:integer);

Var
    choix :integer;
	Piont :char;
	toure	:boolean;

Begin
	Tour:=1;
	Repeat
		toure:= False;
		If Tour=1 then
		 Begin 
			Writeln('Tour du joueur 1, choisisser un emplacement');			//Définie le choix en fonction du signe prit au début

			If Choixpiont(PiontJ1, PiontJ2)=True then
			Begin
				Piont:='O';
			end;

			If Choixpiont(PiontJ1, PiontJ2)=False then
			Begin
				Piont:='X';
			end;
		 End;

		If Tour=2 then
		 Begin 
			Writeln('Tour du joueur 2 choisisser un emplacement');			//Le 2eme joueur auras l'autre

			If Choixpiont(PiontJ1, PiontJ2)=True then
			Begin
				Piont:='X';
			end;

			If Choixpiont(PiontJ1, PiontJ2)=False then
			Begin
				Piont:='O';
			end;
		 End;
	
		Readln(Choix);
		If (choix<1) or (choix>9) then								//Si le choix n'est pas le bon
		Begin	
		 Readln(Choix);
		end;

		If (Choix=1) then
		 Begin
		   If (C1=0)then
		   Begin
			Gotoxy(2,20);
			Writeln(Piont);
			toure:=True;
			 If tour=1 then
			 Begin
				c1:=1;
			 end
			 Else
			   c1:=2;
			 end;
		 End;

		 If (Choix=2) then								//Pour chaque procedure on verifie que la case n'est pas ocuper
		 Begin
		  If (C2=0) then
		   Begin										//Puis on passe tour sur true pour valider que qu'un piont a bien éter placer
			Gotoxy(2,22);
			Writeln(Piont);
			toure:=True;
			 If tour=1 then
			 Begin
				c2:=1;
			 end
			 Else
			   c2:=2;
			 end;
		 End;
		
		 If (Choix=3) then
		 Begin
		  If (C3=0) then
		   Begin
			Gotoxy(2,24);
			Writeln(Piont);
			toure:=True;
			 If tour=1 then
			 Begin
				c3:=1;
			 end
			 Else
			   c3:=2;
			 end;
		 End;

		If (Choix=4) then
		 Begin
		  If (C4=0) then
		   Begin
			Gotoxy(4,20);
			Writeln(Piont);
			toure:=True;
			 If tour=1 then
			 Begin
				c4:=1;
			 end
			 Else
			   c4:=2;
			 end;
		 End;

		 If (Choix=5) then
		 Begin
		  If (C5=0) then
		   Begin
			Gotoxy(4,22);
			Writeln(Piont);
			toure:=True;
			If tour=1 then
			 Begin
				c5:=1;
			 end
			 Else
			   c5:=2;
			 end;
		 End;
		
		 If (Choix=6) then
		 Begin
		  If (C6=0) then
		   Begin
			Gotoxy(4,24);
			Writeln(Piont);
			toure:=True;
			If tour=1 then
			 Begin
				c6:=1;
			 end
			 Else
			   c6:=2;
			 end;
		 End;

		If (Choix=7) then
		 Begin
		  If (C7=0) then
		   Begin
			Gotoxy(6,20);
			Writeln(Piont);
			toure:=True;
			If tour=1 then
			 Begin
				c7:=1;
			 end
			 Else
			   c7:=2;
			 end;
		 End;

		 If (Choix=8) then
		 Begin
		  If (C8=0) then	
		   Begin					
			Gotoxy(6,22);
			Writeln(Piont);	
			toure:=True;
			If tour=1 then
			 Begin
				c8:=1;
			 end
			 Else
			   c8:=2;
			 end;
		 End;
		
		 If (Choix=9) then
		 Begin
		  If (C9=0) then
		   Begin
			Gotoxy(6,24);
			Writeln(Piont);
			toure:=True;
			If tour=1 then
			 Begin
				c9:=1;
			 end
			 Else
			   c9:=2;
			end;
		 End;

	Gotoxy(1,1);
	Ligne_Gagnante(PiontJ1, PiontJ2, c1, c2, c3, c4, c5, c6, c7, c8, c9); 					

	If (tour=1) and toure=True then														//Change de tour
	Begin
		tour:=tour+1;
	end

	Else
	Begin
		If toure=True then
		Begin
		tour:=tour-1;
		end;
	end;

	Until Victoire(PiontJ1, PiontJ2, tour, c1, c2, c3, c4, c5, c6, c7, c8, c9)=False;
End;

//Program principal

Var 
	PiontJ1, PiontJ2 :char;
	Tour :integer;
	c1, c2, c3, c4, c5, c6, c7, c8, c9 :integer;

Begin
	Clrscr;
	Choix_piont(PiontJ1, PiontJ2);
	Clrscr;
	Affichage_jeu (PiontJ1, PiontJ2);
	Placement_piont (PiontJ1, PiontJ2, Tour, c1, c2, c3, c4, c5, c6, c7, c8, c9);
	Readln;
End.

