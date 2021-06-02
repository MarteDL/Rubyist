class Ticket
  def initialize(venue)
    @venue = venue
  end

  def date=(date)
    if date.match(/\d{4}-\d{2}-\d{2}/)
      @date = date
    else
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    end
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

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end
end
