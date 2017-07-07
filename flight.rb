class Flight

  attr_reader :engine_type
  attr_accessor :control_type

  def initialize(engine_type, control_type)
    @engine_type = engine_type
    @control_type = control_type
  end

end