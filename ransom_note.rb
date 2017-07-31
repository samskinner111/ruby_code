### Are the words in magazine sufficient to write the ransome note?
def word_hash(input)
  word_count = {}
  input.each do |word|
    if word.length > 0
      word_count[word] ? word_count[word] += 1 : word_count[word] = 1
    end
  end
  word_count 
end

magazine = %w[give me one grand grand today baby night]
ransom = %w[give one grand grand today baby baby] 

mag_hash = word_hash(magazine)
ransom_hash = word_hash(ransom)
response = 'Yes'
ransom_hash.each do |key, value|
  response = "No" if mag_hash.has_key?(key) == false  || mag_hash[key] < ransom_hash[key]
  break if response == "No"   
end

puts response