# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'roe0320@gmail.com', :dob => '1996-06-19', :location => 'Sydney, Australia', :username => 'weiner', :name => 'Rowena Leung',:password => 'testabc'
u2 = User.create :email => 'admin@ga.com', :dob => '1990-08-20', :location => 'Sydney, Australia', :username => 'the_admin', :name => 'John Smith',:password => 'adminabc'
u3 = User.create :email => 'rei@solo.com', :dob => '1994-07-30', :location => 'Melbourne, Australia', :username => 'lightsaber_2', :name => 'Rei Solo',:password => 'user1abc'

puts "#{ User.count } users created."

Comment.destroy_all
c1 = Comment.create :message => "Love the design."
c2 = Comment.create :message => "The shipping was quick! Thank you so much."
c3 = Comment.create :message => "At first I was worried it wouldn't fit but when I tried it on, it was perfect. In love!"
c4 = Comment.create :message => "I've been looking for something like for ages!"
c5 = Comment.create :message => "I'd like to purchase this. Can we meet up?"

puts "#{ Comment.count } comments created."

Item.destroy_all
i1 = Item.create :size => "S", :condition => "Excellent", :color => "Pink", :shipping => "$5.00", :name => "Floral cropped vest", :price => 25.00
i2 = Item.create :size => "S-M", :condition => "Used, still in good condition", :color => "Navy", :shipping => "Free", :name => "Wide leg jeans", :price => 36.50
i3 = Item.create :size => "L", :condition => "Used, still in good condition", :color => "Red", :shipping => "Free", :name => "Charles River windbreaker", :price => 36.50
i4 = Item.create :size => "M-L", :condition => "Used with a small stain near the waist", :color => "Yello", :shipping => "Free", :name => "Plaid mini skirt", :price => 15.00

puts "#{ Item.count } items created."

##Associations##
puts 'users and items'
u1.items << i1
u3.items << i3

puts "items and comments"
i1.comments << c1 << c2
i2.comments << c3
i3.comments << c4
i4.comments << c5

puts "users and comments"
u1.comments << c2 << c4
u3.comments << c3
