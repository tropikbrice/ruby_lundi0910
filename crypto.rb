#!/usr/bin/env ruby

#crypto : decale une lettre de clé caractere: Naula commit 

def chiffre_de_cesar(phrase, cle)

	puts "la phrase a convertir est :#{phrase} decale de :#{cle} caracteres"

	resultat = ""

	phrase.each_byte do |byte|

		#on teste que le ascii est une lettre en minuscule, on laisse les ponctuations ...
		if (byte >= 97) && (byte <= 122) 

			# on teste si le ascii depasse la lettre z cad 122
			if byte <= (122 -cle)
				toto = (byte + cle)

				#stockage de l ascii transforme en lettre
				resultat += toto.chr

			#cas où le ascii decalé de cle caracteres a depassé le z	
			else				
				toto = byte + cle - 26

				#stockage de l ascii transforme en lettre
				resultat += toto.chr
			end

		# cas la lettre en ascii est une majuscule
		elsif (byte >= 65) && (byte <= 90)

			# on teste si le ascii depasse la lettre z cad 122
			if byte <= (90 -cle)
				toto = (byte + cle)

				#stockage de l ascii transforme en lettre
				resultat += toto.chr

			#cas où le ascii decalé de cle caracteres a depassé le z	
			else				
				toto = byte + cle - 26

				#stockage de l ascii transforme en lettre
				resultat += toto.chr
			end				

		#cas ou ascii = ponctuation ...			
		else
			resultat += byte.chr		
		end

	end #fin du do

	puts resultat
end #fin du def

puts "test numero 1"
chiffre_de_cesar("What a string!", 5)