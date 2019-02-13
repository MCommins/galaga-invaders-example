# GalagaInvaders has a coordinate system, with the origin in the upper left,
# x increasing from left to right, and y increasing from top to bottom. For
# example, the upper left corner is (0, 0) and the lower right corner is
# (800, 800).

require_relative 'ship'

class GalagaInvaders

  SCREEN_WIDTH = 800
  SCREEN_HEIGHT = 800

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(SCREEN_WIDTH / 2, HEIGHT - Ship::HEIGHT)
    @missiles = ShipMissiles.new()
  end

  def update
    @missiles.move_missiles
  end

  def draw
    @ship.draw
    @missiles.draw_missiles
  end

  def show
    while (true) do
      update
      draw
    end
  end

  def key_pressed(key)
    case key
    when 'a'
      @ship.move_left
    when 'd'
      @ship.move_right
    when ' '
      @missiles.create_missile
    end
  end

end

GalagaInvaders.new.show
