require './lib/joke'
require './lib/user'

RSpec.describe User do
  context '#initialize' do
    it 'exists' do
      user_1 = User.new("Sal")

      expect(user_1).to be_instance_of(User)
    end

    it 'has a name' do
      user_1 = User.new("Sal")

      expect(user_1.name).to eq("Sal")
    end

    it 'has an empty joke array' do
      user_1 = User.new("Sal")

      expect(user_1.jokes).to eq([])
    end
  end

  context '#learn' do
    it 'adds a joke to user.jokes' do
      user_1 = User.new("Sal")
      joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
      joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")

      expect(user_1.jokes).to eq([])

      user_1.learn(joke_1)
      user_1.learn(joke_2)

      expect(user_1.jokes).to eq([joke_1, joke_2])
    end
  end
end
