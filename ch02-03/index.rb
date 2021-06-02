# require '/Person'
require_relative 'Ticket'
require_relative 'Rubyist'
require_relative 'Temperature'

th = Ticket.new("Town Hall", "2013-11-12")
cc = Ticket.new("Convention Center", "2014-12-13")
fg = Ticket.new("Fairgrounds", "2015-10-11")

th.price = 12.55
th.discount(15)
cc.price = 10.00
fg.price = 18.00

highest = Ticket.most_expensive(th, cc, fg)

puts "The first ticket is for a #{th.venue} event on #{th.date} and has been discounted 15% to $#{format('%.2f', th.price)}."
puts "The highest-priced ticket is the one for #{highest.venue}."
puts "The possible venues are: #{Ticket::VENUES}."

# class method vs. instance methods
# puts "Testing the response of a ticket instance...."
# wrong = fg.most_expensive

# example inheritance
marte = Rubyist.new
puts marte.species

# example class with as only purpose class methods -> Temperature converter (from ch01)
puts Temperature.c2f(100)


