class Theatre < ApplicationRecord
	validates :name ,presence: true, length: {minimum: 5}
	validates :address ,presence: true
	validates :phone_no ,presence: true, numericality: { only_integer: true}, length: {minimum: 10}, uniqueness: true
	has_many :audis
	has_many :bookings
end