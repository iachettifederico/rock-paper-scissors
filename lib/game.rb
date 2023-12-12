# frozen_string_literal: true

class Game
  def self.with(player1:, player2:)
    raise INVALID_CHOICE unless valid_player?(player1)
    raise INVALID_CHOICE unless valid_player?(player2)

    new(player1: player1, player2: player2)
  end

  def tie?
    false
  end

  def text
    if player1 == :rock
      "The winner is Player 1"
    else
      "The winner is Player 2"
    end
  end

  private

  attr_reader :player1
  attr_reader :player2

  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

  INVALID_CHOICE = "Invalid choice"

  def self.available_choices
    %i[rock paper scissors]
  end

  def self.valid_player?(player)
    available_choices.include?(player)
  end
end
