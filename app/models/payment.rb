class Payment < ActiveRecord::Base
  belongs_to :loan

  validates :loan_id, presence: true
  #validates :amount, numericality: { greater_than: 0, less_than_or_equal_to: self.max_amount }

  def max_amount
    self.max_amount = self.loan.outstanding_balance
  end
end
