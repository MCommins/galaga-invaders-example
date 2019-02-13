# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move_left
    @x -= 5
  end

  def move_right
    @x += 5
  end

  def draw
    # Ignore this
  end

end

class ShipMissiles
  def initialize
    missiles[] = Array.new
  end

  def create_missile
    @missiles << Missile.new(@x, @y - HEIGHT / 2)
  end

  def draw_missiles
    @missiles.each do |missile|
      
    end
  end

  def move_missiles
    @missiles.each do |missile|
      missile.move()
    end
  end

end

class Missile
  def initialize(x, y)
    @x = x
    @y = y  
  end

  def move
    @y -= 10
  end


end
=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
OOD promises to allow future changes to be less costly to perform.

2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
Single Responsibility
Open-Closed
Liskov Substitution
Interface Segregation
Dependency Inversion

3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
True

4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
Exemplary: The code should encourage others to preserve the design qualities it already has when they are changing it.

5. How does applying SRP naturally lead to good design?
Single Responsibility naturally leads to good design because it encourages us to create small classes and methods that encapsulate single ideas.
=end
