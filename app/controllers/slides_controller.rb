require Rails.root.join 'code/modules'
require Rails.root.join 'code/circles'
# class Point
#   attr_reader :x, :y
#   def initialize x, y
#     @x = x
#     @y = y
#   end
# end
# class Circle
#   attr_reader :center, :radius
#   def initialize center, radius
#     @center = center
#     @radius = radius
#   end
#   def area
#     radius * Math::PI
#   end
#   def bounds
#     (0..360).map do |gr|
#       x = center.x + radius * Math.sin(gr)
#       y = center.y + radius * Math.cos(gr)
#       Point.new x, y
#     end
#   end
# end

class SlidesController < ApplicationController

  def index
    @circle = Circle.new Point.new(450, 350), 300
  end

end
