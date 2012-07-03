#require "./lib/kata01/version"

class KataTraining
	attr_accessor :fisier
	def initialize
		citire
		prelucrare
	end
	
	#functia de citire
	def citire
			#deschide fisier
			@fisier = File.open("/home/calin/kata01/weather.dat",'r')
	end
	
	#functi de prelucrare a datelor
	def prelucrare
	
		linie=1
		#initializare minim temporare
		mMin = 999999999
		dy=0
		#impart continutul fisierului in linii
		@fisier.each_line do |s|
			s=s.split(' ')
			#incepand cu linia 9 prelucram datele
			if linie >= 9 && s[0].to_i > 0
				
				#prima coloana
				day=s[0].to_i
				#a doua coloana
				maxT=s[1].to_i
				#a treia coloana
				minT=s[2].to_i
		
				#determin minimul
				if mMin > maxT-minT
					mMin = maxT-minT
					dy=day
				end
			end
			linie += 1
		end
		puts "Day = #{dy}	smallest temperature = #{mMin}"	

	end
end
