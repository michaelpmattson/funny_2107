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

  # awful. oh well! 
  def repeated_jokes?
    joke_hash = make_joke_hash
    all_jokes = get_all_jokes(joke_hash)

    all_jokes.uniq < all_jokes
  end

  def make_joke_hash
    hash = {}
    @performers.each do |performer|
      hash[performer] = performer.jokes
    end
    hash
  end

  def get_all_jokes(hash)
    require "pry"; binding.pry
    vals = hash.values.flatten
    vals.map do |val|
      val.id
    end
  end
end
