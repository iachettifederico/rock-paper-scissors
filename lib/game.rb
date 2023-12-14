# frozen_string_literal: true

class Game
  def self.with(first_player:, second_player:)
    new(first_player: first_player, second_player: second_player)
  end

  def result
    first_player.against(second_player)
  end
  
  private

  attr_reader :first_player
  attr_reader :second_player

  def initialize(first_player:, second_player:)
    @first_player  = Choice.for(first_player)
    @second_player = Choice.for(second_player)
  end

  FIRST_PLAYER_WINS  = "The first player wins"
  SECOND_PLAYER_WINS = "The first player wins"
  GAME_IS_TIE        = "The game is a tie"
end
