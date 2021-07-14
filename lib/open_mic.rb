class OpenMic
  attr_reader :location

  def initialize(details)
    @location = details[:location]
  end
end
