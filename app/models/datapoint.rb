class Datapoint < ApplicationRecord
	validates :word, presence: true
	validates :word_count, presence: true
end