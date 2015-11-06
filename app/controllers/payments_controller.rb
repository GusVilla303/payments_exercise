class PaymentsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end
end
