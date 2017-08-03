### Count the number of votes and report the winner

#votes = %w[Alex Michael Harry Dave Michael Victor Harry Alex Mary Mary]
votes = %w[Victor Veronica Ryan Dave Maria Maria Farah Farah Ryan Veronica]

def electionWinner(votes)
  vote_count = {}
  votes.each do |vote|
    vote_count[vote] ? vote_count[vote] += 1 : vote_count[vote] = 1
  end
  max_num = vote_count.max_by(&:last).last
  y = vote_count.each_with_object({}) { |(names, number),h| (h[number] ||= []) << names }
  alpha = y.sort_by(&:first)
  z = alpha.length
  return alpha[z-1][1].sort.pop 
end

electionWinner(votes)