class AddFuckingArraysToDecks < ActiveRecord::Migration
  def change
  	add_column :decks, :cards, :text, array: true, default: []
  	add_column :decks, :discard_pile, :text, array: true, default: []
  end
end
