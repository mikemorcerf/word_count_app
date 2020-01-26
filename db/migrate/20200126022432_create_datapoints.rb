class CreateDatapoints < ActiveRecord::Migration[6.0]
  def change
    create_table :datapoints do |t|
    	t.string :word
    	t.integer :word_count
    	t.timestamps
    end
  end
end
