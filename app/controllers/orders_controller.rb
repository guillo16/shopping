class OrdersController < ApplicationController
  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  def create
    car = Car.find(params[:car_id])
    order = Order.create!(car_sku: car.sku, amount: car.price, state: 'pending', user: current_user)
    redirect_to new_order_payment_path(order)
  end
end
