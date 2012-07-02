require "kata01/version"

  class Kata01
	attr_accessor :nr_days, :fisier
	def initialize
		citire
		prelucrare
	end
	
	#functia de citire
	def citire
	
		puts "Enter file name: "
		
		#deschide fisier
		@fisier = File.open(File.expand_path(gets.strip),'r')
		
		#cere numarul de zile
		puts "Enter number of days (ex 28,29,30,31)"
		@nr_days=gets.strip.to_i
		@nr_days+=10
		
	end
	
	#functi de prelucrare a datelor
	def prelucrare
	
		linie=1
		#initializare minim temporare
		mMin = 999999999
		dy=0
		#impart continutul fisierului in linii
		@fisier.each_line do |s|

			#incepand cu linia 9 prelucram datele
			if linie >= 9 && linie < @nr_days
				#fiecare linie este impartita in sub-stringuri
				s=s.split(' ')
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
Kata01.new
