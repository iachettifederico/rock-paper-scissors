# frozen_string_literal: true

class Choice
  def self.for(name)
    subclasses.find { |subclass|
      subclass.for?(name)
    }.new
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
