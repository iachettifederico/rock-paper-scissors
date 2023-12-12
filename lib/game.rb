# frozen_string_literal: true

class Game
  def self.with(first_player:, second_player:)
    new(first_player: first_player, second_player: second_player)
  end

  def result
    return "The game is a tie" if first_player == second_player

    if first_player.wins_against?(second_player)
      "The first player wins"
    else
      "The second player wins"
    end
  end

  private

  attr_reader :first_player
  attr_reader :second_player

  def initialize(first_player:, second_player:)
    @first_player  = Choice.for(first_player)
    @second_player = Choice.for(second_player)
  end
end
