class AddResturantToCategory < ActiveRecord::Migration[6.1]
 
    def change
      add_reference :categories, :resturant, index: true
   
  end
end
