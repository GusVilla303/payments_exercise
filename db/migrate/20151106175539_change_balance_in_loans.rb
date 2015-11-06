class ChangeBalanceInLoans < ActiveRecord::Migration
  def change
    change_column :loans, :balance, :decimal, precision: 8, scale: 2, default: '0' 
  end
end
