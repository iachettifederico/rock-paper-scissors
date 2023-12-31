# frozen_string_literal: true

require "spec_helper"
require "rspec-given"

RSpec.describe "Game spec" do
  When(:game) {
    Game.with(
      first_player:  first_player,
      second_player: second_player,
    )
  }

  context "first player plays rock" do
    Given(:first_player) { :rock }

    context "rock beats scissors" do
      Given(:second_player) { :scissors }

      Then { game.result == Game::FIRST_PLAYER_WINS }
    end

    context "paper beats rock" do
      Given(:second_player) { :paper }

      Then { game.result == Game::SECOND_PLAYER_WINS }
    end

    context "it ties against rock" do
      Given(:second_player) { :rock }

      Then { game.result == Game::GAME_IS_TIE }
    end
  end

  context "first player is paper" do
    Given(:first_player) { :paper  }

    context "it wins against rock" do
      Given(:second_player) { :rock }

      Then { game.result == Game::FIRST_PLAYER_WINS }
    end

    context "it loses against scissors" do
      Given(:second_player) { :scissors }

      Then { game.result == Game::SECOND_PLAYER_WINS }
    end

    context "it ties against paper" do
      Given(:second_player) { :paper }

      Then { game.result == Game::GAME_IS_TIE }
    end
  end

  context "first player is scissors" do
    Given(:first_player) { :scissors }

    context "it wins against paper" do
      Given(:second_player) { :paper }

      Then { game.result == Game::FIRST_PLAYER_WINS }
    end

    context "it loses against rock" do
      Given(:second_player) { :rock }

      Then { game.result == Game::SECOND_PLAYER_WINS }
    end

    context "it ties against scissors" do
      Given(:second_player) { :scissors }

      Then { game.result == Game::GAME_IS_TIE }
    end
  end

  describe "random choice" do
    Given(:first_player) { :rock }
    Given(:second_player) { :random }

    context "first player is random" do
      When(:game) {
        Game.with(
          first_player:  second_player,
          second_player: first_player,
          randomizer:    -> { random_choice },
        )
      }

      When(:random_choice) { :paper }

      Then { game.first_player.is_a?(Choice::Paper) }
    end

    context "second player is random" do
      When(:game) {
        Game.with(
          first_player:  first_player,
          second_player: second_player,
          randomizer:    -> { random_choice },
        )
      }

      When(:random_choice) { :rock }

      Then { game.second_player.is_a?(Choice::Rock) }
    end
  end
end
