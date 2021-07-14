require './lib/open_mic'
require './lib/user'
require './lib/joke'

RSpec.describe OpenMic do
  context '#initialize' do
    it 'exists' do
      open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

      expect(open_mic).to be_instance_of(OpenMic)
    end

    it 'has a location' do
      open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

      expect(open_mic.location).to eq("Comedy Works")
    end

    it 'has a date' do
      open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

      expect(open_mic.date).to eq("11-20-18")
    end

    it 'has an empty performers array' do
      open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

      expect(open_mic.performers).to eq([])
    end
  end
end
