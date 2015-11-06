class Loan < ActiveRecord::Base
  has_many :payments

  validates :balance, presence: true

  def all_payments
    self.payments.map { |payment| payment.amount }.reduce(:+)
  end

  def loan_amount
    self.funded_amount
  end

  def outstanding_balance
    loan_amount - all_payments
  end

  # def balance
  #   self.balance = self.outstanding_balance
  # end
end
