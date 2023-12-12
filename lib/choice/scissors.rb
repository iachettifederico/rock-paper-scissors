# frozen_string_literal: true

class Choice
  class Scissors < Choice
    def scissors?
      true
    end

    def wins_against?(choice)
      choice.paper?
    end
  end
end
