class AlterUserFundsToInteger < ActiveRecord::Migration
  def change
  	change_column :users, :funds, :integer
  end
end
