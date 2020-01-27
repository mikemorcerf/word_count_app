class PagesController < ApplicationController
  def index
  end

  def graph
  end

  def retrieve_data
  	my_retrieved_data = Datapoint.where(:created_at=>5.days.ago..Time.now)
  	hash_retrieved_data = Hash.new
  	my_retrieved_data.each do |dp|
  		hash_retrieved_data[dp.word] = dp.word_count + hash_retrieved_data[dp.word].to_i
  	end
  	return hash_retrieved_data.to_json
  end

end
