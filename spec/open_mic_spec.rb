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

  context '#welcome' do
    it 'adds a user to performers' do
      open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

      user_1 = User.new("Sal")
      user_2 = User.new("Ali")

      expect(open_mic.performers).to eq([])

      open_mic.welcome(user_1)
      open_mic.welcome(user_2)

      expect(open_mic.performers).to eq([user_1, user_2])
    end
  end

  context '#repeated_jokes?' do
    it 'tells if performers have any of the same jokes' do
      open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

      user_1 = User.new("Sal")
      user_2 = User.new("Ali")

      open_mic.welcome(user_1)
      open_mic.welcome(user_2)

      joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
      joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")

      user_2.learn(joke_1)
      user_2.learn(joke_2)

      # expect(open_mic.repeated_jokes?).to be(false)

      user_1.learn(joke_1)

      expect(open_mic.repeated_jokes?).to be(true)
    end
  end
end
