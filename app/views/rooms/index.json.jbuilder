json.rooms do
	json.array! @rooms, partial: 'room', as: :room
end