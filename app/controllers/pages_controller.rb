class PagesController < ApplicationController
  def index
  end

  def graph
  end

  def retrieve_data_for_graph
	array_retrieved_data = Datapoint.where(:created_at=>5.days.ago..Time.now).group(:word).sum(:word_count).to_a
	array_retrieved_data.unshift(["Word","Word Count"])
  end
  helper_method :retrieve_data_for_graph

  def retrieve_data_for_table
  	json_retrieved_data = Datapoint.where(:created_at=>5.days.ago..Time.now)
  end
  helper_method :retrieve_data_for_table
end
