class RemoveCardsAndDiscardPile < ActiveRecord::Migration
  def change
  	remove_column :decks, :cards
  	remove_column :decks, :discard_pile
  end
end
