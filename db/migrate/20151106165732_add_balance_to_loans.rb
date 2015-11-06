class AddBalanceToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :balance, :decimal, precision: 8, scale: 2
  end
end
