# frozen_string_literal: true

class Player
  def self.named(name)
    new(name: name)
  end

  private

  attr_reader :name

  def initialize(name:)
    @name = name
  end
end
