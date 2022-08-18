class AddResturantsToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :resturant, index: true
  end
end
