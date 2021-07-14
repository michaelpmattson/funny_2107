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
end
