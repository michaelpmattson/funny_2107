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

  context '#tell' do
    it 'can teach jokes to another user' do
      user_1 = User.new("Sal")
      user_2 = User.new("Ali")

      joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
      joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")

      user_1.learn(joke_1)
      user_1.learn(joke_2)

      expect(user_2.jokes).to eq([])

      user_1.tell(user_2, joke_1)
      user_1.tell(user_2, joke_2)

      expect(user_2.jokes).to eq([joke_1, joke_2])
    end
  end

  context '#joke_by_id' do
    it 'returns a joke by id' do
      user_1 = User.new("Sal")

      joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
      joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")

      expect(user_1.joke_by_id(22)).to eq(nil)

      user_1.learn(joke_1)

      expect(user_1.joke_by_id(22)).to eq(joke_1)
    end
  end
end
