class OpenMic
  attr_reader :location,
              :date,
              :performers

  def initialize(details)
    @location   = details[:location]
    @date       = details[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end
end
