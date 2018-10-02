class User < ApplicationRecord
	validates :name,length: {minimum: 5},presence: true
	validates :age,numericality:true,presence: true
	validates :phone_no,numericality:true,presence: true,length: {minimum: 10},uniqueness: true
	has_many :bookings
end