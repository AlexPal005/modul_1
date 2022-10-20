
  def start
    puts "Enter a: "
    a = gets
    puts "Enter b: "
    b = gets
    puts "Enter c:"
    c = gets
    a,b,c = a.to_f, b.to_f, c.to_f
    res = result(a,b,c)
    print "a = ",a,", b = ",b,", c = ",c, "\n"
    print "RESULT\n"
    print " |  x  |   f \n"
    print " ---------------\n"
    for i in 0..res[0].size - 1
      print " | ", res[0][i]
      print " | ", res[1][i], "\n"
      print " ---------------\n"
    end
  end
  def result(a,b,c)
    x_start = 0.0
    x_end = 20.0
    dX = 0.5
    print "dX = ",dX, " X begin = ", x_start, " X end = ", x_end,"\n"
    table = Array.new
    table[0] = Array.new
    table[1] = Array.new
    (x_start..x_end).step(dX) do |x|
      if x < 1 && c != 0
        f = a*(x**2) + b/c
      elsif x > 15 && c == 0
        f = (x-a)/((x-c)**2)
      else
        f = x**2/c**2
      end
      table[0].push(x)
      if ((a.floor & b.floor) + c.floor) % 2 != 0
        table[1].push(f.round(3))
      else
        table[1].push(f.to_i)
      end
    end
    return table
  end
  start
