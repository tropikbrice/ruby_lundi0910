#!/usr/bin/env ruby

# ce fichier trouve les multiples de 3 et 5 et affiche leur somme

# on initialise la variable somme à 0
somme=0
1000.times do |i|
	if (i%3 == 0) && (i%5 ==0 )
		#puts i
		somme += i
	end
end

# on affiche le resultat
puts somme