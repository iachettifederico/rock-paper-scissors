# frozen_string_literal: true

require "spec_helper"
require "rspec-given"

RSpec.describe "My spec" do
  When(:game) {
    Game.with(
      player1: player1,
      player2: player2,
    )
  }

  describe "invalid choices" do
    context "player1 is invalid" do
      Given(:player1) { :non_valid_choice }
      Given(:player2) { :rock }

      Then { game == Failure(RuntimeError, Game::INVALID_CHOICE) }
    end

    context "player2 is invalid" do
      Given(:player1) { :paper }
      Given(:player2) { :non_valid_choice }

      Then { game == Failure(RuntimeError, Game::INVALID_CHOICE) }
    end
  end

  describe "player1 wins rock vs scissors" do
    Given(:player1) { :rock }
    Given(:player2) { :scissors }

    Then { game.tie? == false }
    Then { game.text == "The winner is Tito" }
  end

  describe "player2 wins rock vs scissors" do
    Given(:player1) { :scissors }
    Given(:player2) { :rock }

    Then { game.tie? == false }
    Then { game.text == "The winner is Toto" }
  end
end
