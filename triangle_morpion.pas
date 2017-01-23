//but: créer une figure triangulaire
//entrees:
//sorties: un triangle
{
VAR
	i,j, taille: ENTIER
		
	tab: PLAGE DE VALEURS ALLANT DE 1 à 50 et de 1 à 50 CARACTERES;





	DEBUT


	ECRIRE "Entrez la taille de votre triangle"
	LIRE TAILLE


	POUR J ALLANT DE 1 à taille FAIRE
		DEBUT

		POUR i ALLANT DE 1 à j FAIRE
			DEBUT

				CAS (i) PARMI							//PAS NECESSAIRE D'UTILISER CAS PARMI, PLUS LE TEMPS DE CHANGER
				1: tab[i,j]<--'X'						//le premier x sur chaque lignr					
				ELSE: tab[i,j]<--'O'					entre le premier et le dernier x se trouvent des O
				FIN

				SI i=j ALORS							//le DERNIER X sur chaque ligne
				tab[i,j]<--'X'


				SI j=taille ALORS							//VALEUR de la dernière ligne, composée uniquement de 'X'
				tab[i,j]<--'X'
			FIN
		FIN

		
		POUR j ALLANT de 1 à TAILLE FAIRE
			DEBUT

				POUR i ALLANT DE 1 à j FAIRE
					DEBUT

						ECRIRE tab[i,j]
						SI i=j ALORS
						ECRIRE
					FIN
			FIN
	LIRE
	FIN.



	
				}


Program triangle_morpion;
uses crt;


VAR

tab: ARRAY[1..50,1..50] of CHAR;
i, j, taille: INTEGER;



BEGIN
		writeln ('Entrez la taille de la base de votre triangle (cela définira aussi sa hauteur');
		readln (taille);


		FOR j:=1 TO taille DO
			BEGIN

				FOR i:=1 to j DO
					BEGIN

						CASE (i) OF
						1: tab[i,j]:='X';
						ELSE tab[i,j]:='O';
						END;

						IF i=j THEN
							tab[i,j]:='X';

						IF j= TAILLE THEN
							tab[i,j]:='X';
					END;
			END;


		FOR j:=1 TO taille DO
			BEGIN

				FOR i:=1 to j DO
					BEGIN

						write (tab[i,j]);
						IF i=j THEN
							writeln;
					END;
			END;
			readln;
END.





