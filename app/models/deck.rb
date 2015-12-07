class Deck < ActiveRecord::Base

	before_save :initialize_decks

	def top_card
		if self.card_ids.empty?
			self.card_ids = self.discard_pile_ids
			self.discard_pile_ids = []
			self.card_ids.shuffle
			self.discard_pile_ids.push(self.card_ids.shift)
			return Card.find_by_id(self.discard_pile_ids.last)
		end
		self.discard_pile_ids.push(self.card_ids.shift)
		self.save
		Card.find_by_id(self.discard_pile_ids.last)
	end

	def initialize_decks
		if self.shoe.nil?
			self.card_ids = Array(Card.ids)
		else 
			self.shoe.times do 
				(self.card_ids << Card.ids).flatten!
			end
		end
		self.card_ids = self.card_ids.shuffle
	end

	def all_cards
		Card.find(self.card_ids).group_by(&:id).values
	end
end
