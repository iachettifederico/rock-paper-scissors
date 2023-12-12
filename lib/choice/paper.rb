# frozen_string_literal: true

class Choice
  class Paper < Choice
    def paper?
      true
    end

    def wins_against?(choice)
      choice.rock?
    end
  end
end
