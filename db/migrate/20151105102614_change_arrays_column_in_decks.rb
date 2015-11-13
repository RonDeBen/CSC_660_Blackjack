class ChangeArraysColumnInDecks < ActiveRecord::Migration
  def change
  	add_column :decks, :card_ids, :integer, array: true, default: []
  	add_column :decks, :discard_pile_ids, :integer, array: true, default: []
  end
end
