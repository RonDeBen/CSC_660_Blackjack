task :cards => :environment do
	create_all_cards
end

def create_all_cards
	ranks = ["two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king", "ace"]
	suits = ["clubs", "diamonds", "hearts", "spades"]

	ranks.each do |rank|
		suits.each do |suit|
			card = Card.new(rank: rank, suit: suit)
			card.save
		end
	end
end