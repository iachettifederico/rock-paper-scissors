# frozen_string_literal: true

class Choice
  def self.for(name, randomizer:)
    subclasses.find { |subclass|
      subclass.for?(name, randomizer: randomizer)
    }.load(randomizer: randomizer)
  end

  def self.load(randomizer:)
    new
  end

  def against(_a_choice)
    subclass_responsibility
  end

  def against_rock
    subclass_responsibility
  end

  def against_paper
    subclass_responsibility
  end

  def against_scissors
    subclass_responsibility
  end
end
