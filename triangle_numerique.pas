//BUT: Afficher un triangle composé de nombre
//ENTREES
//SORTIES: Un triangle numérique

{
	CONST
	taille=10



	VAR

	tab: PLAGE DE VALEUR ALLANT DE 1 a taille et 1 a taille ENTIERS
	i,j: ENTIERS


	DEBUT


		POUR j ALLANT de 1 à TAILLE FAIRE
			DEBUT

				POUR i ALLANT DE 1 à (taille - (j-1)) FAIRE					taille + (j-1) car à la 9 eme ligne par exemple il y a 2 caractères, donc taille(10) - (j-1) (8) est égale à 2						
					DEBUT

						tab [i,j]<----j-1									//j-1 CAR à la 9eme ligne par exemple il y a des 8 affichés, car sur la première ligne il y a 0
					FIN
			FIN

		POUR j ALLANT de 1 à taille FAIRE
			DEBUT

				POUR i ALLANT DE 1 à (taille - (j-1)) FAIRE
					DEBUT

						ECRIRE tab[i,j]
						SI i=(taille - (j-1)) ALORS
						ECRIRE
					FIN
			FIN
	LIRE
	FIN.



}

Program triangle_numerique;
uses crt;

CONST
taille=10;

VAR

tab: ARRAY[1..taille,1..taille] of INTEGER;
i, j: INTEGER;



BEGIN
	clrscr;

		FOR j:=1 TO taille DO
			BEGIN

				FOR i:=1 to (taille - (j-1)) DO
					BEGIN
						tab[i,j]:=(j-1);
					END;
			END;

			FOR j:=1 TO taille DO
			BEGIN

				FOR i:=1 to (taille - (j-1)) DO
					BEGIN

						write (tab[i,j]);
						IF i=(taille - (j-1)) THEN
							writeln;
					END;
			END;
			readln;
END.
