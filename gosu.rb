require 'gosu'

RED = Gosu::Color.argb(0xff_ff0000)


class Tutorial < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Tutorial Game"
  end
  
  def update
    # ...
  end
  
  def draw
    center_x = 320
    center_y = 240

    # petals
    radius = 50
    x = center_x-radius
    y = center_y
    size = 10
    (1..12).each do |n|
      rotate(30*n, around_x = x+radius, around_y = y) {
        draw_quad(x-size, y-size, 0xffffffff, x+size, y-size, 0xffffffff, x-size, y+size, 0xffffffff, x+size, y+size, 0xffffffff, 0)
      }
    end

    # stem
    x = center_x + size/2
    (1..12).each do |n|
      translate(0, n*size) { 
        draw_quad(x-size, y-size, RED, x+size, y-size, RED, x-size, y+size, RED, x+size, y+size, RED, 0)
      }
    end


  end
end

Tutorial.new.show
