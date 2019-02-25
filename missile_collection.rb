class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(ship_or_alien)
    add(Missile.new(ship_or_alien.muzzle_location, ship_or_alien.initial_velocity))
  end

end
