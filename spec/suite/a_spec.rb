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
