class OpenMic
  attr_reader :location,
              :date,
              :performers

  def initialize(details)
    @location   = details[:location]
    @date       = details[:date]
    @performers = []
  end
end
