module Rectangable
  attr_accessor :width, :height
  def area
    width * height
  end
end

module Resizeable
  include Rectangable
  def resize perc
    self.width *= (perc/100.0)
    self.height *= (perc/100.0)
  end
end

module ColorMapable
  include Rectangable
  attr_accessor :color_map
  def set_canvas(color="white")
    self.color_map = Array.new(width){ Array.new(height){ color } }
  end
  def get_color_on x, y
    color_map[x][y]
  end
  def set_color_on color, x, y
    color_map[x][y] = color
  end
end

class Image
  include Resizeable
  include ColorMapable
end

img = Image.new
img.width = 10
img.height = 10
img.set_canvas 'red'
img.get_color_on 5, 5 # red
img.set_color_on 'white', 6, 6
img.get_color_on 6, 5 # white
