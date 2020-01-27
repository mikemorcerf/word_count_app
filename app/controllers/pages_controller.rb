class PagesController < ApplicationController
  def index
  end

  def graph
  end

  def retrieve_data
  	retrieved_data = Hash.new
  	Datapoint.all.each do |dp|
  		retrieve_data[dp.word] += dp.word_count
  	end
  end
end
