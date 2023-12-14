# frozen_string_literal: true

class Choice
  class Rock < Choice
    def self.for?(name, randomizer:)
      name.to_s == "rock"
    end

    def against(choice)
      choice.against_rock
    end

    def against_rock
      Game::GAME_IS_TIE
    end

    def against_paper
      Game::FIRST_PLAYER_WINS
    end

    def against_scissors
      Game::SECOND_PLAYER_WINS
    end
  end
end
