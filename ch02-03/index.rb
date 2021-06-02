# require '/Person'
require_relative 'Ticket'

th = Ticket.new("Town Hall")
cc = Ticket.new("Convention Center")

th.price = 100.00
th.discount(15)
th.date = '2021-06-01'

puts "The first ticket is for a #{th.venue} event on #{th.date} and has been discounted 15% to $#{format('%.2f', th.price)}."
# puts "The second is for a #{cc.venue} event on #{cc.date}."

