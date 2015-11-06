class Loan < ActiveRecord::Base
  has_many :payments

  validates :balance, presence: true

  def all_payments
    if self.payments.empty?
      0
    else
      self.payments.map { |payment| payment.amount }.reduce(:+)
    end
  end

  def balance
   self.balance = self.outstanding_balance
  end

  def loan_amount
    self.funded_amount
  end

  def outstanding_balance
    loan_amount - all_payments
  end

  def payment_history
    self.payments
  end
end
