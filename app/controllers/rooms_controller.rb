class RoomsController < ApplicationController
	
	respond_to :json

	def index
		@rooms = Room.all
	end

	def draw_card
		room = Room.find_by_id(params[:id])
		@card = room.deck.top_card
	end

end
