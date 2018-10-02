class Booking< ApplicationRecord
	validates :seat_limit,presence: true,numericality: { only_integer: true }
	validates :show_id ,presence: true, numericality: { only_integer: true}
  validates :user_id ,presence: true, numericality: { only_integer: true}
  belongs_to :show 
	belongs_to :user
	belongs_to :theatre
	has_many :tickets ,dependent: :destroy

  before_create :seats_available
  def seats_available
  	if @seat_limit>@show.available_seats
  		error.add(:seat_limit,"Required amount of seats are not available ")
  	end
  end
  
  after_create :seats_left
  private
  def seats_left
  	@show.available_seats=@show.seats_available - self.seat_limit
  end

	after_destroy :seats_updated
	private
	def seats_updated
		@show.available_seats=@show.seats_available + self.seat_limit
	end
end