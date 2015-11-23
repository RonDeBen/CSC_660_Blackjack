class Room < ActiveRecord::Base

	has_many :users
	has_one :deck

end
