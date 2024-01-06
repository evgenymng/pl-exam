class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move(dx, dy)
    @x += dx
    @y += dy
  end
end

# абстракция данных: передаем данные о точке одним объектом
def diag_move(p, v)
  p.move(v, v)
end

p1 = Point.new(x, y)

# абстракция процесса
p1.move(4, 7)

# нарушение барьера абстракций
p1.x += 10
p1.y += 11