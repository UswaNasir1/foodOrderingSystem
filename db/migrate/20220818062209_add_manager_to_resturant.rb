class AddManagerToResturant < ActiveRecord::Migration[6.1]
  def change
    add_reference :resturants, :manager, index: true
  end
end
