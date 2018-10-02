class Audi < ApplicationRecord
	validates :number ,presence: true, numericality: { only_integer: true}, uniqueness: true
	validates :number_of_seats ,presence: true, numericality: { only_integer: true}
	validates :theatre_id ,presence: true, numericality: { only_integer: true}
  belongs_to :theatre
  has_many :shows
  has_many :tickets
  has_many :movies, through: :shows
end