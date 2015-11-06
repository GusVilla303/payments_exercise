class Api::V1::LoansController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    loans = Loan.all
    loans.each { |loan| loan.balance = loan.outstanding_balance }
    render json: loans
  end

  def show
    loan          = Loan.find(params[:id])
    loan.payments = loan.payment_history
    loan.balance  = loan.outstanding_balance
    render json: loan
  end
end
