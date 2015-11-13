class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.integer :room_id
      t.integer :shoe

      t.timestamps null: false
    end
  end
end
