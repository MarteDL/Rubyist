# require '/Person'
require_relative 'Ticket'

th = Ticket.new("Town Hall", '21-06-01')
th.price = 100.00
th.discount(15)

puts "The first ticket is for a #{th.venue} event on #{th.date} and has been discounted 15% to $#{format('%.2f', th.price)}."

