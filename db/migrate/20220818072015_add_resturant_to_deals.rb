class AddResturantToDeals < ActiveRecord::Migration[6.1]
  def change
    add_reference :deals, :resturant, index: true
  end
end