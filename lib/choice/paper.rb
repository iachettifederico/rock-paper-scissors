# frozen_string_literal: true

class Choice
  class Paper < Choice
    def against(choice)
      choice.against_paper
    end

    def against_rock
      Game::SECOND_PLAYER_WINS
    end

    def against_paper
      Game::GAME_IS_TIE
    end

    def against_scissors
      Game::FIRST_PLAYER_WINS
    end
  end
end
