require_relative 'things'

class Knowledge
  def initialize
    @known_things = {}
  end

  def meaning(words)
    @known_things[words]
  end

  def meanings(words)
    @known_things[words]&.meanings
  end

  def learn(words, meaning)
    # @known_things[words] = meaning
    @known_things[words] = Things.new(words) unless @known_things.has_key?(words)
    @known_things[words].learn(meaning)
  end
end