class Ticket
  VENUES = ['Convention Center', 'Fairgrounds', 'Town Hall']

  attr_reader :date, :venue
  attr_accessor :price

  def initialize(venue, date)
    raise ArgumentError, "Unknown venue #{venue}" unless VENUES.include?(venue)

    puts "Please submit the date in the format 'yyyy-mm-dd'." unless date.match(/\d{4}-\d{2}-\d{2}/)

    @venue = venue
    @date = date
  end

  # alternative to date.match:
  # year, month, day = date.split("-")
  # if year.length == 4 && month.length == 2 & day.length == 2

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end

  def self.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end
