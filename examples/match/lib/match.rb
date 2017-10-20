# frozen_string_literal: true

# Match represent a match between two teams
#
class Match
  attr_reader :winner, :loser

  def initialize(first_team, second_team)
    @teams = [first_team, second_team]
  end

  def complete(team)
    return false unless @teams.include?(team)
    @winner = team
  end
end
