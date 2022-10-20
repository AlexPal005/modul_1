#variant 11
class Bus
  def initialize(surname, number_bus, number_route, brand,year_start, kilometrage)
    @surname = surname
    @number_bus = number_bus
    @number_route = number_route
    @brand = brand
    @year_start = year_start
    @kilometrage = kilometrage
  end
  #setters
  def set_surname(surname)
    @surname = surname
  end
  def set_number_bus(number_bus)
    @number_bus = number_bus
  end
  def set_number_route(number_route)
    @number_route = number_route
  end
  def set_brand(brand)
    @brand = brand
  end
  def set_year_start(year_start)
    @year_start = year_start
  end
  def set_kilometrage(kilometrage)
    @kilometrage = kilometrage
  end
  #getters
  def get_surname()
    return @surname
  end
  def get_number_bus()
    return  @number_bus
  end
  def get_number_route()
    return @number_route
  end
  def get_brand(brand)
    return @brand
  end
  def get_year_start()
    return @year_start
  end
  def get_kilometrage()
    return @kilometrage
  end
  #to string
  def to_s()
    res = "Name: " + @surname+ "\n"+
          "Bus number: " + @number_bus.to_s() +"\n" +
          "Route number: " + @number_route.to_s()+"\n"+
          "Brand: " + @brand.to_s()+"\n"+
          "Year of use: "+ @year_start.to_s()+"\n"+
          "Kilometrage: " +@kilometrage.to_s() +"\n"
  end
end

class Counter
  def initialize
    @buses = []
    @buses << Bus.new("Rudenko A.O.",1,10,"Chevrolet", 2000, 100)
    @buses << Bus.new("Petrov P.B.",2,11,"Citroen", 2001, 200)
    @buses << Bus.new("Sizov V.S.",3,11,"Geely", 2002, 300)
    @buses << Bus.new("Sizov T.S.",4,13,"Honda", 2003, 400)
    @buses << Bus.new("Petrov T.B.",5,14,"Volkswagen", 2004, 500)
  end

  def get_list_buses_for_route_number(route_number)
    arr =[]
    count = 0
    for bus in @buses
      if bus.get_number_route == route_number
        arr.push(bus.get_number_bus)
        print bus.to_s()
        puts
        count +=1
      end
    end
    if count == 0
      print "There are no buses with route number " + route_number.to_s() + "\n"
      return -1
    else
      return arr
    end
  end
  def get_list_buses_more_period(period)
    arr = []
    count = 0
    for bus in @buses
      if 2022 - bus.get_year_start > period
        arr.push(bus.get_number_bus)
        print bus.to_s()
        puts
        count+=1
      end
    end
    if count == 0
      print "There are no buses that have been in use for more " + period.to_s() + " years\n"
      return -1
    else
      return arr
    end
  end
  def get_list_buses_more_kilometrage(kilometrage)
    arr = []
    count = 0
    for bus in @buses
      if bus.get_kilometrage > kilometrage
        arr.push(bus.get_number_bus)
        print bus.to_s()
        puts
        count +=1
      end
    end
    if count == 0
      print "There are no buses that have passed more " + kilometrage.to_s() + "\n"
      return -1
    else
      return arr
    end
  end

  def start()
    puts "A)"
    print"Enter route number: "
    route_number = gets
    route_number = route_number.to_i
    get_list_buses_for_route_number(route_number)

    puts "B)"
    print"Enter period: "
    period = gets
    period = period.to_i
    get_list_buses_more_period(period)

    puts "C)"
    print"Enter kilometrage: "
    kilometrage = gets
    kilometrage = kilometrage.to_f
    get_list_buses_more_kilometrage(kilometrage)
  end
end
counter = Counter.new
counter.start







