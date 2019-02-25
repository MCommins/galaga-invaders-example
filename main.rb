#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
  Duck typing is creating a public interface that is not tied to any one class. 
  Many different classes can respond to the messages of the duck-type, which is the essence of polymorphism.
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
   If code is attempting to figure out the class of an object before sending it a message, you may need a duck-type.
   Specific examples include switch statements that change behavior based on class, and Ruby commands such as 'is_a?' and 'responds_to?'.
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   True, because the code reads more like spoken language, and the reader does not have to know about the classes of objects that are receiving the messages.
=end
