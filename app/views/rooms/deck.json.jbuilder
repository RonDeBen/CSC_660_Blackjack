json.card do 
	json.array! @deck, partial: 'card', as: :card
end