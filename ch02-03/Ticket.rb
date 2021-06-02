class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def date
    @date
  end

  def venue
    @venue
  end

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end

  def event
    "Author's reading"
  end

  def performer
    'Mark Twain'
  end

  def seat
    'Second Balcony, row J, seat 12'
  end

end

th = Ticket.new("Town Hall", "2013-11-12")
cc = Ticket.new("Convention Center", "2014-12-13")

th.price = 63.00

puts "The first is for a #{th.venue} event on #{th.date} and costs $#{format('%.2f', th.price)}."
puts "The second is for a #{cc.venue} event on #{cc.date}."
