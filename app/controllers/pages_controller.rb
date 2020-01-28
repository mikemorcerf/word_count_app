class PagesController < ApplicationController
  def index
  end

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
end
