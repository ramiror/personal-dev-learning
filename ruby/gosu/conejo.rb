require 'gosu'

class GameWindow < Gosu::Window
  
  def initialize
    super(800, 600, true)
    self.caption = "Conejolandia"
    
    @vx=-10
    @vy=0
    @x = 100
    @y = 100
    @ay = 1
    @background_image = Gosu::Image.new(self, "rabb.png", true)
  end

  def update
    @vy += @ay
    @x += @vx
    @y += @vy
    if @y > 500
      @vy = -(@vy.abs)
      @y=500
    end 
    @x %= 700
  end

  def draw
    blanco = Gosu::Color.new(255,255,255,255)
    draw_quad(0,0,blanco,800,0,blanco,800,600,blanco,0,600,blanco)
    @background_image.draw(@x, @y, 0);
  end
end

window = GameWindow.new
window.show
