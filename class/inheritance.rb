class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end

dvd = DVD.new('A great Movie', 1000, 120)
pp dvd.name
pp dvd.price
pp dvd.running_time