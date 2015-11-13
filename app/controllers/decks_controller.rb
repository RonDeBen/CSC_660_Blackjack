class DecksController < ApplicationController

	def top_card
		deck = Deck.find_by_id(params[:id])
		@card = deck.top_card
	end

	def decks_params
		params.require(:deck).permit(:room_id, :shoe, :cards, :discard_pile)
	end
end
