# frozen_string_literal: true

class Choice
  class Scissors < Choice
    def against(choice)
      choice.against_scissors
    end

    def against_rock
      Game::FIRST_PLAYER_WINS
    end

    def against_paper
      Game::SECOND_PLAYER_WINS
    end

    def against_scissors
      Game::GAME_IS_TIE
    end
  end
end
