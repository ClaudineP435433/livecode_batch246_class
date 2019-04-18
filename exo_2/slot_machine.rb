class SlotMachine
  SCORES = {
    'joker' => { '3times' => 50, '2times' => 25 },
    'star' => { '3times' => 40, '2times' => 20 },
    'bell' => { '3times' => 30, '2times' => 15 },
    'seven' => { '3times' => 20, '2times' => 10 },
    'cherry' => { '3times' => 10, '2times' => 5}
  }

  def score(array)
    if array.uniq.length == 1
      # key = array[0]
      # score_key = SCORES[key]
      # score = score_key["3times"]
      score = SCORES[array[0]]["3times"]
      return score
    elsif array.uniq.length == 2 && array.include?("joker")
      array_whitout_joker = array - ['joker']
      if array_whitout_joker.length == 1
        score = 25
      else
        key = array_whitout_joker[0]
        score_key = SCORES[key]
        score = score_key["2times"]
        return score
      end
      # Autre méthode plus simple
      # sorted_array = array.sort
      # score = SCORES[sorted_array[1]]['2times']
    else
      score = 0
    end
  end
end
