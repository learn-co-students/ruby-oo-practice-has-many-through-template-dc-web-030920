require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#binding.pry
0 #leave this here to ensure binding.pry isn't the last line


# Happy Hour! 
# A customer has many drinks!
# A bartender makes many drinks!

# A customer is initialized with a name. 
# A bartender is initialized with a name and years of experience. 
# A drink is initialized with a name, price, a customer instance and a bartender instance. 

# VARIABLES - Customer
michael = Customer.new("Michael")
lindsay = Customer.new("Lindsay")
mary = Customer.new("Mary")
# Variables - Bartenders
ann = Bartender.new("Ann", 5)
chine = Bartender.new("Chine", 4)

#Variabes - Drinks
drink1 = Drink.new("Martini", 12, michael, ann)
drink2 = Drink.new("Old Fashioned", 13, lindsay, chine)
drink3 = Drink.new("Old Fashioned", 13, mary, ann)
drink4 = Drink.new("Manhattan", 11, lindsay, chine)
drink5 = Drink.new("Mojito", 12, mary, ann)
drink6 = Drink.new("Manhattan", 11, mary, ann)
drink7 = Drink.new("Old Fashioned", 12, mary, chine)


p "----Initialize Tests! -------"
p drink1.customer == michael
p mary.name == "Mary"
p chine.name == "Chine"
p chine.yrs_experience == 4
p drink4.name == "Manhattan"
p drink3.price == 13

p "-----Customer Methods!!!-----"

michael.order_drink("Mojito", 12, chine)
p michael.drinks.length == 2
p lindsay.drinks == [drink2, drink4]
p michael.check == 24

p "-----Drink Methods !!!------"
Drink.drink_count("Old Fashioned")
p Drink.most_popular == "Old Fashioned"
p Drink.most_expensive == "Old Fashioned"
p Drink.least_popular == "Martini"
p Drink.least_expensive == "Manhattan"

p "-----Bartender Methods!! ----"
p chine.customers == [lindsay, mary, michael]
p chine.num_drinks == 4



# Some questions that we might want to answer about the relationship. 
# How much is a customer's check? customer#check 
# What is the most popular drink? Drink.most_popular
# Which customers is a bartender serving?
# How many drinks has a bartender made?

