require 'pry'
# here we patch the level.rb class to add our reporting
module RubyWarrior
  class Level
    def tally_points
      score = 0
      report = { level_score: warrior.score }
      UI.puts "Level Score: #{warrior.score}"

      score += warrior.score

      UI.puts "Time Bonus: #{time_bonus}"
      report[:time_bonus] = time_bonus

      score += @time_bonus

      if floor.other_units.empty?
        UI.puts "Clear Bonus: #{clear_bonus}"
        report[:clear_bonus] = clear_bonus
        score += clear_bonus
      end

      if @profile.epic?
        UI.puts "Total Score: " + score_calculation(@profile.current_epic_score, score)
        @profile.current_epic_grades[@number] = (score / ace_score.to_f) if ace_score
        @profile.current_epic_score += score
      else
        total_score =  score_calculation(@profile.score, score)
        report[:total_score] = total_score
        UI.puts "Total Score: " + total_score
        @profile.score += score
        @profile.abilities = warrior.abilities.keys
        report[:warrior_name] = @profile.warrior_name
        report[:level_number] = @number
        binding.pry
        ::ScoreboardRubywarrior::Reporter.send_level_update(report)
      end
    end
  end
end
