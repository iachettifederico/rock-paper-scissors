# frozen_string_literal: true

class Game
  attr_reader :first_player
  attr_reader :second_player

  def self.with(first_player:, second_player:, randomizer: -> { %i[rock  scissors paper].sample })
    new(
      first_player:  first_player,
      second_player: second_player,
      randomizer:    randomizer,
    )
  end

  def result
    first_player.against(second_player)
  end

  private

  def initialize(first_player:, second_player:, randomizer:)
    @first_player  = Choice.for(first_player, randomizer: randomizer)
    @second_player = Choice.for(second_player, randomizer: randomizer)
  end

  FIRST_PLAYER_WINS  = "You win"
  SECOND_PLAYER_WINS = "You lose"
  GAME_IS_TIE        = "The game is a tie"
end
