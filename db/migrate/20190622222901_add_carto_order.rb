class AddCartoOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :car, index: true
  end
end
