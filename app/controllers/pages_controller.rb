class PagesController < ApplicationController
  def index
    if Datapoint.all.size < 7500
      generate_data
    end
  end
  helper_method :index

  def graph
  end

  def retrieve_data_for_graph(from_time, to_time)
  	array_retrieved_data = Datapoint.where(:created_at=>from_time..to_time).group(:word).sum(:word_count).to_a
  	array_retrieved_data.unshift(["Word","Word Count"])
  end
  helper_method :retrieve_data_for_graph

  def retrieve_data_for_table(from_time, to_time)
  	retrieved_data = Datapoint.where(:created_at=>from_time..to_time)
  end
  helper_method :retrieve_data_for_table

  private
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
