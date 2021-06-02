class Ticket

  attr_reader :date, :venue
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue

    if date.match(/\d{4}-\d{2}-\d{2}/)
      @date = date
    else
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    end
  end

  # alternative to date.match:
  # year, month, day = date.split("-")
  # if year.length == 4 && month.length == 2 & day.length == 2

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end
end
