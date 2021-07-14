require './lib/joke'
require './lib/user'

RSpec.describe User do
  context '#initialize' do
    it 'exists' do
      user_1 = User.new("Sal")

      expect(user_1).to be_instance_of(User)
    end
  end
end
