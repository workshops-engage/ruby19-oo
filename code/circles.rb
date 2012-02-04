# some helperz
def point *xy
  Point.new *xy
end

def circle x, y, r
  Circle.new(point(x, y), r)
end

class Point
  attr_reader :x, :y
  def initialize x, y
    @x = x
    @y = y
  end
  def distance point
    xd = (x - point.x).abs
    yd = (y - point.y).abs
    Math.sqrt(xd ** 2 + yd ** 2)
  end
  def === circle
    circle.include?(self)
  end
end
# require 'active_support'
class Circle
  # delegate :x, to: :center
  attr_reader :center, :radius
  def initialize center, radius
    @center = center
    @radius = radius
  end
  def x
    center.x
  end
  def y
    center.y
  end
  def include? point
    center.distance(point) < radius
  end
  def <=> circle # delegate?
    area <=> circle.area
  end
  def area
    radius * Math::PI
  end
  def bounds
    (0..360).map do |gr|
      x = center.x + radius * Math.sin(gr)
      y = center.y + radius * Math.cos(gr)
      Point.new x, y
    end
  end
  def distance_from point
    Math.cos(center.x - point.x) + Math.sin(center.y - point.y)
    Math.sqrt(x + y)
  end
end