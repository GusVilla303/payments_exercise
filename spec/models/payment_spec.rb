require 'rails_helper'

RSpec.describe Payment, type: :model do
  #let(:payment) { Payment.create(loan_id: 1) }

  it "is valid with a loan_id" do
    payment = Payment.create(loan_id: 1)
    expect(payment).to be_valid
  end


  it "cannot have an loan_id of null" do
    payment = Payment.create(loan_id: nil)
    expect(payment).to be_invalid
  end

end
