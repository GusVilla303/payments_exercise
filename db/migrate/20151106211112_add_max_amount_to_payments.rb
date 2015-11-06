class AddMaxAmountToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :max_amount, :decimal, default: 0
  end
end
