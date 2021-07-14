class OpenMic
  attr_reader :location,
              :date

  def initialize(details)
    @location = details[:location]
    @date     = details[:date]
  end
end
