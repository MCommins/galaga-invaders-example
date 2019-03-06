class Alien
  include Locatable
  include Destroyable
  include Drawable

  attr_accessor :location, :sprite

  def initialize(args)
    @location = args.fetch[:location]
    @sprite = args.fetch[:sprite]
  end

end
