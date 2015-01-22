# Method name: item_counts
# Input:   An arbitrary array
#
# Returns: A hash where every item is a key whose value is the number of times
#          that item appears in the array
#
# Prints:  Nothing

# Here are some examples:
#     item_counts(["I", "am", "Sam", "I", "am"])
#       # => {"I" => 2, "am" => 2, "Sam" => 1}
#
#     item_counts([10, 20, 10, 20, 20])
#       # => {10 => 2, 20 => 3}
#
# In short, item_counts(array) tells us how many times each item appears
# in the input array.

### METHODS

# Returns a hash of passed item counts
def item_counts(array)
  counts = Hash.new(0) # Initialize counts to an empty Hash

  array.each do |item|
  	counts[item] += 1 
  end

  counts
end

# Prints a hash of item/count pairs 
def print_hash(hash)	
	puts "Counts:"

	hash.each do |item, count|
		puts "#{item}  #{count}"
	end 
end

# Sanitizes string by downcasing
def sanitize(string)
	string.downcase
end

# Counts and prints characters in passed string
def count_and_print_chars(string)
	char_array = sanitize(string)
	count_and_print_chars(char_array)
end

# Returns hash of character count in passed filename
def count_file_chars(filename)
	contents = File.read(filename)

	count_string_chars(contents)
end

# Converts text file to array of characters 
def read_file(filename)
	contents = File.read(filename)
end

# 
def item_frequency(array)
	counts = item_counts(array)

	total_items = array.size
	# puts "Total items: #{total_items}"

	frequencies = Hash.new

	counts.each do |item, count| 
	  frequency = (count/total_items.to_f).round(3) 

		# puts "Item: #{item}, Count: #{count}"	  
	  # puts "Frequency of #{item}: #{frequency}\n\n"
		frequencies[item] = frequency
	end

	frequencies
end

# Prints a histogram of frequency values for items in an array
def print_histogram(frequencies)
	frequencies.each do |item, frequency|
		num_asterisks = (frequency * 100).round
		puts "#{item}: " + ("*" * num_asterisks) 
	end
end

### MAIN

filename = ARGV[0] 
if filename.nil?
	puts "Please send textalyze a file to analyze."
else
	contents = read_file(filename) unless filename.nil?
	contents = sanitize(contents)
	contents_array = contents.chars

	letter_counts = item_counts(contents_array)
	print_hash(letter_counts)

	letter_frequencies = item_frequency(contents_array)
	print_histogram(letter_frequencies)
end

### TESTS

# p item_counts([1,2,1,2,1]) == {1 => 3, 2 => 2}
# p item_counts(["a","b","a","b","a","ZZZ"]) == {"a" => 3, "b" => 2, "ZZZ" => 1}
# p item_counts([]) == {}
# p item_counts(["hi", "hi", "hi"]) == {"hi" => 3}
# p item_counts([true, nil, "dinosaur"]) == {true => 1, nil => 1, "dinosaur" => 1}
# p item_counts(["a","a","A","A"]) == {"a" => 2, "A" => 2}

# p count_and_print_chars("a") == ["a"]
# p count_and_print_chars("ab") == ["a", "b"]
# p count_and_print_chars("Mr.mark123") == %w[m r . m a r k 1 2 3]
# p count_and_print_chars("Jesus Christ") == ['j', 'e', 's', 'u', 's', ' ', 'c', 'h', 'r', 'i', 's', 't']

# p count_string_chars("Hello There Theo.") == {"h"=>3, "e"=>4, "l"=>2, "o"=>2, " "=>2, "t"=>2, "r"=>1, "."=>1}

# count_file_chars("sample_data/moby-dick.full.txt")

# p sanitize("This is a sentence.")        == "this is a sentence."
# p sanitize("WHY AM I YELLING?")          == "why am i yelling?"
# p sanitize("HEY: ThIs Is hArD tO rEaD!") == "hey: this is hard to read!"