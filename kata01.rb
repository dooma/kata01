#deschidere fisier
fisier = File.open("./weather.dat")
# initializare variabile nr linie
linie=1
#initializare variabile temporare
day, maxT, minT, dy, t_max, t_min = 0,0,0,0,0,0,0
#impart continutul fisierului in linii
fisier.each_line do |s|
	#incepand cu linia 9 prelucram datele
	if linie == 9
		i=0
		#initializare la fiecare linie
		day, maxT, minT, int = 0,0,0,0
		dy,t_min,t_max=" ", " "," "," "
		#scot numerele care reprezinta ziua
		while day == 0 do
			if s[i].to_i > 0
				int = 1
			end
			if s[i].to_i == " " &&  int == 1
				day=1
			end 
			dy += s[i]
			i+=1
		end#while
		puts dy.strip
		#scot numerele care reprezinta temperatura maxima
		while maxT == 0 do
			if s[i].to_i > 0
				t_max=t_max*10+s[i].to_i
				if s[i+1] == " " 
					maxT=1
					i+=1
				end# if
			end# if
			i+=1
		end#while
		#scot numerele care reprezinta temperatura minima
		while minT == 0 do
			if s[i].to_i > 0
				t_min=t_min*10+s[i].to_i
				if s[i+1] == " " 
					minT=1
					i+=1
				end
			end
			i+=1
		end
		puts "ziua = #{dy}	smallest temperature = #{t_max-t_min}"	
	end
	linie += 1
	
end


