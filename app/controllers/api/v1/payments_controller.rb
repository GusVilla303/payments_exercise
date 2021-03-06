class Api::V1::PaymentsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    render json: Payment.all
  end

  def show
    render json: Payment.find(params[:id])
  end

  def create
    render json: Payment.create(payment_params)
  end

  private

  def payment_params
    params.require(:payment).permit(:date, :amount, :loan_id, :max_amount)
  end
end
