require './lib/open_mic'
require './lib/user'
require './lib/joke'

RSpec.describe OpenMic do
  context '#initialize' do
    it 'exists' do
      open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

      expect(open_mic).to be_instance_of(OpenMic)
    end
  end
end
