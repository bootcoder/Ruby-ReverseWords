##########################
# RUBY -- REVERSE WORDS  #
##########################
### Hunter T. Chapman  ###
## bootcoder@gmail.com  ##
##########################

# require 'awesome_print'

##########################
# 			PSEUDO CODE
##########################
=begin

Write a function which takes a file from command line
Convert each line to an array of words
Reverse the order of the words
Print result

=end

##########################
# 			INITIAL CODE
##########################

def reverse_words
	puts "ERROR: Please give a valid filename as an argument." if ARGV[0] == nil
	File.readlines(ARGV[0]).each do |line|
		line.gsub!("\n", "") if line.include? "\n"
		word_reverser(line.split(" ")) unless line.split[0] == nil
	end
end

def word_reverser(word_arr)
	
	reversed = ""
	until word_arr[0] == nil
		reversed += "#{word_arr.pop} "
	end

	puts reversed.strip
	# ap reversed.strip 
	# toggle -- ap ON and puts OFF for testing

end

##########################
# 			ACTIONABLE CODE
##########################

reverse_words

##########################
# 			TEST CODE
##########################

# ap word_reverser(%w(One Two Three)) == "Three Two One"
# ap word_reverser( ["One", "Two", "Three"] ) == "Three Two One"