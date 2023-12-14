# frozen_string_literal: true

class Choice
  class Random < Choice
    def self.for?(name, randomizer:)
      name.to_s == "random"
    end

    def self.load(randomizer:)
      Choice.for(randomizer.call, randomizer: -> {})
    end
  end
end
