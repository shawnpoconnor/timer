def timer
	start_t = Time.now.to_f
	puts "check or end"
	find(start_t)
end

def find(start_t)
	user_imput = gets.chomp
	if user_imput == "check"
		finish_t = Time.now.to_f
		delta = finish_t - start_t
		puts "#{(delta/60).to_i} min #{(delta - ((delta/60).to_i*60)).abs.round(2)} sec"
		find(start_t)
	elsif user_imput == "end"
	
	else
		puts "Please enter 'check' or 'end'"
		find(start_t)
	end
end
		

timer()
