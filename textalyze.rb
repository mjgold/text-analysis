# This is the base code for v0.1 of our Ruby text analyzer.
# Visit https://github.com/codeunion/text-analysis/wiki to see what to do.
#
# Send an email to your cohort mailing list if you have any questions
# or you're stuck!  These comments are here to help you, but please delete them
# as you go along. You wouldn't normally have such heavily-commented code.

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

def item_counts(array)
  counts = Hash.new(0) # Initialize counts to an empty Hash

  array.each do |item|
  	counts[item] += 1 
  end

  counts # This returns the "counts" hash
end

def count_and_print(array)
	counts = item_counts(array)
	puts "Counts for #{counts}:"
	counts.each do |item, count|
		puts "#{item}  #{count}"
	end 
end

def chars_in_str(string)
	char_array = string.chars
end


# "p" prints something to the screen in a way that's friendlier
# for debugging purposes than print or puts.

# p item_counts([1,2,1,2,1]) == {1 => 3, 2 => 2}
# p item_counts(["a","b","a","b","a","ZZZ"]) == {"a" => 3, "b" => 2, "ZZZ" => 1}
# p item_counts([]) == {}
# p item_counts(["hi", "hi", "hi"]) == {"hi" => 3}
# p item_counts([true, nil, "dinosaur"]) == {true => 1, nil => 1, "dinosaur" => 1}
# p item_counts(["a","a","A","A"]) == {"a" => 2, "A" => 2}

# count_and_print([1,2,1,2,1]) == {1 => 3, 2 => 2}
# count_and_print(["a","b","a","b","a","ZZZ"]) == {"a" => 3, "b" => 2, "ZZZ" => 1}
# count_and_print([]) == {}
# count_and_print(["hi", "hi", "hi"]) == {"hi" => 3}
# count_and_print([true, nil, "dinosaur"]) == {true => 1, nil => 1, "dinosaur" => 1}
# count_and_print(["a","a","A","A"]) == {"a" => 2, "A" => 2}

# p chars_in_str("a") == ["a"]
# p chars_in_str("ab") == ["a", "b"]
# p chars_in_str("Mr.mark123") == %w[M r . m a r k 1 2 3]
# p chars_in_str("Jesus Christ") == ['J', 'e', 's', 'u', 's', ' ', 'C', 'h', 'r', 'i', 's', 't']

p count_and_print(chars_in_str("Hello there.")) == {"H"=>1, "e"=>3, "l"=>2, "o"=>1, " "=>1, "t"=>1, "h"=>1, "r"=>1, "."=>1}
