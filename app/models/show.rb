class Show < ApplicationRecord
	validates :time,presence: true
	validates :available_seats,numericality: true
	validates :audi_id,numericality: true
	validates :movie_id,numericality: true
	belongs_to :audi
 	belongs_to :movie
	has_many :bookings
end