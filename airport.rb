class Airport

  attr_reader :name, :landing_strip, :hanger

  def initialize(name)
    @name = name
    @landing_strip = []
    @hanger = []
  end

  def count_plane_on_landing_strip
    @landing_strip.length()
  end

  def land_plane(plane)
    @landing_strip << plane
  end

  def count_plane_in_hanger
    @hanger.length()
  end

  def move_plane_to_hanger(plane)
    @landing_strip.delete(plane)
    @hanger << plane
  end

end