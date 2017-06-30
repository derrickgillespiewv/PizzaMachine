
def crust 
	crust = ["Thick", "Thin" , "Brooklyn", "Deep Dish"].sample
end 

def sauce
	sauce = ["Pesto", "Bechamel","Classic Marinara","Balsamic"].sample
end 

def cheese
	cheese = ["Mozz", "Cheddar", "Havarti", "Muenster" ].sample
end

def pepper
	pepper = ["Red Peppers" , "Green Peppers" , "Banana Peppers" , "Cherry Peppers"].sample
end

def veggie
	veggie = ["Spinach", "Tomato", "Red Onion", "Mushroom"].sample
end

def animal 
	animal = ["Cow", "Pig", "Chicken", "Shrimp",].sample
end

def finish
	finish = ["Sriracha","Blue Cheese", "Cheeto Dust", "Sweet-Baby-Ray's"].sample
end



def order

	puts "How many Pizza would you like?"
	order = gets.to_i
	count =0
	order.times do 
	count+=1
	puts "Do you wnat some extra cheese, meat, or both? Type (c)heese, (m)eat, (b)oth, or (n)one."
	extra = gets.chomp

	case extra

	when "c"
		count =0
	order.times do 
	count+=1
		print "Pizza #{count} is made with #{crust} Crust, #{cheese} Cheese and #{cheese} Cheese, #{sauce} Sauce, #{pepper}, #{veggie}, #{animal}, and a #{finish} finish\n"
		money = (count*10)*1.06
		print "The total price $#{money}\n"
	end
	exit

	when "m"
		count =0
	order.times do 
	count+=1
		print "Pizza #{count} is made with #{crust} Crust, #{cheese} Cheese, #{sauce} Sauce, #{pepper}, #{veggie}, #{animal} and #{animal} meat, and a #{finish} finish\n"
		money = (count*11)*1.06
		print "The total price $#{money}\n"
	end
	exit

	when "b"
		count =0
	order.times do 
	count+=1
		print "Pizza #{count} is made with #{crust} Crust, #{cheese} and #{cheese} Cheese, #{sauce} Sauce, #{pepper}, #{veggie}, #{animal} and #{animal} meat, and a #{finish} finish\n"
		money = (count*12)*1.06
		print "The total price $#{money}\n"
	end

	exit

	when "n"
		count =0
	order.times do 
	count+=1
		print "Pizza #{count} is made with #{crust} Crust, #{cheese} Cheese, #{sauce} Sauce, #{pepper}, #{veggie}, #{animal}, and a #{finish} finish\n"
		money = (count*8)*1.06
		print "The total price $#{money}\n"
	end
	exit


	else 
		print "this is not a valid input. Try Again"
	end
	exit
	end

end
order
