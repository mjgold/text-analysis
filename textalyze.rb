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
	
	puts "Sorted counts for #{counts}:"
	sorted_counts_desc = counts.sort_by {|item, count| count}.reverse

	sorted_counts_desc.each do |item, count|
		puts "#{item}  #{count}"
	end 
end

def sanitize(string)
	string.downcase
end

def str_to_sanitized_chars(string)
	char_array = sanitize(string).chars
end

def count_string_chars(string)
	char_array = str_to_sanitized_chars(string)
	count_and_print(char_array)
end

def count_file_chars(filename)
	contents = File.read(filename)

	count_string_chars(contents)
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
# p chars_in_str("Mr.mark123") == %w[m r . m a r k 1 2 3]
# p chars_in_str("Jesus Christ") == ['j', 'e', 's', 'u', 's', ' ', 'c', 'h', 'r', 'i', 's', 't']

# p count_string_chars("Hello There Theo.") == {"h"=>3, "e"=>4, "l"=>2, "o"=>2, " "=>2, "t"=>2, "r"=>1, "."=>1}

# count_file_chars("sample_data/moby-dick.full.txt")

filename = ARGV[0]
count_file_chars(filename)

# p sanitize("This is a sentence.")        == "this is a sentence."
# p sanitize("WHY AM I YELLING?")          == "why am i yelling?"
# p sanitize("HEY: ThIs Is hArD tO rEaD!") == "hey: this is hard to read!"