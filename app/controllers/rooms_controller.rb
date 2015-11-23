class RoomsController < ApplicationController
	
	respond_to :json

	def index
		@rooms = Room.all
	end

end
