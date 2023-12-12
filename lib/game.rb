# frozen_string_literal: true

class Game
  def self.with(player1:, player2:)
    new(player1: player1, player2: player2)
  end

  def tie?
    false
  end

  def text
    if player1 == :rock
      "The winner is Tito"
    else
      "The winner is Toto"
    end
  end

  private

  attr_reader :player1
  attr_reader :player2

  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end
end
