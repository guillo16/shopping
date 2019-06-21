class PaymentsController < ApplicationController
  before_action :set_cars
  def new
  end

  def create
    def create
      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
        )

      charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @car.amount_cents,
    description:  "Payment for teddy #{@car.sku} for order #{@car.id}",
    currency:     @car.amount.currency
    )


      redirect_to car_path(@car)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_car_payment_path(@car)
    end
  end

  private

  def set_cars
    @car = cars.find(params[:id])
  end
end
