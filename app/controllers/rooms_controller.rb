class RoomsController < ApplicationController
	
	respond_to :json

	def index
		@rooms = Room.all
	end

	def top_card
		room = Room.find_by_id(params[:id])
		@card = room.deck.top_card
	end

	def deck
		@room = Room.find_by_id(params[:id])
		@deck = @room.deck.all_cards
	end

end
