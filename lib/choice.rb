# frozen_string_literal: true

class Choice
  def self.for(name)
    {
      rock:     Choice::Rock,
      paper:    Choice::Paper,
      scissors: Choice::Scissors,
    }.fetch(name).new
  end

  def wins_against?(_choice)
    false
  end

  def ==(other)
    self.class == other.class
  end

  def rock?
    false
  end

  def paper?
    false
  end

  def scissors?
    false
  end
end
