# frozen_string_literal: true

class Choice
  class Rock < Choice
    def rock?
      true
    end

    def wins_against?(choice)
      choice.scissors?
    end
  end
end
