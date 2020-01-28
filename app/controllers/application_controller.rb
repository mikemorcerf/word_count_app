class ApplicationController < ActionController::Base
	def generate_data
		array_of_words = ["houseflip", "home", "house", "building", "realstate"]
		min_num = 1
		max_num = 1500
		for i in min_num..max_num
		  array_of_words.each do |single_word|
		  	my_word = Datapoint.new
		  	my_word.word = single_word
		  	my_word.word_count = rand(1..100)
		  	my_word.save
		  end
		  puts "Loop #{i} of #{max_num}"
		  sleep(1.minute)
		end
	end
end
