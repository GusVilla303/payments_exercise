class AddPaymentsToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :payments, :string
  end
end
