lines = File.readlines(ARGV.first)
line_count = lines.size
text = lines.join
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, '').length
word_count = text.split.length
#sentence_count = text.split(/\.|\?|!/).length   Cooper
sentence_count = text.split(/[.?!]/).length      # me!  Seems easier.
paragraph_count = text.split(/\n\n/).length


puts "This text has #{line_count} lines."
puts "The text has #{total_characters} characters total."
puts "After removing whitespaces, the text has #{total_characters_nospaces} characters left."
puts "Scan method: " + text.scan(/\w+/).length.to_s + " words."
puts "Split method: " + text.split.length.to_s + " words.  Preferred!"
puts "There are #{sentence_count} sentences."
puts "Finally, there are #{paragraph_count} paragraphs."
puts 
puts "Now some simple statistics:"
puts "The average number of words per sentence is #{word_count/sentence_count}."
puts "The average number of sentences per paragraph is #{sentence_count/paragraph_count}."
# Use of the ternary operator!!
print ((word_count/sentence_count) > 12 ? "Long" : "Short") + " sentences; "
puts ((sentence_count/paragraph_count) > 5 ? "long" : "short") + " paragraphs."
# Counting keywords
stopwords = %w[the a by on for of are with just but and to the my I has some in it]
words = text.scan(/\w+/)
keywords = words.select { |word| !stopwords.include?(word) }
puts "Of all the words, " + ((keywords.length.to_f/word_count.to_f) * 100).to_i.to_s + "% are keywords."
puts
# Select summary sentences: but the screen for "is/are" is poor as they can be embedded in words, not just stand-alone words.
puts "Summary:"
sentences = text.gsub(/\s+/, ' ').strip.split(/[.?!]/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third+1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/}
puts ideal_sentences.join(". ")
puts "-- End of Analysis!"
puts
