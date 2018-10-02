class Ticket < ApplicationRecord
	validates :booking_id,numericality:true
	validates :movie_id,numericality:true
	validates :audi_id,numericality:true
	belongs_to :movie
	belongs_to :audi
	belongs_to :booking
end