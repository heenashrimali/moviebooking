class Movie < ApplicationRecord
	validates :name,presence: true
	validates :category,presence: true
	has_many :shows
	has_many :tickets
end